class CreateApplies < ActiveRecord::Migration[5.2]
  def change
    create_table :applies do |t|
      t.string :name_candidate
      t.string :last_name_candidate
      t.string :number_document
      t.references :vacancy, foreign_key: true
      t.date :birthdate
      t.string :phone

      t.timestamps
    end
  end
end
