ActiveAdmin.register BehindTheScenesPhoto do
  actions :all, except: [:show]
  config.sort_order = 'position_asc'
  sortable

  permit_params :position, :image

  index do
    sortable_handle_column
    column :image do |photo|
      image_tag(photo.image.url(:thumb))
    end
    actions
  end

  form do |f|
    inputs 'Details' do
      input :image, :hint => image_tag(f.object.image.url(:thumb)) 
    end
    actions
  end
end
