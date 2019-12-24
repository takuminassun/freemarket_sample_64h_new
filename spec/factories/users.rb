FactoryBot.define do

  factory :user do
    email                 {"kkk@gmail.com"}
    password              {"12345abcd"}
    first_name            {"田中"}
    last_name             {"彩"}
    first_name_kana       {"タナカ"}
    last_name_kana        {"アヤ"}
    born_year             {"2001"}
    born_month            {"3"}
    born_day              {"28"}
    phone_number          {"08012345678"}
  end

end