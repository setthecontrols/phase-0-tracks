class TodoList
  def initialize(array)
    @list = array
  end

  def get_items
    @list
  end

  def add_item(element)
    @list << element
  end

  def delete_item(item)
    @list.delete_at(@list.index(item))
  end

  def get_item(i)
   @list[i]
  end
end

