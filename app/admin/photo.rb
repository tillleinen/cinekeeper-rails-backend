ActiveAdmin.register Photo do
  config.sort_order = 'position_asc'
  sortable

  permit_params :position, :image

  index do
    sortable_handle_column
    column :image
    actions
  end
end
