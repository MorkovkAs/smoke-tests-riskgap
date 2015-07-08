When(/^I click on the button Забыли пароль\?$/) do
  find(:xpath, '/html/body/div[1]/div[1]/div[2]/div/div[2]/form/div[5]/div/a').click
end

#Given(/^"([^"]*)" receives an email with "([^"]*)" as the subject$/) do |email_address, subject|
 # open_email(email_address)
  #expect(current_email.subject).to eq subject
#end
#Then /^"([^"]*)" receives an email with "([^"]*)" as the subject$/ do |email_address, subject|
#  open_email(email_address)
#  expect(current_email.subject).to eq subject
#end

Given(/^I login to Gmail with username "([^"]*)" and password "([^"]*)"$/) do |username, password|
  Capybara.app_host = 'https://mail.google.com/mail/'
  visit ('/a/mail.com')
  fill_in('Email', :with => username)
  click_button('next')
  fill_in('Passwd', :with => password)
  click_button('signIn')
  #step 'I wait for 5 seconds'
  #click_link_or_button('Загрузить базовую', visible: false)
  step 'I wait for 5 seconds'
  #click_link_or_button('Входящие')
end

And(/^I open message with subject "([^"]*)"$/) do |subject|
  #30.times do
    #break if lookforemailsubject(subject).sleep(1)
    #click_link_or_button('.m > tbody:nth-child(1) > tr:nth-child(3) > td:nth-child(1) > b:nth-child(1) > a:nth-child(1)')
  #end
  #expect(page).to have_text(subject)
  all(:xpath, '//*[@name="Riskgap"]', visible: false)[1].click
end

And(/^I should see in email message "([^"]*)"$/) do |regexp|
  #step 'I wait for 2 seconds'
  find(:xpath, '/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div[2]/div[1]/div[1]/div/div[2]/div/table/tr/td[1]/div[2]/div[2]/div/div[3]/div[1]/div/div/div/div/div[1]/div[2]/div[6]/div[1]/p[4]/a').click
  step 'I wait for 3 seconds'
end

And(/^I follow verification link in email message for email "([^"]*)"$/) do |arg|
  pending
end

Then(/^I clear my inbox$/) do
  pending
end