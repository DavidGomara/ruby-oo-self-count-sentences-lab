require 'pry'

class String

  def sentence?
   self.split(//).last == "."
  end

  def question?
    self.split(//).last == "?"
  end

  def exclamation?
    self.split(//).last == "!"
  end

  def count_sentences
    count = 0
    counter = 0
    array = [".", "!", "?"]
    self.split(//).each do |x|
      if x == self.split(//)[counter - 1]
      elsif array.include?(x)
        count += 1
      end 
      counter += 1
    end
    count
  end
end