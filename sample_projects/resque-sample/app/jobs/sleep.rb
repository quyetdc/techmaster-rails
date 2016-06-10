class Sleep
  @queue = :sleep

  def self.perform(seconds)
    puts ' ----- LET\'s SLEEP ------ '

    alskjdlaskj seconds

    puts ' ----- WAKE UP ------ '
  end
end