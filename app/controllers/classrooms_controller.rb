class ClassroomsController < ApplicationController
	STUDENTS = [
		"Bailey","Austin","Blake","Yunny","Olivia","Alex",
		"Charlotte","Asad","Han","Kate","Oscar","Sophie","Zack","Matthew",
		"Gloryah","Jack","Enrique","Ben","Stanley","Kaan","Dilys","Molly",
		"Susana","Emily","Pavi","Daniel","Arya","Urvish"
	]

  def index
  	@welcome_message = "Welcome to my classroom app!"
  end

  def students
  	@students = STUDENTS.sort
  end

  def random_student
    @students = STUDENTS
    while (@random_student = @students.sample) == params[:student]
    end
  end

  def random_group
    @groups = STUDENTS.shuffle.each_slice(4).to_a
  end
end