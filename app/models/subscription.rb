class Subscription < ApplicationRecord
  belongs_to :spree_user, optional: true
end
