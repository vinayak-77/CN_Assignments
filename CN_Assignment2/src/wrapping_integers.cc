#include "wrapping_integers.hh"

#include <iostream>
#include <cmath>

using namespace std;
uint64_t limit = 1ll<<32;



//! Transform an "absolute" 64-bit sequence number (zero-indexed) into a WrappingInt32
//! \param n The input absolute 64-bit sequence number
//! \param isn The initial sequence number
WrappingInt32 wrap(uint64_t n, WrappingInt32 isn) { return (isn + uint32_t(n)); }

//! Transform a WrappingInt32 into an "absolute" 64-bit sequence number (zero-indexed)
//! \param n The relative sequence number
//! \param isn The initial sequence number
//! \param checkpoint A recent absolute 64-bit sequence number
//! \returns the 64-bit sequence number that wraps to `n` and is closest to `checkpoint`
//!
//! \note Each of the two streams of the TCP connection has its own ISN. One stream
//! runs from the local TCPSender to the remote TCPReceiver and has one ISN,
//! and the other stream runs from the remote TCPSender to the local TCPReceiver and
//! has a different ISN.
uint64_t unwrap(WrappingInt32 n, WrappingInt32 isn, uint64_t checkpoint) {

 uint32_t num = n.raw_value();
 uint32_t start = isn.raw_value();
 WrappingInt32 relativeCheckpoint = wrap(checkpoint,isn); //Converting checkpoint to relative seq no.
 uint32_t dist = num-relativeCheckpoint.raw_value(); // Finding distance between num and relative checkpoint. Difference between distances should be same in absolute and relative seq
 uint64_t ans;
 if(limit-dist<dist){ //wrap condition
 	ans = dist+checkpoint<limit ? dist+checkpoint : dist+checkpoint-limit;
 	
 }
 else{
 	ans = dist+checkpoint;
 }
 ans = ans<0 ? ans+limit : ans;
 return ans;
}
