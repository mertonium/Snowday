Factory.define :user do |user|
  user.email                  "foo@example.com"
  user.password               "password"
  user.password_confirmation  "password"
  user.phone                  "3192172583"
end

Factory.define :admin do |admin|
  admin.email                  "foo@example.com"
  admin.password               "password"
  admin.password_confirmation  "password"
end

Factory.define :notification do |notification|
  notification.message        "This is a sample message"
  notification.sent_at        nil
end
