require "administrate/base_dashboard"

class StrainDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo,
    ratings: Field::HasMany,
    id: Field::Number,
    name: Field::String,
    created_by: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    variant: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :user,
    :ratings,
    :id,
    :name,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :user,
    :ratings,
    :id,
    :name,
    :created_by,
    :created_at,
    :updated_at,
    :variant,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :user,
    :ratings,
    :name,
    :created_by,
    :variant,
  ].freeze

  # Overwrite this method to customize how strains are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(strain)
  #   "Strain ##{strain.id}"
  # end
end
