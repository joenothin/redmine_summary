class CreateSummaries < ActiveRecord::Migration
  def change
    create_table :summaries do |t|
      t.text :title
      t.text :status
    end
  end
end
