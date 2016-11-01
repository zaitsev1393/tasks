module Tasks

  ################
  # Ruby Strings #
  ################

  class Task_1

      def loops(n = 1)
        return if n > 30
        p ([10,20,25].include? n) ? "ruby" : "i love ruby"
        loops(n + 1)
      end

  end

  ###################
  # Circle Creating #
  ###################

  class Task_2
      require 'set'

      def create
        # Basenham Circle Algorythm

        def self.coordinates(xm, ym, radius)
          x = -radius
          y = 0
          err = 2-2*radius
          coords = Set.new

          begin
            coords << [xm + x, ym - y]
            coords << [xm - x, ym + y]
            coords << [xm + y, ym + x]
            coords << [xm - y, ym - x]
            radius = err
            if radius <= y
              y += 1
              err += y * 2 + 1
            end
            if radius > x or err > y
              x += 1
              err += x * 2 + 1
            end
          end while (x < 0)
          coords
        end

        # User's radius

        print "Radius: "
        @r = gets.chomp.to_i
        @coords = coordinates(@r,@r,@r)
        @coords = @coords.to_a

      # Field for the circle
      @mass = Array.new(@r * 2 + 1, '.') {Array.new(@r * 2 + 1, '.')}

      # Making circle on the field
      @coords.each_index do |x|
        @mass[@coords[x][0]][@coords[x][1]] = 0
      end
    end

    def view
      # Circle View
      @mass.each do |x|
        x.each do |y|
          print "#{y} "
        end
        print "\n"
      end
    end

  end

    ##################
    # Hash Searching #
    ##################
    class Task_3

      def hash_value(obj, key)
        if obj.respond_to?(:key?) && obj.key?(key)
          p obj[key]
        elsif obj.respond_to?(:each)
          r = nil
          obj.find{ |*a| r = hash_value(a.last,key) }
          r
        end
      end

    end



  end


  include Tasks

  ###############
  # Task 3 hash #
  ###############

$hash = {
    "test" => 1,
    proc{} => [[{:key=>"sss"}, {"pass"=>{"a"=> [1,{:bsd => [[],[],[],[],[],[[proc{}] => {[7,1]=>{:rr=>111}}]]}] }}], [1,[:olol, {[1, {:trolo => "r"}] => 1}]]],
    "zero" => 7,
    "kuk"  => [{"tr"=>"jxp"},{:lx=>"xp"}]
    }

  #############
  # App Start #
  #############
  
def app
  print "Tasks:
      1 - Ruby love
      2 - Creating console Circle
      3 - Searching in the hash
      \n"
  print "#Your choice: "
  choice = gets.chomp

  case choice
  when "1"
    strings = Task_1.new
    strings.loops
    app
  when "2"
    circle = Task_2.new
    circle.create; circle.view
    app
  when "3"
    bsd = Task_3.new
    bsd.hash_value($hash, :bsd)
    app
  else
    app
  end
end

app
