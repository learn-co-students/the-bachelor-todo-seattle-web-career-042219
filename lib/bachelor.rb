def get_first_name_of_season_winner(data, season)
  #code here
  winner = ""
  data[season].each do |contestant|
    contestant.each do |category, value|
      winner = contestant["name"] if value == "Winner"
    end
  end
  winner.split()[0]
end

def get_contestant_name(data, occupation)
  # code here
  target_name = ""
  data.each do |season, contestant| #contestant = [{}, {}]
    contestant.each do |individual|
      individual.each do |category, value|
        target_name = individual["name"] if individual["occupation"] == occupation
      end
    end
  end
  target_name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season, contestant|
    contestant.each do |individual|
      individual.each do |category, value|
        count += 1 if value == hometown
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  appearance = false 
  target_occupation = ""
  data.each do |season, contestant|
    contestant.each do |individual|
      individual.each do |category, value|
        if value == hometown && !appearance #== false
          target_occupation = individual["occupation"]
          appearance = true
        end
      end
    end
  end
  target_occupation
end

def get_average_age_for_season(data, season)
  # code here
  total_age = 0 
  num_contestant = 0
  data[season].each do |contestant|
    num_contestant += 1
    contestant.each do |category, value|
      total_age += value.to_f if category == "age"
    end
  end
  (total_age / num_contestant).round  
  
end
