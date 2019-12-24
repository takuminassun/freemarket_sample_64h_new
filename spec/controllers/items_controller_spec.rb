require 'rails_helper'
describe ItemsController do

  describe 'GET #index' do
    it "assigns" do
      item = create(:item)
      get :index
      expect(assigns(:item)).to match(item)
    end

    it "renders the :index template" do
      item = create(:item)
      get :index
      expect(response).to render_template :index
    end

  describe 'GET "#create' do
    user = create(:user)

      context 'log in' do
        before do
          login user
          get :create, params: { item_id: item.id }
        end

        it "assigns user" do
          expect(assigns(:user)).to eq user
        end

        it "renders create" do
          expect(response).to render_template :create
        end

        it "new create" do
          expect(item).to be_valid
        end
        
      end
    end
  end
end


    # describe 'GET #show' do
    #   it "assigns the requested" do
    #     item = create(:items)
    #     get :show, params: { id: item }
    #     expect(assigns(:item)). to eq item
    #   end

    #   it "ビューに飛べるか" do
    #     item = create(:items)
    #     get :show, params: { id: item }
    #     expect(response).to render_template :show
    #   end
    # end