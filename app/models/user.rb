#
class User < ActiveRecord::Base
  include Authentication
  has_many :symptoms
end
