class Post < ApplicationRecord
  belongs_to :user


  def is_owner(usr)
    self.user == usr
  end
end
