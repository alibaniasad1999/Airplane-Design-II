import LoopWriter
# add Body files to DATCOM #
# Number of Sections
NX = 20.0
# Array of longitudinal Distance
X = [0.00, 1.67, 3.33, 5.00, 6.67, 8.33, 10.00, 11.67, 33.33, 55.00, 56.67, 58.33, 60.00, 61.67, 63.33, 65.00, 66.67,
     68.33, 70.00, 71.67, ]

# Upper body
ZU = [-3.5, -0.10, 0.68, 1.83, 3.25, 4.08, 4.50, 4.58, 4.58, 4.58, 4.42, 4.33, 4.25, 4.08, 4.00, 3.83,
      3.83, 3.50, 3.42, 3.08, ]
# Lower Body
ZL = [-3.5, -5.72, -6.00, -6.25, -6.25, -6.33, -6.33, -6.33, -6.33, -6.33, -5.58, -4.83, -3.92, -3.17, -2.25, -1.58,
      -0.67, 0.00, 0.75, 1.67, ]
# Section Area
S = [0.0, 24.86, 37.08, 49.11, 61.84, 71.83, 77.27, 78.47, 78.47, 78.47, 67.18, 55.62, 45.16, 35.78, 27.50, 20.31,
     14.20, 9.19, 5.26, 1.54, ]
# BNOSE 1.0 conical nose, BNOSE = 2.0 ogive Nose
BNOSE = 2.0
# Length of body nose
BLN = 13.75
# BTAIL 1.0 conical tail, BNOSE = 2.0 ogive tail
BTAIL = 2.0
# Length of cylindrical after body
BLA = 7.8 ###################################################3
# ITYPE = 1 straight wing, no area rule
# ITYPE = 2 swept wing, no area rule
# ITYPE = 3 swept wing, area rule
ITYPE = 3.0
# Method = 1 use exiting methods
# Method = 2 use jorgensen methon
METHOD = 2.0

def body_writer(file):
    # Name list
    file.write(' $BODY ')
    # Number of Sections
    file.write('NX = %s, \n\t\t ' % str(NX))
    # Array of longitudinal Distance
    LoopWriter.loop_writer('X', X, file)
    # Upper body
    LoopWriter.loop_writer('ZU', ZU, file)
    # Lower Body
    LoopWriter.loop_writer('ZL', ZL, file)
    # Section Area
    LoopWriter.loop_writer('S', S, file)
    # BNOSE 1.0 conical nose, BNOSE = 2.0 ogive Nose
    # file.write('BNOSE = %s, ' % str(BNOSE))
    # Length of body nose
    file.write('BLN = %s, \n\t\t ' % str(BLN))
    # BTAIL 1.0 conical tail, BNOSE = 2.0 ogive tail
    file.write('BTAIL = %s, ' % str(BTAIL))
    # Length of cylindrical afterbody
    # file.write('BLA = %s, \n\t\t ' % str(BLA))
    # ITYPE = 1 straight wing, no area rule
    # ITYPE = 2 swept wing, no area rule
    # ITYPE = 3 swept wing, area rule
    file.write('ITYPE = %s, ' % str(ITYPE))
    # Method = 1 use exiting methods
    # Method = 2 use jorgensen methon
    file.write('METHOD = %s, ' % str(METHOD))
    # End of File
    file.write('$\n')