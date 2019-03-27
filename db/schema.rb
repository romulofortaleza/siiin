# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_02_01_034530) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "atendimentos", force: :cascade do |t|
    t.bigint "paciente_id"
    t.bigint "profissional_id"
    t.bigint "unidade_id"
    t.datetime "data"
    t.text "anamnese"
    t.integer "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "procedimento_id"
    t.index ["paciente_id"], name: "index_atendimentos_on_paciente_id"
    t.index ["procedimento_id"], name: "index_atendimentos_on_procedimento_id"
    t.index ["profissional_id"], name: "index_atendimentos_on_profissional_id"
    t.index ["unidade_id"], name: "index_atendimentos_on_unidade_id"
  end

  create_table "clinicas", force: :cascade do |t|
    t.string "descricao"
    t.string "cnpj"
    t.string "responsavel"
    t.string "responsavel_cpf"
    t.bigint "rede_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "endereco_id"
    t.index ["endereco_id"], name: "index_clinicas_on_endereco_id"
    t.index ["rede_id"], name: "index_clinicas_on_rede_id"
  end

  create_table "document_registers", force: :cascade do |t|
    t.string "name"
    t.bigint "instrument_registrations_id"
    t.binary "document_file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["instrument_registrations_id"], name: "index_document_registers_on_instrument_registrations_id"
  end

  create_table "enderecos", force: :cascade do |t|
    t.string "logradouro"
    t.integer "numero"
    t.string "complemento"
    t.string "bairro"
    t.string "localidade"
    t.string "uf"
    t.string "cep"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "especialidades", force: :cascade do |t|
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "instrument_registrations", force: :cascade do |t|
    t.integer "instrument_number"
    t.integer "internal_number"
    t.integer "extra_number"
    t.string "object_agreement"
    t.string "granting_organ"
    t.string "linked_organ"
    t.string "existence_im"
    t.string "instituition_name"
    t.string "value_transfer"
    t.string "counterpart_value"
    t.string "total"
    t.date "signature_date"
    t.date "end_date"
    t.date "suspensive_date"
    t.string "type"
    t.string "address"
    t.date "open_date"
    t.string "organ"
    t.string "user"
    t.string "signature"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "instrument_type"
  end

  create_table "pacientes", force: :cascade do |t|
    t.string "nome"
    t.string "rg"
    t.string "cpf"
    t.bigint "tipo_plano_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "endereco_id"
    t.index ["endereco_id"], name: "index_pacientes_on_endereco_id"
    t.index ["tipo_plano_id"], name: "index_pacientes_on_tipo_plano_id"
  end

  create_table "planos", force: :cascade do |t|
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "procedimentos", force: :cascade do |t|
    t.integer "cid"
    t.string "codigo"
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "especialidade_id"
    t.index ["especialidade_id"], name: "index_procedimentos_on_especialidade_id"
  end

  create_table "profissionais", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "especialidade_id"
    t.bigint "endereco_id"
    t.index ["endereco_id"], name: "index_profissionais_on_endereco_id"
    t.index ["especialidade_id"], name: "index_profissionais_on_especialidade_id"
  end

  create_table "profissionais_unidades", id: false, force: :cascade do |t|
    t.bigint "profissional_id", null: false
    t.bigint "unidade_id", null: false
  end

  create_table "redes", force: :cascade do |t|
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.bigint "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "tipo_planos", force: :cascade do |t|
    t.string "descricao"
    t.bigint "plano_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plano_id"], name: "index_tipo_planos_on_plano_id"
  end

  create_table "unidades", force: :cascade do |t|
    t.string "descricao"
    t.string "cnpj"
    t.string "responsavel"
    t.string "responsavel_cpf"
    t.bigint "clinica_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "endereco_id"
    t.index ["clinica_id"], name: "index_unidades_on_clinica_id"
    t.index ["endereco_id"], name: "index_unidades_on_endereco_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nome"
    t.string "cpf", null: false
    t.index ["cpf"], name: "index_usuarios_on_cpf", unique: true
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
  end

  create_table "usuarios_roles", id: false, force: :cascade do |t|
    t.bigint "usuario_id"
    t.bigint "role_id"
    t.index ["role_id"], name: "index_usuarios_roles_on_role_id"
    t.index ["usuario_id", "role_id"], name: "index_usuarios_roles_on_usuario_id_and_role_id"
    t.index ["usuario_id"], name: "index_usuarios_roles_on_usuario_id"
  end

  create_table "valor_procedimentos", force: :cascade do |t|
    t.bigint "clinica_id"
    t.bigint "procedimento_id"
    t.bigint "tipo_plano_id"
    t.decimal "valor"
    t.decimal "percentual_rateio_clinica"
    t.decimal "percentual_rateio_profissional"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clinica_id"], name: "index_valor_procedimentos_on_clinica_id"
    t.index ["procedimento_id"], name: "index_valor_procedimentos_on_procedimento_id"
    t.index ["tipo_plano_id"], name: "index_valor_procedimentos_on_tipo_plano_id"
  end

  add_foreign_key "atendimentos", "pacientes"
  add_foreign_key "atendimentos", "procedimentos"
  add_foreign_key "atendimentos", "profissionais", column: "profissional_id"
  add_foreign_key "atendimentos", "unidades"
  add_foreign_key "clinicas", "enderecos"
  add_foreign_key "document_registers", "instrument_registrations", column: "instrument_registrations_id"
  add_foreign_key "pacientes", "enderecos"
  add_foreign_key "pacientes", "tipo_planos"
  add_foreign_key "procedimentos", "especialidades"
  add_foreign_key "profissionais", "enderecos"
  add_foreign_key "profissionais", "especialidades"
  add_foreign_key "tipo_planos", "planos"
  add_foreign_key "unidades", "enderecos"
  add_foreign_key "valor_procedimentos", "clinicas"
  add_foreign_key "valor_procedimentos", "procedimentos"
  add_foreign_key "valor_procedimentos", "tipo_planos"
end
