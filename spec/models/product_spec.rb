require 'rails_helper'

describe Product do 
	context 'when the product has comments' do
		
		before do
	      	@product = FactoryBot.create(:product)
			@user = FactoryBot.create(:user)
			@product.comments.create!(rating: 1, user: @user, body: "Awful shoes!")
	      	@product.comments.create!(rating: 3, user: @user, body: "meh Shoes!")
	      	@product.comments.create!(rating: 5, user: @user, body: "bro awesome gears!")
    	end
      
    	it "returns the average rating of all comments" do
      		expect(@product.average_rating).to eq(3)
    	end

    	it "is not valid without a name" do
      		expect(Product.new(description:"Nice Bike")).not_to be_valid
    	end
  	end
end