class ClassroomsController < ApplicationController
	STUDENTS = [
		'Aleka',
    'Andrew',
    'Arthur',
    'Aobo',
    'Cameron',
    'Christine',
    'Eliott',
    'Lucas',
    'Maria',
    'Menachem',
    'Michael',
    'Nadin',
    'Norbert',
    'Serena',
    'Tim',
    'Todd',
    'Tyler',
    'Vicki',
    'Wick'
	]
  GROUPS = [
    'Aleka',
    'Andrew',
    'Arthur',
    'Aobo',
    'Cameron',
    'Christine',
    'Eliott',
    'Lucas',
    'Maria',
    'Menachem',
    'Michael',
    'Nadin',
    'Norbert',
    'Serena',
    'Tim',
    'Todd',
    'Tyler',
    'Vicki',
    'Wick'
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
    @groups = GROUPS.shuffle.each_slice(2).to_a
  end
end