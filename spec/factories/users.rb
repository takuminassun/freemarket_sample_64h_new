FactoryBot.define do
  
  factory :user do
    email {"tfafabfa@div.com"}
    initialize_with{ User.find_or_create_by(email: email)}            
    password           {"00000000000"}
    born_year          {"11"}
    born_month         {"11"}
    born_day           {"11"}
    first_name         {"横井"}
    last_name          {"翔"}
    first_name_kana    {"ヨコイ"}
    last_name_kana     {"ショウ"}
    phone_number       {"000000"}
  end
end