require 'spec_helper'

describe 'Send Messages' do
  
  it 'is able to send messages via Pusher', :js do
    visit '/'
    click_link 'Send Message'
    sleep 30
    save_and_open_page
    expect(all('.message')).to have(3).things
  end
  
end