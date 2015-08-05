
class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name=name
    @roster={}
  end

  def first_student(grade)
    @roster[grade]
  end
  
  def add_student(name,grade)

    if first_student(grade) != nil
      @roster[grade]<< name
    else
      @roster[grade] = [name]
    end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.each do |grade, all_students|
      all_students.sort!
    end
  end

end

puts school = School.new("Bayside High School")
puts school.roster
puts school.add_student("Zach Morris", 9)
puts school.roster
puts school.add_student("AC Slater", 9)
puts school.add_student("Kelly Kapowski", 10)
puts school.add_student("Screech", 11)
puts school.roster
puts school.grade(9)
puts school.sort

