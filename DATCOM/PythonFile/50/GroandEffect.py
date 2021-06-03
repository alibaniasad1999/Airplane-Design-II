import LoopWriter
# add Ground files to DATCOM #
# Number of height max 10
NGH = 1.0
# Array of height
GRDHT = [20.0]


def ground_writer(file):
    # Name list
    file.write(' $GRNDEF ')
    # Number of Sections
    file.write('NGH = %s, \n\t\t ' % str(NGH))
    # Array of longitudinal Distance
    LoopWriter.loop_writer('GRDHT', GRDHT, file)
    file.write('$\n')