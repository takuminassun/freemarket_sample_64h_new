FactoryBot.define do
  
  factory :user do
    email              {"test@div.com"}
    encrypted_password {"00000"}
    first_name_kana    {"ヨコイ"}
    last_name_kana     {"ショウ"}
    born_year          {"11"}
    born_month         {"11"}
    born_day           {"11"}
    
  end
end