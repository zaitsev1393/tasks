module RubyLove

  def ruby_description
    print "\n"
    print "       RubyLove module\n"
    puts '       #####################

         Rubylove module draws

         "i love ruby"

         and

         "ruby"

         sentences 30 times

       ####################'
    print "\n\n"
  end

  def ruby_loops
    30.times {|i| p ([10, 20, 25].include? i) ? "ruby" : "i love ruby"}
  end

end
