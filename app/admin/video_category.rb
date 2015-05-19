ActiveAdmin.register VideoCategory do
  actions :all, except: [:show]
  menu parent: 'Video'
  config.sort_order = 'position_asc'
  sortable

	permit_params :name, :position, :image, :slug, :play_instantly

  index do
    sortable_handle_column
    column :name
    column :slug
    column :image do |category|
      image_tag(category.image.url(:thumb))
    end
    actions
  end

  form do |f|
    inputs 'Details' do
      input :name
      input :play_instantly
      input :slug, hint: 'Achtung: Wird in der URL verwendet. Wenn geändert, werden bestehende Links unter Umständen unbrauchbar. Beim erstellen leer lassen um den Slug automatisch generieren zu lassen.'
      input :image, :hint => image_tag(f.object.image.url(:thumb)) 
    end
    actions
  end
end
