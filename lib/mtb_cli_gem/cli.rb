class MTBCliGem::CLI

  def call
    trail_status
    menu
    goodbye
  end

  def trail_status
    puts "DORBA Trails:"
    @trails = MTBCliGem::Trail.today
    @trails.each.with_index(1) do |trail, i|
      puts "#{i}. #{trail.name} - #{trail.status}"
    end
  end


  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the trail that you'd like to get the volunteer hours on, or type 'list' to see the full list of trails, or 'exit':"
      input = gets.strip.downcase

      if input.to_i > 0
        selected_trail = @trails[input.to_i-1]
        puts "#{selected_trail.name} - #{selected_trail.status}"
        
      elsif input == "list"
        trail_status
      else
        puts "Not sure what you want, type 'list' or 'exit'"
      end
    end
  end

  def goodbye
    puts "See you tomorrow for more trail information!"
  end



end