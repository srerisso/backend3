class Cliente < ApplicationRecord
    has_many :proyectos
    paginates_per 20
end
