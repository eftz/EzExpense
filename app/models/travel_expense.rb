class TravelExpense < ApplicationRecord
	validates_presence_of :start, :end, :price, :location
end
