api = 2
core = 7.x
base= panopoly

; Use Panopoly instead of Drupal core:
 projects[panopoly][type] = core
 projects[panopoly][download][type] = git
 projects[panopoly][download][url] = git://github.com/pantheon-systems/drops-7.git
 projects[panopoly][version] = master
 
; Pull in Custom Profile distro423:
 projects[distro423][type] = profile
 projects[distro423][download][type] = git
 projects[distro423][download][url] = https://github.com/flux423/distro423.git
 projects[distro423][version] = master


