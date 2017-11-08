require 'rails_helper'

#index action
describe ProductsController, type: :controller do
  context 'GET #index' do
    it 'renders the index page' do 
      get :index
      expect(response).to be_ok
      expect(response).to render_template('index')
    end
  end
  #show action
  # connect to redis server:
  context 'GET #show' do
    it 'renders the show page' do 
      @product = FactoryBot.create(:product)
      get :show, params: {id: @product}
      expect(response).to be_ok
      expect(response).to render_template('show')
    end
  end
end