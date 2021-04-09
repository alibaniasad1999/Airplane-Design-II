# add Vertical Tail files to DATCOM #
# Chord Tip
CHRDTP = 3.44
# Chord Root
CHRDR = 12.29
# Semi Span (Exposed)
SSPNE = 5.667 + 0.5
# Semi Span (Theoretical)
SSPN = 10.5
# Sweep Angle
SAVSI = 38.0
# Reference chord station for inboard and outboard panel sweep angles, fraction of chord
CHSTAT = 0.5
# Twist angle (negative L.E rotated down)
TWISTA = 0.0
# Dihedral Angle
# DHDADI = 1.0
# TYPE = 1.0 straight tapered platform
# TYPE = 2.0 double delta platform AR<3
# TYPE = 3.0 Cranked platform AR>3
TYPE = 1.0
VerticalTailAirfoil = 'NACA-V-4-0012'
def vertical_tail_writer(file):
    # Name list
    file.write(' $VTPLNF ')
    file.write('CHRDTP = %s, ' % str(CHRDTP))
    file.write('CHRDR = %s,\n\t\t ' % str(CHRDR))
    file.write('SSPNE = %s, ' % str(SSPNE))
    file.write('SSPN = %s,\n\t\t ' % str(SSPN))
    file.write('SAVSI = %s, ' % str(SAVSI))
    file.write('CHSTAT = %s,\n\t\t ' % str(CHSTAT))
    file.write('TWISTA = %s, ' % str(TWISTA))
#    file.write('DHDADI = %s,\n\t\t ' % str(DHDADI))
    file.write('TYPE = %s,' % str(TYPE))
    # End of File
    file.write('$\n')
    file.write(VerticalTailAirfoil)
    file.write('\n')