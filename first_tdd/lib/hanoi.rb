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
    valid_indices = (0..2)

  end


end

p my_game = Towers.new(3)