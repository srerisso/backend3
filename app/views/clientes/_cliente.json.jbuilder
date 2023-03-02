json.extract! cliente, :id, :Nombre, :Email, :Localidad, :CodigoPostal, :Direccion, :Coordenadas, :published_at, :created_by, :updated_by, :Provincia, :Latitude, :Longitud, :RazonSocial, :Cliente_id, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
