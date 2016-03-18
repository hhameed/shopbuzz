class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

 def create
   @contact = Contact.new(params[:contact])
   @contact.request = request
   respond_to do |format|
   if verify_recaptcha(model:@contact)&& @contact.deliver
      format.html { redirect_to contacts_path, notice: 'Thank you for contacting us. We will respond to you as soon as possible' }
      else
      render :new
   end
 end
end
end
