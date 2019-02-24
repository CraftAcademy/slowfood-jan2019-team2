Given("the following products exists") do |table|
  table.hashes.each do |product|
    category = Category.find_by(category: product[:category])
    product.except!('category_id')
    FactoryBot.create(:product, product.merge(category: category)) 
  end
end

Given("the following categories exist") do |table|
  table.hashes.each do |category|
    FactoryBot.create(:category, category)
  end
end


When("I am on the {string} page") do |page|
  case page
  when "product" 
    visit root_path
  else 
    return false 
  end
end  

When("I click on {string}") do |button_name|
    click_on button_name
end

When("I fill in {string} with {string}") do |field, input|
    fill_in field, with: input
end
