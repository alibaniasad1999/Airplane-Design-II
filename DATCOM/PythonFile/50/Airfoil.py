import LoopWriter
file = open('Airfoil.txt', 'r')
airfoil = []
for line in file:
    airfoil.append(list(map(float, line.split())))
file.close()
airfoil_down = []
airfoil_up = []
for i in airfoil[int(len(airfoil)/2):]:
    airfoil_down.append(i)
for i in airfoil[0:int(len(airfoil)/2)+1]:
    airfoil_up.append(i)
airfoil_up.reverse()
XCORD = []
YUPPER = []
YLOWER = []
for i in range(len(airfoil)):
    if i % 2 == 1:
        continue
    if len(YLOWER) == 49:
        XCORD.append(airfoil_up[-1][0])
        YUPPER.append(airfoil_up[-1][1])
        YLOWER.append(airfoil_down[-1][1])
        break
    XCORD.append(airfoil_up[i][0])
    YUPPER.append(airfoil_up[i][1])
    YLOWER.append(airfoil_down[i][1])
TYPEIN = 1.0
NPTS = 50.0
DWASH = 1.0
def airfoil_writer(file):
    file.write(' $WGSCHR ')
    file.write('TYPEIN = %s, ' % str(TYPEIN))
    file.write('NPTS = %s, ' % str(NPTS))
    file.write('DWASH = %s, \n\t\t ' % str(DWASH))
    LoopWriter.loop_writer('XCORD', XCORD, file)
    LoopWriter.loop_writer('YUPPER', YUPPER, file)
    LoopWriter.loop_writer('YLOWER', YLOWER, file)
    file.write('$\n')
