ActiveAdmin.register HomeVideo do
  actions :all, except: [:show]

  permit_params :mp4_url, :webm_url

  index do
    column :webm_url
    column :mp4_url
    actions
  end

  form do |f|
    inputs 'Details' do
      input :webm_url
      input :mp4_url
    end
    actions
  end
end
