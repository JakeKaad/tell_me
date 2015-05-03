class Image < ActiveRecord::Base
  belongs_to :business
  belongs_to :display_user

  default_scope { order('id DESC') }
end
