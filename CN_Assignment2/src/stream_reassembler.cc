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

// ByteStream _output;

StreamReassembler::StreamReassembler(const size_t capacity)
    :_output(capacity)
{
    this->capacity = capacity;
    this->stream = "";
    
    this->nextInd = 0;
    this->bufferSize = 0;
    this->dataToAdd = "";
    this->capacityRem = capacity;
    this->eofVal = false;
    
    // this->_output = _output;
}


//! \details This function accepts a substring (aka a segment) of bytes,
//! possibly out-of-order, from the logical stream, and assembles any newly
//! contiguous substrings and writes them into the output stream in order.
void StreamReassembler::push_substring(const string &data, const size_t index, const bool eof) {
    
    if(eof){
        eofVal = true;
    }
    // else{
    //     stream_out().setEOF(false);
    // }
    	
    
    string tempData = data;
    if(index>_output.remaining_capacity()+nextInd || _output.remaining_capacity()==0){
        if(eofVal && buffer.size()==0){
            _output.end_input();
        }
        return;
    }

    if(index>nextInd){

        size_t cnt = 0;
        for(size_t i = 0;i<tempData.length() && buffer.size()<=capacity;i++){
            buffer[i+index] = tempData[i];
            cnt++;
        }
        capacityRem-=cnt;
        capacityRem = max(0,capacityRem);
        bufferSize+=data.length();
        return;
    }

    else if(index==nextInd){
        dataToAdd = tempData.substr(0,min(tempData.length(),_output.remaining_capacity()));

        for(size_t i = nextInd;i<nextInd+dataToAdd.length();i++){
            if(buffer.find(i)!=buffer.end()){
                buffer.erase(i);
                capacityRem++;
            }
        }
        nextInd+=dataToAdd.length();
        
        size_t start = nextInd;
        stream_out().write(dataToAdd);
        while(_output.remaining_capacity() && buffer.find(start)!=buffer.end()){
            
            string newData = buffer[start];
            
            buffer.erase(start);
            start++;
            capacityRem++;
            
            stream+=newData;
            dataToAdd = newData;

            bufferSize-=newData.length();
                
            stream_out().write(dataToAdd);
        }
        nextInd = start;
        
        if(eofVal && buffer.size()==0){
            _output.end_input();
        }
    }
    else{
        size_t startInd = nextInd-index;
        if(startInd>=tempData.length()){
            if(eofVal && buffer.size()==0){
            _output.end_input();
        }
            return;
        }
        dataToAdd = tempData.substr(startInd,min(tempData.length()-startInd,_output.remaining_capacity()));
        
        for(size_t i = nextInd;i<nextInd+dataToAdd.length();i++){
            if(buffer.find(i)!=buffer.end()){
                buffer.erase(i);
                capacityRem++;
            }
        }

        nextInd+=dataToAdd.length();
        
        size_t start = nextInd;
        stream_out().write(dataToAdd);
        while(_output.remaining_capacity() && buffer.find(start)!=buffer.end()){
            
            string newData = buffer[start];
            
            buffer.erase(start);
            start++;
           
            capacityRem++;
            stream+=newData;
            dataToAdd = newData;

            bufferSize-=newData.length();
                
            stream_out().write(dataToAdd);
        }
        nextInd = start;
        
        if(eofVal && buffer.size()==0){
            _output.end_input();
        }
    }
    
}

size_t StreamReassembler::unassembled_bytes() const { return buffer.size(); }

bool StreamReassembler::empty() const { return buffer.size() == 0; }

size_t StreamReassembler::ack_index() const { return nextInd; }

// string StreamReassembler::getStream() {return this->stream; }

// string StreamReassembler :: getOutput() {return _output.read(nextInd); }


