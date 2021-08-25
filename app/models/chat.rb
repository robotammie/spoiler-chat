class Chat < ApplicationRecord
  has_and_belongs_to_many :users

  attr_accessor :users

  validate :chat_has_users, :on => [:create, :update]

  private

  def chat_has_users
    if users.count < 1
      errors.add(:users, 'Chat must have at least one user')
    end
  end
end
