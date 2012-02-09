require 'spec_helper'
require 'support/utilities'

describe "User Pages" do
  subject { page }

  describe "Sign up" do
    before { visit signup_path }
    it { should have_selector('h1', text: 'Sign Up') }
    it { should have_selector('title', text: full_title('Sign Up')) }
  end

end
