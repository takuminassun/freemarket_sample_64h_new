FactoryBot.define do

  factory :item do
    name              {"ピカチュウ"}
    brand_id          {"1"}
    price             {"100"}
    status            {"新品、未使用"}
    description       {""}
    shipping_burden   {""}
    shipping_method   {"nil"}
    shipping_date     {""}
    size              {"nil"}
    # image_id          {"1"}
    prefecture_id     {"1"}
    user
    category
  end
end