# tc = t/c
def wing_writer(file, tc, Sref, AR, Sweep):
    import math
    # add wing files to DATCOM #
    # b Span exposed
    b = round(math.sqrt(AR * Sref), 3)
    # Chord Tip
    CHRDTP = round(2 * Sref / ((1 + tc) * b) * tc, 3)
    # Chord Root
    CHRDR = round(2 * Sref / ((1 + tc) * b), 3)
    # Semi Span (Exposed)
    # 1 foot in body
    SSPNE = b - 1.0
    # Semi Span (Theoretical)
    SSPN = round(81.69 / 2, 3)
    # Sweep Angle
    SAVSI = Sweep
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