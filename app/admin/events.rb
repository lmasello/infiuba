ActiveAdmin.register Event do
  permit_params :name, :date, :url, :details, :image_url

  index do
    selectable_column
    id_column
    column :name
    column :date
    column :url
    column :image_url
    actions
  end

  form do |f|
    f.inputs "Admin Details" do
      column :name
      column :date
      column :url
      column :details
      column :image_url
    end
    f.actions
  end
end
