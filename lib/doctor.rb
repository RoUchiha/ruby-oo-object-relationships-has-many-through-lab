class Doctor

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all 
        @@all
    end

    def appointments
        Appointment.all.select { |a| a.doctor == self}
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end

    def patients
        all_patients = []

        Appointment.all.each do |a|
            if a.doctor == self
                all_patients << a.patient 
            end
        end
        return all_patients
    end

end
