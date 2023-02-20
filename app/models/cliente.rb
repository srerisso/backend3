class Cliente < ApplicationRecord
    paginates_per 20
    has_many :proyectos
end
