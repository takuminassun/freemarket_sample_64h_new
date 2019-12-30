require 'rails_helper'

describe Item do
  describe '#create' do
    it "有効に全てのアイテム作れました！" do
      user = create(:user)
      category = create(:category)
      item = build(:item)
      expect(item).to be_valid
    end

    it "is invalid without a name！" do
      user = create(:user)
      category = create(:category)
      item = build(:item, name:"")
      item.invalid?
    end

    it "is invalid without a name！" do
      user = create(:user)
      category = create(:category)
      item = build(:item, image:"")
      item.invalid?
    end

    it "is invalid wirhout a brand_id" do
      user = create(:user)
      category = create(:category)
      item = build(:item, brand_id:"")
      item.invalid?
    end

    it "is invalid wirhout a price" do
      user = create(:user)
      category = create(:category)
      item = build(:item, price:"")
      item.invalid?
    end

    it "is invalid wirhout a status" do
      user = create(:user)
      category = create(:category)
      item = build(:item, status:"")
      item.invalid?
    end


    it "is invalid wirhout a description" do
      user = create(:user)
      category = create(:category)
      item = build(:item, description:"")
      item.invalid?
    end

    it "is invalid wirhout a description" do
      user = create(:user)
      category = create(:category)
      item = build(:item, description:"")
      item.invalid?
    end

    it "is invalid wirhout a shipping_burden" do
      user = create(:user)
      category = create(:category)
      item = build(:item, shipping_burden:"")
      item.invalid?
    end

    it "is invalid wirhout a shipping_method" do
      user = create(:user)
      category = create(:category)
      item = build(:item, shipping_method:"")
      item.invalid?
    end

    it "is invalid wirhout a shipping_date" do
      user = create(:user)
      category = create(:category)
      item = build(:item, shipping_date:"")
      item.invalid?
    end

    it "is invalid wirhout a size" do
      user = create(:user)
      category = create(:category)
      item = build(:item, size:"")
      item.invalid?
    end

    it "is invalid wirhout a prefecture_id" do
      user = create(:user)
      category = create(:category)
      item = build(:item, prefecture_id:"")
      item.invalid?
    end

    it "is invalid wirhout a user" do
      category = create(:category)
      item = build(:item)
      item.invalid?
    end

    it "is invalid wirhout a category" do
      user = create(:user)
      item = build(:item)
      item.invalid?
    end

  end
end