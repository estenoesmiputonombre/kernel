from urllib import request

# The HTTPResponse implements the interface io.BufferedIOBase
# We can make a request to a endpoint, and play with it 
response = request.urlopen('http://www.debian.org')

# we can read an amount of bytes of the body or 
# read all the response body, using the method HTTPResponse.read([amt])
# If we use this line, we will take all the body, and the next calls to the buffer will be empty
# print("Length of the body: {}".format(len(response.read()))) 
print("Reading the first 10 bytes: {}".format(response.read(10)))

# We can read the body and write it to a buffer
# We can use HTTPResponse.readinto(b). It returns the number of bytes readed
buffer = bytearray(11)
n = response.readinto(buffer)
print("Reading {} bytes from the body: {}".format(n, buffer))

# We can get an specific header of the response
# using the HTTPResponse.getheader(name, default=None)
print("Server: {}".format(response.getheader("Server")))

# We can get all the headers of the reponse
# using the HTTPResponse.getheaders() return a list of (header, value) tuples.
for (key, value) in response.getheaders():
	print("{}: {}".format(key, value))

# We can get the fileno of the underlying socket
# using HTTPResponse.fileno()
print("fileno of the socket: {}".format(response.fileno()))

# We can get the reponse headers.
# using HTTPResponse.msg returns http.client.HTTPMessage instance
# is a subclass of email.message.Message
print("Object msg of the HTTPResponse: {}".format(response.msg))

# We can get the version of the protocol HTTP
# Using the HTTPResponse.version
print("HTTP/{}".format(".".join(list(str(response.version)))))

# We can get the status of the response
# Using the HTTPResponse.status
print("Status: ".format(response.status))

# We can return the reason phrase returned by the server
# Using the HTTPResponse.reason
print("HTTPResponse.reason: {}".format(response.reason))

# Debugging hook. If it is greater than zero, messages
# will be printed to stdout as the response is read and parsed.
print("HTTPResponse.debuglevel: {}".format(response.debuglevel))

# Is the stream closed?
# Using HTTPResponse.closed it returns a boolean
print("HTTPResponse.closed: {}".format(response.closed))
