class Email < ActiveRecord::Base
  validates :email, :presence   => true,
                    :uniqueness => { :case_sensitive => false },
                    :format => { :with => /\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/i, :message => "Invalid email format." }

end
