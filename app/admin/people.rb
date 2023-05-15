ActiveAdmin.register Person do
  permit_params :name, :gender, :address
  
  form do |f|
    f.inputs "Person Details" do
      f.input :name
      f.input :gender, as: :radio, collection: ["Male", "Female"]
      f.input :address, as: :text
      f.input :clothing, as: :radio, collection: Person.clothings.keys
    end
    f.actions
  end
  
  index do
    selectable_column
    id_column
    column :name
    columg :clothing
    actions
  end
  
  show do
    attributes_table do
      row :name
      row :gender
      row :address
    end
  end
end
