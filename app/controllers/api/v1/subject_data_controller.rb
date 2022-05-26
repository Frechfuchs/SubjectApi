class Api::V1::SubjectDataController < Api::V1::BaseController
  def create
    @subject = Subject.find_by(name: permitted_params[:name])

    if @subject && @subject.pin == permitted_params[:pin]
      @subject_datum = SubjectDatum.new(payload: permitted_params[:payload], subject: @subject)

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
    params.permit(:name, :pin, :payload).to_h
  end
end