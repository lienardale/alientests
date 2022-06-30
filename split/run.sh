#!/bin/sh
touch main_split.c main_ftsplit.c
rm ftsplit_output split_output
python3 test.py $1
rm main_split.c main_ftsplit.c