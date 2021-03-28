# add wing files to DATCOM #
# Tip Chord
CHRDTP = 1.367
# Root Chord
CHRDR = 2.96
# Semi Span (Exposed)
SSPNE = 11.34
# Semi Span (Theoretical)
SSPN = 12.75
# Sweep Angle
SAVSI = 35.0
# Reference chord station for inboard and outboard panel sweep angles, fraction of chord
CHSTAT = 0.25
# Twist angle (negative L.E rotated down)
TWISTA = -1.2
# Dihedral Angle
DHDADI = 1.0
# TYPE = 1.0 straight tapered platform
# TYPE = 2.0 double delta platform AR<3
# TYPE = 3.0 Cranked platform AR>3
TYPE = 1.0
WingAirfoil = 'NACA-W-6-65-210'
def wing_writer(file):
    # Name list
    file.write(' $WGPLNF ')
    file.write('CHRDTP = %s, ' % str(CHRDTP))
    file.write('CHRDR = %s,\n\t\t ' % str(CHRDR))
    file.write('SSPNE = %s, ' % str(SSPNE))
    file.write('SSPN = %s,\n\t\t ' % str(SSPN))
    file.write('SAVSI = %s, ' % str(SAVSI))
    file.write('CHSTAT = %s,\n\t\t ' % str(CHSTAT))
    file.write('TWISTA = %s, ' % str(TWISTA))
    file.write('DHDADI = %s,\n\t\t ' % str(DHDADI))
    file.write('TYPE = %s,' % str(TYPE))
    # End of File
    file.write('$\n')
    file.write(WingAirfoil)
    file.write('\n')