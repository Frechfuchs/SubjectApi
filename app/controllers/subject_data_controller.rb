class SubjectDataController < ApplicationController
  before_action :find_subject_datum, only: [:show]

  def show
  end

  private
  def permitted_params
    params.permit(:id).to_h
  end

  def find_subject_datum
    begin
      @subject_datum = SubjectDatum.find(permitted_params[:id])
    rescue ActiveRecord::RecordNotFound  
      redirect_to controller: "subjects", action: "index"
      return
    end
  end
end
