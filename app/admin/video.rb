ActiveAdmin.register Video do
  config.sort_order = 'position_asc'
  sortable

  permit_params :name, :position, :image, :video_category_id, :video_id

  filter :video_category

  index do
    sortable_handle_column
    column :name
    column :slug
    column :video_id
    column :image
    column :video_category
    actions
  end
end
