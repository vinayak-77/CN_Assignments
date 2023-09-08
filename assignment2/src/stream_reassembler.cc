#include "stream_reassembler.hh"
#include "byte_stream.hh"

// You will need to add private members to the class declaration in `stream_reassembler.hh`

#include<iostream>
template <typename... Targs>
void DUMMY_CODE(Targs &&... /* unused */) {}

using namespace std;

// string stream;
unordered_map<uint64_t,string> buffer;
// ByteStream _output;

StreamReassembler::StreamReassembler(const size_t capacity)
    :_output(capacity)
{
    this->capacity = capacity;
    this->stream = "";
    this->buffer = buffer;
    this->nextInd = 0;
    this->bufferSize = 0;
    this->discarded = "";
    // this->_output = _output;
}


//! \details This function accepts a substring (aka a segment) of bytes,
//! possibly out-of-order, from the logical stream, and assembles any newly
//! contiguous substrings and writes them into the output stream in order.
void StreamReassembler::push_substring(const string &data, const size_t index, const bool eof) {
    // if(index+data.length()>capacity){
    //     // uint64_t remainingSize = capacity-(uint64_t)index;
    //     // data = data.substr(0,(int)remainingSize);
    //     return;
    // }

    if(index==nextInd){
        stream+=data;
        nextInd = nextInd+data.length();
        while(buffer.find(nextInd)!=buffer.end()){
            
            string newData = buffer[nextInd];
            buffer.erase(nextInd);
            if(nextInd+newData.length()>capacity){
                int remainingSize = capacity-nextInd;
                newData = newData.substr(0,remainingSize);
                stream+=newData;
                nextInd+=newData.size();
                bufferSize-=newData.length();
            }
            else{
                stream+=newData;
                nextInd+=newData.size();
                bufferSize-=newData.length();
            }
        }
        return;
    }
    else{
        buffer[index] = data;
        bufferSize+=data.length();
        return;
    }
}

size_t StreamReassembler::unassembled_bytes() const { return bufferSize; }

bool StreamReassembler::empty() const { return buffer.size() == 0; }

size_t StreamReassembler::ack_index() const { return nextInd; }

string StreamReassembler::getStream() {return this->stream; }


int main(){
    StreamReassembler obj(100);
    string s;
    int ind;
    for(int i = 0;i<3;i++){
        cin>>s>>ind;
        obj.push_substring(s,ind,false);
        cout<<obj.ack_index()<<endl;
    }
    cin>>s>>ind;
    obj.push_substring(s,ind,true);
    cout<<obj.getStream()<<endl;
    // string a = obj.getStream();
    return 0;
}