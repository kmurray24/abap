" Ken Murray (IBM)
REPORT zjd_prctr_mapping_load.CLASS lcl_ DEFINITION CREATE PRIVATE.  
PUBLIC SECTION.
    CLASS-METHODS main.
  PROTECTED SECTION.
  PRIVATE SECTION.ENDCLASS.CLASS lcl_ IMPLEMENTATION.
  METHOD main.
    DATA prctr_mappings TYPE STANDARD TABLE OF zcdd_pc_lookup.
    DATA csv_file TYPE string VALUE 'C:\temp\ZtableforPC.txt'.    

	cl_gui_frontend_services=>gui_upload( EXPORTING filename            = csv_file
                                                  has_field_separator = 'X'
                                         CHANGING data_tab            = prctr_mappings ). 
   
	INSERT zcdd_pc_lookup FROM TABLE prctr_mappings.

  ENDMETHOD.
ENDCLASS.

START-OF-SELECTION.
  lcl_=>main( ).
