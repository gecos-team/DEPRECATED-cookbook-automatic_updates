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
  :description  => "Set start automatic updates on Monday",
  :type         => "string",
  :choice       => ["on","off"],
  :required     => "required",
  :default      => "off",
  :recipes      => [ 'automatic_updates::automatic_updates' ]

attribute 'automatic_updates/on_monday_time',
  :display_name => "Time (HH:MM)",
  :description  => "Hour to start automatic updates on Monday (HH:MM)",
  :type         => "string",
  :validation   => "custom",
  :custom       => "^((\d\d:\d\d))$",
  :required     => "required",
  :default      => "00:00",
  :recipes      => [ 'automatic_updates::automatic_updates' ]

attribute 'automatic_updates/on_tuesday',
  :display_name => "Automatic updates on Tuesday?",
  :description  => "Set start automatic updates on Tuesday",
  :type         => "string",
  :choice       => ["on","off"],
  :required     => "required",
  :default      => "off",
  :recipes      => [ 'automatic_updates::automatic_updates' ]

attribute 'automatic_updates/on_tuesday_time',
  :display_name => "Time (HH:MM)",
  :description  => "Hour to start automatic updates on Tuesday (HH:MM)",
  :type         => "string",
  :validation   => "custom",
  :custom       => "^((\d\d:\d\d))$",
  :required     => "required",
  :default      => "00:00",
  :recipes      => [ 'automatic_updates::automatic_updates' ]

attribute 'automatic_updates/on_wednesday',
  :display_name => "Automatic updates on Wednesday?",
  :description  => "Set start automatic updates on Wednesday",
  :type         => "string",
  :choice       => ["on","off"],
  :required     => "required",
  :default      => "off",
  :recipes      => [ 'automatic_updates::automatic_updates' ]

attribute 'automatic_updates/on_wednesday_time',
  :display_name => "Time (HH:MM)",
  :description  => "Hour to start automatic updates on Wednesday (HH:MM) or No",
  :type         => "string",
  :validation   => "custom",
  :custom       => "^((\d\d:\d\d))$",
  :required     => "required",
  :default      => "00:00",
  :recipes      => [ 'automatic_updates::automatic_updates' ]

attribute 'automatic_updates/on_thursday',
  :display_name => "Automatic updates on Thursday?",
  :description  => "Set start automatic updates on Thursday",
  :type         => "string",
  :choice       => ["on","off"],
  :required     => "required",
  :default      => "off",
  :recipes      => [ 'automatic_updates::automatic_updates' ]

attribute 'automatic_updates/on_thursday_time',
  :display_name => "Time (HH:MM)",
  :description  => "Hour to start automatic updates on Thursday (HH:MM) or No",
  :type         => "string",
  :validation   => "custom",
  :custom       => "^((\d\d:\d\d))$",
  :required     => "required",
  :default      => "00:00",
  :recipes      => [ 'automatic_updates::automatic_updates' ]

attribute 'automatic_updates/on_friday',
  :display_name => "Automatic updates on Friday?",
  :description  => "Set start automatic updates on Friday",
  :type         => "string",
  :choice       => ["on","off"],
  :required     => "required",
  :default      => "off",
  :recipes      => [ 'automatic_updates::automatic_updates' ]

attribute 'automatic_updates/on_friday_time',
  :display_name => "Time (HH:MM)",
  :description  => "Hour to start automatic updates on Friday (HH:MM)",
  :type         => "string",
  :validation   => "custom",
  :custom       => "^((\d\d:\d\d))$",
  :required     => "required",
  :default      => "00:00",
  :recipes      => [ 'automatic_updates::automatic_updates' ]

attribute 'automatic_updates/on_saturday',
  :display_name => "Automatic updates on Saturday?",
  :description  => "Set start automatic updates on Saturday",
  :type         => "string",
  :choice       => ["on","off"],
  :required     => "required",
  :default      => "off",
  :recipes      => [ 'automatic_updates::automatic_updates' ]

attribute 'automatic_updates/on_saturday_time',
  :display_name => "Time (HH:MM)",
  :description  => "Hour to start automatic updates on Saturday (HH:MM)",
  :type         => "string",
  :validation   => "custom",
  :custom       => "^((\d\d:\d\d))$",
  :required     => "required",
  :default      => "00:00",
  :recipes      => [ 'automatic_updates::automatic_updates' ]

attribute 'automatic_updates/on_sunday',
  :display_name => "Automatic updates on Sunday?",
  :description  => "Set start automatic updates on Sunday",
  :type         => "string",
  :choice       => ["on","off"],
  :required     => "required",
  :default      => "off",
  :recipes      => [ 'automatic_updates::automatic_updates' ]

attribute 'automatic_updates/on_sunday_time',
  :display_name => "Time (HH:MM)",
  :description  => "Hour to start automatic updates on Sunday (HH:MM)",
  :type         => "string",
  :validation   => "custom",
  :custom       => "^((\d\d:\d\d))$",
  :required     => "required",
  :default      => "00:00",
  :recipes      => [ 'automatic_updates::automatic_updates' ]


attribute 'automatic_updates/max_random_time_span',
  :display_name => "Max random time span",
  :description  => "Minutes to increase time in order to avoid concurrent updates",
  :type         => "string",
  :validation   => "custom",
  :custom       => "^(\d\d\d)$",
  :required     => "required",
  :default      => "000",
  :recipes      => [ 'automatic_updates::automatic_updates' ]

