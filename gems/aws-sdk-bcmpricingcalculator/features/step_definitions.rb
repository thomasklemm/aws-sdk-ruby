Before("@bcmpricingcalculator") do
  @service = Aws::BCMPricingCalculator::Resource.new
  @client = @service.client
end

After("@bcmpricingcalculator") do
  # shared cleanup logic
end
