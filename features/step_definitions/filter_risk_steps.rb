Given(/^I \("([^"]*)", "([^"]*)"\) have logged in and created a risk "([^"]*)" with category "([^"]*)" for "([^"]*)"$/) do |email, password, risk_name, risk_category, project_name|
  step 'I am "true" logged in RiskGap Website with email "' + email + '" and password "' + password + '"'
  step 'I click the link "' + project_name + '"'
  step 'I enter "' + risk_name + '" into "risk_title" field'
  step 'I enter "blablabla" into "risk_description" field'
  step 'I enter "' + risk_category + '" into category'
  step 'I click the button "Добавить"'
  step 'I should see "' + risk_name + '"'
end