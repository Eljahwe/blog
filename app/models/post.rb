class Post < ApplicationRecord
	#wir benötigen einen titel um einen Inhaltstext
	validates :title, :content, :presence => true
	#die länge des titels soll mindestens 5 zeichen lang sein
	validates :title, :length => { :minimum => 5 }
	#titel soll einzigartig sein -> dar dsich nciht widerholen
	validates :title, :uniqueness => true

	extend FriendlyId
  friendly_id :title, use: :slugged
end
