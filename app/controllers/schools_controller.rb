class SchoolsController < ApplicationController
  def index
    @schools = School.all
  end

  def show
    @school = School.find(params[:id])
  end

  def new

  end

  def create
    school = School.create(params)

    redirect_to school_path(school.id)
  end

  def edit
    @school.School.find(params[:id])
  end

  def update
    School.update(params[:id], params)

    redirect_to school_path(param[:id])
  end
end
