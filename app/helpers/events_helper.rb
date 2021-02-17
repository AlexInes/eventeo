module EventsHelper

  def display_price(event)
    event.free? ? "Free" : number_to_currency(event.price, 
                                              unit: "PLN", 
                                              format: "%n %u")
  end

  def display_date(event_date)
    event_date.strftime("%e %B %Y")
  end
end
