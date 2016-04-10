require 'rails_helper'

RSpec.describe UsedProduct, :type => :model do
  describe "activeadmin resources" do

    it "should have admin user resource" do

     # ActiveAdmin.application.namespaces[:admin].resources.should have_key("UsedProduct")
      expect(ActiveAdmin.application.namespaces[:admin].resources).to have_key("UsedProducts")

    end
  end
end