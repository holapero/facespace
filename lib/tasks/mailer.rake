namespace :mailer do
  desc "Email a user"
  task(:email => :environment) do
    User.all.each do |user|
      UserMailer.welcome(user).deliver
    end
  end
end
