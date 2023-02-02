class Array
  def my_uniq
    output = []

    self.map { |ele| output << ele if !output.include?(ele) }

    output
  end

  def two_sum
    output = []

    (0...self.length).each do |i|
      (i + 1...self.length).each do |j|
        if self[i] + self[j] == 0
          output << [i, j]
        end
      end
    end
    output
  end

  def my_transpose
    output = []

    (0...self.length).each do |col|
      sub_array = []
      (0...self.length).each do |row|
        sub_array << self[row][col]
      end
      output << sub_array
    end
    output
  end

  def stock_picker
    return nil if self.length < 2
    output = [0, 1]
    record = self[1] - self[0]
    (0...self.length).each do |buy|
      (buy + 1...self.length).each do |sell|
        if self[sell] - self[buy] > record

          record = self[sell] - self[buy]
          output = [buy, sell]

        end
      end
    end
    output
  end

  



end