

class Tasks

  require './Circle.rb'
  require './HashSearching.rb'
  require './RubyLove.rb'

  include Circle
  include HashSearching
  include RubyLove

  def app
    ruby_description
    hash_description
    circle_description
    print 'Select task:
           1 - RubyLove
           2 - Circle
           3 - Hash searching'
    print "\nYour choice: \n"
    choice = gets.chomp

    case choice
    when "1"
      ruby_loops
    when "2"
      circle_create; circle_view
    when "3"
      hash_searching($hash, 7)
    end
    end

end


  $hash = {
    "test" => 1,
    proc{} => [[{:key=>"sss"}, {"pass"=>{"a"=> [1,{7 => [[],[],[],[],[],[[proc{}] => {[7,1]=>{:rr=>111}}]]}] }}], [1,[:olol, {[1, {:trolo => "r"}] => 1}]]],
    "zero" => 7,
    "kuk"  => [{"tr"=>"jxp"},{:lx=>"xp"}]
  }

task = Tasks.new
task.app
