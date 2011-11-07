class Book < ActiveRecord::Base
	searchable_by :title
	has_many :chapters, :order=>:number, :dependent=>:destroy
end
