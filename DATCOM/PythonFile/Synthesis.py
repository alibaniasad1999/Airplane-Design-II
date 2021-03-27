# add Synthesis files to DATCOM #
# $SYNTHS XCG=9.698, ZCG=0.455,
#          XW=9.088,  ZW=1.152,  ALIW=1.0,
#          XH=17.87,  ZH=0.317,   ALIH=0.0,
#          XV=17.048,  ZV=0.406,
#          SCALE=1.0, VERTUP=.TRUE.$
# Longitudinal Location of CG
XCG = 9.698
# Vertical Location of CG relative to reference plane
ZCG = 0.455
# Longitudinal Location of theoretical wing Apex
XW = 9.698
# Vertical Location of theoretical wing Apex relative to reference plane
ZW = 9.698
# wing root chord incidence angle measured from reference plane
ALIW = 1.0
# Longitudinal Location of theoretical horizontal tail Apex
XH = 9.698
# Vertical Location of theoretical horizontal tail Apex relative to reference plane
ZH = 9.698
# horizontal tail root chord incidence angle measured from reference plane
ALIH = 1.0
# Longitudinal Location of theoretical vertical tail Apex
XV = 9.698
# Vertical Location of theoretical vertical tail Apex
ZV = 9.698
# Scale factor
SCALE = 1.0
# vertup = true vertical plane above ref plane
# vertup = false vertical plane below ref plane
VERTUP = '.TRUE.'
def synthesis_writer(file):
    # Name list
    file.write('$SYNTHS ')
    # Longitudinal Location of CG
    file.write('XCG = %s, ' % str(XCG))
    # Vertical Location of CG relative to reference plane
    file.write('ZCG = %s, \n\t\t' % str(ZCG))
    # Longitudinal Location of theoretical wing Apex
    file.write('XW = %s, ' % str(XW))
    # Vertical Location of theoretical wing Apex relative to reference plane
    file.write('ZW = %s, ' % str(ZW))
    # wing root chord incidence angle measured from reference plane
    file.write('ALIW = %s, \n\t\t' % str(ALIW))
    # Longitudinal Location of theoretical horizontal tail Apex
    file.write('XH = %s, ' % str(XH))
    # Vertical Location of theoretical horizontal tail Apex relative to reference plane
    file.write('ZH = %s, ' % str(ZH))
    # horizontal tail root chord incidence angle measured from reference plane
    file.write('ALIH = %s, \n\t\t' % str(ALIH))
    # Longitudinal Location of theoretical vertical tail Apex
    file.write('XV = %s, ' % str(XV))
    # Vertical Location of theoretical vertical tail Apex
    file.write('ZV = %s, \n\t\t' % str(ZV))
    # Scale factor
    file.write('SCALE = %s, \n\t\t' % str(SCALE))
    # Vertup
    file.write('VERTUP = %s, ' % VERTUP)
    # End of File
    file.write('$\n')