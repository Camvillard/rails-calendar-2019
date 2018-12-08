class CreateMails < ActiveRecord::Migration[5.2]
  def change
    create_table :mails do |t|
      t.string :email_from
      t.string :subject
      t.text :message_content
      t.timestamps
    end
  end
end
