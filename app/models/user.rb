class User < ActiveRecord::Base
  has_many :following_relationships, :foreign_key => :follower_id, :class_name => "Relationship"
  has_many :follower_relationships, :foreign_key => :followed_id, :class_name => "Relationship"

  has_many :followers, :through => :follower_relationships
  has_many :followeds, :through => :following_relationships
end
