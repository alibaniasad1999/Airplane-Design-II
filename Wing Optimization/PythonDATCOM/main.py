import numpy as np
taper = 0.28
AR_list = np.arange(8, 11.2, 0.2).tolist()
Sweep_list = np.arange(20, 36, 1.0).tolist()
for i in range(len(AR_list)):
    AR = round(AR_list[i], 1)
    for j in range(len(Sweep_list)):
        Sweep = round(Sweep_list[j], 1)
        filename = 'DATCOM_Export/Phoenix50Seat-taper' + str(taper) + 'AR' + str(AR) + '-SW' + str(Sweep) + '.dcm'
        file = open(filename, 'w')
        import ControlCards
        ControlCards.control_cards_writer(file)
        import FlightCondition
        FlightCondition.flight_condition_writer(file)
        import Options
        Options.options_writer(file, AR)
        import Synthesis
        Synthesis.synthesis_writer(file)
        import Body
        Body.body_writer(file)
        import Airfoil
        Airfoil.airfoil_writer(file)
        # def wing_writer(file, taper, Sref, AR, Sweep):
        import Wing
        Wing.wing_writer(file, taper, 702.4, AR, Sweep)
        import VerticalTail
        VerticalTail.vertical_tail_writer(file)
        import HorizontalTail
        HorizontalTail.horizontal_tail_writer(file)