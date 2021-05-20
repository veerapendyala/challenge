#!/usr/bin/env python

object1 = {"a":{"b":{"c":"d"}}}
key1 = "a/b/c"

print (object1)
print (key1)

object2 = {"x":{"y":{"z":"a"}}}
key2 = "x/y/z"

print (object2)
print (key2)

def nesFunction(object1, key1 ):
    x=[x for x in key1.split("/")]
    print (x)
    innerVal = object1[x[0]] [x[1]] [x[2]]
    return innerVal

value = nesFunction(object1, key1)
print (value)
value = nesFunction(object2, key2)
print (value)
