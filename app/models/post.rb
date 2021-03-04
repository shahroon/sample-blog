class Post < ApplicationRecord
  belongs_to :user
  validates_presence_of :title, :content
  paginates_per 5

  def is_owner(usr)
    self.user == usr
  end
end
