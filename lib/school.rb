require 'pry'
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name= name
    @roster = {}
  end

  def add_student(student_name, grade)
        @roster[grade] ||= [] #removed if !@roster[grade]
        @roster[grade] << student_name
  end
  def grade(grade)
    @roster[grade]
  end
  def sort
    roster.each { |grade, students| roster[grade] = students.sort}
  end

end
