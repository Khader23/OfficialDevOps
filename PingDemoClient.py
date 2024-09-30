import os, sys, socket, struct, select, time


ETH_P_ALL = 3
# Check what is means.
with socket.socket(socket.AF_PACKET,socket.SOCK_RAW, socket.htons(ETH_P_ALL))
# socket function used to create the socket descriptor
# ETH_P _ALL retrieves all ethernet frames and all protocols
# "htons" translates an unsigned short integer into network byte order
hostname = "www.yahoo.com"


def calculate_checksum(data):


#Packet Header details
def my_ping(hostname, timeout =1):





# Include dummy data
# Include checksum

# Create a packet
# Add data to the packet header

#function to send single ping
my_ping =


def main():
    ping = my_ping(hostname)

