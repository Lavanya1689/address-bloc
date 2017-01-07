def greeting
    ARGV.each_with_index do |arg, i|
        puts "#{ARGV[0]}, #{arg}!" if i != 0
    end
end

greeting
