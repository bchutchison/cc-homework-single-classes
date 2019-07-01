require("minitest/autorun")
require("minitest/rg")
require_relative("../student.rb")

class TestStudent < MiniTest::Test
  def test_student_name
    student = Student.new("Ben", "E32")
    assert_equal("Ben", student.name())
  end
end
