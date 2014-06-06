class User < ActiveRecord::Base
  # include BCrypt
  has_many :comments, as: :commentable
  has_many :votes, as: :votable
  has_many :questions
  has_many :answers

#   def password
#       @password ||= Password.new(password_hash)
#   end

#   def password=(new_password)
#     @password = Password.create(new_password)
#     self.password_hash = @password
#   end
end

