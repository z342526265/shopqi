# encoding: utf-8
# Read about factories at http://github.com/thoughtbot/factory_girl
FactoryGirl.define do
  factory :product do
    product_type "手机"
    vendor "Apple"
    variants_attributes [
    {price: 0.0, weight: 0.0}
   ]
  end

  factory :iphone4, parent: :product do
    title "iphone4"
    body_html "iphone 4是一款基于WCDMA制式的3G手机"
    product_type "手机"
    vendor "Apple"
    variants_attributes [
      {price: 3000, compare_at_price: 3500, weight: 2.9, sku: 'APPLE1000'}
    ]
  end

  factory :iphone4_with_variants, parent: :iphone4 do # 有多个款式
    options_attributes [
      { name: '颜色' }
    ]
    variants_attributes [
      {option1: '黑色', price: 3200},
      {option1: '白色', price: 3300}
    ]
  end

  factory :psp, parent: :product do
    title "psp"
    body_html ""
    product_type "游戏机"
    vendor "Sony"
    variants_attributes [
      {price: 1000, compare_at_price: 1500, weight: 2.8}
    ]
  end

  factory :leika, parent: :product do
    title "leika"
    body_html ""
    product_type "相机"
    vendor "徕卡"
    variants_attributes [
      {price: 10000, compare_at_price: 15000, weight: 2.8}
    ]
  end
end
