class Proyecto < ApplicationRecord
    belongs_to :cliente
    has_many :changelogs
    has_many :calculos

    paginates_per 20
end
