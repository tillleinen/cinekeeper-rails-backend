ActiveAdmin.register Video do
  actions :all, except: [:show]
  menu parent: 'Video'
  config.sort_order = 'position_asc'
  sortable

  permit_params :name, :position, :image, :video_category_id, :vimeo_id

  filter :video_category

  index do
    sortable_handle_column
    column :name
    column :slug
    column :vimeo_id
    column :image do |video|
      image_tag(video.image.url(:thumb))
    end
    column :video_category
    actions
  end

  form do |f|
    inputs 'Details' do
      input :name
      input :slug, hint: 'Achtung: Wird in der URL verwendet. Wenn geändert, werden bestehende Links unter Umständen unbrauchbar. Beim erstellen leer lassen um den Slug automatisch generieren zu lassen.'
      input :video_category
      input :vimeo_id
      input :image, :hint => image_tag(f.object.image.url(:thumb)) 
    end
    actions
  end
end
