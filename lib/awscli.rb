#external dependencies
begin
  require 'thor'
  require 'thor/group'
  require 'fog'
  require 'highline'
  require 'yaml'
rescue LoadError
  puts "Failed to load gems: fog, highline, thor"
  exit 1
end

module AwsCli
  # => require all interfaces for awscli/
  require 'awscli/version.rb' #to get version
  require 'awscli/errors'

  # => first require cli so all subcommands can register
  require 'awscli/cli'
  # => register all subcommands
  require 'awscli/cli/more'
  require 'awscli/cli/config'
  require 'awscli/cli/ec2'
  require 'awscli/cli/ec2/instances'
  require 'awscli/cli/ec2/ami'
  require 'awscli/cli/ec2/ebs'
  require 'awscli/cli/ec2/eip'
  require 'awscli/cli/ec2/keypairs'
  require 'awscli/cli/ec2/monitoring'
  require 'awscli/cli/ec2/placement'
  require 'awscli/cli/ec2/reservedinstmng'
  require 'awscli/cli/ec2/secgroups'
  require 'awscli/cli/ec2/spot'
  require 'awscli/cli/ec2/tags'
  require 'awscli/cli/ec2/vmmng'
  require 'awscli/cli/ec2/vpc'

end