require("minitest/autorun")
require("minitest/rg")
require_relative("../library.rb")

class TestLibrary < MiniTest::Test

  def setup
    @lotr = {
      title: "lord_of_the_rings",
      rental_details: {
       student_name: "Jeff",
       date: "01/12/16"
      }
    }
    @books = [@lotr]
  end

def test_get_book_info
  library = Library.new(@books)
  assert_equal(@lotr, library.get_book_info("lord_of_the_rings"))
end

def test_get_book_rental_info
  library = Library.new(@books)
  assert_equal(@lotr[:rental_details], library.get_book_rental_info("lord_of_the_rings"))
end

def test_add_book
  library = Library.new([])
  library.add_book("dune")
  assert_equal(1, library.books.length)
end

def test_change_rental_details
  library = Library.new(@books)
  expected_rental_details = {
   student_name: "Baz",
   date: "26/02/19"
  }
  library.change_rental_details("lord_of_the_rings", "Baz", "26/02/19")
  rental_details = library.get_book_rental_info("lord_of_the_rings")
  assert_equal(expected_rental_details, rental_details)
end

end
