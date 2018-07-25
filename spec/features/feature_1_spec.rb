require 'rails_helper'
describe 'As a registered guest' do
  it 'displays sentence examples in N.America for a word' do
    user = create(:user)
    # As a guest user (no sign in required)
    visit '/'
    # And I fill in a text box with "mindfulness"
    fill_in 'Submit', with: 'mindfulness'
    # And I click "Submit"
    expect(page).to have_content('mindfulness')
    # Then I should see a message that says "Examples for using 'mindfulness'"
    # And I should see a list of sentences with examples of how to use the word
    # And I should see only sentences for usage in North America
    # And I should not see sentences for any other regions
  end
end
