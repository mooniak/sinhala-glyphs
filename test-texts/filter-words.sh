#!/bin/bash

# Check if the correct number of arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <word_list_file> <unicode_sequence>"
    exit 1
fi

# Assign arguments to variables
word_list_file=$1
unicode_sequence=$2

# Check if the word list file exists
if [ ! -f "$word_list_file" ]; then
    echo "File not found: $word_list_file"
    exit 1
fi

# Filter words containing the specified Unicode sequence
grep "$unicode_sequence" "$word_list_file"
