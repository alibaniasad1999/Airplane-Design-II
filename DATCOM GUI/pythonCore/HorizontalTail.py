# add Horizontal Tail files to DATCOM #
import csv
with open('HT.csv') as f:
    reader = csv.reader(f)
    for row in reader:
        a = row
# Chord Tip
CHRDTP = round(float(a[0]), 4)
# Chord Root
CHRDR = round(float(a[1]), 4)
# Semi Span (Exposed)
SSPNE = round(float(a[2]), 4)
# Semi Span (Theoretical)
SSPN = round(float(a[3]), 4)
# Sweep Angle
SAVSI = round(float(a[4]), 4)
# Reference chord station for inboard and outboard panel sweep angles, fraction of chord (اگه ارور دا 0.25 بزار(
CHSTAT = round(float(a[5]), 4)
# Twist angle (negative L.E rotated down)
TWISTA = round(float(a[6]), 4)
# Dihedral Angle
DHDADI = round(float(a[7]), 4)
# TYPE = 1.0 straight tapered platform
# TYPE = 2.0 double delta platform AR<3
# TYPE = 3.0 Cranked platform AR>3
TYPE = round(float(a[8]), 2)
RLPH = 69.167 - 39.208
HorizontalTailAirfoil = a[9]
def horizontal_tail_writer(file):
    # Name list
    file.write(' $HTPLNF ')
    file.write('CHRDTP = %s, ' % str(CHRDTP))
    file.write('CHRDR = %s,\n\t\t ' % str(CHRDR))
    file.write('SSPNE = %s, ' % str(SSPNE))
    file.write('SSPN = %s,\n\t\t ' % str(SSPN))
    file.write('SAVSI = %s, ' % str(SAVSI))
    file.write('CHSTAT = %s,\n\t\t ' % str(CHSTAT))
    file.write('TWISTA = %s, ' % str(TWISTA))
    file.write('DHDADI = %s,\n\t\t ' % str(DHDADI))
    file.write('RLPH = %s, ' % str(RLPH))
    file.write('TYPE = %s,' % str(TYPE))
    # End of File
    file.write('$\n')
    file.write(HorizontalTailAirfoil)
    file.write('\n')