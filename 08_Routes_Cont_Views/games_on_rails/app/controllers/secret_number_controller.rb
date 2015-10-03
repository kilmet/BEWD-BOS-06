class SecretNumberController < ApplicationController
  def new
  end

  def show
    @guess = params[:guess]
    @secret_number = rand(1..5).to_s
  end
end