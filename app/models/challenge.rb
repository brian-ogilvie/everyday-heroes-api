class Challenge < ApplicationRecord
  enum type: [:required, :bonus]
end
