class Flight < ActiveRecord::Base
  attr_accessible :arrival, :baggage_allowance, :capacity, :departure, :destination
  has_many :seats
end
