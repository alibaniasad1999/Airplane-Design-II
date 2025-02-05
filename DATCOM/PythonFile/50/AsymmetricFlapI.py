import LoopWriter
# add Asymmetric Flap files to DATCOM #
# FTYPE = 1.0 plian flaps
# FTYPE = 2.0  single sloted flaps
# FTYPE = 3.0 fowler flaps
# FTYPE = 4.0 double sloted flaps
# FTYPE = 5.0 split flaps
# FTYPE = 6.0 leading edge flaps
# FTYPE = 7.0 lesding edge slats
# FTYPE = 8.0  kruger
FTYPE = 2.0
# Number of deflection MAX 9
NDELTA = 9.0
# Flap Deflection
DELTA = [-30.0, -20.0, -15.0, -10.0, -5.0, 0.0, 5.0, 10.0, 15.0]
# haji khodaei nemishe model kard page 51
# Flap chord at inboard end of flap, measured parallel to longitudinal axis
CHRDFI = 0.3 * 15.5
# Flap chord at outboard end of flap, measured parallel to longitudinal axis
CHRDFO = 0.3 * 15.5
# Span location of inboard end of flap, measured perpendicular to vertical plane of symmetry
SPANFI = 0.120 * 40.845
# Span location of outboard end of flap, measured perpendicular to vertical plane of symmetry
SPANFO = 0.784 * 40.845
# Average chord of the balance
CB = 0.2
# Average thickness of the control at hinge line
TC = 0.099
# NTYPE = 1.0 round nose flap
# NTYPE = 2.0 elliptic nose flap
# NTYPE = 3.0 sharp nose flap
NTYPE = 2.0
def asymmetric_flap_writer(file):
    # Name list
    file.write(' $SYMFLP ')
    file.write('FTYPE = %s,\n\t\t ' % str(FTYPE))
    file.write('NDELTA = %s,\n\t\t ' % str(NDELTA))
    LoopWriter.loop_writer('DELTA', DELTA, file)
    # file.write('PHETE = %s, ' % str(PHETE))
    # file.write('PHETEP = %s,\n\t\t ' % str(PHETEP))
    file.write('CHRDFI = %s, ' % str(CHRDFI))
    file.write('CHRDFO = %s,\n\t\t ' % str(CHRDFO))
    file.write('SPANFI = %s, ' % str(SPANFI))
    file.write('SPANFO = %s,\n\t\t ' % str(SPANFO))
    #file.write('CB = %s, ' % str(CB))
    #file.write('TC = %s, ' % str(TC))
    file.write('NTYPE = %s, ' % str(NTYPE))
    # End of File
    file.write('$\n')