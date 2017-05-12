#!/usr/bin/env ruby

require 'pp'

class RTTL_File
  @title = ""
  @default_octave = 0
  @default_duration = 0
  @beat_speed = 0
  @note_str = ""

  def initialize(filename)
    fd = File.open(filename)
    contents = fd.read
    @title = File.basename(filename, ".*")
    @default_duration = 4
    self.parse(contents)
  end
  
  def parse(contents)
     a = contents.split(':')
     defaults = ""
     if a.length >= 3 then
     
       t = a.shift
       if t.length >= @title.length then
		 @title = t
	   end
     end
     if a.length >= 2 then
       parse_defaults(a.shift)
     end
     @note_str = a.shift.strip
  end
  
  def parse_defaults(str)
    str.split(',').each do |s|
      a = s.split('=')
      case a[0]
      when 'd'
		@default_duration = a[1].to_i 
      when 'o'
		@default_octave = a[1].to_i
      when 'b'
		@beat_speed = a[1].to_i
      end
    end
  end
  
  def to_s
    "  { /* #{@title} */ #{@default_octave}, #{@default_duration}, #{@beat_speed}, \"#{@note_str}\" },"
  end
end



f = RTTL_File.new(ARGV[0])
puts f.to_s
