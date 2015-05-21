ActiveAdmin.register BackgroundImage do
  actions :all, except: [:show]

  permit_params :image

  index do
    column :image do |background_image|
      image_tag(background_image.image.url(:thumb))
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
