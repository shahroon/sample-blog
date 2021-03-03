class Post < ApplicationRecord
  belongs_to :user
  default_scope { order('created_at DESC') }

  def is_owner(usr)
    self.user == usr
  end
end
