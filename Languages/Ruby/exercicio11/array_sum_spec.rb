# coding: utf-8

require './array_sum'

describe Array do
  it 'soma seus elementos' do
    [1, 2, 3].sum.should == 6
    [[1, 2, 3], [5]].sum.should == [1, 2, 3, 5]
    %w(ab cd ef gh).sum.should == 'abcdefgh'
  end
end
