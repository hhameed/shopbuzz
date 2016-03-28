class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message


  def headers
    {
        :subject => "ShopBuzz - Someone sent a message",
        :to => "kiranyls@gmail.com",
        :from => %("#{name}" <#{email}>)
    }
  end
end