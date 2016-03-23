class AddCategoryToProducts < ActiveRecord::Migration
  def change
    category = Category.create! name: "Please select category"
    add_reference :products, :category, index: true, default: category.id
  end
end
