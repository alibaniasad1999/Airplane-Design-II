# add Options  files to DATCOM #
import csv
with open('Options.csv') as f:
    reader = csv.reader(f)
    for row in reader:
        a = row
# Refrence Area
SREF = round(float(a[0]), 2)
# Mean Aerodynamic chord
CBARR = round(float(a[1]), 4)
# Wing Span
BLREF = round(float(a[2]), 2)
# Surface Roughness
ROUGFC = round(float(a[3]), 7)
def options_writer(file):
    # Name list
    file.write(' $OPTINS ')
    # Refrence Area
    file.write('SREF = %s, ' % str(SREF))
    # Mean Aerodynamic chord
    file.write('CBARR = %s, ' % str(CBARR))
    # Wing Span
    file.write('BLREF = %s, ' % str(BLREF))
    # Surface Roughness
    file.write('ROUGFC = %s, ' % str(ROUGFC))
    # End of File
    file.write(' $\n')