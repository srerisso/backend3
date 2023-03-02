class Proyecto < ApplicationRecord
  belongs_to :cliente

  paginates_per 20
end
