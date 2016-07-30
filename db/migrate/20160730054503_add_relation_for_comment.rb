class AddRelationForComment < ActiveRecord::Migration
  def up
    # こう書けるらしい ( http://stackoverflow.com/questions/5534579/how-to-generate-migration-to-make-references-polymorphic )
    change_table :comments do |t|
      t.references :review, polymorphic: true
    end

    # def change で書く場合は以下
    #add_reference :comments, :review_id
    #add_reference :comments, :review_type
  end

  def down
    change_table :comments do |t|
      t.remove_references :review, polymorphic: true
    end
  end
end
