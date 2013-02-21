class AnswersController < ApplicationController
  # GET /answers
  # GET /answers.json
  before_filter :get_tweet

  def get_tweet
    @tweet=Tweet.find(params[:tweet_id])
  end

  def index
    @answers = @tweet.answers

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @answers }
    end
  end

  # GET /answers/1
  # GET /answers/1.json
  def show
    @answer = @tweet.answers.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @answer }
    end
  end

  # GET /answers/new
  # GET /answers/new.json
  def new
    @answer = Answer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @answer }
    end
  end

  # GET /answers/1/edit
  def edit
    @answer = Answer.find(params[:id])
  end

  # POST /answers
  # POST /answers.json
  def create
    @answer = @tweet.answers.new(params[:answer])

    respond_to do |format|
      if @answer.save
        format.html { redirect_to [@tweet, @answer], notice: 'Answer was successfully created.' }
        format.json { render json: [@tweet, @answer], status: :created, location: [@tweet, @answer] }
      else
        format.html { render action: "new" }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
      format.js
    end
  end

  # PUT /answers/1
  # PUT /answers/1.json
  def update
    @answer = @tweet.answers.find(params[:id])

    respond_to do |format|
      if @answer.update_attributes(params[:answer])
        format.html { redirect_to [@tweet, @answer], notice: 'Answer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /answers/1
  # DELETE /answers/1.json
  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy

    respond_to do |format|
      format.html { redirect_to tweet_answers_url }
      format.json { head :no_content }
      format.js
    end
  end
end
