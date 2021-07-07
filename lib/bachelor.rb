require 'pry'

def get_first_name_of_season_winner(data, season)
  name_array = nil
  data.each do |number, details|
    if number == season
      details.each do |key|
        if key["status"] == "Winner"
          name_array = key["name"].split(" ")
          return name_array[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |number, details|
    details.each do |key|
      if key["occupation"] == occupation
        return key["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |number, details|
    details.each do |key|
      if key["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |number, details|
    details.each do |key|
      if key["hometown"] == hometown
        return key["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_array = []
  age_sum = nil
  n_elements_age_array = nil

  data.each do |number, details|
    if number == season
      details.each do |key|
       age_array.push(key["age"].to_f)
      end
   end
  end
  n_elements_age_array = age_array.count
  age_sum = age_array.inject(0) {|sum, i|  sum + i }
  ave_age = (age_sum / n_elements_age_array)
  ave_age.round
end
