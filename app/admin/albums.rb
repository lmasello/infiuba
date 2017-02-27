ActiveAdmin.register Album do
  permit_params :name, :url, :activity_id

  index do
    selectable_column
    id_column
    column :name
    column :url
    column :activity_id
    actions
  end

  form do |f|
    f.inputs "Album Details" do
      f.input :name
      f.input :url
      f.input :activity_id, as: :select, collection: Activity.all(&:name), include_blank: false
    end
    f.actions
  end
end
