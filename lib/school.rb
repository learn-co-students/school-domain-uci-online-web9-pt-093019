class School
    attr_accessor :roster, :name

def initialize(name)
  @name = name
  @roster = {}
end
def add_student(student, grade)
  @roster[grade] ||= []
   @roster[grade] << student

end
def grade(number)
@roster[number]

end #end of grade method

def sort
#@roster.sort pointless bc returns a new array doesnt modify values

@roster.each do |gr, students|
@roster[gr] = students.sort
end # end of each

end #end of sort method


end #end of School class
# code here!
