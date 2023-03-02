class Calculo < ApplicationRecord
  belongs_to :proyecto

  paginates_per 50
end
