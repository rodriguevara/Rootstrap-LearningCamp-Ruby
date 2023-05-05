# 2.1 Finish the method called auto_complete that accepts an Editor object and use the build_suggestion method that accepts an Array from 1) Object#methods 2) Method#parameters and incorporate all of the filters explained above, making the relevant specs pass.

editor = Editor.new("class Foo; end")

def auto_complete(editor)
	editor.cursor.read do |word|
    if word == "\n"
      throw :eol
    elsif editor.template.user_classes.include?(word)
      list = eval(word.to_s).methods
      build_suggestion(list)
    elsif editor.template.context.methods.include?(word)
      list = editor.template.context.method(word).parameters
      build_suggestion(list)
    end
	end
end

def build_suggestion(list)
  Suggestion.new(list).display
end

# eval isn't exactly safe. Modify the Editor exercise from the last lesson to use const_get instead of eval to parse the name of the class in the second filter.

def auto_complete(editor)
	editor.cursor.read do |word|
  	if editor.template.user_classes.include?(word)
      list = Module.const_get(word.to_s).methods
      build_suggestion(list)
    elsif editor.template.context.methods.include?(word)
      list = editor.template.context.method(word).parameters
      build_suggestion(list)
    elsif word == "\n"
      throw :eol
    end
	end
end

def build_suggestion(list)
  Suggestion.new(list).display
end


# Write a method inspect_instance_variable that accepts the name of a class as a String and the name of the instance variable defined on that class (again, as a String) whose value it should return.

def inspect_instance_variable(class_name, variable)
    Module.const_get(class_name).new.instance_variable_get("@" + variable)
end
