Trestle.resource(:reimbursements) do

  remove_action :destroy, :edit, :update

  menu do
    if !current_user.admin?
      group :admin, priority: :last do
        item :reimbursements, icon: "fa fa-star", label: t(:reimbursements)
      end
    end
  end

  form do |employee_reimbursement|
    row do
      col(sm: 6) do
        form.select :reimbursement_type, %w[Food Travel]
      end
      col(sm: 6) { text_field :amount, prepend: "INR" }

    end
  end

  build_instance do |attrs, _params|
    next Reimbursement.new if attrs.blank?

    reimbursement =  Reimbursement.new(attrs)
    reimbursement.employee_name = "#{current_user.first_name} #{current_user.last_name}"
    reimbursement.employee_email = current_user.email
    reimbursement
  end
end
