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
  this->currPtrLeft = 0;
  this->currPtrRight = 0;
  this->end = false;
  this->Input = "";
  this->Output = "";
  this->lengthWritten = 0;
  this->lengthRead = 0;
}

size_t ByteStream::write(const string &data) {
  
  size_t n = data.length();
  size_t i = 0;

  if(capacity<n){
    set_error();
  }
  
  while(capacity && i<n){
    Input+=data[i];
    Output+=data[i];
    buffer.push_back(data[i]);
    i++;
    capacity--;
    lengthWritten++;
    currPtrRight++;

  }
  
  return i;
}

//! \param[in] len bytes will be copied from the output side of the buffer
string ByteStream::peek_output(const size_t len) const {
  string output;
  
  size_t start = currPtrLeft;
  for(size_t i = start;i<start+len && i<currPtrRight;i++){
    
    output+=Output[i];
  }
  
  return output;
}

//! \param[in] len bytes will be removed from the output side of the buffer
void ByteStream::pop_output(const size_t len) {
  
  size_t remLen = len;
  while(remLen && currPtrLeft<currPtrRight){
    this->buffer.pop_front();
    currPtrLeft++;
    capacity++;
    remLen--;
    lengthRead++;
  }
  if(remLen){
  	set_error();
  }
}

//! Read (i.e., copy and then pop) the next "len" bytes of the stream
//! \param[in] len bytes will be popped and returned
//! \returns a string
std::string ByteStream::read(const size_t len) {
  string output;
  size_t start = currPtrLeft;
  for(size_t i = start;i<start+len && i<currPtrRight;i++){
    this->buffer.pop_front();
    capacity++;
    output+=Output[i];
    lengthRead++;
    currPtrLeft++;
  }
  
  if(start+len>currPtrRight){
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
  return buffer.size();
 }

bool ByteStream::buffer_empty() const {
  return buffer.size()==0; 
}

bool ByteStream::eof() const {
  return buffer_empty() && input_ended();
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
