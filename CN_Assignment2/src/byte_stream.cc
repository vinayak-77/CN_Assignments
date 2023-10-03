#include "byte_stream.hh"

#include <algorithm>
#include <deque>
#include<string>

// You will need to add private members to the class declaration in `byte_stream.hh`

/* Replace all the dummy definitions inside the methods in this file. */


using namespace std;

// deque <char> buffer;

ByteStream::ByteStream(const size_t capa)
{
  this->capacity = capa;
  this->end = false;
  this->Input = "";
  this->Output = "";
  this->lengthWritten = 0;
  this->lengthRead = 0;
  this->eofVal = false;
}

size_t ByteStream::write(const string &data) {
  
  size_t n = data.length();
  size_t currWritten = 0;

  if(capacity<n){
    set_error();
  }
  
  for(size_t i = 0;i<n && capacity>0;i++){
    Input+=data[i];
    Output+=data[i];
    stream.push_back(data[i]);
    currWritten++;
    capacity--;
    lengthWritten++;
  }
  
  return currWritten;
}

//! \param[in] len bytes will be copied from the output side of the buffer
string ByteStream::peek_output(const size_t len) const {
  string output;
  for(size_t i = 0;i<len && i<Output.length();i++){
    
    output+=Output[i];
  }
  
  return output;
}

//! \param[in] len bytes will be removed from the output side of the buffer
void ByteStream::pop_output(const size_t len) {
  
  size_t sz = Output.length();
  for(size_t i = 0;i<len && i<sz;i++){
    stream.pop_front();
    Output.erase(Output.begin());
    capacity++;
    
    lengthRead++;
    
  }
  
  if(len>sz){
    set_error();
  }
}

//! Read (i.e., copy and then pop) the next "len" bytes of the stream
//! \param[in] len bytes will be popped and returned
//! \returns a string
std::string ByteStream::read(const size_t len) {
  string output;
  size_t sz = Output.length();
  for(size_t i = 0;i<len && i<sz;i++){
    output+=Output[0];
    stream.pop_front();
    Output.erase(Output.begin());
    capacity++;
    
    lengthRead++;
    
  }
  
  if(len>sz){
    set_error();
  }
  return output;
}

void ByteStream::end_input() { 
  end = true;
}

bool ByteStream::input_ended() const { 
  return end;
}

size_t ByteStream::buffer_size() const {
  return Output.size();
 }

bool ByteStream::buffer_empty() const {
  return Output.size()==0; 
}

bool ByteStream::eof() const {
  return eofVal && buffer_empty();
}

size_t ByteStream::bytes_written() const { 

  return lengthWritten;
}

size_t ByteStream::bytes_read() const {
  return lengthRead;
}

size_t ByteStream::remaining_capacity() const { 
  return capacity; 
}

void ByteStream::setEOF(bool eof){
  eofVal = eof;
}

void ByteStream::setend(bool end){
  endVal = end;
}
