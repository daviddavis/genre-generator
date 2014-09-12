class Genre
  attr_accessor :adjectives, :noun
  def initialize
    words = YAML.load_file('words.yml').with_indifferent_access
    num = [1, 2, 3].sample
    self.adjectives = words[:adjectives].sample(num)
    self.noun = words[:nouns].sample
  end

  def to_s
    (adjectives << noun).join(' ')
  end
end
