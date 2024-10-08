class AdminReimburseController < ApplicationController
  protect_from_forgery with: :null_session
  def approve
    begin
      p "called"
      p params
      empReImb = Reimbursement.where(id: params["reimburseId"])
      unless empReImb.exists?
        raise("employee not found")
      end
      status = get_status(params["status"])
      empReImb.update_all(status: get_status(params["status"]))

      if status == 1
        empReImb.update_all(approval_time: Time.now.utc)
      end
      render json: { :message => "Done" }, status: :ok
    rescue Exception => e
      p e.message
      render json: { :message => e.message }, status: :internal_server_error
    end
  end

  def get_status(status)
    case status
    when "Approved"
      return 1
    when "Revoke"
      return 0
    else
      raise("Invalid status #{status}")
    end
  end

end
