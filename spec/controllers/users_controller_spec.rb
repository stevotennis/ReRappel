require 'rails_helper'

describe UsersController do

  before do
    @user = User.create!(email:"eh@gmail.com", password:"zjlkjasd")
    @user2 = User.create!(email:"canada456@gmail.com", password:"alskdjasl")
  end

  describe 'GET #show' do
    context 'when a user is logged in' do
      before do
        sign_in @user
      end
      it 'loads correct user details' do
        get :show, params: { id: @user.id }
        expect(assigns(:user)).to eq @user
        expect(response).to have_http_status(200)
      end
    end

    context 'when a user is not logged in' do
      it 'redirects to login' do
        get :show, params: { id: @user.id }
        expect(response).to redirect_to(new_user_session_path)
        end
      end
    end
end