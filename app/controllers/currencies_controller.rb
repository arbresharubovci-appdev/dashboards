class CurrenciesController < ApplicationController
  def dashboards
    render({:template => "currency_template/resources_usa.html.erb"})
  end
  
  def first_currency
    @raw_date = open("https://api.exchangerate.host/symbols").read
    @parsed_data = JSON.parse(@raw_date)
    @symbols_hash = @parsed_data.fetch("symbols")
    @array_of_symbols = @symbols_hash.keys
    render({:template => "currency_template/step_one.html.erb"})
  end
  
  def second_currency
    @raw_date = open("https://api.exchangerate.host/symbols").read
    @parsed_data = JSON.parse(@raw_date)
    @symbols_hash = @parsed_data.fetch("symbols")
    @array_of_symbols = @symbols_hash.keys

    #params are
    # Parameters: {"from_currency"=>"ARS"}
    @from_symbol = params.fetch("from_currency")

    render({:template => "currency_template/step_two.html.erb"})
  end

def symbols_currency
  
  render({:template => "currency_template/symbols_currency.html.erb"})  
end

end
