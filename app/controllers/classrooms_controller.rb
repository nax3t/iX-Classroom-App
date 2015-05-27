class ClassroomsController < ApplicationController
  def index
  	@welcome_message = "Welcome to my classroom app!"
  end

  def students
  	students = [
  		"Bailey","Austin","Blake","Yunny","Olivia","Alex",
  		"Charlotte","Asad","Han","Kate","Oscar","Sophie","Zack","Matthew",
  		"Gloryah","Jack","Enrique","Ben","Stanley","Kaan","Dilys","Molly",
  		"Susana","Emily","Pavi","Daniel","Arya","Urvish"
  	]
  	@students = students.sort
  end

  def random_student
  	students = [
  		"Bailey","Austin","Blake","Yunny","Olivia","Alex",
  		"Charlotte","Asad","Han","Kate","Oscar","Sophie","Zack","Matthew",
  		"Gloryah","Jack","Enrique","Ben","Stanley","Kaan","Dilys","Molly",
  		"Susana","Emily","Pavi","Daniel","Arya","Urvish"
  	]
  	@students = students.sort
  	@random_student = @students[rand(0...28)]
  end
end
