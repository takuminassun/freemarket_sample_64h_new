FactoryBot.define do

  factory :item do
    name              {"ピカチュウ"}
    brand_id          {"1"}
    price             {"100"}
    status            {"新品、未使用"}
    description       {"ピッカー"}
    shipping_burden   {"着払い(購入者負担)"}
    shipping_method   {"nil"}
    shipping_date     {"1~2日で発送"}
    size              {"nil"}
    prefecture_id     {"1"}
    user
    category
    image
  end
end