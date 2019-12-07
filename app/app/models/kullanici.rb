class Kullanici < ApplicationRecord
  belongs_to :yazilar
  belongs_to :admin_user
end
