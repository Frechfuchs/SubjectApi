class CreateSubjects < ActiveRecord::Migration[7.0]
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :pin

      t.timestamps
    end

    create_table :subject_data do |t|
      t.references :subject, null: false, foreign_key: true

      t.timestamps
    end

    create_table :subject_users do |t|
      t.references :subject, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
