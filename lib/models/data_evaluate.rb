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
    subjects = select_qualification(chosen_qualification)
    subjects.each do |subject|
      subject_store << subject['title']
    end
    subject_store
  end

  def select_qualification(chosen_qualification)
    @data.each do |qualification|
      return qualification['subjects'] if chosen_qualification == qualification['name']
    end
  end



end
