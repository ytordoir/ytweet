require 'spec_helper'

describe "User pages" do

  subject { page }

  before do
    @user = User.new(name: "Example User", email: "user@example.com")
  end

  describe "signup page" do
    before { visit signup_path }

    it { should have_selector('h1',    text: 'Sign up') }
    it { should have_selector('title', text: full_title('Sign up')) }
  end
end