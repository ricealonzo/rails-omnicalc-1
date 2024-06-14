class CalculationsController < ApplicationController
  def home
    render({:template => "/calculation_views/homepage"})
  end

  
def square_results
    @num = params.fetch("num").to_f
    @square = @num * @num
    render({:template => "/calculation_views/square_results"})
  end
def square_root
    render({:template => "/calculation_views/square_root"})
  end
def square_root_results
  @num = params.fetch("num").to_f
  @square_root = Math.sqrt(@num)
    render({:template => "/calculation_views/square_results"})
  end
def payment
    render({:template => "/calculation_views/payment"})
  end
def payment_results
  @apr = params.fetch("apr").to_f
    @number_of_years = params.fetch("number_of_years").to_i
    @principal = params.fetch("principal").to_f
  
    # Convert APR to monthly interest rate
    @interest_rate_per_period = @apr / 100 / 12
    # Total number of monthly payments
    @number_of_monthly_periods = @number_of_years * 12
  
    # Calculate monthly payment using the formula
    # if @interest_rate_per_period == 0
    #   @payment = @principal / @number_of_monthly_periods
    # else
      @payment =(@principal * @interest_rate_per_period / (1 - (1 + @interest_rate_per_period)**-@number_of_monthly_periods)).to_fs(:currency)
    render({:template => "/calculation_views/payment_results"})
  end

  def random
    render({:template => "/calculation_views/random"})
  end
  def random_results
    @min_num = params.fetch("min").to_i
    @max_num = params.fetch("max").to_i
    @random_num = rand(@min..@max)
    render({:template => "/calculation_views/random_results"})
  end

end
