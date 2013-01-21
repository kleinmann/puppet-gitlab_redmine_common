# == Class: gitlab_redmine_common
#
# === Parameters
#
# === Examples
#
# node /gitlab-with-redmine/ {
#   class { 'gitlab_redmine_common': 
#     dbtype => 'pgsql' # Standard: mysql
#   }
# }
#
# === Authors
#
# Uwe Kleinmann <uwe@kleinmann.org
#

# Class:: gitlab_redmine_common
#
#
class gitlab_redmine_common(
    $dbtype      = $gitlab_redmine_common::params::dbtype,
  ) inherits gitlab_redmine_common::params {
  case $::operatingsystem {
    ubuntu: {
      include gitlab_redmine_common::packages
    }
    default: {
      err "${::operatingsystem} not supported yet"
    }
  } # case
} # Class:: gitlab_redmine_common
