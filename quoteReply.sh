#!/bin/bash

function quote {
	local s=${1}
	printf "'%s'" "$s"
}

quote hello world
