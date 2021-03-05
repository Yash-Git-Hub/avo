# frozen_string_literal: true

class Avo::Index::GridItemComponent < ViewComponent::Base
  include Avo::ResourcesHelper

  def initialize(resource: resource, reflection: reflection, parent_model: nil)
    @resource = resource
    @reflection = reflection
    @grid_fields = resource.get_fields(view_type: :grid)
    @parent_model = parent_model
  end

  private
    def preview
      @grid_fields.detect do |field|
        field.grid_position == :preview
      end
    end

    def title
      @grid_fields.detect do |field|
        field.grid_position == :title
      end
    end

    def body
      @grid_fields.detect do |field|
        field.grid_position == :body
      end
    end
end