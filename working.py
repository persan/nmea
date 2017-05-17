import os
from os.path import *
import glob
import re

matcher = re.compile(r"^((.+ Field Number:)|(.+ Checksum)|\s*--\s+\d+\.\s+(\S+.*)|(\s+null;))")

def process(path):
    with file(path) as inf:
       buffer = inf.read().split("\n")
    state = 0
    index = 0
    ix = 0
    data = []
    for line in buffer:
        m = matcher.match(line)
        if m:
            g = m.groups()
            if g[1]:
                state = 1
            elif g[3] and state == 1:
                data.append("      %s : NMEA_Field;" % g[3].replace(" ","_").replace(",","_").replace("=","_")\
                .replace("__","_").replace("__","_").replace("__","_").replace("__","_"))
            elif g[2]:
                state = 0
            elif g[4]:
                index = ix
        ix = ix+1
    if index > 0:
        with file(path, "w") as outf:
            outf.write("\n".join(buffer[0:index]))
            outf.write("\n")
            outf.write("\n".join(data))
            outf.write("\n")
            outf.write("\n".join(buffer[index+1:]))

def main():
    for path in glob.glob("src/messages/*.ads"):
        process(path)
main()
