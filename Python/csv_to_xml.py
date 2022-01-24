import csv

f = open('ref_extract_with_notes_test.csv')
csv_f = csv.reader(f)   
data = []

for row in csv_f: 
	data.append(row)
f.close()

#print (data[1:])

def convert_row(row):
    return """<note type="editorial" xml:id="%s" resp="%s">%s</note>\n""" % (row[0], row[4], row[3])

output_file = open('xml_notes.xml', 'w')
output_file.writelines(convert_row(L) for L in data[2:])


#print ('\n'.join([ convert_row(row) for row in data[1:]]))