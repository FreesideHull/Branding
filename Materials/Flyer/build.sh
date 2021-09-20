#!/usr/bin/env bash

source="${1:-flyer.html}";

target="${source%.*}.pdf"

# Build the flyer
weasyprint "${source}" "${target}" -v

# If evince is installed, preview the pdf
which evince >/dev/null 2>&1
if [[ "$?" -eq 0 ]]; then
	evince "${target}";
fi
