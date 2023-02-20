class ProyectosController < ApplicationController

    def index
        @proyectos = Proyecto.all().order(created_at: :desc).page params[:page]
    end

    def show
        @proyecto = Proyecto.find(params[:id])
    end

end
