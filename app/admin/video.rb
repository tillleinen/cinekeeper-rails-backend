ActiveAdmin.register Video do
  config.sort_order = 'position_asc'
  sortable

  permit_params :name, :position, :image, :video_category_id, :vimeo_id

  filter :video_category

  index do
    sortable_handle_column
    column :name
    column :slug
    column :vimeo_id
    column :image
    column :video_category
    actions
  end

  form do |f|
    inputs 'Details' do
      input :name
      input :video_category
      input :vimeo_id
      input :image
      actions
    end
  end
end
