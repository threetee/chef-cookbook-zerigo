actions :create

attribute :name,                  :kind_of => String
attribute :value,                 :kind_of => String
attribute :type,                  :kind_of => String
attribute :ttl,                   :kind_of => Integer, :default => 3600
attribute :zone_id,               :kind_of => String
attribute :zerigo_email,          :kind_of => String
attribute :zerigo_token,          :kind_of => String