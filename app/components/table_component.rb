class TableComponent < ViewComponent::Base
  def initialize(objects, columns)
    @objects = objects
    @columns = columns
  end

  def render
    render_table
  end

  private

  def render_table
    content_tag(:table) do
      render_headers + render_rows
    end
  end

  def render_headers
    content_tag(:thead) do
      content_tag(:tr) do
        @columns.map { |column| content_tag(:th, column) }.join.html_safe
      end
    end
  end

  def render_rows
    content_tag(:tbody) do
      @objects.map { |object| render_row(object) }.join.html_safe
    end
  end

  def render_row(object)
    content_tag(:tr) do
      @columns.map { |column| content_tag(:td, object.public_send(column.to_sym)) }.join.html_safe
    end
  end
end
