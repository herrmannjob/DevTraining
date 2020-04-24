# coding: utf-8

require './numero'

describe Integer do
  it 'responde se é primo' do
    1.should be_prime
    2.should be_prime
    3.should be_prime
    4.should_not be_prime
    5.should be_prime
    6.should_not be_prime
    7.should be_prime
    8.should_not be_prime
    9.should_not be_prime
  end

  it 'responde se é perfeito' do
    3.should_not be_perfect
    4.should_not be_perfect
    5.should_not be_perfect
    6.should be_perfect
    8.should_not be_perfect
    28.should be_perfect
    350.should_not be_perfect
    496.should be_perfect
    500.should_not be_perfect
  end
  
  it 'responde se é feliz' do
    1.should be_happy
    2.should_not be_happy
    3.should_not be_happy
    4.should_not be_happy
    5.should_not be_happy
    6.should_not be_happy
    7.should be_happy
    8.should_not be_happy
    9.should_not be_happy
    10.should be_happy
    11.should_not be_happy
    12.should_not be_happy
    13.should be_happy
    14.should_not be_happy
    15.should_not be_happy
    16.should_not be_happy
    17.should_not be_happy
    18.should_not be_happy
    19.should be_happy
    20.should_not be_happy
  end
end
