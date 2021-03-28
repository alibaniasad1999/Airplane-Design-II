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
# $ASYFLP
# $ASYFLP
# STYPE = 4.0, SPANFI = 9.523, SPANFO = 12.57,
# NDELTA = 9.0,
# DELTAL(1) = -24.0, -20.0, -10.0, -5.0, 0.0, 5.0, 10.0, 20.0, 24.0,
# DELTAR(1) = 24.0, 20.0, 10.0, 5.0, 0.0, -5.0, -10.0, -20.0, -24.0,
# CHRDFI = 0.4486, CHRDFO = 0.30122$
STYPE = 2.0
# Inboard Span b_i
SPANFI = 9.523
# Outboard Span b_0
SPANFO = 12.57
# Number of deflection MAX 9
NDELTA = 9.0
# Right Flap Aileron Deflection
DELTAR = [-24.0, -20.0, -10.0, -5.0, 0.0, 5.0, 10.0, 20.0, 24.0]
# Left Flap Aileron Deflection
DELTAL = [-24.0, -20.0, -10.0, -5.0, 0.0, 5.0, 10.0, 20.0, 24.0]
# Inboard Chord
CHRDFI = 0.4486
# Outboard Chord
CHRDFO = 0.30122
def wing_writer(file):
    # Name list
    file.write(' $ASYFLP ')
    file.write('STYPE = %s, ' % str(STYPE))
    file.write('SPANFI = %s, ' % str(SPANFI))
    file.write('SPANFO = %s,\n\t\t ' % str(SPANFO))
    file.write('NDELTA = %s,\n\t\t ' % str(NDELTA))
    LoopWriter.loop_writer('DELTAR', DELTAR, file)
    LoopWriter.loop_writer('DELTAL', DELTAL, file)
    file.write('CHRDFI = %s, ' % str(CHRDFI))
    file.write('CHRDFO = %s, ' % str(CHRDFO))

