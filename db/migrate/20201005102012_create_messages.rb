class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string     :content
      t.references :room, foereign_key: true
      t.references :user, foereign_key: true
      t.timestamps
    end
  end
end
