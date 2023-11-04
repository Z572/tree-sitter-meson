================================================================================
Simple strings
================================================================================
x = 'abc'
x = '#'

--------------------------------------------------------------------------------

(build_definition
 (statement
  (assignment_statement
   (identifier)
   (assignment_operator)
   (expression
    (string_literal))))
 (statement
  (assignment_statement
   (identifier)
   (assignment_operator)
   (expression
    (string_literal)))))

================================================================================
Various escape sequences
================================================================================

x = 'Escape \x1B or \a (bell),  \b (backspace), \f (formfeed), \n, \t, etc.'

x = 'They can also use \u1234 or \U00001234 unicode, or \N{ampersand} named characters.'

--------------------------------------------------------------------------------

(build_definition
 (statement
  (assignment_statement
   (identifier)
   (assignment_operator)
   (expression
    (string_literal
     (escape_sequence)
     (escape_sequence)
     (escape_sequence)
     (escape_sequence)
     (escape_sequence)
     (escape_sequence)))))
 (statement
  (assignment_statement
   (identifier)
   (assignment_operator)
   (expression
    (string_literal
     (escape_sequence)
     (escape_sequence)
     (escape_sequence))))))

================================================================================
Octal escapes
================================================================================

x = '\1'
x = '\12'
x = '\123'
x = '\19'

--------------------------------------------------------------------------------

(build_definition
 (statement
  (assignment_statement
   (identifier)
   (assignment_operator)
   (expression
    (string_literal
     (escape_sequence)))))
 (statement
  (assignment_statement
   (identifier)
   (assignment_operator)
   (expression
    (string_literal
     (escape_sequence)))))
 (statement
  (assignment_statement
   (identifier)
   (assignment_operator)
   (expression
    (string_literal
     (escape_sequence)))))
 (statement
  (assignment_statement
   (identifier)
   (assignment_operator)
   (expression
    (string_literal
     (escape_sequence))))))

================================================================================
Multiline strings
================================================================================

x = '''This string
spans
several lines
#h'''

--------------------------------------------------------------------------------

(build_definition
 (statement
  (assignment_statement
   (identifier)
   (assignment_operator)
   (expression
    (multiline_string_literal)))))

================================================================================
fstring
================================================================================

n = 10
s = f'int: @n@'
cc= f'''
@n@: @s@
'''

--------------------------------------------------------------------------------

(build_definition
 (statement
  (assignment_statement
   (identifier)
   (assignment_operator)
   (expression
    (int_literal))))
 (statement
  (assignment_statement
   (identifier)
   (assignment_operator)
   (expression
    (fstring_literal
     (format_parameter (identifier))))))
 (statement
  (assignment_statement
   (identifier)
   (assignment_operator)
   (expression
    (multiline_fstring_literal
     (format_parameter (identifier))
     (format_parameter (identifier)))))))
