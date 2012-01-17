name              "automatic_updates"
maintainer        "David Amian"
maintainer_email  "damian@emergya.com"
license           "Apache 2.0"
description       "Controls automatic software updates schedule"
version           "0.1.1"

recipe            "automatic_updates::automatic_updates", "Set if node updates automatically or not"

%w{ ubuntu debian }.each do |os|
  supports os
end

attribute 'automatic_updates/on_boot',
  :display_name => "Automatic updates on boot?",
  :description  => "Starts an update when operative system boots",
  :type         => "string",
  :choice       => [ "true", "false" ],
  :required     => "required",
  :default      => "false",
  :recipes      => [ 'automatic_updates::automatic_updates' ]

attribute 'automatic_updates/on_login',
  :display_name => "Automatic updates on login?",
  :description  => "Starts an update when user logs into a session",
  :type         => "string",
  :choice       => [ "true", "false" ],
  :required     => "required",
  :default      => "false",
  :recipes      => [ 'automatic_updates::automatic_updates' ]


attribute 'automatic_updates/on_monday',
  :display_name => "Automatic updates on Monday?",
  :description  => "Activates updates every Monday",
  :type         => "string",
  :choice       => ["on","off"],
  :required     => "required",
  :default      => "off",
  :recipes      => [ 'automatic_updates::automatic_updates' ]

attribute 'automatic_updates/on_monday_time',
  :display_name => "Time (HH:MM)",
  :description  => "Hour to start automatic updates on Monday",
  :type         => "string",
  :validation   => "custom",
  :custom       => "^((\d\d:\d\d))$",
  :required     => "required",
  :default      => "00:00",
  :recipes      => [ 'automatic_updates::automatic_updates' ]

attribute 'automatic_updates/on_tuesday',
  :display_name => "Automatic updates on Tuesday?",
  :description  => "Activates updates every Tuesday",
  :type         => "string",
  :choice       => ["on","off"],
  :required     => "required",
  :default      => "off",
  :recipes      => [ 'automatic_updates::automatic_updates' ]

attribute 'automatic_updates/on_tuesday_time',
  :display_name => "Time (HH:MM)",
  :description  => "Hour to start automatic updates on Tuesday",
  :type         => "string",
  :validation   => "custom",
  :custom       => "^((\d\d:\d\d))$",
  :required     => "required",
  :default      => "00:00",
  :recipes      => [ 'automatic_updates::automatic_updates' ]

attribute 'automatic_updates/on_wednesday',
  :display_name => "Automatic updates on Wednesday?",
  :description  => "Activates updates every Wednesday",
  :type         => "string",
  :choice       => ["on","off"],
  :required     => "required",
  :default      => "off",
  :recipes      => [ 'automatic_updates::automatic_updates' ]

attribute 'automatic_updates/on_wednesday_time',
  :display_name => "Time (HH:MM)",
  :description  => "Hour to start automatic updates on Wednesday",
  :type         => "string",
  :validation   => "custom",
  :custom       => "^((\d\d:\d\d))$",
  :required     => "required",
  :default      => "00:00",
  :recipes      => [ 'automatic_updates::automatic_updates' ]

attribute 'automatic_updates/on_thursday',
  :display_name => "Automatic updates on Thursday?",
  :description  => "Activates updates every on Thursday",
  :type         => "string",
  :choice       => ["on","off"],
  :required     => "required",
  :default      => "off",
  :recipes      => [ 'automatic_updates::automatic_updates' ]

attribute 'automatic_updates/on_thursday_time',
  :display_name => "Time (HH:MM)",
  :description  => "Hour to start automatic updates on Thursday",
  :type         => "string",
  :validation   => "custom",
  :custom       => "^((\d\d:\d\d))$",
  :required     => "required",
  :default      => "00:00",
  :recipes      => [ 'automatic_updates::automatic_updates' ]

attribute 'automatic_updates/on_friday',
  :display_name => "Automatic updates on Friday?",
  :description  => "Activates updates every Friday",
  :type         => "string",
  :choice       => ["on","off"],
  :required     => "required",
  :default      => "off",
  :recipes      => [ 'automatic_updates::automatic_updates' ]

attribute 'automatic_updates/on_friday_time',
  :display_name => "Time (HH:MM)",
  :description  => "Hour to start automatic updates on Friday",
  :type         => "string",
  :validation   => "custom",
  :custom       => "^((\d\d:\d\d))$",
  :required     => "required",
  :default      => "00:00",
  :recipes      => [ 'automatic_updates::automatic_updates' ]

attribute 'automatic_updates/on_saturday',
  :display_name => "Automatic updates on Saturday?",
  :description  => "Activates updates every Saturday",
  :type         => "string",
  :choice       => ["on","off"],
  :required     => "required",
  :default      => "off",
  :recipes      => [ 'automatic_updates::automatic_updates' ]

attribute 'automatic_updates/on_saturday_time',
  :display_name => "Time (HH:MM)",
  :description  => "Hour to start automatic updates on Saturday",
  :type         => "string",
  :validation   => "custom",
  :custom       => "^((\d\d:\d\d))$",
  :required     => "required",
  :default      => "00:00",
  :recipes      => [ 'automatic_updates::automatic_updates' ]

attribute 'automatic_updates/on_sunday',
  :display_name => "Automatic updates on Sunday?",
  :description  => "Activates updates every Sunday",
  :type         => "string",
  :choice       => ["on","off"],
  :required     => "required",
  :default      => "off",
  :recipes      => [ 'automatic_updates::automatic_updates' ]

attribute 'automatic_updates/on_sunday_time',
  :display_name => "Time (HH:MM)",
  :description  => "Hour to start automatic updates on Sunday",
  :type         => "string",
  :validation   => "custom",
  :custom       => "^((\d\d:\d\d))$",
  :required     => "required",
  :default      => "00:00",
  :recipes      => [ 'automatic_updates::automatic_updates' ]


attribute 'automatic_updates/max_random_time_span',
  :display_name => "Max random time span",
  :description  => "Minutes added randomly in order to avoid concurrent updates",
  :type         => "string",
  :validation   => "custom",
  :custom       => "^(\d\d\d)$",
  :required     => "required",
  :default      => "000",
  :recipes      => [ 'automatic_updates::automatic_updates' ]

