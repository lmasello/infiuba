ActiveAdmin.register Separator do
  permit_params :description

  index do
    selectable_column
    id_column
    column :description
    actions
  end

  form do |f|
    f.inputs "Separator Details" do
      f.input :description
    end
    f.actions
  end
end
