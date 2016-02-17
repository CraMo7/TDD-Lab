require ("minitest/autorun")
require_relative("functions.rb")

class TestMyFunctions < MiniTest::Test

  def test_add_array_lengths
    prices = [ 1.23, 6.98, 8.43, 2.45 ]
    costs = [ 4.23, 1.12, 0.52, 8.67 ]
    result = add_array_lengths(prices, costs)
    assert_equal(8, result)
  end

  def test_sum_array_of_ints
    data = [ 1, 2, 3, 4 ,5 ]
    result = sum_array_of_ints(data)
    assert_equal(15, result)
  end

  def test_find_ravenclaw_in_array
    hogwarts = [ 'Hufflepuff', 'Slytherin', 'Gryffindor', 'Ravenclaw' ]
    result = find_ravenclaw_in_array(hogwarts, "Ravenclaw")
    assert_equal(true, result)
  end

  def test_get_first_key_name_in_hash
    teacher_wallets = {
      'Tony' => 12,
      'Kat'  => 10,
      'Val'  => 1356,
      'Rick' => 1
    }
    result = get_first_key_name_in_hash(teacher_wallets, 0)
    assert_equal("Tony", result)
  end

  def test_get_capitals_from_nested_hash
    countries = {
      uk: {
        capital: 'London',
        population: 60
      },
      france: {
        capital: 'Paris',
        population: 70
      },
      italy: {
        capital: 'Rome',
        population: 56
      }
    }
    result = get_capitals_from_nested_hash(countries)
    assert_equal(["London", "Paris", "Rome"], result)
    
  end


end