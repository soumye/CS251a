#!/usr/bin/python
import sys
n1=raw_input("Consonant Repetition : ")
n2=raw_input("Vowel Repetition : ")
if (not(n1.isdigit()) or not(n2.isdigit()) or n1<0 or n2<0):
    print " Invalid values\n"
    sys.exit()
vowels='aeiouAEIOU'
v=raw_input("Enter the vowel : ")
if v[0] not in vowels:
    print "Not a vowel\n"
    sys.exit()
inp = raw_input('Enter the string\n')
n1=eval(n1)
n2=eval(n2)
def mod(s1):
    s2=''
    for char in s1:
        if not (char.isalpha()):
            s2+=char
        else:
            if char in vowels:
                s2+=char*n2
            else:
                if n1>0:                    
                    s2+=(char+v[0])*(n1-1)+char
    return s2
print 'Output : '+mod(inp)
