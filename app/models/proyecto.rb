class Proyecto < ApplicationRecord
    belongs_to :cliente
    has_many :components
    # has_many :calculos, through: :components
    # has_many :chagelogs, through: :components

    paginates_per 20
end
