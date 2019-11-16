import socket

UDP_IP = "0.0.0.0"
UDP_PORT = 5005

sock = socket.socket(socket.AF_INET,    # Address family
					 socket.SOCK_DGRAM) # Socket datagram
sock.bind((UDP_IP, UDP_PORT))

try:
	while True:
		data, addr = sock.recvfrom(1024) # Buffer size is 1024 bytes
		print("Received message from {}\nData: {}\n".format(addr, data.decode()))
except (KeyboardInterrupt):
	print("Closing the socket")
	sock.close()
