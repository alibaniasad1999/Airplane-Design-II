file = open('test.dcm', 'w')
import ControlCards
ControlCards.control_cards_writer(file)
import Flight_Condition
Flight_Condition.flight_condition_writer(file)
