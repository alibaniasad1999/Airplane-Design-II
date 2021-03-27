import LoopWriter
# add Flight Conditions files to DATCOM #
# Take-off Weight
WT = 59000.0
# Number of Mach numbers MAX 20
NMACH = 1.0
# Array of Mach numbers
MACH = [0.2]
# Number of altitudes MAX 20
NALT = 5.0
# Array of altitudes
ALT = [0.0, 2000.0, 4000.0, 6000.0, 8000.0]
# Number of angle of attacks MAX 20
NALPHA= 12.0
# Array of angle of attacks
ALSCHD = [-6.0, -4.0, -2.0, 0.0, 2.0, 4.0, 6.0, 8.0,10.0, 12.0, 14.0, 16.0]
# Program Looping Control
# 1: Vary altitude and Mach together
# 2: Vary Mach at fixed altitude
# 3: Vary altitude at fixed Mach
LOOP = 2.0
def flight_condition_writer(file):
    # Name list
    file.write('$FLTCON ')
    # Take-off Weight
    file.write('WT = %s, ' % str(WT))
    # Program Looping Control
    file.write('LOOP = %s,\n\t\t' % str(LOOP))
    # Number of Mach numbers
    file.write('NMACH = %s, ' % str(NMACH))
    # Array of Mach numbers
    LoopWriter.loop_writer('MACH', MACH, file)
    # Number of altitudes
    file.write('NALT = %s, ' % str(NALT))
    # Array of altitudes
    LoopWriter.loop_writer('ALT', ALT, file)
    # Number of angle of attacks
    file.write('NALPHA = %s, ' % str(NALPHA))
    # Array of angle of attacks
    LoopWriter.loop_writer('ALSCHD', ALSCHD, file)
    # End of File
    file.write('$\n')