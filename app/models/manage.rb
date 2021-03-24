class Manage < ApplicationRecord

  scope :only_users, -> {joins(:roles).where.not('roles.name = ?', "admin")}
  scope :desc, -> {order(created_at: :desc)}

end
