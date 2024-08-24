Trestle.resource(:employees) do
  menu do
    if current_user.admin?
      group :admin, priority: :last do
        item :employees, icon: "fa fa-star"
      end
    end
  end

  table do
    column :employee_name do |employee|
      "#{employee.first_name} #{employee.last_name}"
    end
    column :designation
    column :department
    actions
  end

  form do |employee|
    row do
      col(sm: 4) { text_field :first_name }
      col(sm: 4) { text_field :last_name }
      col(sm: 4) { email_field :email, prepend: "@" }
    end

    row do
      col(sm: 6) { text_field :designation }
      col(sm: 6) do
        form.select :department, %w[Sales Engineering HR Finance]
      end
    end
  end
end
