require "test_helper"

class UthmaniTextSizeTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::UthmaniTextSize::VERSION
  end

  def test_that_an_instance_of_string_responds_to_uthmani_size
    assert 'a'.respond_to? :uthmani_size
  end

  def test_that_a_non_uthmani_string_returns_zero
    assert 'a'.uthmani_size == 0
  end

  def test_that_given_uthmani_string_return_the_expected_size
    uthmani_strings = [
      ["بِسْمِ ٱللَّهِ ٱلرَّحْمَٰنِ ٱلرَّحِيمِ", 19],
      ["الٓمٓ", 3],
      ["رُّبَمَا يَوَدُّ ٱلَّذِينَ كَفَرُوا۟ لَوْ كَانُوا۟ مُسْلِمِينَ", 30]
    ]

    uthmani_strings.each do |string|
      assert_equal string[1], string[0].uthmani_size
    end
  end
end
