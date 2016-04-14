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
    qualification = select_qualification(chosen_qualification)
    store_subjects(qualification)
  end

  def return_country(chosen_qualification)
    qualification = select_qualification(chosen_qualification)
    if qualification['country'] == nil
      'N/A'
    else
      qualification['country']['name']
    end
  end


  private

  def store_subjects(qualification)
    subject_hash = {}
    qualification['subjects'].each { |subject| subject_hash[subject['title']] = subject['colour'] }
    subject_hash
  end

  def select_qualification(chosen_qualification)
    @data.each_with_index do |qualification, index|
      return @data[index] if chosen_qualification == qualification['name']
    end
  end



end
