#!/bin/bash
# This script creates an index of a genome for bfast with highest accuracity for reads <40bp
# Based on the sets of masks reported in the manuscript of bfast
# Usage: pass the reference genome file in fasta (.brg needs to be in same dir) as an argument
 
genomefile=$1
numThreads=8
 
bfast index -f $genomefile -n $numThreads -i 1 -A 0 -m 111111111111111111 -w 14
bfast index -f $genomefile -n $numThreads -i 2 -A 0 -m 11110100110111101010101111 -w 14
bfast index -f $genomefile -n $numThreads -i 3 -A 0 -m 11111111111111001111 -w 14
bfast index -f $genomefile -n $numThreads -i 4 -A 0 -m 1111011101100101001111111 -w 14
bfast index -f $genomefile -n $numThreads -i 5 -A 0 -m 11110111000101010000010101110111 -w 14
bfast index -f $genomefile -n $numThreads -i 6 -A 0 -m 1011001101011110100110010010111 -w 14
bfast index -f $genomefile -n $numThreads -i 7 -A 0 -m 1110110010100001000101100111001111 -w 14
bfast index -f $genomefile -n $numThreads -i 8 -A 0 -m 1111011111111111111 -w 14
bfast index -f $genomefile -n $numThreads -i 9 -A 0 -m 11011111100010110111101101 -w 14
bfast index -f $genomefile -n $numThreads -i 10 -A 0 -m 111010001110001110100011011111 -w 14
 
echo "Done!"
