class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

 def create
   @contact = Contact.new(params[:contact])
   @contact.request = request

   if verify_recaptcha(model:@contact)&& @contact.deliver
      render :create
      else
      render :new
   end
 end

end
