# MorseCodeDecoder decodes morse messages
class MorseCodeDecoder
  MORSE_CODE = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
    '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
    '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
    '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z'
  }.freeze

  def self.decode_char(morse_char)
    MORSE_CODE[morse_char] || ''
  end

  def self.decode_word(morse_word)
    morse_word.split.map { |morse_char| decode_char(morse_char) }.join
  end

  def self.decode(message)
    words = message.split('   ')
    words.map { |morse_word| decode_word(morse_word) }.join(' ')
  end
end

morse_message = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
decoded_message = MorseCodeDecoder.decode(morse_message)
puts decoded_message
