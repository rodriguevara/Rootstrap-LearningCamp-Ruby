# 3.3 You could type them all out by hand, or write a method to come up with the combinations for you, but thankfully Ruby already has one built in: Array#product. Try it out. Let's assume we're not restricting couples in any way -- the only rule is no one can create a couple by him/herself.

CHARACTERS = ["Joey Jeremiah", "Snake Simpson", "Wheels", "Spike Nelson", "Arthur Kobalewscuy", "Caitlin Ryan", "Shane McKay", "Rick Munro", "Stephanie Kaye"]

def degrassi_couples
  combs = CHARACTERS.product(CHARACTERS)
  combs.reject {|ele| ele.first == ele.last}
end

# he array you'll receive from the caller will be column-based. By "column-based", we mean there are only two child arrays, each with N elements -- where N is the number of rows.
class Announcements
    def initialize(printer)
      @printer = printer
    end
    
    def notify_user(column_table)
      row_table = column_table.transpose # batter up!
      @printer.print_with_ink(row_table)
    end
end
