class CreateSendResumes < ActiveRecord::Migration[7.0]
  def change
    create_table :send_resumes do |t|
      t.string :sender
      t.string :receiver

      t.timestamps
    end
  end
end
