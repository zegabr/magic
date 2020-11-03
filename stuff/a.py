"""This script recieves 3 arguments: file_to_be_changed, extra_things_to_add and a tag.
   It will get the content inside extra_things_to_add and replace the content in file_to_be_changed which is inside the tag string.

   Exemple:
   if file_to_be_changed is:
	   content_1
	   #tag-here
	   (content_2)
	   #tag-here
	
	and extra_things_to_add is:
		content_3
		#tag-here
		content_4
		#tag-here
	
	then, after running 
		python3 a.py file_to_be_changed extra_things_to_add  '#tag-here'
		the file_to_be_changed will become:
		content_1
	   	#tag-here
	   	content_4
	   	#tag-here

"""

import sys

FILE = sys.argv[1]
EXTRA = sys.argv[2]
TAG = sys.argv[3]

origin = open(EXTRA,'r')
extra = origin.read().split('\n')
origin.close()

#get lines to be inserted
new_lines = []
on_tag = False
for line in extra: 
	if line == TAG:
		on_tag = not on_tag
	elif on_tag:
		new_lines.append(line)

#open file to read
curr_file = open(FILE,'r')
curr_file_lines = curr_file.read().split('\n')
curr_file.close()

#get all file content without the already inserted extras
new_file = []
out_of_tag = True
for line in curr_file_lines: 
	if line == TAG:
		out_of_tag = not out_of_tag
	elif out_of_tag:
		new_file.append(line)

new_file_with_new_lines = new_file
new_file_with_new_lines.append(TAG)

# add new extra content to file
for line in new_lines: 
	new_file_with_new_lines.append(line)

new_file_with_new_lines.append(TAG)

final_text = ''
for line in new_file_with_new_lines:
	if line != '\n' and line != '':
		final_text   += line + "\n"

#write in file
final_file = open(FILE,'w')
final_file.write(final_text ) 
final_file.close()

