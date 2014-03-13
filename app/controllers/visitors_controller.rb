class VisitorsController < ApplicationController
  def index
  end

  def show
    @visitor = Visitor.find(params[:id])
  end

  def new
    @visitor = Visitor.new
  end

  def create
    @visitor = Visitor.new(params[:visitor])
    if @visitor.save
      UserEmail.signup_notify(@visitor).deliver
      flash[:notice] = "Thank you for your enquiry. We will contact you shortly."
      redirect_to @visitor
    else
      flash[:error] = "There was an error with your enquiry. Please ask again."
      render :new
    end
  end

  def edit
  end
end
