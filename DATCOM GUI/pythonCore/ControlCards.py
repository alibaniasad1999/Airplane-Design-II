# add Control files to DATCOM #
# Dimensions M for metric FT for imperial unit
import csv
with open('../ControlCards.csv') as f:
    reader = csv.reader(f)
    for row in reader:
        a = row
DIM = a[0]
# Derivatives Unit DEG = degree
DERIV = a[1]
# Dynamic Derivatives on: DAMP
def control_cards_writer(file):
    # Dimensions
    file.write('DIM %s\n' % DIM)
    # Derivatives Unit
    file.write('DERIV %s\n' % DERIV)
    # Dynamic Derivatives
    if a[2] != 'Null':
        file.write('DAMP\n')
    # Add Part
    if a[3] != 'Null':
        file.write('PART\n')
    if a[4] != 'Null':
        file.write('BUILD\n')