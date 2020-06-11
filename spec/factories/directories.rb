FactoryBot.define do
  factory :directory do
    name {"teste_#{Directory.count}"}
  end
end
