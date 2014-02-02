api = 2
core = 7.x
base= panopoly

; Use Panopoly instead of Drupal core:
 projects[panopoly][type] = core
 projects[panopoly][download][type] = git
 projects[panopoly][download][url] = git://github.com/pantheon-systems/drops-7.git
 projects[panopoly][version] = master
 
; Pull in Custom Profile 423distro:
 projects[423distro][type] = profile
 projects[423distro][download][type] = git
 projects[423distro][download][url] = https://github.com/flux423/423distro.git
 projects[423distro][version] = master


