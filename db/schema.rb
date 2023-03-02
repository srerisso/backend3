# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accesorios", id: :serial, force: :cascade do |t|
    t.string "Descripcion", limit: 255
    t.datetime "published_at"
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }
  end

  create_table "admin_permissions", id: :serial, force: :cascade do |t|
    t.string "action", limit: 255
    t.string "subject", limit: 255
    t.jsonb "properties"
    t.jsonb "conditions"
    t.datetime "created_at", precision: 6
    t.datetime "updated_at", precision: 6
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.index ["created_by_id"], name: "admin_permissions_created_by_id_fk"
    t.index ["updated_by_id"], name: "admin_permissions_updated_by_id_fk"
  end

  create_table "admin_permissions_role_links", id: false, force: :cascade do |t|
    t.integer "permission_id"
    t.integer "role_id"
    t.index ["permission_id"], name: "admin_permissions_role_links_fk"
    t.index ["role_id"], name: "admin_permissions_role_links_inv_fk"
  end

  create_table "admin_roles", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
    t.string "code", limit: 255
    t.string "description", limit: 255
    t.datetime "created_at", precision: 6
    t.datetime "updated_at", precision: 6
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.index ["created_by_id"], name: "admin_roles_created_by_id_fk"
    t.index ["updated_by_id"], name: "admin_roles_updated_by_id_fk"
  end

  create_table "admin_users", id: :serial, force: :cascade do |t|
    t.string "firstname", limit: 255
    t.string "lastname", limit: 255
    t.string "username", limit: 255
    t.string "email", limit: 255
    t.string "password", limit: 255
    t.string "reset_password_token", limit: 255
    t.string "registration_token", limit: 255
    t.boolean "is_active"
    t.boolean "blocked"
    t.string "prefered_language", limit: 255
    t.datetime "created_at", precision: 6
    t.datetime "updated_at", precision: 6
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.index ["created_by_id"], name: "admin_users_created_by_id_fk"
    t.index ["updated_by_id"], name: "admin_users_updated_by_id_fk"
  end

  create_table "admin_users_roles_links", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.index ["role_id"], name: "admin_users_roles_links_inv_fk"
    t.index ["user_id"], name: "admin_users_roles_links_fk"
  end

  create_table "calculos", id: :integer, default: nil, force: :cascade do |t|
    t.integer "proyecto_id"
    t.string "acabado", limit: 255
    t.float "descuento", default: 0.0
    t.float "importe_perfiles", default: 0.0
    t.float "importe_accesorios", default: 0.0
    t.float "importe_total_neto", default: 0.0
    t.text "observaciones"
    t.datetime "fecha_calculo"
    t.string "carpinteria", limit: 255
  end

  create_table "changelogs", id: false, force: :cascade do |t|
    t.datetime "Fecha"
    t.string "Descripcion", limit: 255
    t.integer "proyecto_id", null: false
    t.integer "id", null: false
  end

  create_table "clientes", id: :serial, force: :cascade do |t|
    t.string "Nombre", limit: 255
    t.string "Email", limit: 255
    t.string "Localidad", limit: 255
    t.bigint "CodigoPostal"
    t.text "Direccion"
    t.jsonb "Coordenadas"
    t.datetime "published_at"
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }
    t.string "Provincia", limit: 255
    t.float "Latitude"
    t.float "Longitud"
    t.string "RazonSocial", limit: 255
    t.bigint "Cliente_id"
    t.index ["Nombre"], name: "clientes_Nombre_unique", unique: true
  end

  create_table "clientes__proyectos", id: :serial, force: :cascade do |t|
    t.integer "cliente_id"
    t.integer "proyecto_id"
  end

  create_table "clientes_proyectos__proyectos_clientes", id: :serial, force: :cascade do |t|
    t.integer "cliente_id"
    t.integer "proyecto_id"
  end

  create_table "components_cambios_calculo_presupuestos", id: :serial, force: :cascade do |t|
    t.string "Carpinteria", limit: 255
    t.string "Acabado", limit: 255
    t.float "Descuento"
    t.float "Importe_Perfiles"
    t.float "Importe_Accesorios"
    t.float "Importe_Total_neto"
    t.text "Observaciones"
    t.datetime "Fecha_Calculo"
  end

  create_table "components_cambios_calculo_presupuestos_components", id: :serial, force: :cascade do |t|
    t.string "field", limit: 255, null: false
    t.integer "order", null: false
    t.string "component_type", limit: 255, null: false
    t.integer "component_id", null: false
    t.integer "components_cambios_calculo_presupuesto_id", null: false
  end

  create_table "components_cambios_changelog_proyectos", id: :serial, force: :cascade do |t|
    t.datetime "Fecha_Cambio"
    t.string "Descripcion_Cambio", limit: 255
  end

  create_table "components_carpinterias_seriede_carpinterias", id: :serial, force: :cascade do |t|
    t.string "Indalsu", limit: 255
    t.string "Sopena", limit: 255
    t.string "Alugandia", limit: 255
    t.string "Otras", limit: 255
  end

  create_table "components_lineaspedido_linea_pedidos", id: :serial, force: :cascade do |t|
    t.string "Referencia", limit: 255
    t.string "Descripcion", limit: 255
    t.string "Acabado", limit: 255
    t.string "Cantidad", limit: 255
  end

  create_table "core_store", id: :serial, force: :cascade do |t|
    t.string "key", limit: 255
    t.text "value"
    t.string "type", limit: 255
    t.string "environment", limit: 255
    t.string "tag", limit: 255
  end

  create_table "files", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
    t.string "alternative_text", limit: 255
    t.string "caption", limit: 255
    t.integer "width"
    t.integer "height"
    t.jsonb "formats"
    t.string "hash", limit: 255
    t.string "ext", limit: 255
    t.string "mime", limit: 255
    t.decimal "size", precision: 10, scale: 2
    t.string "url", limit: 255
    t.string "preview_url", limit: 255
    t.string "provider", limit: 255
    t.jsonb "provider_metadata"
    t.datetime "created_at", precision: 6
    t.datetime "updated_at", precision: 6
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.index ["created_by_id"], name: "files_created_by_id_fk"
    t.index ["updated_by_id"], name: "files_updated_by_id_fk"
  end

  create_table "files_related_morphs", id: false, force: :cascade do |t|
    t.integer "file_id"
    t.integer "related_id"
    t.string "related_type", limit: 255
    t.string "field", limit: 255
    t.integer "order"
    t.index ["file_id"], name: "files_related_morphs_fk"
  end

  create_table "i18n_locale", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
    t.string "code", limit: 255
    t.datetime "created_at", precision: 6
    t.datetime "updated_at", precision: 6
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.index ["created_by_id"], name: "i18n_locale_created_by_id_fk"
    t.index ["updated_by_id"], name: "i18n_locale_updated_by_id_fk"
  end

  create_table "i18n_locales", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
    t.string "code", limit: 255
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }
    t.index ["code"], name: "i18n_locales_code_unique", unique: true
  end

  create_table "matrices", id: :serial, force: :cascade do |t|
    t.string "nombre", limit: 255
    t.string "numserie", limit: 255
    t.string "uso", limit: 255
    t.string "marca", limit: 255
    t.datetime "published_at"
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }
    t.string "Tag", limit: 255
    t.string "tag", limit: 255
    t.string "descripcion", limit: 255
    t.boolean "encasa"
    t.date "FechaAlta"
    t.string "Carpinteria", limit: 255
  end

  create_table "matrices_movimientos", id: :serial, force: :cascade do |t|
    t.integer "matrix"
    t.datetime "published_at"
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }
    t.integer "cliente"
    t.datetime "FechaMovimiento"
    t.text "Comentarios"
    t.string "Quien", limit: 255
    t.string "Movimiento", limit: 255
    t.integer "matriz"
  end

  create_table "matrices_movimientos__clientes", id: :serial, force: :cascade do |t|
    t.integer "matrices_movimiento_id"
    t.integer "cliente_id"
  end

  create_table "matrices_movimientos__matrices", id: :serial, force: :cascade do |t|
    t.integer "matrices_movimiento_id"
    t.integer "matrix_id"
  end

  create_table "movimientos", id: :serial, force: :cascade do |t|
    t.integer "cliente"
    t.datetime "published_at"
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }
  end

  create_table "ofertas", id: :serial, force: :cascade do |t|
    t.string "Descripcion_codigo", limit: 255
    t.integer "cliente"
    t.datetime "published_at"
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }
    t.float "Importe_Neto_sin_impuestos"
    t.text "Observaciones"
    t.datetime "Fecha_oferta"
  end

  create_table "pedidos", id: :serial, force: :cascade do |t|
    t.string "Referencia", limit: 255
    t.datetime "published_at"
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }
    t.date "FechaPedido"
    t.string "RecibidoPor", limit: 255
    t.integer "cliente"
    t.string "ESTADO", limit: 255
  end

  create_table "pedidos_components", id: :serial, force: :cascade do |t|
    t.string "field", limit: 255, null: false
    t.integer "order", null: false
    t.string "component_type", limit: 255, null: false
    t.integer "component_id", null: false
    t.integer "pedido_id", null: false
  end

  create_table "proyectos", id: :serial, force: :cascade do |t|
    t.string "Referencia", limit: 255
    t.integer "cliente_id"
    t.datetime "published_at"
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }
    t.string "Codigo_Alg", limit: 255
    t.string "Estado", limit: 255
    t.integer "cliente"
  end

  create_table "proyectos_components", id: :serial, force: :cascade do |t|
    t.string "field", limit: 255, null: false
    t.integer "order", null: false
    t.string "component_type", limit: 255, null: false
    t.integer "component_id", null: false
    t.integer "proyecto_id", null: false
  end

  create_table "repartos", id: :serial, force: :cascade do |t|
    t.string "Nombre", limit: 255
    t.datetime "Fecha"
    t.datetime "published_at"
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }
    t.integer "ruta"
    t.string "Conductor", limit: 255
    t.text "Comentarios"
    t.text "Descripcion"
  end

  create_table "rutas", id: :serial, force: :cascade do |t|
    t.string "Nombre", limit: 255
    t.text "Descripcion"
    t.datetime "published_at"
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }
  end

  create_table "strapi_administrator", id: :serial, force: :cascade do |t|
    t.string "firstname", limit: 255
    t.string "lastname", limit: 255
    t.string "username", limit: 255
    t.string "email", limit: 255, null: false
    t.string "password", limit: 255
    t.string "resetPasswordToken", limit: 255
    t.string "registrationToken", limit: 255
    t.boolean "isActive"
    t.boolean "blocked"
    t.string "preferedLanguage", limit: 255
    t.index ["email"], name: "strapi_administrator_email_unique", unique: true
  end

  create_table "strapi_api_tokens", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
    t.string "description", limit: 255
    t.string "type", limit: 255
    t.string "access_key", limit: 255
    t.datetime "created_at", precision: 6
    t.datetime "updated_at", precision: 6
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.index ["created_by_id"], name: "strapi_api_tokens_created_by_id_fk"
    t.index ["updated_by_id"], name: "strapi_api_tokens_updated_by_id_fk"
  end

  create_table "strapi_core_store_settings", id: :serial, force: :cascade do |t|
    t.string "key", limit: 255
    t.text "value"
    t.string "type", limit: 255
    t.string "environment", limit: 255
    t.string "tag", limit: 255
  end

  create_table "strapi_database_schema", id: :serial, force: :cascade do |t|
    t.json "schema"
    t.datetime "time"
    t.string "hash", limit: 255
  end

  create_table "strapi_migrations", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
    t.datetime "time"
  end

  create_table "strapi_permission", id: :serial, force: :cascade do |t|
    t.string "action", limit: 255, null: false
    t.string "subject", limit: 255
    t.jsonb "properties"
    t.jsonb "conditions"
    t.integer "role"
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }
  end

  create_table "strapi_role", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255, null: false
    t.string "code", limit: 255, null: false
    t.string "description", limit: 255
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }
    t.index ["code"], name: "strapi_role_code_unique", unique: true
    t.index ["name"], name: "strapi_role_name_unique", unique: true
  end

  create_table "strapi_users_roles", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  create_table "strapi_webhooks", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
    t.text "url"
    t.jsonb "headers"
    t.jsonb "events"
    t.boolean "enabled"
  end

  create_table "up_permissions", id: :serial, force: :cascade do |t|
    t.string "action", limit: 255
    t.datetime "created_at", precision: 6
    t.datetime "updated_at", precision: 6
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.index ["created_by_id"], name: "up_permissions_created_by_id_fk"
    t.index ["updated_by_id"], name: "up_permissions_updated_by_id_fk"
  end

  create_table "up_permissions_role_links", id: false, force: :cascade do |t|
    t.integer "permission_id"
    t.integer "role_id"
    t.index ["permission_id"], name: "up_permissions_role_links_fk"
    t.index ["role_id"], name: "up_permissions_role_links_inv_fk"
  end

  create_table "up_roles", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
    t.string "description", limit: 255
    t.string "type", limit: 255
    t.datetime "created_at", precision: 6
    t.datetime "updated_at", precision: 6
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.index ["created_by_id"], name: "up_roles_created_by_id_fk"
    t.index ["updated_by_id"], name: "up_roles_updated_by_id_fk"
  end

  create_table "up_users", id: :serial, force: :cascade do |t|
    t.string "username", limit: 255
    t.string "email", limit: 255
    t.string "provider", limit: 255
    t.string "password", limit: 255
    t.string "reset_password_token", limit: 255
    t.string "confirmation_token", limit: 255
    t.boolean "confirmed"
    t.boolean "blocked"
    t.datetime "created_at", precision: 6
    t.datetime "updated_at", precision: 6
    t.integer "created_by_id"
    t.integer "updated_by_id"
    t.index ["created_by_id"], name: "up_users_created_by_id_fk"
    t.index ["updated_by_id"], name: "up_users_updated_by_id_fk"
  end

  create_table "up_users_role_links", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.index ["role_id"], name: "up_users_role_links_inv_fk"
    t.index ["user_id"], name: "up_users_role_links_fk"
  end

  create_table "upload_file", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255, null: false
    t.string "alternativeText", limit: 255
    t.string "caption", limit: 255
    t.integer "width"
    t.integer "height"
    t.jsonb "formats"
    t.string "hash", limit: 255, null: false
    t.string "ext", limit: 255
    t.string "mime", limit: 255, null: false
    t.decimal "size", precision: 10, scale: 2, null: false
    t.string "url", limit: 255, null: false
    t.string "previewUrl", limit: 255
    t.string "provider", limit: 255, null: false
    t.jsonb "provider_metadata"
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }
  end

  create_table "upload_file_morph", id: :serial, force: :cascade do |t|
    t.integer "upload_file_id"
    t.integer "related_id"
    t.text "related_type"
    t.text "field"
    t.integer "order"
  end

  create_table "users-permissions_permission", id: :serial, force: :cascade do |t|
    t.string "type", limit: 255, null: false
    t.string "controller", limit: 255, null: false
    t.string "action", limit: 255, null: false
    t.boolean "enabled", null: false
    t.string "policy", limit: 255
    t.integer "role"
    t.integer "created_by"
    t.integer "updated_by"
  end

  create_table "users-permissions_role", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255, null: false
    t.string "description", limit: 255
    t.string "type", limit: 255
    t.integer "created_by"
    t.integer "updated_by"
    t.index ["type"], name: "users-permissions_role_type_unique", unique: true
  end

  create_table "users-permissions_user", id: :serial, force: :cascade do |t|
    t.string "username", limit: 255, null: false
    t.string "email", limit: 255, null: false
    t.string "provider", limit: 255
    t.string "password", limit: 255
    t.string "resetPasswordToken", limit: 255
    t.string "confirmationToken", limit: 255
    t.boolean "confirmed"
    t.boolean "blocked"
    t.integer "role"
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }
    t.index ["username"], name: "users-permissions_user_username_unique", unique: true
  end

  add_foreign_key "admin_permissions", "admin_users", column: "created_by_id", name: "admin_permissions_created_by_id_fk", on_delete: :nullify
  add_foreign_key "admin_permissions", "admin_users", column: "updated_by_id", name: "admin_permissions_updated_by_id_fk", on_delete: :nullify
  add_foreign_key "admin_permissions_role_links", "admin_permissions", column: "permission_id", name: "admin_permissions_role_links_fk", on_delete: :cascade
  add_foreign_key "admin_permissions_role_links", "admin_roles", column: "role_id", name: "admin_permissions_role_links_inv_fk", on_delete: :cascade
  add_foreign_key "admin_roles", "admin_users", column: "created_by_id", name: "admin_roles_created_by_id_fk", on_delete: :nullify
  add_foreign_key "admin_roles", "admin_users", column: "updated_by_id", name: "admin_roles_updated_by_id_fk", on_delete: :nullify
  add_foreign_key "admin_users", "admin_users", column: "created_by_id", name: "admin_users_created_by_id_fk", on_delete: :nullify
  add_foreign_key "admin_users", "admin_users", column: "updated_by_id", name: "admin_users_updated_by_id_fk", on_delete: :nullify
  add_foreign_key "admin_users_roles_links", "admin_roles", column: "role_id", name: "admin_users_roles_links_inv_fk", on_delete: :cascade
  add_foreign_key "admin_users_roles_links", "admin_users", column: "user_id", name: "admin_users_roles_links_fk", on_delete: :cascade
  add_foreign_key "calculos", "proyectos", name: "fk"
  add_foreign_key "changelogs", "proyectos", name: "changelogs_proyectos_fkey"
  add_foreign_key "components_cambios_calculo_presupuestos_components", "components_cambios_calculo_presupuestos", name: "components_cambios_calculo_presupuesto_id_fk", on_delete: :cascade
  add_foreign_key "files", "admin_users", column: "created_by_id", name: "files_created_by_id_fk", on_delete: :nullify
  add_foreign_key "files", "admin_users", column: "updated_by_id", name: "files_updated_by_id_fk", on_delete: :nullify
  add_foreign_key "files_related_morphs", "files", name: "files_related_morphs_fk", on_delete: :cascade
  add_foreign_key "i18n_locale", "admin_users", column: "created_by_id", name: "i18n_locale_created_by_id_fk", on_delete: :nullify
  add_foreign_key "i18n_locale", "admin_users", column: "updated_by_id", name: "i18n_locale_updated_by_id_fk", on_delete: :nullify
  add_foreign_key "pedidos_components", "pedidos", name: "pedido_id_fk", on_delete: :cascade
  add_foreign_key "proyectos_components", "proyectos", name: "proyecto_id_fk", on_delete: :cascade
  add_foreign_key "strapi_api_tokens", "admin_users", column: "created_by_id", name: "strapi_api_tokens_created_by_id_fk", on_delete: :nullify
  add_foreign_key "strapi_api_tokens", "admin_users", column: "updated_by_id", name: "strapi_api_tokens_updated_by_id_fk", on_delete: :nullify
  add_foreign_key "up_permissions", "admin_users", column: "created_by_id", name: "up_permissions_created_by_id_fk", on_delete: :nullify
  add_foreign_key "up_permissions", "admin_users", column: "updated_by_id", name: "up_permissions_updated_by_id_fk", on_delete: :nullify
  add_foreign_key "up_permissions_role_links", "up_permissions", column: "permission_id", name: "up_permissions_role_links_fk", on_delete: :cascade
  add_foreign_key "up_permissions_role_links", "up_roles", column: "role_id", name: "up_permissions_role_links_inv_fk", on_delete: :cascade
  add_foreign_key "up_roles", "admin_users", column: "created_by_id", name: "up_roles_created_by_id_fk", on_delete: :nullify
  add_foreign_key "up_roles", "admin_users", column: "updated_by_id", name: "up_roles_updated_by_id_fk", on_delete: :nullify
  add_foreign_key "up_users", "admin_users", column: "created_by_id", name: "up_users_created_by_id_fk", on_delete: :nullify
  add_foreign_key "up_users", "admin_users", column: "updated_by_id", name: "up_users_updated_by_id_fk", on_delete: :nullify
  add_foreign_key "up_users_role_links", "up_roles", column: "role_id", name: "up_users_role_links_inv_fk", on_delete: :cascade
  add_foreign_key "up_users_role_links", "up_users", column: "user_id", name: "up_users_role_links_fk", on_delete: :cascade
end
