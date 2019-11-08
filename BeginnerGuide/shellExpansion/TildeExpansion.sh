#!/bin/bash

# if a word begins with an unquoted tilde character("~")

# if we want to get the actual directory, we can use it. Then, the $PWD replace the value of the tilde prefix

ls $PWD
ls ~+

# if we want to get the value of the variable $OLDVARIABLE, we can acces it using (if it is set)

ls $OLDPWD
ls ~-


