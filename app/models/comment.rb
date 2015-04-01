class Comment < ActiveRecord::Base
  belongs_to :user_to, :class_name => 'User', :foreign_key => 'user_to'
  belongs_to :user_from, :class_name => 'User', :foreign_key => 'user_from'
end
