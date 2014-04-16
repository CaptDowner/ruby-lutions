=begin
  What will the below case statement output when given a grade of 110?

  Result:

  "You failed!"

=end

#case with ranges
grade = 72
case grade
    when 90..100
      puts "Hooray!"
    when 80...90
      puts "OK job"
    when 70...80
      puts "You can do better"   
    else
      puts "You failed!"
end

