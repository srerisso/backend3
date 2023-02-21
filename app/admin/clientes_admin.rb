Trestle.resource(:clientes) do
  # Add a link to this admin in the main navigation
  menu do
    item :clientes, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :Nombre
    column :Localidad
    column :created_at, align: :center
    actions
  end

  # Customize the form fields shown on the new/edit views.
  
  form do |cliente|
    tab :cliente do
      text_field :Nombre
      text_field :Email
      text_field :Localidad
      text_field :Provincia
      number_field :Latitude
      number_field :Longitud
      text_field :CodigoPostal
      text_field :Direccion
      text_field :Coordenadas
      row do
        col { datetime_field :updated_at }
        col { datetime_field :created_at }
      end
    end

    tab :proyectos do
      table cliente.proyectos, admin: :proyectos do
        column :Codigo_Alg
        column :Referencia
        column :created_at, sort: :created_at
      end
      
    end
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:cliente).permit(:name, ...)
  # end

  search do |query|
    if query
      Cliente.where("clientes.Nombre ILIKE ?", "%#{query}%")
    else
      Cliente.all
    end
  end

end
