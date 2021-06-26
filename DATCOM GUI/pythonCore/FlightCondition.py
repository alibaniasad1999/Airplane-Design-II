import LoopWriter
# add Flight Conditions files to DATCOM #
# Take-off Weight
import csv
#read csv file
with open('TOW.csv') as f:
    reader = csv.reader(f)
    for row in reader:
        a = row
WT = float(a[0])
# Number of Mach numbers MAX 20
with open('MACH.csv') as f:
    reader = csv.reader(f)
    for row in reader:
        a = row
NMACH = round(float(len(a)), 2)
# Array of Mach numbers
MACH = [round(float(i), 3) for i in a]
# Number of altitudes MAX 20
#read csv file
with open('Altitude.csv') as f:
    reader = csv.reader(f)
    for row in reader:
        a = row
NALT = round(float(len(a)), 2)
# Array of altitudes 0 : 360 2
ALT = [round(float(i), 2) for i in a]
# Number of angle of attacks MAX 20
with open('AngleOfAttack.csv') as f:
    reader = csv.reader(f)
    for row in reader:
        a = row
NALPHA= round(float(len(a)), 2)
# Array of angle of attacks
ALSCHD = [round(float(i), 2) for i in a]
# Program Looping Control
# 1: Vary altitude and Mach together
# 2: Vary Mach at fixed altitude
# 3: Vary altitude at fixed Mach
with open('AngleOfAttack.csv') as f:
    reader = csv.reader(f)
    for row in reader:
        a = row
if a == '1':
    LOOP = 1.0
elif a == '2':
    LOOP = 2.0
else:
    LOOP = 3.0
def flight_condition_writer(file):
    # Name list
    file.write(' $FLTCON ')
    # Take-off Weight
    file.write('WT = %s, ' % str(WT))
    # Program Looping Control
    file.write('LOOP = %s,\n\t\t ' % str(LOOP))
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