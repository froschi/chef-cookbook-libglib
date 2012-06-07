packages = Array.new

case node[:lsb][:codename]
when "lucid"
  include_recipe "libpcre"
  include_recipe "libselinux"

  packages |= %w/
    libglib2.0-0
  /
when "precise"
  include_recipe "libpcre"
  include_recipe "libselinux"
  include_recipe "libelf"
  include_recipe "libffi"

  packages |= %w/
    libglib2.0-0
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
