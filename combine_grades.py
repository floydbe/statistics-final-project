#!/usr/bin/python

with open("grades.csv","w") as g:
	g.write("gender,grade\n")
	with open("male.csv","r") as m:
		for line in m:
			g.write("male,%s" % line)
	with open("female.csv","r") as f:
		for line in f:
			g.write("female,%s" % line)
	with open("unknown.csv","r") as u:
		for line in u:
			g.write("unknown,%s" % line)
