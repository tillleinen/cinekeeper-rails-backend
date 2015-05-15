ActiveAdmin.register Client do
  actions :all, except: [:show]
  config.sort_order = 'position_asc'
  sortable

  permit_params :position, :image, :name

  index do
    sortable_handle_column
    column :name
    column :image do |client|
      image_tag(client.image.url(:thumb))
    end
    actions
  end

  form do |f|
    inputs 'Details' do
      input :name
      input :image, :hint => image_tag(f.object.image.url(:thumb)) 
    end
    actions
  end
end
