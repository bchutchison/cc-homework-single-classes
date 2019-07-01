require("minitest/autorun")
require("minitest/rg")
require_relative("../student.rb")

class TestStudent < MiniTest::Test
  def test_student_name
    student = Student.new("Ben", "E32")
    assert_equal("Ben", student.name())
  end

  def test_student_cohort
    student = Student.new("Ben", "E32")
    assert_equal("E32", student.cohort())
  end

  def test_change_name
    student = Student.new("Ben", "E32")
    student.change_name("Lawrie")
    assert_equal("Lawrie", student.name())
  end

  def test_change_cohort
    student = Student.new("Ben", "E32")
    student.change_cohort("G32")
    assert_equal("G32", student.cohort())
  end

  def test_student_talk
    student = Student.new("Ben", "E32")
    assert_equal("I can talk!", student.talk())
  end

  def test_student_fav_language
    student = Student.new("Ben", "E32")
    assert_equal("I love Ruby", student.fav_language("Ruby"))
  end

end
