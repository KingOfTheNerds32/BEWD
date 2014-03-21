class AnswersController < ApplicationController
  def show
    # game_table = []

    # Question.all.shuffle.each do |q|
    #   if game_table.keys.count < 2 && game_table[q.category].nil?
    #     game_table[q.category] = [q]
    #   elsif game_table[q.category].count > 0
    #     game_table[q.category] << q
    #   end
    # end

    # puts game_table
    @answer = Question.all.sample
  end
  def result
    #Get the contestant's entry & the answer that was shown to the contestant
    @contestant_question = params[:question]
    @answer = params[:answer]

    #The first record from the Question Model that matches the prompt shown to the contestant 
    @true_question = Question.where(:answer => @answer).first

    #Display these values for debugging
    puts @contestant_question.squish
    puts @answer
    puts @true_question.question

    #Define 'score' variable & assume that contestant is incorrect
    @score = false

    #Validate the contestant's entry vs the Question Model
      #We are case-insensitive & ignoring extra spaces
    if @contestant_question.downcase.squish == @true_question.question.downcase
      @result = "You are correct!"

      #if they are correct, change their score
      @score = true
    else
      @result = "You are wrong!"
    end

    #Store a record in the Response Model with Player_ID, What prompt (answer) they were shown, & if they got it correct or not
    Response.create(player_id:@current_contestant.id, answer_seen:@true_question.id, correct:@score)
    
    #Total their score by counting the Response Model records that are true and are for that player's ID
    @total_score = Response.where(:correct => true, :player_id => @current_contestant.id).count
  end
end