module BookingHelper
  def booking_date(date)
    date.strftime('%d/%m/%Y')
  end
end
