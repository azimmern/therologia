import csv

#Update this file name with the latest file version, e.g. ref_extract_2025_07_11
f = open("ref_extract_2022_04_11.csv")
csv_f = csv.reader(f)   
data = []

for row in csv_f: 
	data.append(row)
f.close()

#defines a function convert_row(row) that takes csv data and pushes it to an xml <note>

def convert_row(row):
    return """<note type="editorial" xml:id="%s" resp="%s">%s</note>\n""" % (row[0], row[4], row[3])

#overwrites the file xml_notes.xm, converting each row into a separate <note>
output_file = open('xml_notes.xml', 'w')
output_file.writelines(convert_row(L) for L in data[2:])
