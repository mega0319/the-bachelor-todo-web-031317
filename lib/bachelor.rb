require 'pry';

def get_first_name_of_season_winner(data, season)
  # code here
  winrar = ""
  data[season].each do |key, value|
    if key["status"] == "Winner"
      winrar = key["name"]
    end
  end
  winrar.split[0]
end


def get_contestant_name(data, occupation)
  # code here
  winrar = ""
  data.each do |season, info|
    info.each do |stat|
      stat.each do |key, value|
        if key == "occupation"
          if value == occupation
            winrar = stat["name"]
          end
        end
      end
    end
  end
  winrar
end



def count_contestants_by_hometown(data, hometown)
  # code here
  i = 0
  data.each do |season, info|
    info.each do |stat|
      stat.each do |key, value|
        if key == "hometown"
          if value == hometown
            i += 1
          end
        end
      end
    end
  end
  i
end


def get_occupation(data, hometown)
  # code here
  variable = ""
  data.each do |season, info|
    info.reverse.each do |stat|
      stat.each do |key, value|
        if key == "hometown"
          if value == hometown
            variable = stat["occupation"]
            break
          end
        end
      end
    end
  end
  variable
end

def get_average_age_for_season(data, season)
  # code here
  n = 0
  age = ""
  age_array = []
  data[season].each do |key, value|
    age = key["age"].to_i
    age_array.push(age)
  end
  number_of_contestants = age_array.length
  age_array.each do |contestant_age|
    n += contestant_age
  end
  exact_avg = n/number_of_contestants.to_f
  exact_avg.round



end
