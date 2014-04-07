require 'spec_helper'

describe "a user can join cardMe" do
  let(:user){ FactoryGirl.create(:user) }
  let(:user1){ FactoryGirl.create(:user) }

  it "creates a new user" do
    visit "/"
    click_link "Sign Up"

    fill_in :user_first_name, with: user.first_name
    fill_in :user_last_name, with: user.last_name
    fill_in :user_email, with: user.email
    fill_in :user_password, with: "hangerz"
    fill_in :user_password_confirmation, with: "hangerz"
    click_button "Join"
    
    click_link "Log Out, #{user.first_name}"

    expect(page).to have_button "Log In"

    login(user)

    expect(page).to have_content "Log Out, #{user.first_name}"
  
    
    click_link "Log Out, #{user.first_name}"

    login(user1)

    click_link "Log Out, #{user1.first_name}"
  end

  def login(user)
    fill_in :email, with: user.email
    fill_in :password, with: user.password
    click_button "Log in"
  end
end
