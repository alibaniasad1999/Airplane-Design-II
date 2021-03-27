import LoopWriter
# add Body files to DATCOM #
# Number of Sections
NX = 19
# Array of longitudinal Distance
X = [0.0, 0.50, 1.00, 1.50, 2.00, 2.50, 3.00, 3.990, 4.50, 9.00, 13.68, 14.68, 15.68, 16.68, 17.68, 18.68, 19.68, 20.68,
     21.57]
# Upper body
ZU = [-0.73, -0.194, 0.068, 0.259, 0.758, 1.096, 1.284, 1.41, 1.41, 1.41, 1.41, 1.41, 1.396, 1.349, 1.267, 1.147, 0.985,
      0.785, 0.604]
# Lower Body
ZL = [-0.73, -1.159, -1.268, -1.329, -1.366, -1.389, -1.402, -1.41, -1.41, -1.41, -1.41, -1.349, -1.211, -1.025, -0.802,
      -0.547, -0.269, 0.0, 0.269]
# BNOSE 1.0 conical nose, BNOSE = 2.0 ogive Nose
BNOSE = 2.0
# Length of body nose
BLN = 3.99
# BTAIL 1.0 conical tail, BNOSE = 2.0 ogive tail
BTAIL = 2.0
# Length of cylindrical afterbody
BLA = 7.8
# ITYPE = 1 straight wing, no area rule
# ITYPE = 2 swept wing, no area rule
# ITYPE = 3 swept wing, area rule
ITYPE = 3.0
# Method = 1 use exiting methods
# Method = 2 use jorgensen methon
METHOD = 2.0
# BNOSE = 2.0, BLN = 3.99,
# BTAIL = 2.0, BLA = 7.8,
# ITYPE = 3.0, METHOD = 2.0$
def body_writer(file):
    # Name list
    file.write(' $BODY ')
    # Array of longitudinal Distance
    LoopWriter.loop_writer('X', X, file)
    # Upper body
    LoopWriter.loop_writer('ZU', ZU, file)
    # Lower Body
    LoopWriter.loop_writer('ZL', ZL, file)
    # BNOSE 1.0 conical nose, BNOSE = 2.0 ogive Nose
    file.write('BNOSE = %s, ' % str(BNOSE))
    # Length of body nose
    file.write('BLN = %s, \n\t\t ' % str(BLN))
    # BTAIL 1.0 conical tail, BNOSE = 2.0 ogive tail
    file.write('BTAIL = %s, ' % str(BTAIL))
    # Length of cylindrical afterbody
    file.write('BLA = %s, \n\t\t ' % str(BLA))
    # ITYPE = 1 straight wing, no area rule
    # ITYPE = 2 swept wing, no area rule
    # ITYPE = 3 swept wing, area rule
    file.write('ITYPE = %s, ' % str(ITYPE))
    # Method = 1 use exiting methods
    # Method = 2 use jorgensen methon
    file.write('METHOD = %s, ' % str(METHOD))
    # End of File
    file.write('$\n')