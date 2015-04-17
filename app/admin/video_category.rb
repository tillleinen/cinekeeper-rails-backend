ActiveAdmin.register VideoCategory do
  config.sort_order = 'position_asc'
  sortable

	permit_params :name, :position, :image

  index do
    sortable_handle_column
    column :name
    column :image
  end

end
