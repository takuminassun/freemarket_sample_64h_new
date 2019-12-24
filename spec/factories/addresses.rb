FactoryBot.define do

  factory :address do
    address_first_name            {"田中"}
    address_last_name             {"彩"}
    address_first_name_kana       {"タナカ"}
    address_last_name_kana        {"アヤ"}
    post_number                   {"123456"}
    city                          {"和歌山市"}
    town                          {"1563"}
    prefecture_id                 {1}
    user
  end
end