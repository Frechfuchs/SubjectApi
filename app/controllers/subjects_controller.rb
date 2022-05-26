class SubjectsController < ApplicationController
  before_action :find_subject, only: [:show, :edit, :update, :destroy]

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new

    if @subject.save
      redirect_to @subject
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update  
    # TODO: Get Params
    if @subject.update(permitted_update_params)
      redirect_to @subject
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def edit
  end

  def destroy
    if @subject.destroy
      redirect_to subjects_path
    else
      render :edit, @subject, status: :unprocessable_entity
    end
  end

  def index
    @subjects = Subject.all
  end

  def show
  end

  private 
  def permitted_params
    params.permit(:id).to_h
  end

  def permitted_update_params
    params.require(:subject).permit(:name, :pin)
  end

  def find_subject
    begin
      @subject = Subject.find(permitted_params[:id])
    rescue ActiveRecord::RecordNotFound  
      redirect_to controller: "subjects", action: "index"
      return
    end
  end
end
