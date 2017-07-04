class Term < ApplicationRecord
	validates :source, :target, presence: true
end
