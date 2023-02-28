class CurrenciesController < ApplicationController
  def first_currency
    @raw_date = open("https://api.exchangerate.host/symbols").read
    @parsed_data = JSON.parse(@raw_date)
    #@array_of_symbols
    render({:template => "currency_template/step_one.html.erb"})
  end


end
