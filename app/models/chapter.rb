class Chapter < ActiveRecord::Base
	validates :name, :number, :presence => true
	validates :number, :numericality => true
	belongs_to :book
	
	
	def next_chapter
		# returns the next chapter in that book
		book.chapters.where("number = ?", number+1).first
	end
	
	def previous_chapter
		#returns the previous chapter in that book
		book.chapters.where("number = ?", number-1).first
	end
end
