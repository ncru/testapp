ActiveAdmin.register Order do
  permit_params :job_order_number, :customer_name, :contact_number, :email, :address,
  :jacket_length, :back_width, :sleeves, :left_cuff, :right_cuff, :collar,
  :chest, :waist, :hips, :lapel_type, :stature, :shoulders, :collar_type,
  :cuff_type, :pleats_options, :back_pockets, :crotch, :outseam, :waist_pants,
  :seat, :thigh, :knee, :bottom, :remarks, :general_remarks,
  items_attributes: [:id, :name, :quantity, :fabric_lining_code, :_destroy]


  form do |f|
    f.semantic_errors
    f.inputs "Customer Job Order" do
      f.input :job_order_number, input_html: { type: "number" }
    end

    f.inputs "Personal Information" do
      f.input :customer_name, as: :string
      f.input :contact_number, input_html: { type: "number" }
      f.input :email, as: :string
      f.input :address, as: :string
    end

    f.inputs "Items" do
      f.has_many :items, allow_destroy: true, heading: 'Items' do |item|
        item.input :name, as: :string
        item.input :quantity, input_html: { type: "number", step: "0.01" }
        item.input :fabric_lining_code, as: :string
      end
    end

    f.inputs "Coat details and measurements" do
      f.input :jacket_length, input_html: { type: "number", step: "0.01" }
      f.input :back_width, input_html: { type: "number", step: "0.01" }
      f.input :sleeves, input_html: { type: "number", step: "0.01" }
      f.input :left_cuff, input_html: { type: "number", step: "0.01" }
      f.input :right_cuff, input_html: { type: "number", step: "0.01" }
      f.input :collar, input_html: { type: "number", step: "0.01" }
      f.input :chest, input_html: { type: "number", step: "0.01" }
      f.input :waist, input_html: { type: "number", step: "0.01" }
      f.input :hips, input_html: { type: "number", step: "0.01" }
      f.input :lapel_type, as: :radio, collection: ['Single Breasted', 'Double Breasted', 'Peak', 'Shawl']
      f.input :stature, as: :radio, collection: ['Erect', 'Stooping', 'Prominent Stomach', 'Stout']
      f.input :shoulders, as: :radio, collection: ['Normal', 'Stooping', 'Square']
      f.input :collar_type, as: :radio, collection: ['Point', 'Spread']
      f.input :cuff_type, as: :radio, collection: ['Barreled', 'Mitered', 'French']
    end

    f.inputs "Pants details" do
      f.input :pleats_options, as: :radio, collection: ['Pleats towards pockets', 'Pleats towards fly', 'No pleats']
      f.input :back_pockets, as: :boolean
      f.input :crotch, input_html: { type: "number", step: "0.01" }
      f.input :outseam, input_html: { type: "number", step: "0.01" }
      f.input :waist_pants, input_html: { type: "number", step: "0.01" }
      f.input :seat, input_html: { type: "number", step: "0.01" }
      f.input :thigh, input_html: { type: "number", step: "0.01" }
      f.input :knee, input_html: { type: "number", step: "0.01" }
      f.input :bottom, input_html: { type: "number", step: "0.01" }
      f.input :remarks, as: :string, input_html: { rows: 1 }
    end
    
    f.inputs "General Remarks" do
      f.input :general_remarks, as: :text, input_html: { rows: 5 }
    end    

    f.actions

  end

  index do
    selectable_column
    id_column
    column :job_order_number
    column :customer_name
    column :contact_number
    column :email
    column :items
    column :general_remarks
    actions
  end

  filter :job_order_number
  filter :customer_name
  filter :email
  filter :items
  filter :general_remarks


end
