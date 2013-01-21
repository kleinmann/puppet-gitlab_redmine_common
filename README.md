# Module for common packages of redmine and gitlab

Uwe Kleinmann <uwe@kleinmann.org>

This module installs common packages for both gitlab and redmine per my repositories kleinmann/puppet-gitlab and kleinmann/puppet-redmine
It is specifically for Ubuntu 12.10 and hasn't been tested with anything else.

DISCLAIMER: This is rather opinionated.

# Usage
<pre>
  class { 'gitlab_redmine_common':
    dbtype => 'pgsql',
  }
</pre>

