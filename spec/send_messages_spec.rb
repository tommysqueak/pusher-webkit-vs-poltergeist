require 'spec_helper'

describe 'Send Messages' do

  it 'is able to send messages via Pusher', :js do
    visit '/'
    click_link 'Send Message'
    expect(page).to have_selector('#message-1')
    click_link 'Send Message'
    expect(page).to have_selector('#message-2')
    click_link 'Send Message'
    expect(page).to have_selector('#message-3')
  end

end
