class DataEvaluate

  def initialize(data)
    @data = data
  end

  def return_qualifications
    qualification_store = []
    @data.each { |qualification| qualification_store << qualification['name'] }
    qualification_store
  end

  def return_subjects(chosen_qualification)
    subjects = select_qualification(chosen_qualification)
    store_subjects(subjects)
  end



  def store_subjects(subjects)
    subject_array = []
    subjects.each { |subject| subject_array << subject['title'] }
    subject_array
  end

  def select_qualification(chosen_qualification)
    @data.each do |qualification|
      return qualification['subjects'] if chosen_qualification == qualification['name']
    end
  end



end
