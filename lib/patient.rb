class Patient 

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select { |a| a.patient == self}
    end

    def doctors
        all_doctors = []

        Appointment.all.each do |a|
            if a.patient == self
                all_doctors << a.doctor
            end
        end
        return all_doctors
    end





end
