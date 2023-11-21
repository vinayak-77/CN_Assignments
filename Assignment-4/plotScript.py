clientIP = '10.0.0.1'
serverIP = '10.0.0.6'

from matplotlib import pyplot as plt



from scapy.all import *
# import datetime

packets = rdpcap('packetsCapture.pcap')

timeAxis = []
cnwdAxis = []

startTime = -1

lastAck = -1

ssthresh = []

currBytesInFlight = 0
for packet in packets:
  if(packet[IP].src == serverIP):
    lastAck = packet[TCP].ack
    
    
    
  elif('IP' in packet and packet.haslayer("TCP") and packet[IP].src == clientIP ):
    
    if(startTime == -1):
      startTime = packet.time
    if(lastAck==-1 and packet[TCP].flags.A):
      lastAck = packet[TCP].ack
      # startTime = 0
    
    
    
    # if(packet[TCP].flags.A and lastAck == packet[TCP].ack):
    #   currBytesInFlight = 0
     
    #   cnwdAxis.append(currBytesInFlight)
    #   timeAxis.append(packet.time-startTime)
      
    
    
    
    if(packet[TCP].flags.A and (lastAck == packet[TCP].ack)):
    
      currBytesInFlight+=(len(packet.payload)*1.5)
      
      lastAck = packet[TCP].ack
      cnwdAxis.append(currBytesInFlight)
      timeAxis.append(packet.time-startTime)
      
    
    else:
      currBytesInFlight = 0
      lastAck = packet[TCP].ack
      cnwdAxis.append(currBytesInFlight)
      timeAxis.append(packet.time-startTime)
    if(startTime == packet.time):
      ssthresh.append(packet.window) 
      continue
    ssthresh.append(packet.window * 512)

plt.ylabel("Window size (B)")
plt.xlabel("Time (s)")
plt.plot(timeAxis,cnwdAxis)
# plt.plot(timeAxis,ssthresh)
plt.show()

# plt.show()
		