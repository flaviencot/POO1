require 'pry'
require 'time'

class Event
    attr_accessor :start_date, :duration, :title, :attendees, :is_past, :postpone_24h, :to_s

    def initialize(start_date_to_save,duration_to_save,title_to_save,attendees_to_save)
        @start_date = Time.parse("#{start_date_to_save}")
        @duration = duration_to_save
        @title = title_to_save
        @attendees = attendees_to_save
        @end_date = @start_date + @duration
        @is_past = Time.now > @start_date
    end

    def is_past
        if_is_past = Time.now > @start_date
        return if_is_past
    end

    def postpone_24h
        @start_date = @start_date + 86400
    end

    def to_s   
        puts " >Titre : #{@title} \n >Date : #{@start_date} \n >Duree : #{@duration}" 
    end

end

#binding.pry
#puts "end of file"
