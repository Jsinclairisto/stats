require 'gruff'

class DataAnalysis

  def graphnumline(values)
    #values is an array of floats
    if values.is_a?(Numeric)
      @graphnumline = values
    else
      puts "value can't be a string" 
    end
  end
end

g = Gruff::Bar.new
g.title = 'Lot Analysis'
g.labels = { 0 => 'Mon', 1 => 'Tue', 2 => 'Wed', 3 => 'Thur', 4 => 'Fri',
             5 => 'Sat', 6 => 'Sun'}
g.data :Lot1, [50,43,67,23,54,66]
g.data :Lot2, [22,66,32,11,23,76]
g.data :Lot3, [86,43,56,25,73,22]
g.data :Lot4, [43,6,52,67,78,13]
g.write 'lot_analysis.png'
