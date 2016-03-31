class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :update, :destroy]

  # GET /courses
  # GET /courses.json
  def index
    @courses = Course.all

    render json: @courses
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
    render json: @course
  end

  # POST /courses
  # POST /courses.json
  def create
    @course = Course.new(course_params)

    if @course.save
      render json: @course, status: :created, location: @course
    else
      render json: @course.errors, status: :unprocessable_entity
    end
  end

  #######################Given course, obtain all semesters############################
  def semesters
      @course = Course.find(params[:id]) 
      crshash = {'1' => 'Clanguage', '2' => 'TheoryOfAutomata', '3' => 'Java', '4' => 'AdvancedJava', '5' => 'QTheory'}
      crshash.each do|key,value|
          if key == "#{params[:id]}"
              @crsname = value
          end
        end
      @semester = Course.where("coursename='#{@crsname}'")
      render json: @semester
  end
  #####################################################################################
  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
    @course = Course.find(params[:id])

    if @course.update(course_params)
      head :no_content
    else
      render json: @course.errors, status: :unprocessable_entity
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course.destroy

    head :no_content
  end

  private

    def set_course
      @course = Course.find(params[:id])
    end

    def course_params
      params.require(:course).permit(:semester_id, :coursename)
    end
end
