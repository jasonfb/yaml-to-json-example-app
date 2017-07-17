# This has been created to help monitor changes of files within the Rails.root/config directory

# https://gist.github.com/dylanjha/11233766
# hints from https://github.com/rails/sprockets/issues/366

Sprockets::DirectiveProcessor.class_eval do
  def process_depend_on_config_directive(file)
    path = File.expand_path(file, "#{Rails.root}/config")
    context.depend_on(path)
  end
end