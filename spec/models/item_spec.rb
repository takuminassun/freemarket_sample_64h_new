require 'rails_helper'

describe Item do
  describe '#create' do
    it "存在すれば登録できるよ！" do
      item = create(:item, name: nil)
      item.valid?
      expect(item.errors[:name]).to include('Can not be blank')
    end
  end
end