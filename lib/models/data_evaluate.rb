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

  private

  def store_subjects(subjects)
    subject_hash = {}
    subjects.each { |subject| subject_hash[subject['title']] = subject['colour'] }
    subject_hash
  end

  def select_qualification(chosen_qualification)
    @data.each do |qualification|
      return qualification['subjects'] if chosen_qualification == qualification['name']
    end
  end



end
