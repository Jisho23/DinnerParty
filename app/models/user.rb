class User < ApplicationRecord
  has_many :invites
  has_many :dinners, through: :invites
  has_many :userrecipes
  has_many :recipes, through: :userrecipes
  has_many :owned_recipes, class_name:  "Recipe",
                                foreign_key: "owner_id",
                                dependent:   :destroy

  validates :username, uniqueness: true
  validates :username, presence: true
  validates :password, length: { minimum: 6}
  validates :name, uniqueness: true
  validates :name, presence: true
end
