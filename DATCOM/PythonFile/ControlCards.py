# add Control files to DATCOM #
# Dimensions M for metric FT for imperial unit
DIM = 'FT'
# Derivatives Unit DEG = degree
DERIV = 'DEG'


# Dynamic Derivatives on: DAMP
def control_cards_writer(file):
    # Dimensions
    file.write('DIM %s\n' % DIM)
    # Derivatives Unit
    file.write('DERIV %s\n' % DERIV)
    # Dynamic Derivatives
    file.write('DAMP\n')