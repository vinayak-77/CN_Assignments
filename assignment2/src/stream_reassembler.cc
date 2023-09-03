#include "stream_reassembler.hh"

// You will need to add private members to the class declaration in `stream_reassembler.hh`

template <typename... Targs>
void DUMMY_CODE(Targs &&... /* unused */) {}

using namespace std;

std:: string stream;
std:: unordered_map<uint64_t,string> buffer;

StreamReassembler::StreamReassembler(const size_t capacity)
    :_output(capacity)
{
    this->capacity = capacity;
    this->stream = stream;
    this->buffer = buffer;
    this->nextInd = 0;
    this->bufferSize = 0;
}


//! \details This function accepts a substring (aka a segment) of bytes,
//! possibly out-of-order, from the logical stream, and assembles any newly
//! contiguous substrings and writes them into the output stream in order.
void StreamReassembler::push_substring(const string &data, const size_t index, const bool eof) {
    if(index+data.length()>capacity){
        uint64_t remainingSize = capacity-(uint64_t)index;
        data = data.substr(0,(int)remainingSize);
    }

    if(index==nextInd){
        stream+=data;
        nextInd = index+data.length();
        while(buffer.find(nextInd)!=buffer.end()){
            string newData = buffer[(int)nextInd];
            if(nextInd+newData.length()>capacity){
                uint64_t remainingSize = capacity-nextInd;
                newData = newData.substr(0,(int)remainingSize);
                stream+=newData;
                nextInd+=newData.size();
                bufferSize-=newData.length();
            }
        }
    }
    else{
        buffer[(int)index] = data;
        bufferSize+=data.length();
    }
}

size_t StreamReassembler::unassembled_bytes() const { return bufferSize; }

bool StreamReassembler::empty() const { return buffer.empty(); }

size_t StreamReassembler::ack_index() const { return nextInd; }