class Image < ActiveRecord::Base
  belongs_to :business
  belongs_to :display_user
end
