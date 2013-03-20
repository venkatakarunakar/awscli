module AwsCli
  module CLI
    module EC2
      require 'awscli/cli/ec2'
      class VmManagement < Thor

        desc "list", "List Images"
        def list
          puts "Listing Images"
        end

        AwsCli::CLI::Ec2.register AwsCli::CLI::EC2::VmManagement, :vm, 'vm [COMMAND]', 'EC2 VM Management'

      end
    end
  end
end