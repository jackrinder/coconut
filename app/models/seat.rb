class Seat < ActiveRecord::Base
  attr_accessible :baggage, :flight_id, :name
  belongs_to :flight
  
  validate :baggage_cannot_exceed_flight_baggage_allowance
  
  def baggage_cannot_exceed_flight_baggage_allowance
    if baggage> flight.baggage_allowance
      errors[:base]<<"You have too much baggage"
    end
  end
  
end
