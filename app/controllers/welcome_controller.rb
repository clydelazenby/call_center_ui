class WelcomeController < ApplicationController
  def main_page
    @Welcome
  end

  def all_task
  end

  def queue
  end

  def helpful_tips
  end

  def chat
  end

  def all_customers
    @customers = Customer.all 
  end
end
