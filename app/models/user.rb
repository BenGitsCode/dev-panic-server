#
class User < ActiveRecord::Base
  include Authentication
  has_many :symptoms
  has_many :passes
end
