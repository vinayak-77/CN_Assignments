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
    bool syn = head.syn;
    bool fin = head.fin;
    if(!_synReceived && syn){
        _synReceived = true;
        _isn = head.seqno;
    }
    if(!_finReceived && fin){
        _finReceived = true;
    }
    string data = seg.payload().copy();
    if(_finReceived){
        _reassembler.push_substring(data,stream_idx,true);
    }
    else{
        _reassembler.push_substring(data,stream_idx,false);
    }
    
}

optional<WrappingInt32> TCPReceiver::ackno() const {
    if(_synReceived){
        uint64_t ind = _reassembler.ack_index()+1;
        ind = _finReceived ? ind+1 : ind;
        return wrap(ind,_isn);
    }
    else{
        return {};
    }
}

size_t TCPReceiver::window_size() const { return _reassembler.stream_out().remaining_capacity();}
