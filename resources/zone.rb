actions :create

attribute :domain,                :kind_of => String
attribute :email,                 :kind_of => String
attribute :notes,                 :kind_of => String
attribute :type,                  :kind_of => String,  :default => 'pri_sec'
attribute :ttl,                   :kind_of => Integer, :default => 3600
attribute :zerigo_email,          :kind_of => String
attribute :zerigo_token,          :kind_of => String