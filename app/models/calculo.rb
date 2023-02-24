class Calculo < ApplicationRecord
    belongs_to :component
    
    self.table_name = "components_cambios_calculo_presupuestos"
end
