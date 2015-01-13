class Tama

# INSTANCE METHODS

# ClASS METHODS

  define_method(:initialize) do |name|
    @name = name
    @food = 10
    @sleep = 10
    @activity = 10
  end

  define_method(:name) do
    @name
  end

  define_method(:food_level) do
    @food
  end

  define_method(:sleep_level) do
    @sleep
  end

  define_method(:activity_level) do
    @activity
  end

  define_method(:time_passes) do
    @food.-(1)
  end

  define_method(:is_alive?) do
    if @food <= (0)
      false
    else
      true
    end
  end
end
