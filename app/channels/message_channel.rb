class MessageChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'message'
  end

  def unsubscribed

  end

  def receive(data)
    ActionCable.server.broadcast('message', data)
  end
end
