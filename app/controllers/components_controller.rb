class ComponentsController < ApplicationController
  def home
  end

  def index
    @components = Component.all().order(id: :desc).page params[:page]
  end

  def show
    @component = Component.find(params[:id])
  end

  def fetch
    component = Component.find(params[:id])

    if component.component_type == "components_cambios_changelog_proyectos"
      changelog = Changelog.find(component.component_id)
      @component_data = changelog
    else
      calculo = Calculo.find(component.component_id)
      @component_data = calculo
    end # endif
  end
  
end
