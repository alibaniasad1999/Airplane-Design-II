file = open('test.dcm', 'w')
import ControlCards
ControlCards.control_cards_writer(file)
import FlightCondition
FlightCondition.flight_condition_writer(file)
import Options
Options.options_writer(file)
import Synthesis
Synthesis.synthesis_writer(file)