ActiveAdmin.register InfriendsProgram do
  permit_params :title, :short_description, :large_description, :message

  index do
    selectable_column
    id_column
    column :title
    actions
  end

  form do |f|
    f.inputs "Program Details" do
      f.input :title
      f.input :short_description
      f.input :large_description
      f.input :message
    end
    f.actions
  end
end
