# add Synthesis files to DATCOM #
import csv
with open('Synthesis.csv') as f:
    reader = csv.reader(f)
    for row in reader:
        a = row
# Longitudinal Location of CG
XCG = round(float(a[0]), 4)
# Vertical Location of CG relative to reference plane
ZCG = round(float(a[1]), 4)
# Longitudinal Location of theoretical wing Apex
XW = round(float(a[2]), 4)
# Vertical Location of theoretical wing Apex relative to reference plane
ZW = round(float(a[3]), 4)
# wing root chord incidence angle measured from reference plane
ALIW = round(float(a[4]), 4)
# horizontal tail root chord incidence angle measured from reference plane
ALIH = round(float(a[5]), 4)
# Longitudinal Location of theoretical horizontal tail Apex
XH = round(float(a[6]), 4)
# Vertical Location of theoretical horizontal tail Apex relative to reference plane
ZH = round(float(a[7]), 4)
# Longitudinal Location of theoretical vertical tail Apex
XV = round(float(a[8]), 4)
# Vertical Location of theoretical vertical tail Apex
ZV = round(float(a[9]), 4)
# Scale factor
SCALE = round(float(a[10]), 4)
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