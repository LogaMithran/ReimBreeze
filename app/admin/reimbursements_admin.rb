Trestle.resource(:reimbursements) do
  menu do
    item :reimbursements, icon: "fa fa-star", label: t(:reimbursements)
  end

  form do |employee_reimbursement|
    row do
      col(sm: 6) do
        form.select :reimbursement_type, %w[Food Travel]
      end
      col(sm: 6) { text_field :amount,  prepend: "INR" }

    end
  end
end
