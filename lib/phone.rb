class Phone
  @@all_numbers = []

  define_method(:initialize) do |type, number|
    @type = type
    @number = number.to_i()
    @id = @@all_numbers.length() + 1
  end

  define_method(:type) do
    @type
  end

  define_method(:number) do
    @number
  end

  define_method(:id) do
    @id
  end

  define_method(:save) do
    @@all_numbers.push(self)
  end

  define_singleton_method(:all) do
    @@all_numbers
  end

  define_singleton_method(:clear) do
    @@all_numbers = []
  end

  define_singleton_method(:find) do |id|
    found_number = nil
    @@all_numbers.each() do |num|
      if num.id().eql?(id.to_i())
        found_number = num
      end
    end
    found_number
  end

end