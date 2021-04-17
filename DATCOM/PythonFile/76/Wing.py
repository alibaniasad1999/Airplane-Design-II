# add wing files to DATCOM #
# Chord Tip
CHRDTP = 4.76
# Chord Root
CHRDR = 17.0
# Semi Span (Exposed)
SSPNE = 89.44/2 - 3.9
# Semi Span (Theoretical)
SSPN = 89.44/2
# Sweep Angle
SAVSI = 30.0
# Reference chord station for inboard and outboard panel sweep angles, fraction of chord (اگه ارور دا 0.25 بزار(
CHSTAT = 0.5
# Twist angle (negative L.E rotated down)
TWISTA = 0.0
# Dihedral Angle
DHDADI = 5.0
# TYPE = 1.0 straight tapered platform
# TYPE = 2.0 double delta platform AR<3
# TYPE = 3.0 Cranked platform AR>3
TYPE = 1.0
# WingAirfoil = 'NACA-W-6-65-210'
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
    # file.write(WingAirfoil)
    # file.write('\n')