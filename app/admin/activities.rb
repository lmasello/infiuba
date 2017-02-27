ActiveAdmin.register Activity do
  permit_params :name, :image_url, :details

  index do
    selectable_column
    id_column
    column :name
    column :image_url
    column :details
    actions
  end

  form do |f|
    f.inputs "Admin Details" do
      f.input :name
      f.input :image_url
      f.input :details
    end
    f.actions
  end
end
