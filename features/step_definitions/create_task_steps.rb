Then(/^I click on Задачи$/) do
  within ('#riskIdentification') do
    click_link_or_button('Задачи', match: :first, :visible => true)
  end
end