class Proyecto < ApplicationRecord
    # paginates_per 20
    belongs_to :cliente
end
