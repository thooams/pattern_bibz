<% module_namespacing do -%>
# frozen_string_literal: true

class <%= class_name %> < <%= parent_class_name.classify %>
  # Scopes

  # Constants

  # Callbacks

  # Attr_accessors

  # Associations
<% attributes.select(&:reference?).each do |attribute| -%>
  belongs_to :<%= attribute.name %><%= ', polymorphic: true' if attribute.polymorphic? %>
<% end -%>
<% attributes.select(&:rich_text?).each do |attribute| -%>
  has_rich_text :<%= attribute.name %>
<% end -%>
<% attributes.select(&:attachment?).each do |attribute| -%>
  has_one_attached :<%= attribute.name %>
<% end -%>
<% attributes.select(&:attachments?).each do |attribute| -%>
  has_many_attached :<%= attribute.name %>
<% end -%>

  # Enums

  # Validations

  # Delegations

  # Methods
<% attributes.select(&:token?).each do |attribute| -%>
    has_secure_token<% if attribute.name != "token" %> :<%= attribute.name %><% end %>
<% end -%>
<% if attributes.any?(&:password_digest?) -%>
  has_secure_password
<% end -%>
end
<% end -%>
