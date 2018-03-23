#!/usr/bin/python

inp = raw_input('Enter the string\n')
vowels='aeiouAEIOU'
def mod(s1):
    s2=''
    for char in s1:
        if not (char.isalpha()):
            s2+=char
        else:
            if char in vowels:
                s2+=char
            else:
                s2+=char+'o'+char
    return s2
print mod(inp)
