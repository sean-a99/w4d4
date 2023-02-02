class Towers
  attr_reader :stacks

  VALID_INDICES = [0, 1, 2]

  def initialize(starting_disks)
    if starting_disks < 2 || starting_disks > 10
      raise 'Invalid starting disks'
    end

    @stacks = Array.new(3) { Array.new }
    (1..starting_disks).reverse_each do |num|
      @stacks[0] << num
    end
  end

  def valid_move?(start_stack, end_stack)
    unless VALID_INDICES.include?(start_stack) && VALID_INDICES.include?(end_stack)
      return false
    end

    return false if stacks[start_stack].length == 0

     disk_val = stacks[start_stack[0]]

    if stacks[end_stack].empty?
      return true
    elsif disk_val > stacks[end_stack[-1]]
      return true
    else
      return false
    end

  end


end

p my_game = Towers.new(3)