module HashSearching

  def hash_description
    print "       Hash searching module\n"
    print '       ##################################################

         This module make searching inside Hash pretty easy
         Just call "searching" method and take him hash and
         key params like this:

         searching(hash, key)

       ##################################################'
    print "\n\n"
  end

  def hash_searching(obj, key)
    p obj[key] if obj[key]
    if obj.is_a? Hash
      obj.each do |k, v|
        if (v.is_a?(Hash) || v.is_a?(Array))
          hash_searching(v, key)
        end
      end
    elsif obj.is_a? Array
      obj.each do |i|
        if (i.is_a?(Hash) || i.is_a?(Array))
          hash_searching(i, key)
        end
      end
    end
  end

end
