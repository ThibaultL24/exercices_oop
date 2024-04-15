# frozen_string_literal: true
class Event
    attr_accessor :start_date, :duration, :title, :attendees

    def initialize(start_date, duration, title, attendees)
        @start_date = Time.parse(start_date)
        @duration = duration
        @title = title
        @attendees = attendees

    puts "Le début de ton événement super trop génial est le : #{@start_date}."
    puts "La durée de ton méga super événement trop cool est de #{@duration} minutes."
    puts "Le giga titre de ton événement trop top est : #{@title}."
    puts "L'incroyable nombre de participants à l'évenement : #{@attendees}."
    end

    def postpone_24h
        @start_date += 24 * 60 * 60
    end

    def end_date
        @start_date +(@duration * 60)
    end

    def is_past?
        @start_date <= Time.now
    end

    def is_future?
        @start_date >= Time.now
    end

    def is_soon?
        @start_date <= Time.now + (30 * 60)
    end
    
    def to_s
        "Titre : #{@title}\nDate de début : #{@start_date}\nDurée : #{@duration} minutes\nInvités : #{@attendees.join(', ')}"
      end
end
