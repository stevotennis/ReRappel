require 'rails_helper'

describe User do 
	context "testing validations" do
    
    it 'requires email address' do
    	@user = FactoryBot.build(:user, email: "not_an_email")
		expect(@user).not_to be_valid
	end
  end
end