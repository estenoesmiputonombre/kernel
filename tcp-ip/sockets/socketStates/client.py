import socket

UDP_IP = "0.0.0.0"
UDP_PORT = 5005
MESSAGE = "Hello world!"

print("IP: {}:{}".format(UDP_IP, UDP_PORT))

sock = socket.socket(socket.AF_INET,    # Internet
				     socket.SOCK_DGRAM) # UDP

sock.sendto(MESSAGE.encode(), (UDP_IP, UDP_PORT))
