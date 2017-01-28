Then(/^"([^"]*)" should receive an email with "([^"]*)" as the subject$/) do |email_address, subject|
  Mail.defaults do
    retriever_method :pop3, :address => "pop.yandex.ru",
                     :port => 995,
                     :user_name => email_address,
                     :password => 'temprisk',
                     :enable_ssl => true
  end

  mail = Mail.last
  String body

  if (subject == mail.subject)
    body = mail.body.decoded.encode('UTF-8',mail.part[0].content_type_parameters['charset'] || "ASCII-8BIT", :invalid => :replace, :undef => :replace, :replace => '?')

    #puts %%
    #  From: #{mail.from}
    #  To: #{mail.to}
    #  Subject: #{mail.subject}
    #  ========================
      #{body}
    #%

    body = body.scan(/\"([^"]+)/)[0][0]
    puts body

    step 'I am on the "' + body + '" homepage'
  end
end
