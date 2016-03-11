class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

 def create
   @contact = Contact.new(params[:contact])
   @contact.request = request

   if @contact.deliver
     flash[:notice] = 'Thank you for your Message We will get back soon'
   else
     render :new
     flash[:notice] ='Cannot send message'
   end
 end



end
