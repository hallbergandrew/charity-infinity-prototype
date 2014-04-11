require 'spec_helper'

describe Profile do
  context "editing" do

    it 'lets users edit a profile' do
      user = FactoryGirl.create :user
      visit user_session_path
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
      click_button 'Sign in'

      profile = FactoryGirl.create :profile
      visit edit_profile_path(profile)
      fill_in 'Name', with: profile.name
      fill_in 'Street', with: profile.street
      fill_in 'City', with: profile.city
      fill_in 'State', with: profile.state
      fill_in 'Zip', with: profile.zip
      fill_in 'Phone', with: profile.phone
      click_button 'Update Profile'
      page.should have_content profile.name
    end
  end

  #   it 'returns an error message if the page fails to create' do
  #     profile = FactoryGirl.build :profile
  #     visit new_profile_path
  #     fill_in 'User', with: profile.user
  #     click_button 'Create profile'
  #     page.should have_content "Please fix these errors:"
  #   end
  # end

  # context 'viewing' do
  #   it 'can be viewed' do
  #     profile = FactoryGirl.create :profile
  #     visit profiles_path
  #     page.should have_content profile.title
  #   end
  # end
  # context 'deleting' do
  #   it 'can be deleted' do
  #     profile = FactoryGirl.create :profile
  #     visit profiles_path
  #     click_link "Delete"
  #     page.should_not have_content profile.title
  #   end
  # end
end
