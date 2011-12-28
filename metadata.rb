name              "automatic_updates"
maintainer        "David Amian"
maintainer_email  "damian@emergya.com"
license           "Apache 2.0"
description       "Set if node updates automatically or not"
version           "0.1.1"

recipe            "automatic_updates::automatic_updates", "Set if node updates automatically or not"

%w{ ubuntu debian }.each do |os|
  supports os
end

attribute 'automatic_updates/on_boot',
  :display_name => "Automatic updates on boot?",
  :description  => "True or False to set if updates node when booting system",
  :type         => "string",
  :choice       => [ "true", "false" ],
  :required     => "required",
  :default      => "false",
  :recipes      => [ 'automatic_updates::automatic_updates' ]

attribute 'automatic_updates/on_login',
  :display_name => "Automatic updates on login?",
  :description  => "True or False to set if updates node when login user into system",
  :type         => "string",
  :choice       => [ "true", "false" ],
  :required     => "required",
  :default      => "false",
  :recipes      => [ 'automatic_updates::automatic_updates' ]


attribute 'automatic_updates/on_monday',
  :display_name => "Automatic updates on Monday?",
  :description  => "Hour to start automatic updates on Monday (HH:MM) or No",
  :type         => "string",
  :validation   => "custom",
  :custom       => "^((\d\d:\d\d)|(No))$",
  :required     => "required",
  :default      => "No",
  :recipes      => [ 'automatic_updates::automatic_updates' ]

attribute 'automatic_updates/on_tuesday',
  :display_name => "Automatic updates on Tuesday?",
  :description  => "Hour to start automatic updates on Tuesday (HH:MM) or No",
  :type         => "string",
  :validation   => "custom",
  :custom       => "^((\d\d:\d\d)|(No))$",
  :required     => "required",
  :default      => "No",
  :recipes      => [ 'automatic_updates::automatic_updates' ]

attribute 'automatic_updates/on_wednesday',
  :display_name => "Automatic updates on Wednesday?",
  :description  => "Hour to start automatic updates on Wednesday (HH:MM) or No",
  :type         => "string",
  :validation   => "custom",
  :custom       => "^((\d\d:\d\d)|(No))$",
  :required     => "required",
  :default      => "No",
  :recipes      => [ 'automatic_updates::automatic_updates' ]

attribute 'automatic_updates/on_thursday',
  :display_name => "Automatic updates on Thursday?",
  :description  => "Hour to start automatic updates on Thursday (HH:MM) or No",
  :type         => "string",
  :validation   => "custom",
  :custom       => "^((\d\d:\d\d)|(No))$",
  :required     => "required",
  :default      => "No",
  :recipes      => [ 'automatic_updates::automatic_updates' ]

attribute 'automatic_updates/on_friday',
  :display_name => "Automatic updates on Friday?",
  :description  => "Hour to start automatic updates on Friday (HH:MM) or No",
  :type         => "string",
  :validation   => "custom",
  :custom       => "^((\d\d:\d\d)|(No))$",
  :required     => "required",
  :default      => "No",
  :recipes      => [ 'automatic_updates::automatic_updates' ]
