class DataEvaluate

  def initialize(data)
    @data = data
  end

  def return_qualifications
    qualification_store = []
    @data.each do |qualification|
      qualification_store << qualification['name']
    end
    qualification_store
  end

  def return_subjects(chosen_qualification)
    subject_store = []
    @data.each do |qualification|
      if chosen_qualification == qualification['name']
        qualification['subjects'].each do |subject|
          subject_store << subject['title']
        end
      end
    end
    subject_store
  end

end
