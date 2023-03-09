class Proyecto < ApplicationRecord
  belongs_to :cliente
  has_many :calculos
  has_many :changelogs

  paginates_per 20
end
