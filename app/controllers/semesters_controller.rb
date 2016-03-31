class SemestersController < ApplicationController
  before_action :set_semester, only: [:show, :update, :destroy]

  # GET /semesters
  # GET /semesters.json
  def index
    @semesters = Semester.all

    render json: @semesters
  end

  # GET /semesters/1
  # GET /semesters/1.json
  def show
    render json: @semester
  end

  # POST /semesters
  # POST /semesters.json
  def create
    @semester = Semester.new(semester_params)

    if @semester.save
      render json: @semester, status: :created, location: @semester
    else
      render json: @semester.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /semesters/1
  # PATCH/PUT /semesters/1.json
  def update
    @semester = Semester.find(params[:id])

    if @semester.update(semester_params)
      head :no_content
    else
      render json: @semester.errors, status: :unprocessable_entity
    end
  end

  # DELETE /semesters/1
  # DELETE /semesters/1.json
  def destroy
    @semester.destroy

    head :no_content
  end
#############For a given semester, obtain Registrations########
  def registrations
    @semester = Semester.find(params[:id])
    #render text: "I got #{params[:id]}"
    #Get registrations for a given semester (read in params[:id])
    @registrations = Registration.where("semester_id = '#{params[:id]}'") #Table name is Registraion not Registrations
    render json: @registrations
  end
###############################################################
  private

    def set_semester
      @semester = Semester.find(params[:id])
    end

    def semester_params
      params.require(:semester).permit(:student_id, :sem)
    end
end
