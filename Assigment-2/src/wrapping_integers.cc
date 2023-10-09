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
 WrappingInt32 relativeCheckpoint = wrap(checkpoint,isn); // relative distance between checkpoint and isn and our task is to find n as close as possible to checkpoint
 if(limit-(n.raw_value()-relativeCheckpoint.raw_value())<(n.raw_value()-relativeCheckpoint.raw_value())){ // Closer to 1<<32, so last bytes before checkpoint around
 	int64_t relAns = checkpoint-((UINT32_MAX+1)-(n-relativeCheckpoint));
 	uint64_t ans;
 	if(relAns<0){ //Overflow condition
 		relAns+=limit;
 	}
 	ans = (uint64_t)relAns;
 	return ans;
 }
 else{ // Closer to checkpoint, so first bytes after checkpoint
 	int64_t relAns = (n-relativeCheckpoint)+checkpoint;
 	uint64_t ans;
 	if(relAns<0){ //Overflow condition
 		relAns+=limit;
 	}
 	ans = (uint64_t)relAns;
 	return ans;
 }
 
}
