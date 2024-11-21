Before("@notificationscontacts") do
  @service = Aws::NotificationsContacts::Resource.new
  @client = @service.client
end

After("@notificationscontacts") do
  # shared cleanup logic
end
