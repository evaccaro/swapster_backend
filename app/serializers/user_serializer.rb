class UserSerializer < ActiveModel::Serializer
  type :user
  
  attributes :id, :name, :email, :admin

  has_many :events
end
