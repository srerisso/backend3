class ProyectosController < ApplicationController

    def index
        # @proyectos = Proyecto.all().order(created_at: :asc).page params[:page]
        @proyectos = Proyecto.all().order(created_at: :desc)
    end

    def show
        @proyecto = Proyecto.find(params[:id])
    end

    def finalizado?
        Proyecto.find(params[:id]).Estado == 'OK'
    end

    private
    # Only allow a list of trusted parameters through.
    def proyecto_params
      params.fetch(:proyecto, {}, :page)
    end

end
