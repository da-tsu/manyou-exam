FactoryBot.define do
  factory :label do
    title { "sample1" }
  end

  factory :second_label, class: Label do
    title { "sample2" }
  end

  factory :third_label, class: Label do
    title { "sample3" }
  end
end
