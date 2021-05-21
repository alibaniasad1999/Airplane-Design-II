import numpy as np
AR_list = np.arange(8, 11, 0.1).tolist()
Sweep_list = np.arange(15, 1).tolist()
for i in AR_list:
    AR = round(i, 1)
    for j in Sweep_list:
        Sweep = range(j)
        filename = 'DATCOM_Export/Phoenix50Seat' + 'AR' + str(AR) + 'SW' + str(Sweep) + '.dcm'
        file = open(filename, 'w')
        import ControlCards

        ControlCards.control_cards_writer(file)
        import FlightCondition

        FlightCondition.flight_condition_writer(file)
        import Options

        Options.options_writer(file, 9.5)
        import Synthesis

        Synthesis.synthesis_writer(file)
        import Body

        Body.body_writer(file)
        import Airfoil

        Airfoil.airfoil_writer(file)
        # def wing_writer(file, tc, Sref, AR, Sweep):
        import Wing

        Wing.wing_writer(file, 0.28, 702.4, AR, Sweep)