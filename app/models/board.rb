class Board < ApplicationRecord
  validates :title, presence: true

  scope :ordered, -> { order(id: :desc) }

  broadcasts_to ->(board) { "boards" }, inserts_by: :prepend
end
