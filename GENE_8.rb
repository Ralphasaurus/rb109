# Sherlock has to find suspects on his latest case. He will use your method, dear Watson. Suspect in this case is a person which has something not allowed in his/her pockets.

# Allowed items are defined by array of numbers.

# Pockets contents are defined by map entries where key is a person and value is one or few things represented by an array of numbers (can be nil or empty array if empty), example:

# pockets = { 
#   bob: [1],
#   tom: [2, 5],
#   jane: [7]
# } 
# Write method which helps Sherlock to find suspects. If no suspect is found or there are no pockets (pockets == nil), the method should return nil.


# Problem:
# input: a hash representing pockets and an array of 'allowed' elements.
# output: an array of suspects (people who have elements they shouldn't)

# => so we are given a hash containing the :names and what they have in their pockets
# => we need to look into this hash and see if it contains anything else besides the allowed items.
# => if it does return the names which do in an array
# => if it doesn't then return nil

def find_suspects(pockets, allowed_items)
    suspects = pockets.select do |name, contents|
      if (contents == nil) || (contents.empty?)
        false
      else
      contents.map { |item| allowed_items.include?(item) }.any?(false)
      end
    end
    suspects.keys.empty? ? nil : suspects.keys
end

pockets = { tom: [2], bob: [2], julia: [3], meg: [3] }

# Examples and Test Cases
find_suspects(pockets, [1, 2]) # => [:tom, :jane]
find_suspects(pockets, [1, 7, 5, 2]) # => nil
find_suspects(pockets, []) # => [:bob, :tom, :jane]
find_suspects(pockets, [7]) # => [:bob, :tom]

# Data structures and Algorithms
# => initialize an array to hold names
# => iterate through pockets
# => allowed = clone
# => if value.empty?
# => next
# => else
# =>  until allowed.empty?
# =>  value.include?(allowed_clone.pop) ? next : (result << name)
# =>  break if result.last == name
# =>  end
# => end