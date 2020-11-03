"""
this script recieves 3 arguments: 
    F the file to be changed,
    CONTENT the content of the line that must be changed
    NEW_CONTENT the content to replace the line that has CONTENT     
"""

import sys

FILE = sys.argv[1]
CONTENT = sys.argv[2]
NEW_CONTENT = sys.argv[3]

file_obj = open(FILE, 'r')
lines = file_obj.read().split('\n')
file_obj.close()

#find content and replace it
found = False
for i in range(len(lines)):
    if CONTENT in lines[i]:
        lines[i] = NEW_CONTENT
        found = True
        break

if not found:
    lines.append(NEW_CONTENT)

#rewrite file
text = '\n'.join(lines)
file_obj = open(FILE, 'w')
file_obj.write(text)
file_obj.close()