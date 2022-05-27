class Api::V1::SubjectDataController < Api::V1::BaseController
  def create
    @subject = Subject.find_by(name: permitted_params[:name])

    if is_authorized?
      @subject_datum = SubjectDatum.new(payload: permitted_param_payload, subject: @subject)

      if @subject_datum.save
        render json: { status: "ok", message: "Success" }
      else
        render json: { status: "error", errors: subject_datum.errors }
      end

    else
      render json: { status: "error", error: 'not_found' }
    end
  end

  private
  def permitted_params
    params.permit(:name, :pin).to_h
  end

  def permitted_param_payload
    params.require(:payload).permit!.to_h
  end

  def is_authorized?
    begin
      @subject && @subject.pin == permitted_params[:pin] && permitted_param_payload.include?(:data)
    rescue
      false
    end
  end
end