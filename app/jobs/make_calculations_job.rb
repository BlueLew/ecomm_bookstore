class MakeCalculationsJob < ApplicationJob
  queue_as :default

  def perform(book)
    Book.all.count
  end
end
