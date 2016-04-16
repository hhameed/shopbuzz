require 'rails_helper'

include Devise::TestHelpers

RSpec.describe Admin::AdminUsersController, type: :controller do
  describe "GET index" do
    it "assigns email" do
      user = AdminUser.create(id:'1',email:'abd@han.com')
      get :index
      expect(assigns(:adminusers)).to eq(nil)
    end
  end

  render_views

  let(:admin_user) { AdminUser.create!(email: 'admin@example.com', password: 'password')}

  before(:each) do
    sign_in admin_user
  end

  describe 'edit' do
    it 'renders user form' do
      get :edit, id: admin_user.to_param
      expect(assigns(:admin_user)).to eq admin_user
    end
  end

  describe 'update' do
    it 'updates user' do
      patch :update, { id: admin_user.to_param, admin_user: { email: 'nimda@example.com' }}
      admin_user.reload
      expect(admin_user.email).to eq 'nimda@example.com'
    end
  end
end