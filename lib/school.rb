# code here!
require 'pry'
class School
  attr_accessor :roster
  attr_reader :sch_name

  def initialize(sch_name)
    @sch_name = sch_name
    @roster = {}
  end

  def add_student(student_name, grade)
      @roster[grade] = [] unless @roster.has_key?(grade)
      @roster[grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_hash = {}
    @roster.each_pair do |key, value|
      sorted_hash[key] = value.sort
    end

    sorted_hash
  end
end
