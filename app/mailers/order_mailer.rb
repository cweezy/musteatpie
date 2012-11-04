class OrderMailer < ActionMailer::Base
  default from: "must.have.pie.2012@gmail.com"
  
  def order_email(order)
    mail(:to => "christopher.cl.wong@gmail.com", :subject => "Yo what up")
  end
end
