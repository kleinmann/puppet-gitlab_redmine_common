# Class:: gitlab_redmine_common::packages
#
#
class gitlab_redmine_common::packages {
  require gitlab_redmine_common::ubuntu_packages
}

class gitlab_redmine_common::ubuntu_packages {
  include gitlab_redmine_common

  $dbtype  = $gitlab_redmine_common::dbtype

  $db_packages = $dbtype ? {
    mysql => ['libmysql++-dev','libmysqlclient-dev'],
    pgsql => ['libpq-dev', 'postgresql-client'],
  }
  package {
    $db_packages:
      ensure  => installed,
  }

  package {
      ['libxml2-dev','libxslt1-dev']:
        ensure  => installed,
  }
  # Assuming default ruby 1.9.3 (quantal)
  package {
    ['ruby','ruby-dev','rubygems','rake']:
      ensure  => installed;
  }
} # Class:: gitlab_redmine_common::packages
