Before("@invoicing") do
  @service = Aws::Invoicing::Resource.new
  @client = @service.client
end

After("@invoicing") do
  # shared cleanup logic
end
