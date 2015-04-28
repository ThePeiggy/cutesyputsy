class Subscriber < ActiveRecord::Base
  validates_presence_of :email, message: 'Please enter your email address.'
  validates_uniqueness_of :email, message: 'That email is already on the subscription list.'
  validates_format_of :email,
    with: /\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/i,
    message: 'Please use a valid email address.'

end
