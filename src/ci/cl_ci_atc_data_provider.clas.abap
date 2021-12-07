CLASS cl_ci_atc_data_provider DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.
    TYPES ty_source_id TYPE x LENGTH 16.
    TYPES:
      BEGIN OF ENUM ty_cache_policy STRUCTURE cache_policies,
        use_all,
        use_none,
      END OF ENUM ty_cache_policy STRUCTURE cache_policies.

    CLASS-METHODS main_program_from_comp_unit
      IMPORTING compilation_unit TYPE if_ci_atc_source_code_provider=>ty_compilation_unit
      RETURNING VALUE(main_program) TYPE if_ci_atc_source_code_provider=>ty_include.

    METHODS get_code_provider
      RETURNING VALUE(code_provider) TYPE REF TO if_ci_atc_source_code_provider.
    METHODS get_checked_destination
      returning value(checked_destination) type ref to if_rfc_dest.
PROTECTED SECTION.
PRIVATE SECTION.
ENDCLASS.



CLASS cl_ci_atc_data_provider IMPLEMENTATION.

  METHOD main_program_from_comp_unit.
  ENDMETHOD.

  METHOD get_code_provider.
    RETURN.
  ENDMETHOD.

  METHOD get_checked_destination.
    RETURN.
  ENDMETHOD.

ENDCLASS.
