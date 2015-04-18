ActiveAdmin.register Video do
  config.sort_order = 'position_asc'
  sortable

  permit_params :name, :position, :image, :video_category_id, :video_id

  filter :video_category

  index do
    sortable_handle_column
    column :name
    column :video_id
    column :image
    column :video_category
    actions
  end

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
