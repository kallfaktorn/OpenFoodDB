function Node(value, parent)
{
  var self = this;
  
  self.value = value;
  self.children = [];
  self.parent = null;
  
  if(parent !== null)
  {
    self.parent = parent;
    
    if(parent.children === null)
    {
      parent.children = [];
    }
    
    parent.children.push(self);
  }
  
  this.setChildren = function(children) {

    self.children = children;
  };

  this.hasChildren = function() {
    
    if((self.children !== null) && (self.children.length > 0))
    {
      return true;
    }
    else
    {
      return false;
    }
  }

  this.find = function(value)
  {
    if(self.value === value)
    {
      return self;
    }
    else if(self.hasChildren())
    {
      for(var i = 0; i < self.children.length; i++)
      {
        var node = self.children[i].find(value);
        
        if(node !== null && node !== undefined)
        {
          return node;
        }
      }
    }
    
    return null;
  }

  this.lookup = function(id) {
    
    var value = self.value.replace(/ /g, "_");

    if(("#cat_" + value) === id)
    {
      return self;
    }
    else if(self.hasChildren())
    {
      for(var i = 0; i < self.children.length; i++)
      {
        var node = self.children[i].lookup(id);
        
        if(node !== null && node !== undefined)
        {
          return node;
        }
      }
    }
    else
    {
      return null;
    }
  }
}

function categories_json_to_tree(categories)
{
  var tree = new Node("Categories", null);
  var no_root_categories_left = false;
  
  while(no_root_categories_left === false)
  {
    no_root_categories_left = true;
    
    for(var i = 0; i < categories.length; i++)
    {
      if(categories[i].parent === "null")
      {
        no_root_categories_left = false;
        
        var name = categories[i].name.replace(/ /g, "_");

        var root_node = new Node(name, tree);
        
        categories.splice(i--, 1);
        
        categories_json_to_tree_children(categories, root_node);
      }
    }
  }
  
  return tree;
}

function categories_json_to_tree_children(categories_json, node)
{
  for(var i = 0; i < categories_json.length; i++)
  {
    var parent = categories_json[i].parent.replace(/ /g, "_");
    
    if(parent === node.value)
    {
      name = categories_json[i].name.replace(/ /g, "_");
      var child = new Node(name, node);
      categories_json.splice(i--, 1);
      
      categories_json_to_tree_children(categories_json, child);
    }
  }
}

// function remove_swedish_characters(name)
// {
  // var return_name = name.replace(/å/g, "a");
  // return_name = return_name.replace(/ä/g, "a");
  // return_name = return_name.replace(/ö/g, "o");
//   
  // reurn return_name;
// }
