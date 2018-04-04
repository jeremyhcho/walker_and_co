class Game
  def raw_summary(filename)
    Hash.new(0).tap do |summary_hash|
      File.open(filename, 'r') do |f|
        f.each_line do |line|
          name, pts = line.split(',')

          summary_hash[name] += pts.to_i
        end
      end
    end
  end

  def sorted_summary(filename)
    raw_summary(filename).sort_by { |_, pts| pts }.reverse.to_h
  end
end

class String
  def colorize(code)
    "\e[#{code}m#{self}\e[0m"
  end

  def green
    colorize(32)
  end

  def red
    colorize(31)
  end

  def blue
    colorize(34)
  end

  def bool
    downcase == 'true' ? green : red
  end
end
