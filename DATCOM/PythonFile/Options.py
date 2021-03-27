# add Options  files to DATCOM #
# Refrence Area
SREF = 10.0
# Mean Aerodynamic chord
CBARR = 10.0
# Wing Span
BLREF = 10.0
# Surface Roughness
ROUGFC = 0.1
def options_writer(file):
    # Name list
    file.write('$OPTINS ')
    # Refrence Area
    file.write('SREF = %s, ' % str(SREF))
    # Mean Aerodynamic chord
    file.write('CBARR = %s, ' % str(CBARR))
    # Wing Span
    file.write('BLREF = %s, ' % str(BLREF))
    # Surface Roughness
    file.write('ROUGFC = %s, ' % str(ROUGFC))
    # End of File
    file.write('$\n')