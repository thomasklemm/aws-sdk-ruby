Before("@securityir") do
  @service = Aws::SecurityIR::Resource.new
  @client = @service.client
end

After("@securityir") do
  # shared cleanup logic
end
