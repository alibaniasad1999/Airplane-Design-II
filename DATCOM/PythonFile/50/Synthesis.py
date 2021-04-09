# add Synthesis files to DATCOM #
# Longitudinal Location of CG
XCG = 39.208
# Vertical Location of CG relative to reference plane
ZCG = 0.0
# Longitudinal Location of theoretical wing Apex
XW = 28.75
# Vertical Location of theoretical wing Apex relative to reference plane
ZW = -4.583
# wing root chord incidence angle measured from reference plane
ALIW = 2.0
# Longitudinal Location of theoretical horizontal tail Apex
XH = 69.167
# Vertical Location of theoretical horizontal tail Apex relative to reference plane
ZH = 11.2
# horizontal tail root chord incidence angle measured from reference plane
ALIH = 0.0
# Longitudinal Location of theoretical vertical tail Apex
XV = 57.583
# Vertical Location of theoretical vertical tail Apex
ZV = 1.0
# Scale factor
SCALE = 1.0
# vertup = true vertical plane above ref plane
# vertup = false vertical plane below ref plane
VERTUP = '.TRUE.'
def synthesis_writer(file):
    # Name list
    file.write(' $SYNTHS ')
    # Longitudinal Location of CG
    file.write('XCG = %s, ' % str(XCG))
    # Vertical Location of CG relative to reference plane
    file.write('ZCG = %s, \n\t\t ' % str(ZCG))
    # Longitudinal Location of theoretical wing Apex
    file.write('XW = %s, ' % str(XW))
    # Vertical Location of theoretical wing Apex relative to reference plane
    file.write('ZW = %s, ' % str(ZW))
    # wing root chord incidence angle measured from reference plane
    file.write('ALIW = %s, \n\t\t ' % str(ALIW))
    # Longitudinal Location of theoretical horizontal tail Apex
    file.write('XH = %s, ' % str(XH))
    # Vertical Location of theoretical horizontal tail Apex relative to reference plane
    file.write('ZH = %s, ' % str(ZH))
    # horizontal tail root chord incidence angle measured from reference plane
    file.write('ALIH = %s, \n\t\t ' % str(ALIH))
    # Longitudinal Location of theoretical vertical tail Apex
    file.write('XV = %s, ' % str(XV))
    # Vertical Location of theoretical vertical tail Apex
    file.write('ZV = %s, \n\t\t ' % str(ZV))
    # Scale factor
    file.write('SCALE = %s, \n\t\t ' % str(SCALE))
    # Vertup
    file.write('VERTUP = %s, ' % VERTUP)
    # End of File
    file.write(' $\n')