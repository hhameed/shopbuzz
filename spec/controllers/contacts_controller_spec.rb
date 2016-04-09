require 'rails_helper'

RSpec.describe ContactsController, type: :feature do
  describe "Contact Page" do
     it "sends messages to the owner" do
       visit contacts_path
       fill_in 'Name', :with => 'Kiran'
       fill_in 'Email', :with => 'kiran@gmail.com'
       fill_in 'Message', :with => 'cool website'
       click_button 'Submit'
       expect(page).to have_content("Thank you for contacting us. We will respond to you as soon as possible")
     end
  end

end
