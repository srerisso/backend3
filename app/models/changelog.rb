class Changelog < ApplicationRecord
    belongs_to :component

    self.table_name = "components_cambios_changelog_proyectos"
end
