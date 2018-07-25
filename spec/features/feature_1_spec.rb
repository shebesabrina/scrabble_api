require 'rails_helper'
describe 'As a registered guest' do
  it 'displays sentence examples in N.America for a word' do
    user = create(:user)
    sentance = "If you think mindfulness involves labeling what comes up and doing everything in a very deliberate fashion, you will suffer enormously because the world is not under your control."
    # As a guest user (no sign in required)
    visit '/'
    # And I fill in a text box with "mindfulness"
    fill_in 'text', with: 'mindfulness'
    click_on 'Submit'
    # And I click "Submit"
    expect(page).to have_content('mindfulness')
    # Then I should see a message that says "Examples for using 'mindfulness'"
    expect(page).to have_content("Examples for using 'mindfulness")
    expect(page).tp have_content("If you think mindfulness involves labeling what comes up and doing everything in a very deliberate fashion, you will suffer enormously because the world is not under your control.")
    # And I should see a list of sentences with examples of how to use the word
    expect(page).to have_content(["North American"] )
    # And I should see only sentences for usage in North America
    # And I should not see sentences for any other regions
    expect(page).to_not have_content("Canadian")
    expect(page).to_not have_content("Meditation is one way to express mindfulness in a dedicated, concentrated manner.")
  end
end
