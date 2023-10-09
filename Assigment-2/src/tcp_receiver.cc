#include "tcp_receiver.hh"

#include <algorithm>


using namespace std;

void TCPReceiver::segment_received(const TCPSegment &seg) {
    const TCPHeader head = seg.header();
    // ...

    // --- Hint ------
        // convert the seqno into absolute seqno
    uint64_t checkpoint = _reassembler.ack_index();
    uint64_t abs_seqno = unwrap(head.seqno, _isn, checkpoint);
    uint64_t stream_idx = abs_seqno - _synReceived;
    // --- Hint ------  

    // ...
    bool syn = head.syn; //syn flag from the header of the segment
    bool fin = head.fin; // fin flag from the header of the segment

    if(!_synReceived && syn){ // syn received for the first time
        _synReceived = true;
        _isn = head.seqno;
    }
    if(!_finReceived && fin){ // fin received for the first time
        _finReceived = true;
    }
    string data = seg.payload().copy(); // data(payload) from the segment
    bool eof;
    if(_finReceived){
        eof = true;
        _reassembler.push_substring(data,stream_idx,true); // eof = true if fin is received
    }
    else{
        eof = false;
        _reassembler.push_substring(data,stream_idx,false); // eof = false if fin is not received
    }
    
}

optional<WrappingInt32> TCPReceiver::ackno() const {
    if(_synReceived){
        uint64_t ind = _reassembler.ack_index()+1; // Additional index for syn
        ind = _finReceived ? ind+1 : ind; // Additional index for fin
        return wrap(ind,_isn);
    }
    else{
        return {}; // Returning empty if syn not receied
    }
}

size_t TCPReceiver::window_size() const { return _reassembler.stream_out().remaining_capacity();}
