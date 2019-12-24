require 'rails_helper'

describe Address do
  describe '#create' do
    it "is valid with a address_first_name, address_last_name, address_first_name_kana, address_last_name_kana, post_number, city, town, prefecture_id" do
      user = build(:address)
      address = create(:address)
      expect(address).to be_valid
    end

    it "is invalid without a address_first_name" do
      address = build(:address, address_first_name: nil)
      address.valid?
    end

    it "is invalid without a address_last_name" do
      address = build(:address, address_last_name: nil)
      address.valid?
    end

    it "is invalid without a address_first_name_kana" do
      address = build(:address, address_first_name_kana: nil)
      address.valid?
    end

    it "is invalid without a address_last_name_kana" do
      address = build(:address, address_last_name_kana: nil)
      address.valid?
    end

    it "is invalid wthout a post_number" do
      address = build(:address, post_number: nil)
      address.valid?
    end

    it "is invalid without a city" do
      address = build(:address, city: nil)
      address.valid?
    end

    it "is invalid without a town" do
      address = build(:address, town: nil)
      address.valid?
    end

    it "is invalid without a prefecture_id" do
      address = build(:address, prefecture_id: nil)
      address.valid?
    end


    it "post_numberが７文字だと登録できる" do
      address = build(:address, post_number: "1234567")
      address.invalid?
      expect(address).to be_valid
    end

    it "post_numberが７文字以上だと登録できない" do
      address = build(:address, post_number: "12345678")
      address.valid?
      expect(address.errors[:address]).to include("is too long (maximum is 8 characters)")
    end

    it "post_numberが6文字だと登録できない" do
      address = build(:address, post_number: "123456")
      address.valid?
      expect(address.errors[:address]).to include("is too short (minimum is 6 characters)")
    end
  end
end