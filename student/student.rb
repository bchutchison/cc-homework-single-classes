class Student
  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def name()
    return @name
  end

  def cohort()
    return @cohort
  end

  def change_name(name)
    @name = name
  end

  def change_cohort(cohort)
    @cohort = cohort
  end

  def talk()
    return "I can talk!"
  end

  def fav_language(language)
    return "I love #{language}"
  end

end
