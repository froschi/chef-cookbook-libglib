packages = %w/
  libglib2.0-0
/

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
