ActiveAdmin.register SuitJobOrder do
  permit_params :sales_job_order, :fabric_selection, :coat_job_order, :pants_job_order,
                :shirt_and_vest_job_order, :alteration_job_order, :first_suit_fitting,
                :suit_adjustments, :second_suit_fitting, :suit_final_sewing,
                :final_product_to_client

  # Add batch actions
  batch_action :mark_as_processed do |ids|
    batch_action_collection.find(ids).each do |order|
      order.update(processed: true)
    end
    redirect_to collection_path, notice: "Selected job orders have been marked as processed."
  end

  # Customize the index view
  index do
    selectable_column
    id_column
    column :sales_job_order
    column :fabric_selection do |order|
      status_tag(order.fabric_selection ? 'Processed' : 'Pending')
    end
    column :coat_job_order do |order|
      status_tag(order.coat_job_order ? 'Processed' : 'Pending')
    end
    column :pants_job_order do |order|
      status_tag(order.pants_job_order ? 'Processed' : 'Pending')
    end
    column :shirt_and_vest_job_order do |order|
      status_tag(order.shirt_and_vest_job_order ? 'Processed' : 'Pending')
    end
    column :alteration_job_order do |order|
      status_tag(order.alteration_job_order ? 'Processed' : 'Pending')
    end
    column :first_suit_fitting do |order|
      status_tag(order.first_suit_fitting ? 'Processed' : 'Pending')
    end
    column :suit_adjustments do |order|
      status_tag(order.suit_adjustments ? 'Processed' : 'Pending')
    end
    column :second_suit_fitting do |order|
      status_tag(order.second_suit_fitting ? 'Processed' : 'Pending')
    end
    column :suit_final_sewing do |order|
      status_tag(order.suit_final_sewing ? 'Processed' : 'Pending')
    end
    column :final_product_to_client do |order|
      status_tag(order.final_product_to_client ? 'Processed' : 'Pending')
    end
    column :processed do |order|
      status_tag order.processed ? 'Processed' : 'Pending'
    end

    actions
  end
end
