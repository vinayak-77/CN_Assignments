#include "stream_reassembler.hh"
#include "byte_stream.hh"

// You will need to add private members to the class declaration in `stream_reassembler.hh`

#include<iostream>
template <typename... Targs>
void DUMMY_CODE(Targs &&... /* unused */) {}

using namespace std;

size_t min(size_t a,size_t b){
	if(a<b){
		return a;
	}
	return b;
}

size_t max(size_t a,size_t b){
	if(a>b){
		return a;
	}
	return b;
}

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
    this->dataToAdd = "";
    
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
    if(eof){
    	stream_out().end_input();
    	
    }
    if(index>=stream_out().remaining_capacity()+nextInd){
        return;
    }

    if(index<=nextInd){
        size_t capacityRem = _output.remaining_capacity()+nextInd;
        stream+=data;
       
        dataToAdd = data;
         if(index<nextInd){
        	dataToAdd = data.substr(nextInd,max(0,min(data.length()-nextInd,capacityRem-nextInd)));
        }
        nextInd = nextInd+min(_output.remaining_capacity(),data.length());
        //if(nextInd>capacityRem){
            //size_t remainingSize = nextInd-capacityRem;
            //dataToAdd = dataToAdd.substr(0,data.length()-remainingSize);
        //}
        
        while(nextInd<capacityRem && buffer.find(nextInd)!=buffer.end()){
            
            string newData = buffer[nextInd];
            buffer.erase(nextInd);
            if(nextInd>capacity){
                int remainingSize = capacity-nextInd;
                newData = newData.substr(0,remainingSize);
                stream+=newData;
                dataToAdd+=newData;
                nextInd+=newData.size();
                bufferSize-=newData.length();
                
            }
            else{
                stream+=newData;
                dataToAdd+=newData;
                nextInd+=newData.size();
                bufferSize-=newData.length();
                
            }
        }
        stream_out().write(dataToAdd);
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

string StreamReassembler :: getOutput() {return _output.read(nextInd); }


// int main(){
//     StreamReassembler obj(10);
//     string s;
//     int ind;
//     for(int i = 0;i<1;i++){
//         cin>>s>>ind;
//         obj.push_substring(s,ind,false);
//         cout<<obj.ack_index()<<endl;
//     }
//     cin>>s>>ind;
//     obj.push_substring(s,ind,true);
//     string final = obj.getOutput();
//     cout<<final<<endl;
//     // string a = obj.getStream();
//     return 0;
// }
