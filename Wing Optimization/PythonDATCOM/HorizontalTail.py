# add Horizontal Tail files to DATCOM #
# Chord Tip
CHRDTP = 1.7
# Chord Root
CHRDR = 6.0
# Semi Span (Exposed)
SSPNE = 21.07/2
# Semi Span (Theoretical)
SSPN = 21.07/2
# Sweep Angle
SAVSI = 30.0
# Reference chord station for inboard and outboard panel sweep angles, fraction of chord
CHSTAT = 0.5
# Twist angle (negative L.E rotated down)
TWISTA = 0.0
# Dihedral Angle
DHDADI = 0.0
# LONGITUDIPIL DISTANCE BETWEEN CG AND CENTROID OF SH
RLPH = 69.167 - 39.208
# TYPE = 1.0 straight tapered platform
# TYPE = 2.0 double delta platform AR<3
# TYPE = 3.0 Cranked platform AR>3
TYPE = 1.0
HorizontalTailAirfoil = 'NACA-H-4-0012'
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