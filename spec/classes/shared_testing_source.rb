require 'spec_helper'

shared_examples :epel_testing_source do
  it do
    is_expected.to contain_yumrepo('epel-testing-source').with(
      failovermethod: 'priority',
      proxy:          'absent',
      enabled:        '0',
      gpgcheck:       '1',
      repo_gpgcheck:  '0'
    )
  end
end

shared_examples_for :epel_testing_source_8 do
  include_context :epel_testing_source

  it do
    is_expected.to contain_yumrepo('epel-testing-source').with(
      mirrorlist: 'https://mirrors.fedoraproject.org/metalink?repo=testing-source-epel8&arch=$basearch',
      gpgkey:     'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-8',
      descr:      'Extra Packages for Enterprise Linux 8 - Testing - $basearch - Source'
    )
  end
end

shared_examples_for :epel_testing_source_7 do
  include_context :epel_testing_source

  it do
    is_expected.to contain_yumrepo('epel-testing-source').with(
      mirrorlist: 'https://mirrors.fedoraproject.org/metalink?repo=testing-source-epel7&arch=$basearch',
      gpgkey:     'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7',
      descr:      'Extra Packages for Enterprise Linux 7 - Testing - $basearch - Source'
    )
  end
end

shared_examples_for :epel_testing_source_6 do
  include_context :epel_testing_source

  it do
    is_expected.to contain_yumrepo('epel-testing-source').with(
      mirrorlist: 'https://mirrors.fedoraproject.org/metalink?repo=testing-source-epel6&arch=$basearch',
      gpgkey:     'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6',
      descr:      'Extra Packages for Enterprise Linux 6 - Testing - $basearch - Source'
    )
  end
end
