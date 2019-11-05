#!/bin/bash

# Standard sed operations
sed 's/gili/world' text   		# Taking input from the file
sed 's/gili/world' > text 		# Taking input from the file
sed 's/gili/world' - 	  		# Taking input from the stdin 
cat text | sed 's/gili/world'   	# Taking input from the pipeline and write to the stdout
cat text | sed 's/gili/world' text	# Taking input from the pipleline and write to the text file

sed 's/gili/world/w other' text


