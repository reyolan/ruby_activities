class Confection
  def prepare
    bake
  end

  private

  def bake
    puts 'Baking at 350 degrees for 25 minutes.'
  end
end

class BananaCake < Confection
end

class Cupcake < Confection
  def prepare
    super
    frost
  end

  private

  def frost
    puts 'Applying frosting'
  end
end
