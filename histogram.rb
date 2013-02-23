############################################################
#
#  Name:        Sean Glover
#  Date:        02/03/2013
#  Description: Generate 200 random numbers 1-100 and create histogram from results
#
############################################################

def count_range(histogram_array, start_range, end_range, column_3_width)
  return (histogram_array.count{|x| x >= start_range and x <= end_range}).to_s.rjust(column_3_width)
end

histogram_array = []

200.times do
  histogram_array.push(rand(1..100)).sort!
end

puts "  Range    #Found     Chart\n  -----    ------     #{"-" * 25}"

column_1_width, column_2_width, column_3_width = 2, 3, 2

start_range, end_range = 1, 10

print " 1 -  10   | #{count_range(histogram_array, start_range, end_range, column_3_width)} |     "

histogram_array.each do |number|
  if number > end_range
    print "\n"
    start_range += 10
    end_range += 10
    print "#{start_range.to_s.rjust(column_1_width)} - #{end_range.to_s.rjust(column_2_width)}   | #{count_range(histogram_array, start_range, end_range, column_3_width)} |     *"
  else
    print "*"
  end
end