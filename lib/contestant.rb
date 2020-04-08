class Contestant
  attr_reader :first_name, :last_name, :age, :state_of_residence,
              :spending_money, :out_of_state, :game_interests
  def initialize(info, out_of_state = false)
    @first_name = info[:first_name]
    @last_name = info[:last_name]
    @age = info[:age]
    @state_of_residence = info[:state_of_residence]
    @spending_money = info[:spending_money]
    @out_of_state = out_of_state
    @game_interests = []
  end

  def out_of_state?
    @out_of_state
  end

  def add_game_interest(interest)
    @game_interests << interest
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def charge_contestant(charge)
    @spending_money -= charge
  end



end
