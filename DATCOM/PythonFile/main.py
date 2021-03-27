file = open('test.dcm', 'w')
import ControlCards
ControlCards.control_cards_writer(file)
import FlightCondition
FlightCondition.flight_condition_writer(file)
