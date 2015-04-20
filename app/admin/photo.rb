ActiveAdmin.register Photo do
  config.sort_order = 'position_asc'
  sortable

  permit_params :position, :image
end
