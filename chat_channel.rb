class MainChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'main_channel'
  end

  def unsubscribed; end

  def speak(data)
    Message.create(data['message'])
  end 
end
