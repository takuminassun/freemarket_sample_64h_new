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

      context 'log in' do
        before do
          user = create(:user)
          login user
          get :create, params: { item_id: item.id }
        end

        it "assigns user" do
          user = create(:user)
          get :create
          expect(assigns(:user)).to eq user
        end

        it "renders create" do
          user = create(:user)
          get :create
          expect(response).to render_template :create
        end

        it "new create " do
          user = create(:user)
          item = build(:item)
          get :create
          expect(item).to eq :item
        end
      end
    
      describe 'GET "#show' do
        it "itemid一致" do
          item = build(:item)
          get :show
          expect(item).to eq :item
        end

        it "renders show" do
          item = build(:item)
          get :show
          expect(response).to render_template :show
        end
      end

      describe 'GET "#edit' do
        context 'log in' do
          before do
            user = create(:user)
            item = build(:item)
            login user
            get :edit, params: { item_id: item.id }
          end

          it "render edit" do
            user = create(:user)
            item = build(:item)
            get :edit
            expect(response).to render_template :edit
          end

          it "item_id一致" do
            user = create(:user)
            item = build(:item)
            get :edit
            expect(item).to eq :item
          end

        end
      end
    end
  end
end