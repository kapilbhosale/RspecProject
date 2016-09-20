class Card 
	attr_reader :suit,:rank
	def initialize(selected_suit, selected_rank)
		@suit = selected_suit
		@rank = case selected_rank
		when :jack then 11
		when :queen then 12
		when :king then 13
		else selected_rank
		end
	end

	def suit
		@suit
	end

	def rank
		@rank
	end
end
