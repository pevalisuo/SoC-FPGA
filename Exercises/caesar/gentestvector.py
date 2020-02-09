#!/bin/python
import sys

n=1
if len(sys.argv)>1:
    n=int(sys.argv[1])
    print("Yes")
else:
    print("No")

A=ord('A')
Z=ord('Z')
a=ord('a')
z=ord('z')

def caesar(x):
    # Capital ?
    if (x>=ord('A')) and  (x<=ord('Z')):
        output=((x-ord('A')+n)%(ord('Z')-ord('A')+1))+ord('A');
    elif (x>=ord('a')) and  (x<=ord('z')):
        output=((x-ord('a')+n)%(ord('z')-ord('a')+1))+ord('a');
    else:
        output='0'
    return output

input=[]

for pivot in (A,Z,a,z):
    for i in range(-2,3):
        input.append(pivot+i)

output = [caesar(i) for i in input]

print input
print output
