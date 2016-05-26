class Restaurant < ActiveRecord::Base

  has_many :reviews, dependent: :destroy
  belongs_to :user
  validates :name, length: { minimum: 3 }, uniqueness: true

  def belongs_to_user?(user)
    self.user_id == user.id
  end

end
