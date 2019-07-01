class Library
  attr_reader :books

  def initialize(books)
    @books = books
  end

  def get_book_info(title)
    for book in @books
      return book if book[:title] == title
    end
  end

  def get_book_rental_info(title)
    for book in @books
      return book[:rental_details] if book[:title] == title
    end
  end

  def add_book(title, student_name="", date="")
    new_book = {
      title: title,
      rental_details: {
       student_name: student_name,
       date: date
      }
    }
    @books << new_book
  end

  def change_rental_details(title, student_name, date)

    new_details = {
      student_name: student_name,
      date: date
    }

    for book in @books
      if book[:title] == title
        book[:rental_details] = new_details
      end
    end

  end

end
