class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

 def create
   @contact = Contact.new(contact_params)
   @contact.request = request
   respond_to do |format|
   if verify_recaptcha(model:@contact)&& @contact.deliver && status
      format.html { redirect_to contacts_path, notice: 'Thank you for contacting us. We will respond to you as soon as possible' }
   end
 end
 end

  def contact_params
    params.require(:contact).permit(:name, :email, :message,)
  end
end
