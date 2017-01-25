class Dictionary
  attr_accessor :entries

  def initialize
    @entries = {}
  end

  def add(entry)
    if entry.class == String
      @entries[entry] = nil
    else
      @entries.update(entry)
    end
  end

  def keywords
    @entries.keys.sort
  end

  def include?(key)
    @entries.keys.include?(key)
  end

  def find(key)
    result = {}
    @entries.each do |entry|
      if entry[0].include?(key)
        result[entry[0]] = entry[1]
      end
    end
    return result
  end

end


@d = Dictionary.new
@d.add('fish' => 'aquatic animal')
#p @d.keywords

#@d.add('fish')
#p @d.entries
p @d.find('fi')
