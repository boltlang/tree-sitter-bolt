; ADT definitions

(struct_item
    name: (type_identifier) @name) @definition.class

(enum_item
    name: (type_identifier) @name) @definition.class

; type aliases

(type_item
    name: (type_identifier) @name) @definition.class

; method definitions

(declaration_list
    (function_item
        name: (identifier) @name) @definition.method)

; function definitions

(function_item
    name: (identifier) @name) @definition.function

(operator_definition
    operator: _ @name) @definition.function

; class definitions
(class_item
    name: (type_identifier) @name) @definition.interface

; macro definitions

(macro_definition
    name: (identifier) @name) @definition.macro

; references

(call_expression
    function: (identifier) @name) @reference.call

(call_expression
    function: (field_expression
        field: (field_identifier) @name)) @reference.call

(macro_invocation
    macro: (identifier) @name) @reference.call

; implementations

(impl_item
    type: (generic_type
        type: (type_identifier) @name)) @reference.implementation
