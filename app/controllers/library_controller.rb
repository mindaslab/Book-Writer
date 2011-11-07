class LibraryController < ApplicationController
  def search
	@search = params[:s]
	@books = Book.search(@search)
  end

end
