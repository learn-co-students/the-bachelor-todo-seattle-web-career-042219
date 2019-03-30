def get_first_name_of_season_winner(data, season)
  #ash = data
  #return season
  data[season].each { |num|
    num.each {|attribute, stat|
      if stat == "Winner"
        name = num["name"]
        #return name
        return name.split(" ").first
      end
    }
  }
end

# "Nonprofit director")).to eq("Dianna Martinez")
def get_contestant_name(data, occupation)
  # code here
  data.each  { |season, array|
    #puts array
    array.each {|hash|
      hash.each {|detail, info|
        if info == occupation
          return hash["name"]
        end
      }
      #return puts attribute, stat
      #if stat == "occupation"
      #  #if stat
      #  return name
      #end
    }

  }

end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each { |season,array|
    array.each{|hash|
      hash.each {|detail, info|
        if info == hometown
          count += 1
        end
      }
    }
  }
  return count
  # code here
end

def get_occupation(data, hometown)
  data.each {|season, array|
    array.each {|hash|
      hash.each {|detail, info|
        if info == hometown
          return hash["occupation"]
        end
      }
    }
  }
  # code here
end

def get_average_age_for_season(data, season)
  total_ages = 0
  contestant_count = 0
  #average_age = 0

  data[season].each {|array|
      array.each{|detail, info|
        if detail == "age"
            #return info
            total_ages += info.to_f

            contestant_count += 1
            #return total_ages
        end
      }

  }
  average_age = total_ages/contestant_count

  return average_age.round
end
