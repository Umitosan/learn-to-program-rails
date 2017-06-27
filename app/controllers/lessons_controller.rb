class LessonsController < ApplicationController
  def new
    @section = Section.find(params[:section_id])
    @lesson = @section.lessons.new
  end

  def create
    @section = Section.find(params[:section_id])
    @lesson = @section.lessons.new(lesson_params)
    if @lesson.save
      flash[:notice] = "Lesson successfully added!"
      redirect_to section_path(@lesson.section)
    else
      render :new
    end
  end

  private
  def lesson_params
    params.require(:lesson).permit(:name, :content, :order)
  end

end
