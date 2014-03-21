class BlogController < ApplicationController
	def list
		puts params
		@author_filter = params[:author_filter]
		puts "YAY IT CHANGED"
		puts params[:author_filter]
		@category_filter = params[:category_filter]
		@author = params[:author]
		if (@category_filter == 'All' || @category_filter == nil) && (@author_filter == nil || @author_filter=='All')
			puts 'NO FILTER SELECTED'
			@blogs = Posts.all
		elsif @author_filter == nil || @author_filter=='All'
			@blogs = Posts.where(category: @category_filter)
			puts 'FILTER CATEGORY ONLY'
		elsif @category_filter == nil || @category_filter=='All'
			@blogs = Posts.where(author: @author_filter)
			puts 'FILTER AUTHOR ONLY'
		else
			@blogs = Posts.where(author: @author_filter, category: @category_filter)
			puts 'FILTER BOTH AUTHOR & CATEGORY'
		end
		@categories = Posts.pluck(:category).uniq
		@authors = Posts.pluck(:author).uniq.sort
	end
	def new

	end
	def create
		Posts.create(:title => params[:title], :author => params[:author], :body => params[:body], :publish_date => Time.new, :category => params[:category])
		redirect_to "/blog"
	end

	def showpost
		puts 'THIS IS THE POST ID'
		puts params[:postid]
		@postid = params[:postid]
		@post = Posts.find(@postid)
	end
	def next
		@postid = params[:postid]
		begin
			@nextid = Posts.where(["id > ?", @postid]).first.id.to_s
		rescue
			@nextid = Posts.first.id.to_s
		end 	
		puts "NEXT POST = " + @nextid
		redirect_to '/blog/post?postid=' + @nextid
	end

	def prev
		@postid = params[:postid]
		puts "PARAM ID: " + @postid.to_s
		begin
			@nextid = Posts.where(["id < ?", @postid]).last.id.to_s
		rescue
			@nextid = Posts.last.id.to_s
		end 	
		puts "PREV POST = " + @nextid
		redirect_to '/blog/post?postid=' + @nextid
	end
end	