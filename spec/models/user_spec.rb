require 'rails_helper'

describe User do
  describe '#create' do
    it "is valid with a email, password, first_name, last_name, first_name_kana, last_name_kana, born_year, born_month, born_day, phone_number" do
      user = build(:user)
      expect(user).to be_valid
    end

    it "is invalid without a phone_number" do
      user = build(:user, phone_number: nil)
      user.valid?
    end

    it "is invalid without a email" do
      user = build(:user, email: nil)
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end

    it "is invalid without a password" do
      user = build(:user, password: nil)
      user.valid?
      expect(user.errors[:password]).to include("can't be blank")
    end

    it "is invalid without a first_name" do
      user = build(:user, first_name: nil)
      user.valid?
    end

    it "first_nameが平仮名だと登録できない" do
      user = build(:user, first_name: "アカギ")
      user.valid?
    end

    it "is invalid without a last_name" do
      user = build(:user, last_name: nil)
      user.valid?
    end

    it "is invalid without a first_name_kana" do
      user = build(:user, first_name_kana: nil)
      user.valid?
    end

    it "is invalid without a last_name_kana" do
      user = build(:user, last_name_kana: nil)
      user.valid?
    end

    it "is invalid without a born_year" do
      user = build(:user, born_year: nil)
      user.valid?
    end

    it "is invalid without a born_month" do
      user = build(:user, born_month: nil)
      user.valid?
    end

    it "is invalid without a born_day" do
      user = build(:user, born_day: nil)
      user.valid?
    end


    # 重複したemailが存在する場合登録できないこと
    it "is invalid with a duplicate email address" do
      user = create(:user)
      another_user = build(:user, email: user.email)
      another_user.valid?
      expect(another_user.errors[:email]).to include("has already been taken")
    end

    # passwordが6文字以上であれば登録できること
    it "is valid with a password that has more than 6 characters " do
      user = build(:user, password: "000000", password_confirmation: "000000")
      user.valid?
      expect(user).to be_valid
    end

    # passwordが5文字以下であれば登録できないこと
    it "is invalid with a password that has less than 5 characters " do
      user = build(:user, password: "00000", password_confirmation: "00000")
      user.valid?
      expect(user.errors[:password]).to include("is too short (minimum is 6 characters)")
    end
  end
end