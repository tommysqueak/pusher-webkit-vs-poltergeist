class WelcomeController < ApplicationController
  
  def push
    Pusher.trigger('test-channel', 'test-event', { foo: 'bar' })
    head :ok
  end
end