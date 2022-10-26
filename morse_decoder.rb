MORSE = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z',
  '.----' => '1',
  '..---' => '2',
  '...--' => '3',
  '....-' => '4',
  '.....' => '5',
  '-....' => '6',
  '--...' => '7',
  '---..' => '8',
  '----.' => '9',
  '-----' => '0'
}.freeze

def decode_char(one)
  MORSE[one]
end

def decode_word(morse_letters)
  word = ''
  morse_letters.split.each do |letter|
    word += decode_char(letter)
  end
  word
end

def morse_phrase_spliter(morse_phrase)
  morse_phrase.split('   ')
end

def decode(morse_phrase)
  decoded = ''
  morse_phrase_spliter(morse_phrase).each do |morse_word|
    decoded += ' ' if decoded != ''

    decoded += decode_word(morse_word)
  end

  decoded
end

def pritty_print_morse_decoder(morse_phrase)
  puts "'morse_phrase: '#{morse_phrase}' "
  puts "'decode: '#{decode(morse_phrase)}' "
  puts ''
end

a_morse = '.-'
my_morse = '-- -.--'
my_name_morse = '-- -.--   -. .- -- .'
secrete_morse = '      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'

puts "'morse_letter: '#{a_morse}' "
puts "'decode: '#{decode_char(morse_phrase)}' "
puts ''

pritty_print_morse_decoder(my_morse)
pritty_print_morse_decoder(my_name_morse)
pritty_print_morse_decoder(secrete_morse)
