class UserMailer < ApplicationMailer
  def welcome_email
    @user = params[:user]
    mail(to: @user.email, subject: 'Welcome to ToDo!')
  end

  def new_public_list
    @user = params[:user]
    @list = params[:list]
    @url = 'http://todo.com/listlink'
    mail(to: User.email_subscribed.pluck(:email), subject: 'New Public ToDo List Created')
  end
end
