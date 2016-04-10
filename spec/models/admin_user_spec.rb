require 'rails_helper'
require 'spec_helper'
require 'shoulda/matchers'

RSpec.describe AdminUser, type: :model do
  context "Validations" do
    it {should validate_presence_of(:email)}
    it { should validate_presence_of :password}
    it { should validate_confirmation_of :password}
  end
end
