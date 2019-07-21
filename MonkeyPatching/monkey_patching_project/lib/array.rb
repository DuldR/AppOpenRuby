# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array

    # ------- Part 1 ----------

    def span

        if self == [] #Must check for nil first, otherwise will throw an error.
            return nil
        elsif self.length >= 0
            sorted = self.sort
            return (sorted[-1] - sorted[0])
        end

    end

    def average

        if self == []
            return nil
        else
            avg = self.sum / self.length.to_f #Ensuring 2 sig figs.
            return avg
        end

    end

    def median

        if self == []
            return nil
        elsif self.length.odd? == true
            mid = self.length - 1
            return self.sort[(mid / 2)]
        else
            sorted = self.sort
            mid = (self.length / 2) #Find the middle of the array
            avg = sorted[mid].to_f + sorted[mid - 1] #Find the sum of the two middle elements
            return (avg / 2) #Return the average
        end
    end

    def counts

        returnHash = Hash.new(0)

        self.each do |ele|
            returnHash[ele] += 1
        end
        
        returnHash

    end


    # ------- Part 2 ----------


    def my_count(lookupKey)
        lookupHash = self.counts
        lookupHash[lookupKey]
    end

    def my_index(lookupVal)

        if self.include?(lookupVal) == false
            return nil
        else
            self.each_with_index do |ele, idx|
                if ele == lookupVal
                    return idx
                end
            end
        end
    end

    def my_uniq
        lookupHash = self.counts
        returnArr = []

        lookupHash.each do |k, v|
            returnArr << k
        end

        returnArr

    end

    def my_transpose

        new_arr = []

        (0...self.length).each do |row|
            new_row = []

            (0...self.length).each do |col|
                new_row << self[col][row]
            end
            
            new_arr << new_row

        end

        new_arr
    end


end
