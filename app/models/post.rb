class Post < ApplicationRecord
  belongs_to :user
  scope :published, -> { where(published: true) }

  def is_owner(usr)
    self.user == usr
  end

end
