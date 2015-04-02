class Comment < ActiveRecord::Base
  belongs_to :user_to, :class_name => 'User', :foreign_key => 'user_to_id'
  belongs_to :user_from, :class_name => 'User', :foreign_key => 'user_from_id'

  # Idea: push this work that was in the controller down into the model.
  def self.for_user(user_id)
    find_by(user_to_id: user_id)
  end
end
