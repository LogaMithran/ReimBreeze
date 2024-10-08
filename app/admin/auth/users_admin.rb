Trestle.resource(:users, model: User, scope: Auth) do
  menu do
    if current_user.admin?
      group :admin, priority: :last do
        item :users, icon: "fas fa-users"
      end
    end
  end

  table do
    column :avatar, header: false do |user|
      avatar_for(user)
    end
    column :email, link: true
    column :first_name
    column :last_name
    actions do |a|
      a.delete unless a.instance == current_user
    end
  end

  form do |user|
    text_field :email

    row do
      col(sm: 6) { text_field :first_name }
      col(sm: 6) { text_field :last_name }
    end

    row do
      col(sm: 6) { password_field :password }
      col(sm: 6) { password_field :password_confirmation }
    end
    col do
      form.check_box :admin
    end
  end

  controller do |user|
    include Pundit::Authorization

    def index
      authorize User
      super
    end
  end
end
