Trestle.resource(:proyectos) do
  menu do
    item :proyectos, icon: "fa fa-book"
  end

  # collection do
  #   Proyecto.order(created_at: :desc)
  # end

  # Customize the table columns shown on the index view.  
  table do
    column :Referencia
    column :Codigo_Alg
    column :Estado
    column :cliente_id
    column :created_at, header: "Created ", sort: { default: true, default_order: :desc }
    actions
  end

  # Customize the form fields shown on the new/edit views. 
  form do |proyecto|
    tab :proyecto do
      text_field :Codigo_Alg
      text_field :Referencia
      text_field :cliente_id#Nombre
      row do
        col { datetime_field :updated_at }
        col { datetime_field :created_at }
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
  #   params.require(:proyecto).permit(:name, ...)
  # end

  search do |query|
    if query
      Proyecto.where("'proyectos.Referencia' ILIKE ?", "%#{query}%")
    else
      Proyecto.all
    end
  end

end
