Trestle.resource(:admins) do
  menu do
    if current_user.admin?
      group :admin, priority: :last do
        item :admins, icon: "fa fa-star", label: "Approve"
      end
    end
  end

  remove_action :new, :edit, :destroy, :create

end
