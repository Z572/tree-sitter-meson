================================================================================
comment
================================================================================

conf='1' # dsaf
c='a'

--------------------------------------------------------------------------------

(build_definition
 (statement
  (assignment_statement
   (identifier)
   (assignment_operator)
   (expression
    (string_literal)))
  (comment))
 (statement
  (assignment_statement
   (identifier)
   (assignment_operator)
   (expression
    (string_literal)))))

================================================================================
comment with comment
================================================================================

# #dsaf

--------------------------------------------------------------------------------

(build_definition
 (comment))
