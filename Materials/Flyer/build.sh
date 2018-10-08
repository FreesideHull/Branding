#!/usr/bin/env bash

# Build the flyer
weasyprint flyer.html flyer.pdf -v

# If evince is installed, preview the pdf
which evince >/dev/null 2>&1
if [[ "$?" -eq 0 ]]; then
	evince flyer.pdf;
fi
