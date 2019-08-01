class Code
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  attr_reader :pegs

  #----Class Methods----

  def self.valid_pegs?(arr)

    arr.all? { |ele| POSSIBLE_PEGS.include?(ele.upcase) }

  end

  def self.random(len)
    randArr = Array.new(len)

    Code.new(randArr.map { |ele| POSSIBLE_PEGS.keys[rand(len - 1)] })
  end

  def self.from_string(sPegs)
    Code.new(sPegs.chars)
  end

  #----Initialize----

  def initialize(pegs)

    if Code.valid_pegs?(pegs) == true
      @pegs = pegs.map(&:upcase)
    else
      raise p "No valid pegs."
    end

  end

  #----Instance Methods----

  def [](index)
    @pegs[index]
  end

  def length
    @pegs.length
  end

  def num_exact_matches(try)

    correct = 0

    try.pegs.each_with_index do |ele, idx|
      if self.pegs[idx] == try.pegs[idx]
        correct += 1
      else
        next
      end
    end

    return correct
    
  end

  def num_near_matches(tryN)

    near = 0

    tryN.pegs.each_with_index do |ele, idx|
      if self.pegs[idx] == tryN.pegs[idx]
        next
      else
        if self.pegs.include?(ele)
          near += 1
        end
      end
    end

    return near


  end

  def ==(match)
    
    if self.length == match.length
      return self.pegs == match.pegs
    else
      return false
    end

  end




end

