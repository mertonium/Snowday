# By using the symbol ':user', we get Factory Girl to simulate the User model.
Factory.define :notification do |notification|
  notification.message        "This is a sample message"
  notification.sent_at        nil
end
