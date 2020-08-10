# frozen_string_literal: true
class Bottles
  def verse(num)
    if num < 100 && num > 0
      my_verse = "#{num} bottles of beer on the wall, #{num} bottles of beer.
Take one down and pass it around, #{num - 1} bottles of beer on the wall.
"
      return my_verse
    elsif num.zero?
      my_verse = "No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall."
      return my_verse
    else
      puts("Invalid entry")
      return
    end
  end

  def verses(num1, num2)
    my_verse = verse(num1) + '\n' + verse(num2)
    return my_verse
  end

  def song
    my_verse = verse(99)
    for i in 98..0
      my_verse = '\n' + verse(i)
    end
    return my_verse
  end
end
