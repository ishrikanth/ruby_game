require 'minigl'
include MiniGL
class MyGame < GameWindow
  def initialize
    super 800, 600, false
    self.caption = 'Image Game'
    @sprite = Sprite.new 100, 100, :marcus, 6, 2
    @eff = Effect.new 400, 100, :effect_1, 3, 2
  end

  def needs_cursor?
   true
  end

  def draw
    @sprite.draw
    @eff.draw
  end

  def update
    @sprite.animate [0, 1, 2, 0, 1, 2, 0, 1, 2, 3, 4, 5, 4, 5, 4, 5, 4], 8
    @eff.animate [0, 1, 2, 3, 4 ,5], 8
   #  unless @eff.dead
   #   @eff.update
   #   puts "it's over" if @eff.dead
   # end
  end
end
MyGame.new.show
