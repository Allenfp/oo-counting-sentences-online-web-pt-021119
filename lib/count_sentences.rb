require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    temp = self.split(%r{[?.!]}) #
    temp2 = temp.reject { |e| e.to_s.empty? }
    temp2.length
  end
end
