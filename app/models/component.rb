class Component < ApplicationRecord
    belongs_to :proyecto
    has_many :calculos
    
    self.table_name = 'proyectos_components'
    paginates_per 20
end
