require 'rails_helper'

RSpec.describe Card, type: :model do
	#this testcase will pass
	context "check for range of the cards rank" do
		it "should be in range of 1 to 13" do
			testcard = Card.new("spades",:jack)
			expect(testcard.rank).to be <= 13
			expect(testcard.rank).to be > 0
		end
	#this testcase will fail	
		it "should not be range of 1 to 13" do
			testcard = Card.new("club", 15)
			expect(testcard.rank).to be <= 13
			expect(testcard.rank).to be >0
		end	
	end
end
