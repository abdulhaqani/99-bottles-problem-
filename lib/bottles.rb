# frozen_string_literal: true
class Bottles
  def verse(num)
    if num < 100 && num > 2
      my_verse = "#{num} bottles of beer on the wall, #{num} bottles of beer.\nTake one down and pass it around, #{num - 1} bottles of beer on the wall.\n"
      return my_verse
    elsif num == 2
      my_verse = "#{num} bottles of beer on the wall, #{num} bottles of beer.\nTake one down and pass it around, #{num - 1} bottle of beer on the wall.\n"
      return my_verse
    elsif num == 1
      my_verse = "#{num} bottle of beer on the wall, #{num} bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"
      return my_verse
    elsif num.zero?
      my_verse = "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
      return my_verse
    else
      puts("Invalid entry")
      return
    end
  end

  def verses(num1, num2)
    my_verse = verse(num1)
    i = num1
    while i > num2
      my_verse = my_verse + "\n" + verse(i-1)
      i -= 1
    end
    return my_verse
  end

  def song
    my_verse = verses(99, 0)
    return my_verse
  end
end
puts(Bottles.new.song)