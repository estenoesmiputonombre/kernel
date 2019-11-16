#!/usr/bin/python
from BaseHTTPServer import BaseHTTPRequestHandler, HTTPServer

HOST = '0.0.0.0'
PORT = 80

class MyHandler(BaseHTTPRequestHandler):

	do_GET(self):
		self.send_response(200)
		self.send_header('Content-Type', 'application/json')
		self.end_headers()
		self.wfile.write("{\"content\": \"Hello world\"}")
		return

try:
	server = HTTPServer((HOST, PORT), MyHandler)
	print("Starting the server at {}:{}".format(HOST, PORT))
	
	server.serve_forever()
except (KeyboardInterrupt):
	server.socket.close()
