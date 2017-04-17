class Fixnum
  define_method(:clock_angle) do |minutes|
    # "#{self}:#{minutes}"
    minute_angle = (360.0/60.0) * minutes
    hour_angle = (360.0/12.0) * self + (360.0/60.0) * 5.0 * (minutes/60.0)
    # "#{minute_angle},#{hour_angle}"
    minute_hour_angle = (minute_angle - hour_angle).abs
      if minute_hour_angle > 180
        minute_hour_angle = 360 - minute_hour_angle
      end
    "#{minute_hour_angle} degrees"

  end
end
