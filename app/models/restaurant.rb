class Restaurant < ActiveRecord::Base

  has_many :reviews, dependent: :destroy
  validates :name, length: { minimum: 3 }, uniqueness: true
  belongs_to :user

  def belongs_to_user?(user)
    self.user_id == user.id
  end

end
