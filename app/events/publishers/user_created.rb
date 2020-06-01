class Publishers::UserCreated < ApplicationPublisher
  attr_accessor :user_id
  def initialize(user_id)
    @user_id = user_id
  end

  def call

  end
end
