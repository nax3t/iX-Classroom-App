class ClassroomsController < ApplicationController
	STUDENTS = 
		"Amanda", "Rachel", "Robert K", "Daniel", "Robert L", "Julianne", "Rebecca",
    "Melissa", "Chris", "Emily" , "Richard", "Jessie", "Isabel", "Tali", "Sarah",
    "Sammy", "Annelie", "Leila", "Julian", "Alec", "Praise", "Tebogo",
    "Josh", "Khangwelo", "Therveshan"
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