class PagesController < ApplicationController
	def home
		@users = User.all
		@cat = Cat.all
		@todos = Todos.all

		@todos.each do |t|
			finished = []
			unfinished = []
			if t.finished
				finished.append(t)
			else
				unfinished.append(t)
			end
			@finished = finished
			@unfinished = unfinished
		end
	end
end