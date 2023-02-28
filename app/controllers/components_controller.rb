class ComponentsController < ApplicationController
  def home
  end

  def index
    @components = Component.all().order(id: :desc).page params[:page]
  end

  def show0
    @component = Component.find(params[:id])
  end

  def show
    component = Component.find(params[:id])

    if component.component_type == "components_cambios_changelog_proyectos"
      changelog = Changelog.find(component.component_id)
      @component_data = changelog
    elsif
      calculo = Calculo.find(component.component_id)
      @component_data = calculo
    else
      @component_data = "No Data"
    end # endif
  end
  
end
