module Circle

  def circle_description
    print "       Drawning Circles Module\n"
    print '       ####################################################################

         Circle module made for easy circles drawning and having a lot of fun

         methods:

         circle_create - creating a circle with users radius
         circle_view   - output circle into the console

       ####################################################################'
    print "\n\n"
  end

  require 'set'

  def circle_create
  # Basenham Circle Algorythm
    def self.coordinates(xm, ym, radius)
      x = -radius
      y = 0
      err = 2 - 2 * radius
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

    print 'Radius: '
    @r = gets.chomp.to_i
    @coords = coordinates(@r, @r, @r)
    @coords = @coords.to_a

    # Field for the circle
    @mass = Array.new(@r * 2 + 1, '.') {Array.new(@r * 2 + 1, '.')}

    # Making circle on the field
    @coords.each_index do |x|
      @mass[@coords[x][0]][@coords[x][1]] = 0
    end

  end

  def circle_view
  # Circle View
    @mass.each do |x|
      x.each do |y|
        print "#{y} "
      end
      print "\n"
    end
  end

end
