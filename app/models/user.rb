class User < ApplicationRecord
  belongs_to :account, required: false
end
