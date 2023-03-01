class Calculo < ApplicationRecord
    belongs_to :proyecto
    
    self.table_name = "calculos"
end
