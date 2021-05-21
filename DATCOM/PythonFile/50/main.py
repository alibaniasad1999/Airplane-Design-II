file = open('DATCOM_Export/Phoenix50SeatHamed.dcm', 'w')
import ControlCards
ControlCards.control_cards_writer(file)
import FlightCondition
FlightCondition.flight_condition_writer(file)
import Options
Options.options_writer(file)
import Synthesis
Synthesis.synthesis_writer(file)
import Body
Body.body_writer(file)
import Airfoil
Airfoil.airfoil_writer(file)
import Wing
Wing.wing_writer(file)
import HorizontalTail
HorizontalTail.horizontal_tail_writer(file)
import AsymmetricFlap
AsymmetricFlap.asymmetric_flap_writer(file)
import VerticalTail
VerticalTail.vertical_tail_writer(file)

