Before("@bedrockdataautomation") do
  @service = Aws::BedrockDataAutomation::Resource.new
  @client = @service.client
end

After("@bedrockdataautomation") do
  # shared cleanup logic
end
