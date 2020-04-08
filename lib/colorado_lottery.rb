class ColoradoLottery
  attr_accessor :registered_contestants, :winners, :current_contestants
  def initialize
    @registered_contestants = {}
    @winners = []
    @current_contestants = {}
  end

  def interested_and_18?(contestant, game)
    contestant.game_interests.include?(game.name) && (contestant.age >= 18)
  end

  def can_register?(contestant, game)

    interested_and_18?(contestant, game) &&
    ((game.national_drawing?) || (contestant.state_of_residence == "CO"))
  end

  def register_contestant(contestant, game)
    require "pry";binding.pry
  end


end
