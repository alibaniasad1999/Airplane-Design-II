def options_writer(file, AR):
    import math
    # add Options  files to DATCOM #
    # Refrence Area
    SREF = 702.4
    # Mean Aerodynamic chord
    #CBARR = 8.167
    # Wing Span
    BLREF = round(math.sqrt(AR * SREF), 3)
    # Surface Roughness
    ROUGFC = 0.00025
    # Name list
    file.write(' $OPTINS ')
    # Refrence Area
    file.write('SREF = %s, ' % str(SREF))
    # Mean Aerodynamic chord
    #file.write('CBARR = %s, ' % str(CBARR))
    # Wing Span
    file.write('BLREF = %s, ' % str(BLREF))
    # Surface Roughness
    file.write('ROUGFC = %s, ' % str(ROUGFC))
    # End of File
    file.write(' $\n')