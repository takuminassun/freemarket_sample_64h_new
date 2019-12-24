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
      address.invalid?
    end

    it "is invalid without a address_last_name" do
      address = build(:address, address_last_name: nil)
      address.invalid?
    end

    it "is invalid without a address_first_name_kana" do
      address = build(:address, address_first_name_kana: nil)
      address.invalid?
    end

    it "is invalid without a address_last_name_kana" do
      address = build(:address, address_last_name_kana: nil)
      address.invalid?
    end

    it "is invalid without a post_number" do
      address = build(:address, post_number: nil)
      address.invalid?
    end

    it "is invalid without a city" do
      address = build(:address, city: nil)
      address.invalid?
    end

    it "is invalid without a town" do
      address = build(:address, town: nil)
      address.invalid?
    end

    it "is invalid without a prefecture_id" do
      address = build(:address, prefecture_id: nil)
      address.invalid?
    end
  end
end