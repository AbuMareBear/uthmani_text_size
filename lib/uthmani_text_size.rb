require "uthmani_text_size/version"

class String
  UTHMANI_CHARS = [
    "ب", "س", "م", "ٱ", "ل", "ه", "ر", "ح", "ن", "ي", "د", "ع", "ك", "و", "ا",
    "إ", "ت", "ص", "ط", "ق", "ذ", "أ", "غ", "ض", "ف", "ى", "ؤ", "ة", "ز", "خ",
    "ء", "ئ", "ش", "ظ", "ج", "ث"
  ].freeze

  # Counts the number of letters in a given Uthmani string
  #
  # Example:
  #   >> "ٱلرَّحْمَٰنِ".uthmani_size
  #   => 6

  def uthmani_size
    split('').select { |letter| UTHMANI_CHARS.include?(letter) }.size
  end
end
