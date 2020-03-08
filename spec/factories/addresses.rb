FactoryBot.define do

  factory :address do
    zip               {"1111111"}
    prefecture        {"北海道"}
    city              {"札幌市"}
    block             {"ほげほげ町"}
    building          {"ほげほげマンション"}
    phone_number      {"11111111111"}
    lastname          {"新田"}
    firstname         {"仁志"}
    lastname_kana     {"にった"}
    firstname_kana    {"ひとし"}
  end

end