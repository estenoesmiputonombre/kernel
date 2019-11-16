import sys, socket

try: 
	target = int(sys.argv[1])
except (IndexError, ValueError):
	print("Error parsing args")
	sys.exit(2)

host = 'www.ietf.org'
port = 80
sock = socket.create_connection((host, port))

req = (
	'GET /rfc/rfc{rfcnum}.txt HTTP/1.1\r\n'
	'Host: {host}:{port}\r\n'
	'User-Agent: Python {version}\r\n'
	'Connection: close\r\n'
	'\r\n'
)

req = req.format(
	rfcnum =target,
	host   =host,
	port   =port,
	version="{}.{}{}".format(
				sys.version_info[0],
				sys.version_info[1],
				sys.version_info[2])
)

sock.sendall(req.encode('ascii'))
rfc_raw = bytearray()
while True:
	buf = sock.recv(4096)
	if not len(buf):
		break
	rfc_raw += buf
rfc = rfc_raw.decode('utf-8')
print(rfc)
