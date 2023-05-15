class Order < ApplicationRecord
  has_many :items, dependent: :destroy

  accepts_nested_attributes_for :items, allow_destroy: true, reject_if: :all_blank

  # Attributes
  attribute :job_order_number, :integer
  attribute :customer_name, :string
  attribute :contact_number, :integer
  attribute :email, :string
  attribute :address, :string
  attribute :jacket_length, :float
  attribute :back_width, :float
  attribute :sleeves, :float
  attribute :left_cuff, :float
  attribute :right_cuff, :float
  attribute :collar, :float
  attribute :chest, :float
  attribute :waist, :float
  attribute :hips, :float
  attribute :lapel_type, :string
  attribute :stature, :string
  attribute :shoulders, :string
  attribute :collar_type, :string
  attribute :cuff_type, :string
  attribute :pleats_options, :string
  attribute :back_pockets, :boolean
  attribute :crotch, :float
  attribute :outseam, :float
  attribute :waist_pants, :float
  attribute :seat, :float
  attribute :thigh, :float
  attribute :knee, :float
  attribute :bottom, :float
  attribute :remarks, :string
  attribute :general_remarks, :text
end
