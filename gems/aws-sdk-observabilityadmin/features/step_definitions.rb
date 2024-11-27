Before("@observabilityadmin") do
  @service = Aws::ObservabilityAdmin::Resource.new
  @client = @service.client
end

After("@observabilityadmin") do
  # shared cleanup logic
end
