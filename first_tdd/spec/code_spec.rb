require 'rspec'
require 'code.rb'


describe "Array#my_uniq" do
  let(:array) { [1, 2, 1, 3, 3] }

  it 'takes in an array as a parameter' do
    expect { array.my_uniq }.to_not raise_error
  end

  it 'returns an array of unique values' do
    expect(array.my_uniq).to eq([1, 2, 3])
  end

end

describe "Array#two_sum" do
  let(:arr) { [-1, 0, 2, -2, 1] }

  it 'takes in an array as a parameter' do
    expect { arr.two_sum }.to_not raise_error
  end

  it 'returns a 2D array of indices whose elements sum to 0' do
    expect(arr.two_sum).to eq([[0, 4], [2, 3]])
  end

end

describe "Array#my_transpose" do
  let(:arr) { [ [0, 1, 2], [3, 4, 5], [6, 7, 8] ] }

  it 'takes in an array as a parameter' do
    expect { arr.my_transpose }.to_not raise_error

  end

  it 'takes in rows where each row is the same length' do
    expect( arr.my_transpose.all? { |row| row.length == arr[0].length }  ).to eq(true)
  end

  it 'transposes the array' do
    expect(arr.my_transpose). to eq( [
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8]
    ])

  end
end

describe "Array#stock_picker" do
  let(:arr) { [40, 35, 100, 92, 5, 32] }

  it 'takes in an array as a parameter' do
    expect { arr.stock_picker }.to_not raise_error
  end

  it 'returns nil if there are less than 2 elements in the array' do
    expect([90].stock_picker).to eq(nil)
  end

  it 'returns an array of the best buy & sell day' do
    expect(arr.stock_picker).to eq([1, 2])
  end


end