Hanami::Model.migration do
  change do
    create_table :answers do
      primary_key :id

      column :question, String, null: false
      column :valid_answer, String, null: false
      column :result, String, null: false

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
