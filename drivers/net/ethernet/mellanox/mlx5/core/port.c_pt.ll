; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/port.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/port.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mlx5_core_access_reg\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_core_access_reg\09\09\09\09"
module asm "\09.long\09__crc_mlx5_core_access_reg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_core_access_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_core_access_reg\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_core_access_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mlx5_set_port_caps\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_set_port_caps\09\09\09\09"
module asm "\09.long\09__crc_mlx5_set_port_caps\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_set_port_caps:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_set_port_caps\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_set_port_caps:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mlx5_query_port_ptys\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_query_port_ptys\09\09\09\09"
module asm "\09.long\09__crc_mlx5_query_port_ptys\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_query_port_ptys:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_query_port_ptys\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_query_port_ptys:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mlx5_query_ib_port_oper\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_query_ib_port_oper\09\09\09\09"
module asm "\09.long\09__crc_mlx5_query_ib_port_oper\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_query_ib_port_oper:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_query_ib_port_oper\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_query_ib_port_oper:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mlx5_toggle_port_link\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_toggle_port_link\09\09\09\09"
module asm "\09.long\09__crc_mlx5_toggle_port_link\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_toggle_port_link:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_toggle_port_link\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_toggle_port_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mlx5_set_port_admin_status\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_set_port_admin_status\09\09\09\09"
module asm "\09.long\09__crc_mlx5_set_port_admin_status\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_set_port_admin_status:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_set_port_admin_status\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_set_port_admin_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mlx5_query_port_admin_status\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_query_port_admin_status\09\09\09\09"
module asm "\09.long\09__crc_mlx5_query_port_admin_status\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_query_port_admin_status:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_query_port_admin_status\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_query_port_admin_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mlx5_set_port_mtu\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_set_port_mtu\09\09\09\09"
module asm "\09.long\09__crc_mlx5_set_port_mtu\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_set_port_mtu:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_set_port_mtu\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_set_port_mtu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mlx5_query_port_max_mtu\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_query_port_max_mtu\09\09\09\09"
module asm "\09.long\09__crc_mlx5_query_port_max_mtu\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_query_port_max_mtu:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_query_port_max_mtu\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_query_port_max_mtu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mlx5_query_port_oper_mtu\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_query_port_oper_mtu\09\09\09\09"
module asm "\09.long\09__crc_mlx5_query_port_oper_mtu\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_query_port_oper_mtu:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_query_port_oper_mtu\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_query_port_oper_mtu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mlx5_query_module_eeprom\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_query_module_eeprom\09\09\09\09"
module asm "\09.long\09__crc_mlx5_query_module_eeprom\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_query_module_eeprom:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_query_module_eeprom\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_query_module_eeprom:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mlx5_query_module_eeprom_by_page\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_query_module_eeprom_by_page\09\09\09\09"
module asm "\09.long\09__crc_mlx5_query_module_eeprom_by_page\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_query_module_eeprom_by_page:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_query_module_eeprom_by_page\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_query_module_eeprom_by_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mlx5_query_port_vl_hw_cap\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_query_port_vl_hw_cap\09\09\09\09"
module asm "\09.long\09__crc_mlx5_query_port_vl_hw_cap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_query_port_vl_hw_cap:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_query_port_vl_hw_cap\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_query_port_vl_hw_cap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mlx5_core_query_ib_ppcnt\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_core_query_ib_ppcnt\09\09\09\09"
module asm "\09.long\09__crc_mlx5_core_query_ib_ppcnt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_core_query_ib_ppcnt:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_core_query_ib_ppcnt\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_core_query_ib_ppcnt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mlx5_set_port_pause\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_set_port_pause\09\09\09\09"
module asm "\09.long\09__crc_mlx5_set_port_pause\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_set_port_pause:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_set_port_pause\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_set_port_pause:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mlx5_query_port_pause\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_query_port_pause\09\09\09\09"
module asm "\09.long\09__crc_mlx5_query_port_pause\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_query_port_pause:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_query_port_pause\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_query_port_pause:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mlx5_set_port_pfc\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_set_port_pfc\09\09\09\09"
module asm "\09.long\09__crc_mlx5_set_port_pfc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_set_port_pfc:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_set_port_pfc\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_set_port_pfc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mlx5_query_port_pfc\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_query_port_pfc\09\09\09\09"
module asm "\09.long\09__crc_mlx5_query_port_pfc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_query_port_pfc:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_query_port_pfc\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_query_port_pfc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mlx5_set_port_prio_tc\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_set_port_prio_tc\09\09\09\09"
module asm "\09.long\09__crc_mlx5_set_port_prio_tc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_set_port_prio_tc:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_set_port_prio_tc\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_set_port_prio_tc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mlx5_query_port_prio_tc\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_query_port_prio_tc\09\09\09\09"
module asm "\09.long\09__crc_mlx5_query_port_prio_tc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_query_port_prio_tc:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_query_port_prio_tc\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_query_port_prio_tc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mlx5_set_port_tc_group\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_set_port_tc_group\09\09\09\09"
module asm "\09.long\09__crc_mlx5_set_port_tc_group\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_set_port_tc_group:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_set_port_tc_group\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_set_port_tc_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mlx5_query_port_tc_group\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_query_port_tc_group\09\09\09\09"
module asm "\09.long\09__crc_mlx5_query_port_tc_group\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_query_port_tc_group:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_query_port_tc_group\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_query_port_tc_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mlx5_set_port_tc_bw_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_set_port_tc_bw_alloc\09\09\09\09"
module asm "\09.long\09__crc_mlx5_set_port_tc_bw_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_set_port_tc_bw_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_set_port_tc_bw_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_set_port_tc_bw_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mlx5_query_port_tc_bw_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_query_port_tc_bw_alloc\09\09\09\09"
module asm "\09.long\09__crc_mlx5_query_port_tc_bw_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_query_port_tc_bw_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_query_port_tc_bw_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_query_port_tc_bw_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mlx5_modify_port_ets_rate_limit\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_modify_port_ets_rate_limit\09\09\09\09"
module asm "\09.long\09__crc_mlx5_modify_port_ets_rate_limit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_modify_port_ets_rate_limit:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_modify_port_ets_rate_limit\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_modify_port_ets_rate_limit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mlx5_query_port_ets_rate_limit\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_query_port_ets_rate_limit\09\09\09\09"
module asm "\09.long\09__crc_mlx5_query_port_ets_rate_limit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_query_port_ets_rate_limit:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_query_port_ets_rate_limit\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_query_port_ets_rate_limit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mlx5_set_port_wol\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_set_port_wol\09\09\09\09"
module asm "\09.long\09__crc_mlx5_set_port_wol\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_set_port_wol:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_set_port_wol\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_set_port_wol:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mlx5_query_port_wol\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_query_port_wol\09\09\09\09"
module asm "\09.long\09__crc_mlx5_query_port_wol\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_query_port_wol:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_query_port_wol\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_query_port_wol:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlx5_reg_pcap = type { i8, i8, [2 x i8], i32, i32, i32, i32 }
%struct.mlx5_module_eeprom_query_params = type { i16, i16, i16, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.109, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.109 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.128, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.151, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.128 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mlx5_core_sriov = type { ptr, i32, i16 }
%struct.mlx5_core_roce = type { ptr, ptr, ptr }
%struct.mlx5_fc_stats = type { %struct.spinlock, %struct.idr, %struct.list_head, %struct.llist_head, %struct.llist_head, ptr, %struct.delayed_work, i32, i32, ptr, i32, i32, i8, i32, %struct.mlx5_fc_pool }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.mlx5_fc_pool = type { ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32 }
%struct.mlx5_rl_table = type { %struct.mutex, i16, i32, i32, ptr, i64 }
%struct.mlx5_bfreg_data = type { %struct.mlx5_bfreg_head, %struct.mlx5_bfreg_head }
%struct.mlx5_bfreg_head = type { %struct.mutex, %struct.list_head }
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.129] }
%struct.anon.129 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.130 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.130 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.151 = type { %struct.mlx5_rsvd_gids, i32 }
%struct.mlx5_rsvd_gids = type { i32, i32, %struct.ida }
%struct.ida = type { %struct.xarray }
%struct.mlx5_clock = type { %struct.mlx5_nb, %struct.seqlock_t, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, %struct.mlx5_pps, %struct.mlx5_timer }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_pps = type { [8 x i8], %struct.work_struct, [8 x i64], i8 }
%struct.mlx5_timer = type { %struct.cyclecounter, %struct.timecounter, i32, i32, %struct.delayed_work }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }

@__kstrtab_mlx5_core_access_reg = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_core_access_reg = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_core_access_reg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_core_access_reg to i32), ptr @__kstrtab_mlx5_core_access_reg, ptr @__kstrtabns_mlx5_core_access_reg }, section "___ksymtab_gpl+mlx5_core_access_reg", align 4
@__kstrtab_mlx5_set_port_caps = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_set_port_caps = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_set_port_caps = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_set_port_caps to i32), ptr @__kstrtab_mlx5_set_port_caps, ptr @__kstrtabns_mlx5_set_port_caps }, section "___ksymtab_gpl+mlx5_set_port_caps", align 4
@__kstrtab_mlx5_query_port_ptys = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_query_port_ptys = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_query_port_ptys = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_query_port_ptys to i32), ptr @__kstrtab_mlx5_query_port_ptys, ptr @__kstrtabns_mlx5_query_port_ptys }, section "___ksymtab_gpl+mlx5_query_port_ptys", align 4
@__kstrtab_mlx5_query_ib_port_oper = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_query_ib_port_oper = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_query_ib_port_oper = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_query_ib_port_oper to i32), ptr @__kstrtab_mlx5_query_ib_port_oper, ptr @__kstrtabns_mlx5_query_ib_port_oper }, section "___ksymtab+mlx5_query_ib_port_oper", align 4
@__kstrtab_mlx5_toggle_port_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_toggle_port_link = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_toggle_port_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_toggle_port_link to i32), ptr @__kstrtab_mlx5_toggle_port_link, ptr @__kstrtabns_mlx5_toggle_port_link }, section "___ksymtab_gpl+mlx5_toggle_port_link", align 4
@__kstrtab_mlx5_set_port_admin_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_set_port_admin_status = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_set_port_admin_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_set_port_admin_status to i32), ptr @__kstrtab_mlx5_set_port_admin_status, ptr @__kstrtabns_mlx5_set_port_admin_status }, section "___ksymtab_gpl+mlx5_set_port_admin_status", align 4
@__kstrtab_mlx5_query_port_admin_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_query_port_admin_status = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_query_port_admin_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_query_port_admin_status to i32), ptr @__kstrtab_mlx5_query_port_admin_status, ptr @__kstrtabns_mlx5_query_port_admin_status }, section "___ksymtab_gpl+mlx5_query_port_admin_status", align 4
@__kstrtab_mlx5_set_port_mtu = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_set_port_mtu = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_set_port_mtu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_set_port_mtu to i32), ptr @__kstrtab_mlx5_set_port_mtu, ptr @__kstrtabns_mlx5_set_port_mtu }, section "___ksymtab_gpl+mlx5_set_port_mtu", align 4
@__kstrtab_mlx5_query_port_max_mtu = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_query_port_max_mtu = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_query_port_max_mtu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_query_port_max_mtu to i32), ptr @__kstrtab_mlx5_query_port_max_mtu, ptr @__kstrtabns_mlx5_query_port_max_mtu }, section "___ksymtab_gpl+mlx5_query_port_max_mtu", align 4
@__kstrtab_mlx5_query_port_oper_mtu = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_query_port_oper_mtu = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_query_port_oper_mtu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_query_port_oper_mtu to i32), ptr @__kstrtab_mlx5_query_port_oper_mtu, ptr @__kstrtabns_mlx5_query_port_oper_mtu }, section "___ksymtab_gpl+mlx5_query_port_oper_mtu", align 4
@mlx5_query_module_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 417, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s:%d:(pid %d): Module ID not recognized: 0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mlx5_query_module_eeprom\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/port.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_query_module_eeprom._entry_ptr = internal global ptr @mlx5_query_module_eeprom._entry, section ".printk_index", align 4
@__kstrtab_mlx5_query_module_eeprom = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_query_module_eeprom = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_query_module_eeprom = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_query_module_eeprom to i32), ptr @__kstrtab_mlx5_query_module_eeprom, ptr @__kstrtabns_mlx5_query_module_eeprom }, section "___ksymtab_gpl+mlx5_query_module_eeprom", align 4
@mlx5_query_module_eeprom_by_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.5, ptr @.str.2, i32 461, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mlx5_query_module_eeprom_by_page\00", [63 x i8] zeroinitializer }, align 32
@mlx5_query_module_eeprom_by_page._entry_ptr = internal global ptr @mlx5_query_module_eeprom_by_page._entry, section ".printk_index", align 4
@mlx5_query_module_eeprom_by_page._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.2, i32 467, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s:%d:(pid %d): I2C address not recognized: 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@mlx5_query_module_eeprom_by_page._entry_ptr.8 = internal global ptr @mlx5_query_module_eeprom_by_page._entry.6, section ".printk_index", align 4
@__kstrtab_mlx5_query_module_eeprom_by_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_query_module_eeprom_by_page = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_query_module_eeprom_by_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_query_module_eeprom_by_page to i32), ptr @__kstrtab_mlx5_query_module_eeprom_by_page, ptr @__kstrtabns_mlx5_query_module_eeprom_by_page }, section "___ksymtab_gpl+mlx5_query_module_eeprom_by_page", align 4
@__kstrtab_mlx5_query_port_vl_hw_cap = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_query_port_vl_hw_cap = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_query_port_vl_hw_cap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_query_port_vl_hw_cap to i32), ptr @__kstrtab_mlx5_query_port_vl_hw_cap, ptr @__kstrtabns_mlx5_query_port_vl_hw_cap }, section "___ksymtab_gpl+mlx5_query_port_vl_hw_cap", align 4
@__kstrtab_mlx5_core_query_ib_ppcnt = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_core_query_ib_ppcnt = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_core_query_ib_ppcnt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_core_query_ib_ppcnt to i32), ptr @__kstrtab_mlx5_core_query_ib_ppcnt, ptr @__kstrtabns_mlx5_core_query_ib_ppcnt }, section "___ksymtab_gpl+mlx5_core_query_ib_ppcnt", align 4
@__kstrtab_mlx5_set_port_pause = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_set_port_pause = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_set_port_pause = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_set_port_pause to i32), ptr @__kstrtab_mlx5_set_port_pause, ptr @__kstrtabns_mlx5_set_port_pause }, section "___ksymtab_gpl+mlx5_set_port_pause", align 4
@__kstrtab_mlx5_query_port_pause = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_query_port_pause = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_query_port_pause = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_query_port_pause to i32), ptr @__kstrtab_mlx5_query_port_pause, ptr @__kstrtabns_mlx5_query_port_pause }, section "___ksymtab_gpl+mlx5_query_port_pause", align 4
@__kstrtab_mlx5_set_port_pfc = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_set_port_pfc = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_set_port_pfc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_set_port_pfc to i32), ptr @__kstrtab_mlx5_set_port_pfc, ptr @__kstrtabns_mlx5_set_port_pfc }, section "___ksymtab_gpl+mlx5_set_port_pfc", align 4
@__kstrtab_mlx5_query_port_pfc = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_query_port_pfc = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_query_port_pfc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_query_port_pfc to i32), ptr @__kstrtab_mlx5_query_port_pfc, ptr @__kstrtabns_mlx5_query_port_pfc }, section "___ksymtab_gpl+mlx5_query_port_pfc", align 4
@__kstrtab_mlx5_set_port_prio_tc = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_set_port_prio_tc = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_set_port_prio_tc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_set_port_prio_tc to i32), ptr @__kstrtab_mlx5_set_port_prio_tc, ptr @__kstrtabns_mlx5_set_port_prio_tc }, section "___ksymtab_gpl+mlx5_set_port_prio_tc", align 4
@__kstrtab_mlx5_query_port_prio_tc = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_query_port_prio_tc = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_query_port_prio_tc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_query_port_prio_tc to i32), ptr @__kstrtab_mlx5_query_port_prio_tc, ptr @__kstrtabns_mlx5_query_port_prio_tc }, section "___ksymtab_gpl+mlx5_query_port_prio_tc", align 4
@__kstrtab_mlx5_set_port_tc_group = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_set_port_tc_group = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_set_port_tc_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_set_port_tc_group to i32), ptr @__kstrtab_mlx5_set_port_tc_group, ptr @__kstrtabns_mlx5_set_port_tc_group }, section "___ksymtab_gpl+mlx5_set_port_tc_group", align 4
@__kstrtab_mlx5_query_port_tc_group = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_query_port_tc_group = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_query_port_tc_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_query_port_tc_group to i32), ptr @__kstrtab_mlx5_query_port_tc_group, ptr @__kstrtabns_mlx5_query_port_tc_group }, section "___ksymtab_gpl+mlx5_query_port_tc_group", align 4
@__kstrtab_mlx5_set_port_tc_bw_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_set_port_tc_bw_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_set_port_tc_bw_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_set_port_tc_bw_alloc to i32), ptr @__kstrtab_mlx5_set_port_tc_bw_alloc, ptr @__kstrtabns_mlx5_set_port_tc_bw_alloc }, section "___ksymtab_gpl+mlx5_set_port_tc_bw_alloc", align 4
@__kstrtab_mlx5_query_port_tc_bw_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_query_port_tc_bw_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_query_port_tc_bw_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_query_port_tc_bw_alloc to i32), ptr @__kstrtab_mlx5_query_port_tc_bw_alloc, ptr @__kstrtabns_mlx5_query_port_tc_bw_alloc }, section "___ksymtab_gpl+mlx5_query_port_tc_bw_alloc", align 4
@__kstrtab_mlx5_modify_port_ets_rate_limit = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_modify_port_ets_rate_limit = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_modify_port_ets_rate_limit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_modify_port_ets_rate_limit to i32), ptr @__kstrtab_mlx5_modify_port_ets_rate_limit, ptr @__kstrtabns_mlx5_modify_port_ets_rate_limit }, section "___ksymtab_gpl+mlx5_modify_port_ets_rate_limit", align 4
@__kstrtab_mlx5_query_port_ets_rate_limit = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_query_port_ets_rate_limit = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_query_port_ets_rate_limit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_query_port_ets_rate_limit to i32), ptr @__kstrtab_mlx5_query_port_ets_rate_limit, ptr @__kstrtabns_mlx5_query_port_ets_rate_limit }, section "___ksymtab_gpl+mlx5_query_port_ets_rate_limit", align 4
@__kstrtab_mlx5_set_port_wol = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_set_port_wol = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_set_port_wol = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_set_port_wol to i32), ptr @__kstrtab_mlx5_set_port_wol, ptr @__kstrtabns_mlx5_set_port_wol }, section "___ksymtab_gpl+mlx5_set_port_wol", align 4
@__kstrtab_mlx5_query_port_wol = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_query_port_wol = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_query_port_wol = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_query_port_wol to i32), ptr @__kstrtab_mlx5_query_port_wol, ptr @__kstrtabns_mlx5_query_port_wol }, section "___ksymtab_gpl+mlx5_query_port_wol", align 4
@mlx5_query_module_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 304, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s:%d:(pid %d): query_mcia_reg failed: status: 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mlx5_query_module_id\00", [43 x i8] zeroinitializer }, align 32
@mlx5_query_module_id._entry_ptr = internal global ptr @mlx5_query_module_id._entry, section ".printk_index", align 4
@mlx5_query_mcia._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.11, ptr @.str.2, i32 382, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mlx5_query_mcia\00", [16 x i8] zeroinitializer }, align 32
@mlx5_query_mcia._entry_ptr = internal global ptr @mlx5_query_mcia._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 12, i64 13, i64 17]
@__sancov_gen_cov_switch_values.12 = internal global [7 x i64] [i64 5, i64 8, i64 3, i64 12, i64 13, i64 17, i64 27]
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 417, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 461, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 467, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 303, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private constant [50 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/port.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 381, i32 3 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__ksymtab_mlx5_core_access_reg, ptr @__ksymtab_mlx5_core_query_ib_ppcnt, ptr @__ksymtab_mlx5_modify_port_ets_rate_limit, ptr @__ksymtab_mlx5_query_ib_port_oper, ptr @__ksymtab_mlx5_query_module_eeprom, ptr @__ksymtab_mlx5_query_module_eeprom_by_page, ptr @__ksymtab_mlx5_query_port_admin_status, ptr @__ksymtab_mlx5_query_port_ets_rate_limit, ptr @__ksymtab_mlx5_query_port_max_mtu, ptr @__ksymtab_mlx5_query_port_oper_mtu, ptr @__ksymtab_mlx5_query_port_pause, ptr @__ksymtab_mlx5_query_port_pfc, ptr @__ksymtab_mlx5_query_port_prio_tc, ptr @__ksymtab_mlx5_query_port_ptys, ptr @__ksymtab_mlx5_query_port_tc_bw_alloc, ptr @__ksymtab_mlx5_query_port_tc_group, ptr @__ksymtab_mlx5_query_port_vl_hw_cap, ptr @__ksymtab_mlx5_query_port_wol, ptr @__ksymtab_mlx5_set_port_admin_status, ptr @__ksymtab_mlx5_set_port_caps, ptr @__ksymtab_mlx5_set_port_mtu, ptr @__ksymtab_mlx5_set_port_pause, ptr @__ksymtab_mlx5_set_port_pfc, ptr @__ksymtab_mlx5_set_port_prio_tc, ptr @__ksymtab_mlx5_set_port_tc_bw_alloc, ptr @__ksymtab_mlx5_set_port_tc_group, ptr @__ksymtab_mlx5_set_port_wol, ptr @__ksymtab_mlx5_toggle_port_link, ptr @mlx5_query_mcia._entry, ptr @mlx5_query_mcia._entry_ptr, ptr @mlx5_query_module_eeprom._entry, ptr @mlx5_query_module_eeprom._entry_ptr, ptr @mlx5_query_module_eeprom_by_page._entry, ptr @mlx5_query_module_eeprom_by_page._entry.6, ptr @mlx5_query_module_eeprom_by_page._entry_ptr, ptr @mlx5_query_module_eeprom_by_page._entry_ptr.8, ptr @mlx5_query_module_id._entry, ptr @mlx5_query_module_id._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_query_module_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_query_module_eeprom_by_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_query_module_eeprom_by_page._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_query_module_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_query_mcia._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_core_access_reg(ptr noundef %dev, ptr nocapture noundef readonly %data_in, i32 noundef %size_in, ptr nocapture noundef writeonly %data_out, i32 noundef %size_out, i16 noundef zeroext %reg_id, i32 noundef %arg, i32 noundef %write) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %size_out, 16
  %add1 = add i32 %size_in, 16
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %add1, i32 noundef 3520, i32 noundef -1) #12
  %call.i.i76 = tail call noalias ptr @kvmalloc_node(i32 noundef %add, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not = icmp eq ptr %call.i.i, null
  %tobool3.not = icmp eq ptr %call.i.i76, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %entry.out55_crit_edge, label %if.end

entry.out55_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out55

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 16
  %0 = call ptr @memcpy(ptr %add.ptr, ptr %data_in, i32 %size_in)
  %1 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call.i.i, align 4
  %and = and i32 %2, 65535
  %or = or i32 %and, 134545408
  store i32 %or, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool12.not = icmp eq i32 %write, 0
  %lnot.ext = zext i1 %tobool12.not to i32
  %add.ptr16 = getelementptr i32, ptr %call.i.i, i32 1
  %3 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr16, align 4
  %and17 = and i32 %4, -65536
  %or20 = or i32 %and17, %lnot.ext
  store i32 %or20, ptr %add.ptr16, align 4
  %add.ptr29 = getelementptr i32, ptr %call.i.i, i32 3
  %5 = ptrtoint ptr %add.ptr29 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %arg, ptr %add.ptr29, align 4
  %conv = zext i16 %reg_id to i32
  %add.ptr42 = getelementptr i32, ptr %call.i.i, i32 2
  %6 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr42, align 4
  %and43 = and i32 %7, -65536
  %or46 = or i32 %and43, %conv
  store i32 %or46, ptr %add.ptr42, align 4
  %call50 = tail call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %call.i.i, i32 noundef %add1, ptr noundef nonnull %call.i.i76, i32 noundef %add) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end.out55_crit_edge

if.end.out55_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out55

if.end53:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr54 = getelementptr i8, ptr %call.i.i76, i32 16
  %8 = call ptr @memcpy(ptr %data_out, ptr %add.ptr54, i32 %size_out)
  br label %out55

out55:                                            ; preds = %if.end53, %if.end.out55_crit_edge, %entry.out55_crit_edge
  %err.0 = phi i32 [ %call50, %if.end.out55_crit_edge ], [ 0, %if.end53 ], [ -12, %entry.out55_crit_edge ]
  tail call void @kvfree(ptr noundef %call.i.i76) #9
  tail call void @kvfree(ptr noundef %call.i.i) #9
  ret i32 %err.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_query_pcam_reg(ptr noundef %dev, ptr nocapture noundef writeonly %pcam, i8 noundef zeroext %feature_group, i8 noundef zeroext %access_reg_group) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [20 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %in) #9
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 76)
  %conv = zext i8 %feature_group to i32
  %shl = shl nuw nsw i32 %conv, 16
  %conv9 = zext i8 %access_reg_group to i32
  %or18 = or i32 %shl, %conv9
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or18, ptr %in, align 4
  %call = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 80, ptr noundef %pcam, i32 noundef 80, i16 noundef zeroext 20607, i32 noundef 0, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %in) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_query_mcam_reg(ptr noundef %dev, ptr nocapture noundef writeonly %mcam, i8 noundef zeroext %feature_group, i8 noundef zeroext %access_reg_group) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [18 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %in) #9
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 68)
  %conv = zext i8 %feature_group to i32
  %shl = shl nuw nsw i32 %conv, 16
  %conv9 = zext i8 %access_reg_group to i32
  %or18 = or i32 %shl, %conv9
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or18, ptr %in, align 4
  %call = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 72, ptr noundef %mcam, i32 noundef 72, i16 noundef zeroext -28545, i32 noundef 0, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %in) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_query_qcam_reg(ptr noundef %mdev, ptr nocapture noundef writeonly %qcam, i8 noundef zeroext %feature_group, i8 noundef zeroext %access_reg_group) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [18 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %in) #9
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 68)
  %conv = zext i8 %feature_group to i32
  %shl = shl nuw nsw i32 %conv, 16
  %conv9 = zext i8 %access_reg_group to i32
  %or18 = or i32 %shl, %conv9
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or18, ptr %in, align 4
  %call = call i32 @mlx5_core_access_reg(ptr noundef %mdev, ptr noundef nonnull %in, i32 noundef 72, ptr noundef %qcam, i32 noundef 72, i16 noundef zeroext 16409, i32 noundef 0, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %in) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_set_port_caps(ptr noundef %dev, i8 noundef zeroext %port_num, i32 noundef %caps) #0 align 64 {
entry:
  %in = alloca %struct.mlx5_reg_pcap, align 4
  %out = alloca %struct.mlx5_reg_pcap, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %in) #9
  %0 = getelementptr inbounds %struct.mlx5_reg_pcap, ptr %in, i32 0, i32 1
  %1 = getelementptr inbounds %struct.mlx5_reg_pcap, ptr %in, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %out) #9
  %2 = call ptr @memset(ptr %in, i32 0, i32 20)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %caps, ptr %1, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %port_num, ptr %0, align 1
  %call = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 20, ptr noundef nonnull %out, i32 noundef 20, i16 noundef zeroext 20481, i32 noundef 0, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %out) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %in) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_query_port_ptys(ptr noundef %dev, ptr nocapture noundef writeonly %ptys, i32 noundef %ptys_size, i32 noundef %proto_mask, i8 noundef zeroext %local_port) #0 align 64 {
entry:
  %in = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %in) #9
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 60)
  %conv = zext i8 %local_port to i32
  %shl = shl nuw nsw i32 %conv, 16
  %and15 = and i32 %proto_mask, 7
  %or17 = or i32 %shl, %and15
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or17, ptr %in, align 4
  %call = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 64, ptr noundef %ptys, i32 noundef %ptys_size, i16 noundef zeroext 20484, i32 noundef 0, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_set_port_beacon(ptr noundef %dev, i16 noundef zeroext %beacon_duration) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [3 x i32], align 4
  %out = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %in) #9
  %0 = getelementptr inbounds i8, ptr %in, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %out) #9
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 65536, ptr %in, align 4
  %conv = zext i16 %beacon_duration to i32
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 1
  %3 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %add.ptr13, align 4
  %call = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 12, ptr noundef nonnull %out, i32 noundef 12, i16 noundef zeroext -28629, i32 noundef 0, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %out) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %in) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_query_ib_port_oper(ptr noundef %dev, ptr nocapture noundef writeonly %link_width_oper, ptr nocapture noundef writeonly %proto_oper, i8 noundef zeroext %local_port) #0 align 64 {
entry:
  %in.i = alloca [16 x i32], align 4
  %out = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %out) #9
  %0 = call ptr @memset(ptr %out, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %in.i) #9
  %1 = getelementptr inbounds i8, ptr %in.i, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 60)
  %conv.i = zext i8 %local_port to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %or17.i = or i32 %shl.i, 1
  %3 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or17.i, ptr %in.i, align 4
  %call.i = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %in.i, i32 noundef 64, ptr noundef nonnull %out, i32 noundef 64, i16 noundef zeroext 20484, i32 noundef 0, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr inbounds i32, ptr %out, i32 10
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %shr = lshr i32 %5, 16
  %conv = trunc i32 %shr to i16
  %6 = ptrtoint ptr %link_width_oper to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %link_width_oper, align 2
  %conv6 = trunc i32 %5 to i16
  %7 = ptrtoint ptr %proto_oper to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv6, ptr %proto_oper, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_toggle_port_link(ptr noundef %dev) #0 align 64 {
entry:
  %in.i8 = alloca [4 x i32], align 4
  %out.i9 = alloca [4 x i32], align 4
  %in.i5 = alloca [4 x i32], align 4
  %out.i6 = alloca [4 x i32], align 4
  %in.i = alloca [4 x i32], align 4
  %out.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #9
  %0 = getelementptr inbounds i8, ptr %in.i, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i) #9
  %2 = call ptr @memset(ptr %out.i, i32 255, i32 16)
  %3 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 65536, ptr %in.i, align 4
  %call.i = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %out.i, i32 noundef 16, i16 noundef zeroext 20486, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.mlx5_query_port_admin_status.exit_crit_edge

entry.mlx5_query_port_admin_status.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_query_port_admin_status.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %out.i, align 4
  %6 = and i32 %5, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %6)
  %phi.cmp = icmp eq i32 %6, 256
  br label %mlx5_query_port_admin_status.exit

mlx5_query_port_admin_status.exit:                ; preds = %if.end.i, %entry.mlx5_query_port_admin_status.exit_crit_edge
  %ps.0 = phi i1 [ %phi.cmp, %if.end.i ], [ false, %entry.mlx5_query_port_admin_status.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i5) #9
  %7 = getelementptr inbounds i8, ptr %in.i5, i32 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 0, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i6) #9
  %9 = ptrtoint ptr %in.i5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 66048, ptr %in.i5, align 4
  %add.ptr28.i = getelementptr inbounds i32, ptr %in.i5, i32 1
  %10 = ptrtoint ptr %add.ptr28.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -2147483648, ptr %add.ptr28.i, align 4
  %call.i7 = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %in.i5, i32 noundef 16, ptr noundef nonnull %out.i6, i32 noundef 16, i16 noundef zeroext 20486, i32 noundef 0, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i6) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i5) #9
  br i1 %ps.0, label %if.then, label %mlx5_query_port_admin_status.exit.if.end_crit_edge

mlx5_query_port_admin_status.exit.if.end_crit_edge: ; preds = %mlx5_query_port_admin_status.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %mlx5_query_port_admin_status.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i8) #9
  %11 = getelementptr inbounds i8, ptr %in.i8, i32 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 0, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i9) #9
  %13 = ptrtoint ptr %in.i8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 65792, ptr %in.i8, align 4
  %add.ptr28.i10 = getelementptr inbounds i32, ptr %in.i8, i32 1
  %14 = ptrtoint ptr %add.ptr28.i10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -2147483648, ptr %add.ptr28.i10, align 4
  %call.i11 = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %in.i8, i32 noundef 16, ptr noundef nonnull %out.i9, i32 noundef 16, i16 noundef zeroext 20486, i32 noundef 0, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i9) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i8) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %mlx5_query_port_admin_status.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_query_port_admin_status(ptr noundef %dev, ptr nocapture noundef writeonly %status) #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  %out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #9
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #9
  %2 = call ptr @memset(ptr %out, i32 255, i32 16)
  %3 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 65536, ptr %in, align 4
  %call = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %out, i32 noundef 16, i16 noundef zeroext 20486, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %out, align 4
  %shr = lshr i32 %5, 8
  %and11 = and i32 %shr, 15
  %6 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and11, ptr %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_set_port_admin_status(ptr noundef %dev, i32 noundef %status) #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  %out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #9
  %0 = getelementptr inbounds i8, ptr %in, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 0, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #9
  %and15 = shl i32 %status, 8
  %shl16 = and i32 %and15, 3840
  %or17 = or i32 %shl16, 65536
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or17, ptr %in, align 4
  %add.ptr28 = getelementptr inbounds i32, ptr %in, i32 1
  %3 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -2147483648, ptr %add.ptr28, align 4
  %call = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %out, i32 noundef 16, i16 noundef zeroext 20486, i32 noundef 0, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_set_port_mtu(ptr noundef %dev, i16 noundef zeroext %mtu, i8 noundef zeroext %port) #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  %out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #9
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #9
  %conv = zext i16 %mtu to i32
  %add.ptr = getelementptr inbounds i32, ptr %in, i32 2
  %shl = shl nuw i32 %conv, 16
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %shl, ptr %add.ptr, align 4
  %conv9 = zext i8 %port to i32
  %shl17 = shl nuw nsw i32 %conv9, 16
  %3 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shl17, ptr %in, align 4
  %call = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %out, i32 noundef 16, i16 noundef zeroext 20483, i32 noundef 0, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_query_port_max_mtu(ptr noundef %dev, ptr noundef writeonly %max_mtu, i8 noundef zeroext %port) #0 align 64 {
entry:
  %in.i = alloca [4 x i32], align 4
  %out.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #9
  %0 = getelementptr inbounds i8, ptr %in.i, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i) #9
  %conv.i = zext i8 %port to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %2 = call ptr @memset(ptr %out.i, i32 255, i32 16)
  %3 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shl.i, ptr %in.i, align 4
  %call.i = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %out.i, i32 noundef 16, i16 noundef zeroext 20483, i32 noundef 0, i32 noundef 0) #9
  %tobool.not.i = icmp eq ptr %max_mtu, null
  br i1 %tobool.not.i, label %entry.mlx5_query_port_mtu.exit_crit_edge, label %if.then.i

entry.mlx5_query_port_mtu.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_query_port_mtu.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = getelementptr inbounds [4 x i32], ptr %out.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %shr.i = lshr i32 %6, 16
  %conv12.i = trunc i32 %shr.i to i16
  %7 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv12.i, ptr %max_mtu, align 2
  br label %mlx5_query_port_mtu.exit

mlx5_query_port_mtu.exit:                         ; preds = %if.then.i, %entry.mlx5_query_port_mtu.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_query_port_oper_mtu(ptr noundef %dev, ptr noundef writeonly %oper_mtu, i8 noundef zeroext %port) #0 align 64 {
entry:
  %in.i = alloca [4 x i32], align 4
  %out.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #9
  %0 = getelementptr inbounds i8, ptr %in.i, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i) #9
  %conv.i = zext i8 %port to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %2 = call ptr @memset(ptr %out.i, i32 255, i32 16)
  %3 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shl.i, ptr %in.i, align 4
  %call.i = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %out.i, i32 noundef 16, i16 noundef zeroext 20483, i32 noundef 0, i32 noundef 0) #9
  %tobool13.not.i = icmp eq ptr %oper_mtu, null
  br i1 %tobool13.not.i, label %entry.mlx5_query_port_mtu.exit_crit_edge, label %if.then14.i

entry.mlx5_query_port_mtu.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_query_port_mtu.exit

if.then14.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = getelementptr inbounds [4 x i32], ptr %out.i, i32 0, i32 3
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %shr17.i = lshr i32 %6, 16
  %conv19.i = trunc i32 %shr17.i to i16
  %7 = ptrtoint ptr %oper_mtu to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv19.i, ptr %oper_mtu, align 2
  br label %mlx5_query_port_mtu.exit

mlx5_query_port_mtu.exit:                         ; preds = %if.then14.i, %entry.mlx5_query_port_mtu.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_query_module_eeprom(ptr noundef %dev, i16 noundef zeroext %offset, i16 noundef zeroext %size, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  %in.i30 = alloca [16 x i32], align 4
  %out.i31 = alloca [16 x i32], align 4
  %in.i = alloca [16 x i32], align 4
  %out.i = alloca [16 x i32], align 4
  %query = alloca %struct.mlx5_module_eeprom_query_params, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %query) #9
  %0 = call ptr @memset(ptr %query, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %in.i) #9
  %1 = getelementptr inbounds i8, ptr %in.i, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 60)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %out.i) #9
  %3 = call ptr @memset(ptr %out.i, i32 255, i32 64)
  %4 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 65536, ptr %in.i, align 4
  %call.i = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %in.i, i32 noundef 64, ptr noundef nonnull %out.i, i32 noundef 64, i16 noundef zeroext 20482, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %mlx5_query_module_num.exit

mlx5_query_module_num.exit:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out.i) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %module_number = getelementptr inbounds %struct.mlx5_module_eeprom_query_params, ptr %query, i32 0, i32 5
  %add.ptr10.i = getelementptr inbounds i32, ptr %out.i, i32 1
  %5 = ptrtoint ptr %add.ptr10.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr10.i, align 4
  %and12.i = and i32 %6, 255
  %7 = ptrtoint ptr %module_number to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and12.i, ptr %module_number, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out.i) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in.i) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %in.i30) #9
  %8 = getelementptr inbounds i8, ptr %in.i30, i32 12
  %9 = call ptr @memset(ptr %8, i32 0, i32 52)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %out.i31) #9
  %10 = call ptr @memset(ptr %out.i31, i32 255, i32 64)
  %add.ptr.i = getelementptr inbounds i32, ptr %in.i30, i32 1
  %and15.i = shl nuw nsw i32 %and12.i, 16
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1342177280, ptr %add.ptr.i, align 4
  %add.ptr58.i = getelementptr inbounds i32, ptr %in.i30, i32 2
  %12 = ptrtoint ptr %add.ptr58.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %add.ptr58.i, align 4
  %13 = ptrtoint ptr %in.i30 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and15.i, ptr %in.i30, align 4
  %call.i32 = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %in.i30, i32 noundef 64, ptr noundef nonnull %out.i31, i32 noundef 64, i16 noundef zeroext -28652, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %tobool.not.i33 = icmp eq i32 %call.i32, 0
  br i1 %tobool.not.i33, label %if.end.i34, label %if.end.mlx5_query_module_id.exit.thread_crit_edge

if.end.mlx5_query_module_id.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_query_module_id.exit.thread

if.end.i34:                                       ; preds = %if.end
  %14 = ptrtoint ptr %out.i31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %out.i31, align 4
  %and86.i = and i32 %15, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86.i)
  %tobool87.not.i = icmp eq i32 %and86.i, 0
  br i1 %tobool87.not.i, label %if.end5, label %do.end91.i

do.end91.i:                                       ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  %18 = tail call i32 @llvm.read_register.i32(metadata !81) #9
  %and.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 68
  %22 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 304, i32 noundef %23, i32 noundef %and86.i) #13
  br label %mlx5_query_module_id.exit.thread

mlx5_query_module_id.exit.thread:                 ; preds = %do.end91.i, %if.end.mlx5_query_module_id.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i32, %if.end.mlx5_query_module_id.exit.thread_crit_edge ], [ -5, %do.end91.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out.i31) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in.i30) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end.i34
  %add.ptr95.i = getelementptr inbounds i8, ptr %out.i31, i32 16
  %24 = ptrtoint ptr %add.ptr95.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %add.ptr95.i, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out.i31) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in.i30) #9
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i8 %25, label %do.end [
    i8 3, label %sw.bb
    i8 12, label %if.end5.sw.bb6_crit_edge
    i8 13, label %if.end5.sw.bb6_crit_edge44
    i8 17, label %if.end5.sw.bb6_crit_edge45
  ]

if.end5.sw.bb6_crit_edge45:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb6

if.end5.sw.bb6_crit_edge44:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb6

if.end5.sw.bb6_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb6

sw.bb:                                            ; preds = %if.end5
  %i2c_address = getelementptr inbounds %struct.mlx5_module_eeprom_query_params, ptr %query, i32 0, i32 2
  %page = getelementptr inbounds %struct.mlx5_module_eeprom_query_params, ptr %query, i32 0, i32 3
  %27 = ptrtoint ptr %i2c_address to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 80, ptr %i2c_address, align 4
  %28 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %offset)
  %cmp.i = icmp ult i16 %offset, 256
  br i1 %cmp.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i35

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.i35:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %i2c_address to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 81, ptr %i2c_address, align 4
  %sub.i = add i16 %offset, -256
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end5.sw.bb6_crit_edge, %if.end5.sw.bb6_crit_edge44, %if.end5.sw.bb6_crit_edge45
  %i2c_address7 = getelementptr inbounds %struct.mlx5_module_eeprom_query_params, ptr %query, i32 0, i32 2
  %page8 = getelementptr inbounds %struct.mlx5_module_eeprom_query_params, ptr %query, i32 0, i32 3
  %30 = ptrtoint ptr %i2c_address7 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 80, ptr %i2c_address7, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %offset)
  %cmp.i.i = icmp ult i16 %offset, 256
  %conv.i.i = zext i16 %offset to i32
  %sub.i.i = add nsw i32 %conv.i.i, -256
  %div.i.i = sdiv i32 %sub.i.i, 128
  %add.i.i = add nsw i32 %div.i.i, 1
  %retval.0.i.i = select i1 %cmp.i.i, i32 0, i32 %add.i.i
  %31 = ptrtoint ptr %page8 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %retval.0.i.i, ptr %page8, align 4
  %retval.0.i.tr.i = trunc i32 %retval.0.i.i to i16
  %.neg.i = mul i16 %retval.0.i.tr.i, -128
  %conv2.i = add i16 %.neg.i, %offset
  br label %sw.epilog

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %25 to i32
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 8
  %34 = tail call i32 @llvm.read_register.i32(metadata !81) #9
  %and.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 68
  %38 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 417, i32 noundef %39, i32 noundef %conv) #13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb6, %if.end.i35, %sw.bb.sw.epilog_crit_edge
  %offset.addr.1 = phi i16 [ %conv2.i, %sw.bb6 ], [ %offset, %sw.bb.sw.epilog_crit_edge ], [ %sub.i, %if.end.i35 ]
  %conv11 = zext i16 %offset.addr.1 to i32
  %conv12 = zext i16 %size to i32
  %add = add nuw nsw i32 %conv11, %conv12
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add)
  %cmp = icmp ugt i32 %add, 256
  %sub = sub i16 256, %offset.addr.1
  %spec.select = select i1 %cmp, i16 %sub, i16 %size
  %40 = ptrtoint ptr %query to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %spec.select, ptr %query, align 4
  %offset19 = getelementptr inbounds %struct.mlx5_module_eeprom_query_params, ptr %query, i32 0, i32 1
  %41 = ptrtoint ptr %offset19 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %offset.addr.1, ptr %offset19, align 2
  %call20 = call fastcc i32 @mlx5_query_mcia(ptr noundef %dev, ptr noundef nonnull %query, ptr noundef %data)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end, %mlx5_query_module_id.exit.thread, %mlx5_query_module_num.exit
  %retval.0 = phi i32 [ -22, %do.end ], [ %call20, %sw.epilog ], [ %call.i, %mlx5_query_module_num.exit ], [ %retval.0.i.ph, %mlx5_query_module_id.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %query) #9
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_query_mcia(ptr noundef %dev, ptr nocapture noundef readonly %params, ptr nocapture noundef writeonly %data) unnamed_addr #0 align 64 {
entry:
  %in = alloca [16 x i32], align 4
  %out = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %in) #9
  %0 = getelementptr inbounds i8, ptr %in, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 52)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %out) #9
  %2 = call ptr @memset(ptr %out, i32 255, i32 64)
  %3 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %params, align 4
  %5 = tail call i16 @llvm.umin.i16(i16 %4, i16 32)
  %cond = zext i16 %5 to i32
  %add.ptr17 = getelementptr inbounds i32, ptr %in, i32 2
  %6 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %add.ptr17, align 4
  %module_number = getelementptr inbounds %struct.mlx5_module_eeprom_query_params, ptr %params, i32 0, i32 5
  %7 = ptrtoint ptr %module_number to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %module_number, align 4
  %and34 = shl i32 %8, 16
  %shl35 = and i32 %and34, 16711680
  %9 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shl35, ptr %in, align 4
  %offset = getelementptr inbounds %struct.mlx5_module_eeprom_query_params, ptr %params, i32 0, i32 1
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %offset, align 2
  %conv43 = zext i16 %11 to i32
  %add.ptr48 = getelementptr inbounds i32, ptr %in, i32 1
  %page = getelementptr inbounds %struct.mlx5_module_eeprom_query_params, ptr %params, i32 0, i32 3
  %12 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %page, align 4
  %and65 = shl i32 %13, 16
  %shl66 = and i32 %and65, 16711680
  %or67 = or i32 %shl66, %conv43
  %i2c_address = getelementptr inbounds %struct.mlx5_module_eeprom_query_params, ptr %params, i32 0, i32 2
  %14 = ptrtoint ptr %i2c_address to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %i2c_address, align 4
  %and81 = zext i16 %15 to i32
  %shl82 = shl i32 %and81, 24
  %or83 = or i32 %or67, %shl82
  %16 = ptrtoint ptr %add.ptr48 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or83, ptr %add.ptr48, align 4
  %call = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 64, ptr noundef nonnull %out, i32 noundef 64, i16 noundef zeroext -28652, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %17 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %out, align 4
  %and92 = and i32 %18, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.end99, label %do.end97

do.end97:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  %21 = tail call i32 @llvm.read_register.i32(metadata !81) #9
  %and.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 68
  %25 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11, i32 noundef 382, i32 noundef %26, i32 noundef %and92) #13
  br label %cleanup

if.end99:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr101 = getelementptr inbounds i8, ptr %out, i32 16
  %27 = call ptr @memcpy(ptr %data, ptr %add.ptr101, i32 %cond)
  br label %cleanup

cleanup:                                          ; preds = %if.end99, %do.end97, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end97 ], [ %cond, %if.end99 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_query_module_eeprom_by_page(ptr noundef %dev, ptr nocapture noundef %params, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  %in.i51 = alloca [16 x i32], align 4
  %out.i52 = alloca [16 x i32], align 4
  %in.i = alloca [16 x i32], align 4
  %out.i = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %in.i) #9
  %0 = getelementptr inbounds i8, ptr %in.i, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 60)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %out.i) #9
  %2 = call ptr @memset(ptr %out.i, i32 255, i32 64)
  %3 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 65536, ptr %in.i, align 4
  %call.i = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %in.i, i32 noundef 64, ptr noundef nonnull %out.i, i32 noundef 64, i16 noundef zeroext 20482, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %mlx5_query_module_num.exit

mlx5_query_module_num.exit:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out.i) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %module_number = getelementptr inbounds %struct.mlx5_module_eeprom_query_params, ptr %params, i32 0, i32 5
  %add.ptr10.i = getelementptr inbounds i32, ptr %out.i, i32 1
  %4 = ptrtoint ptr %add.ptr10.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr10.i, align 4
  %and12.i = and i32 %5, 255
  %6 = ptrtoint ptr %module_number to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and12.i, ptr %module_number, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out.i) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in.i) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %in.i51) #9
  %7 = getelementptr inbounds i8, ptr %in.i51, i32 12
  %8 = call ptr @memset(ptr %7, i32 0, i32 52)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %out.i52) #9
  %9 = call ptr @memset(ptr %out.i52, i32 255, i32 64)
  %add.ptr.i = getelementptr inbounds i32, ptr %in.i51, i32 1
  %and15.i = shl nuw nsw i32 %and12.i, 16
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1342177280, ptr %add.ptr.i, align 4
  %add.ptr58.i = getelementptr inbounds i32, ptr %in.i51, i32 2
  %11 = ptrtoint ptr %add.ptr58.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %add.ptr58.i, align 4
  %12 = ptrtoint ptr %in.i51 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and15.i, ptr %in.i51, align 4
  %call.i53 = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %in.i51, i32 noundef 64, ptr noundef nonnull %out.i52, i32 noundef 64, i16 noundef zeroext -28652, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53)
  %tobool.not.i54 = icmp eq i32 %call.i53, 0
  br i1 %tobool.not.i54, label %if.end.i55, label %if.end.mlx5_query_module_id.exit.thread_crit_edge

if.end.mlx5_query_module_id.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_query_module_id.exit.thread

if.end.i55:                                       ; preds = %if.end
  %13 = ptrtoint ptr %out.i52 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %out.i52, align 4
  %and86.i = and i32 %14, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86.i)
  %tobool87.not.i = icmp eq i32 %and86.i, 0
  br i1 %tobool87.not.i, label %if.end5, label %do.end91.i

do.end91.i:                                       ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  %17 = tail call i32 @llvm.read_register.i32(metadata !81) #9
  %and.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 68
  %21 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 304, i32 noundef %22, i32 noundef %and86.i) #13
  br label %mlx5_query_module_id.exit.thread

mlx5_query_module_id.exit.thread:                 ; preds = %do.end91.i, %if.end.mlx5_query_module_id.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i53, %if.end.mlx5_query_module_id.exit.thread_crit_edge ], [ -5, %do.end91.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out.i52) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in.i51) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end.i55
  %add.ptr95.i = getelementptr inbounds i8, ptr %out.i52, i32 16
  %23 = ptrtoint ptr %add.ptr95.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %add.ptr95.i, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out.i52) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in.i51) #9
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %24, label %do.end [
    i8 3, label %sw.bb
    i8 12, label %if.end5.sw.bb9_crit_edge
    i8 17, label %if.end5.sw.bb9_crit_edge60
    i8 13, label %if.end5.sw.bb9_crit_edge61
    i8 27, label %if.end5.sw.epilog_crit_edge
  ]

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end5.sw.bb9_crit_edge61:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb9

if.end5.sw.bb9_crit_edge60:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb9

if.end5.sw.bb9_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb9

sw.bb:                                            ; preds = %if.end5
  %page = getelementptr inbounds %struct.mlx5_module_eeprom_query_params, ptr %params, i32 0, i32 3
  %26 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.not = icmp eq i32 %27, 0
  br i1 %cmp.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end5.sw.bb9_crit_edge, %if.end5.sw.bb9_crit_edge60, %if.end5.sw.bb9_crit_edge61
  %page10 = getelementptr inbounds %struct.mlx5_module_eeprom_query_params, ptr %params, i32 0, i32 3
  %28 = ptrtoint ptr %page10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %page10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %29)
  %cmp11 = icmp ugt i32 %29, 3
  br i1 %cmp11, label %sw.bb9.cleanup_crit_edge, label %sw.bb9.sw.epilog_crit_edge

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %24 to i32
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 8
  %32 = tail call i32 @llvm.read_register.i32(metadata !81) #9
  %and.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 68
  %36 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 461, i32 noundef %37, i32 noundef %conv) #13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb9.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end5.sw.epilog_crit_edge
  %i2c_address = getelementptr inbounds %struct.mlx5_module_eeprom_query_params, ptr %params, i32 0, i32 2
  %38 = ptrtoint ptr %i2c_address to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %i2c_address, align 4
  %40 = and i16 %39, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 80, i16 %40)
  %switch = icmp eq i16 %40, 80
  br i1 %switch, label %if.end34, label %do.end27

do.end27:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %conv17 = zext i16 %39 to i32
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 8
  %43 = tail call i32 @llvm.read_register.i32(metadata !81) #9
  %and.i56 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i56 to ptr
  %task30 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task30 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task30, align 8
  %pid31 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 68
  %47 = ptrtoint ptr %pid31 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pid31, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef 467, i32 noundef %48, i32 noundef %conv17) #13
  br label %cleanup

if.end34:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %call35 = tail call fastcc i32 @mlx5_query_mcia(ptr noundef %dev, ptr noundef %params, ptr noundef %data)
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %do.end27, %do.end, %sw.bb9.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %mlx5_query_module_id.exit.thread, %mlx5_query_module_num.exit
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end27 ], [ %call35, %if.end34 ], [ %call.i, %mlx5_query_module_num.exit ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb9.cleanup_crit_edge ], [ %retval.0.i.ph, %mlx5_query_module_id.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_query_port_vl_hw_cap(ptr noundef %dev, ptr nocapture noundef writeonly %vl_hw_cap, i8 noundef zeroext %local_port) #0 align 64 {
entry:
  %in.i = alloca [4 x i32], align 4
  %out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #9
  %0 = call ptr @memset(ptr %out, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #9
  %1 = getelementptr inbounds i8, ptr %in.i, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 12)
  %conv.i = zext i8 %local_port to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %3 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shl.i, ptr %in.i, align 4
  %call.i = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %out, i32 noundef 16, i16 noundef zeroext 20495, i32 noundef 0, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = getelementptr inbounds [4 x i32], ptr %out, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %7 = trunc i32 %6 to i8
  %conv = and i8 %7, 15
  %8 = ptrtoint ptr %vl_hw_cap to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %vl_hw_cap, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_core_query_ib_ppcnt(ptr noundef %dev, i8 noundef zeroext %port_num, ptr nocapture noundef writeonly %out, i32 noundef %sz) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %sz, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %port_num to i32
  %0 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call.i.i, align 4
  %and = and i32 %1, -16711744
  %shl = shl nuw nsw i32 %conv, 16
  %or = or i32 %and, %shl
  %or15 = or i32 %or, 32
  store i32 %or15, ptr %call.i.i, align 4
  %call19 = tail call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %call.i.i, i32 noundef %sz, ptr noundef %out, i32 noundef %sz, i16 noundef zeroext 20488, i32 noundef 0, i32 noundef 0)
  tail call void @kvfree(ptr noundef nonnull %call.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %do.body ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_set_port_pause(ptr noundef %dev, i32 noundef %rx_pause, i32 noundef %tx_pause) #0 align 64 {
entry:
  %in = alloca [8 x i32], align 4
  %out = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %in) #9
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %out) #9
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 65536, ptr %in, align 4
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 2
  %shl16 = shl i32 %tx_pause, 31
  %3 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shl16, ptr %add.ptr13, align 4
  %add.ptr28 = getelementptr inbounds i32, ptr %in, i32 3
  %shl31 = shl i32 %rx_pause, 31
  %4 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shl31, ptr %add.ptr28, align 4
  %call = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 32, ptr noundef nonnull %out, i32 noundef 32, i16 noundef zeroext 20487, i32 noundef 0, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %out) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %in) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_query_port_pause(ptr noundef %dev, ptr noundef writeonly %rx_pause, ptr noundef writeonly %tx_pause) #0 align 64 {
entry:
  %in.i = alloca [8 x i32], align 4
  %out = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %out) #9
  %0 = getelementptr inbounds [8 x i32], ptr %out, i32 0, i32 2
  %1 = getelementptr inbounds [8 x i32], ptr %out, i32 0, i32 3
  %2 = call ptr @memset(ptr %out, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %in.i) #9
  %3 = getelementptr inbounds i8, ptr %in.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 28)
  %5 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 65536, ptr %in.i, align 4
  %call.i = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %in.i, i32 noundef 32, ptr noundef nonnull %out, i32 noundef 32, i16 noundef zeroext 20487, i32 noundef 0, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %in.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %rx_pause, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %shr = lshr i32 %7, 31
  %8 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shr, ptr %rx_pause, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %tobool5.not = icmp eq ptr %tx_pause, null
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.then6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %0, align 4
  %shr9 = lshr i32 %10, 31
  %11 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shr9, ptr %tx_pause, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %out) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_set_port_stall_watermark(ptr noundef %dev, i16 noundef zeroext %stall_critical_watermark, i16 noundef zeroext %stall_minor_watermark) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [8 x i32], align 4
  %out = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %in) #9
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %out) #9
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 2
  %2 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 536870912, ptr %add.ptr13, align 4
  %add.ptr28 = getelementptr inbounds i32, ptr %in, i32 3
  %3 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 536870912, ptr %add.ptr28, align 4
  %4 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 65564, ptr %in, align 4
  %conv = zext i16 %stall_critical_watermark to i32
  %add.ptr88 = getelementptr inbounds i32, ptr %in, i32 4
  %conv99 = zext i16 %stall_minor_watermark to i32
  %shl107 = shl nuw i32 %conv99, 16
  %or108 = or i32 %shl107, %conv
  %5 = ptrtoint ptr %add.ptr88 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or108, ptr %add.ptr88, align 4
  %call = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 32, ptr noundef nonnull %out, i32 noundef 32, i16 noundef zeroext 20487, i32 noundef 0, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %out) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %in) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_query_port_stall_watermark(ptr noundef %dev, ptr noundef writeonly %stall_critical_watermark, ptr noundef writeonly %stall_minor_watermark) local_unnamed_addr #0 align 64 {
entry:
  %in.i = alloca [8 x i32], align 4
  %out = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %out) #9
  %0 = getelementptr inbounds [8 x i32], ptr %out, i32 0, i32 4
  %1 = call ptr @memset(ptr %out, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %in.i) #9
  %2 = getelementptr inbounds i8, ptr %in.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 28)
  %4 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 65536, ptr %in.i, align 4
  %call.i = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %in.i, i32 noundef 32, ptr noundef nonnull %out, i32 noundef 32, i16 noundef zeroext 20487, i32 noundef 0, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %in.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %stall_critical_watermark, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %0, align 4
  %conv = trunc i32 %6 to i16
  %7 = ptrtoint ptr %stall_critical_watermark to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %stall_critical_watermark, align 2
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %tobool5.not = icmp eq ptr %stall_minor_watermark, null
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.then6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %0, align 4
  %shr9 = lshr i32 %9, 16
  %conv11 = trunc i32 %shr9 to i16
  %10 = ptrtoint ptr %stall_minor_watermark to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv11, ptr %stall_minor_watermark, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %out) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_set_port_pfc(ptr noundef %dev, i8 noundef zeroext %pfc_en_tx, i8 noundef zeroext %pfc_en_rx) #0 align 64 {
entry:
  %in = alloca [8 x i32], align 4
  %out = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %in) #9
  %0 = getelementptr inbounds i8, ptr %in, i32 16
  %1 = call ptr @memset(ptr %0, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %out) #9
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 65536, ptr %in, align 4
  %conv = zext i8 %pfc_en_tx to i32
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 2
  %shl16 = shl nuw nsw i32 %conv, 16
  %3 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shl16, ptr %add.ptr13, align 4
  %conv24 = zext i8 %pfc_en_rx to i32
  %add.ptr29 = getelementptr inbounds i32, ptr %in, i32 3
  %shl32 = shl nuw nsw i32 %conv24, 16
  %4 = ptrtoint ptr %add.ptr29 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shl32, ptr %add.ptr29, align 4
  %add.ptr43 = getelementptr inbounds i32, ptr %in, i32 1
  %5 = ptrtoint ptr %add.ptr43 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16711935, ptr %add.ptr43, align 4
  %call = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 32, ptr noundef nonnull %out, i32 noundef 32, i16 noundef zeroext 20487, i32 noundef 0, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %out) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %in) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_query_port_pfc(ptr noundef %dev, ptr noundef writeonly %pfc_en_tx, ptr noundef writeonly %pfc_en_rx) #0 align 64 {
entry:
  %in.i = alloca [8 x i32], align 4
  %out = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %out) #9
  %0 = getelementptr inbounds [8 x i32], ptr %out, i32 0, i32 2
  %1 = getelementptr inbounds [8 x i32], ptr %out, i32 0, i32 3
  %2 = call ptr @memset(ptr %out, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %in.i) #9
  %3 = getelementptr inbounds i8, ptr %in.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 28)
  %5 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 65536, ptr %in.i, align 4
  %call.i = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %in.i, i32 noundef 32, ptr noundef nonnull %out, i32 noundef 32, i16 noundef zeroext 20487, i32 noundef 0, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %in.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %pfc_en_tx, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %0, align 4
  %shr = lshr i32 %7, 16
  %conv = trunc i32 %shr to i8
  %8 = ptrtoint ptr %pfc_en_tx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %pfc_en_tx, align 1
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %tobool5.not = icmp eq ptr %pfc_en_rx, null
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.then6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  %shr9 = lshr i32 %10, 16
  %conv11 = trunc i32 %shr9 to i8
  %11 = ptrtoint ptr %pfc_en_rx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv11, ptr %pfc_en_rx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %out) #9
  ret i32 %call.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mlx5_max_tc(ptr nocapture noundef readonly %mdev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %1, i32 14
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %shr = lshr i32 %3, 16
  %and = and i32 %shr, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and.op = add nsw i32 %and, -1
  %sub = select i1 %tobool.not, i32 7, i32 %and.op
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_query_port_dcbx_param(ptr noundef %mdev, ptr nocapture noundef writeonly %out) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %in) #9
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 60)
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 65536, ptr %in, align 4
  %call = call i32 @mlx5_core_access_reg(ptr noundef %mdev, ptr noundef nonnull %in, i32 noundef 64, ptr noundef %out, i32 noundef 64, i16 noundef zeroext 16416, i32 noundef 0, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_set_port_dcbx_param(ptr noundef %mdev, ptr nocapture noundef %in) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %out) #9
  %0 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %in, align 4
  %and = and i32 %1, -16711681
  %or = or i32 %and, 65536
  store i32 %or, ptr %in, align 4
  %call = call i32 @mlx5_core_access_reg(ptr noundef %mdev, ptr noundef %in, i32 noundef 64, ptr noundef nonnull %out, i32 noundef 64, i16 noundef zeroext 16416, i32 noundef 0, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_set_port_prio_tc(ptr noundef %mdev, ptr nocapture noundef readonly %prio_tc) #0 align 64 {
entry:
  %in = alloca [2 x i32], align 8
  %out = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in) #9
  %0 = ptrtoint ptr %in to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %in, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out) #9
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8
  %add.ptr17 = getelementptr inbounds i32, ptr %in, i32 1
  br label %for.body

for.cond:                                         ; preds = %do.body
  %inc = add nuw nsw i32 %i.041, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.041 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %prio_tc, i32 %i.041
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %3 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %4, i32 14
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i, align 4
  %shr.i = lshr i32 %6, 16
  %and.i = and i32 %shr.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and.op.i = add nsw i32 %and.i, -1
  %sub.i = select i1 %tobool.not.i, i32 7, i32 %and.op.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv)
  %cmp1 = icmp ult i32 %sub.i, %conv
  br i1 %cmp1, label %for.body.cleanup_crit_edge, label %do.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %for.body
  %7 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %in, align 8
  %and = and i32 %8, -8
  %or = or i32 %and, %i.041
  store i32 %or, ptr %in, align 8
  %9 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr17, align 4
  %and18 = and i32 %10, -8
  %11 = and i8 %2, 7
  %and19 = zext i8 %11 to i32
  %or21 = or i32 %and18, %and19
  store i32 %or21, ptr %add.ptr17, align 4
  %call28 = call i32 @mlx5_core_access_reg(ptr noundef %mdev, ptr noundef nonnull %in, i32 noundef 8, ptr noundef nonnull %out, i32 noundef 8, i16 noundef zeroext 16394, i32 noundef 0, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool.not = icmp eq i32 %call28, 0
  br i1 %tobool.not, label %for.cond, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %do.body.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %for.body.cleanup_crit_edge ], [ %call28, %do.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_query_port_prio_tc(ptr noundef %mdev, i8 noundef zeroext %prio, ptr nocapture noundef writeonly %tc) #0 align 64 {
entry:
  %in = alloca [2 x i32], align 8
  %out = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out) #9
  %0 = ptrtoint ptr %in to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %in, align 8
  %1 = ptrtoint ptr %out to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %out, align 8
  %2 = and i8 %prio, 7
  %and17 = zext i8 %2 to i32
  %or19 = or i32 %and17, 65536
  store i32 %or19, ptr %in, align 8
  %call = call i32 @mlx5_core_access_reg(ptr noundef %mdev, ptr noundef nonnull %in, i32 noundef 8, ptr noundef nonnull %out, i32 noundef 8, i16 noundef zeroext 16394, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = getelementptr inbounds [2 x i32], ptr %out, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = trunc i32 %5 to i8
  %conv29 = and i8 %6, 7
  %7 = ptrtoint ptr %tc to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv29, ptr %tc, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_set_port_tc_group(ptr noundef %mdev, ptr nocapture noundef readonly %tc_group) #0 align 64 {
entry:
  %out.i = alloca [20 x i32], align 4
  %in = alloca [20 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %in) #9
  %0 = call ptr @memset(ptr %in, i32 0, i32 80)
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8
  %1 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %2, i32 14
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i, align 4
  %shr.i = lshr i32 %4, 16
  %and.i = and i32 %shr.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and.op.i = add nsw i32 %and.i, -1
  %sub.i = select i1 %tobool.not.i, i32 7, i32 %and.op.i
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %i.054 = phi i32 [ %inc, %do.body.do.body_crit_edge ], [ 0, %entry ]
  %5 = shl i32 %i.054, 6
  %6 = add nuw nsw i32 %5, 64
  %div48 = lshr exact i32 %6, 5
  %add.ptr = getelementptr i32, ptr %in, i32 %div48
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr, align 4
  %or = or i32 %8, -2147483648
  store i32 %or, ptr %add.ptr, align 4
  %arrayidx = getelementptr i8, ptr %tc_group, i32 %i.054
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %11 = add nuw nsw i32 %5, 76
  %div1849 = lshr i32 %11, 5
  %add.ptr19 = getelementptr i32, ptr %in, i32 %div1849
  %12 = ptrtoint ptr %add.ptr19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr19, align 4
  %and24 = and i32 %13, -983041
  %14 = and i8 %10, 15
  %and25 = zext i8 %14 to i32
  %shl28 = shl nuw nsw i32 %and25, 16
  %or29 = or i32 %shl28, %and24
  store i32 %or29, ptr %add.ptr19, align 4
  %inc = add nuw nsw i32 %i.054, 1
  %exitcond = icmp eq i32 %i.054, %sub.i
  br i1 %exitcond, label %for.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.end:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %out.i) #9
  %add.ptr.i51 = getelementptr i32, ptr %2, i32 13
  %15 = ptrtoint ptr %add.ptr.i51 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i51, align 4
  %17 = and i32 %16, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i52 = icmp eq i32 %17, 0
  br i1 %tobool.not.i52, label %for.end.mlx5_set_port_qetcr_reg.exit_crit_edge, label %if.end.i

for.end.mlx5_set_port_qetcr_reg.exit_crit_edge:   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_set_port_qetcr_reg.exit

if.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call i32 @mlx5_core_access_reg(ptr noundef %mdev, ptr noundef nonnull %in, i32 noundef 80, ptr noundef nonnull %out.i, i32 noundef 80, i16 noundef zeroext 16389, i32 noundef 0, i32 noundef 1) #9
  br label %mlx5_set_port_qetcr_reg.exit

mlx5_set_port_qetcr_reg.exit:                     ; preds = %if.end.i, %for.end.mlx5_set_port_qetcr_reg.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.i ], [ -95, %for.end.mlx5_set_port_qetcr_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %out.i) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %in) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_query_port_tc_group(ptr noundef %mdev, i8 noundef zeroext %tc, ptr nocapture noundef writeonly %tc_group) #0 align 64 {
entry:
  %in.i = alloca [20 x i32], align 4
  %out = alloca [20 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %out) #9
  %0 = call ptr @memset(ptr %out, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %in.i) #9
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8
  %1 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %2, i32 13
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i, align 4
  %5 = and i32 %4, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %mlx5_query_port_qetcr_reg.exit.thread, label %mlx5_query_port_qetcr_reg.exit

mlx5_query_port_qetcr_reg.exit.thread:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %in.i) #9
  br label %cleanup

mlx5_query_port_qetcr_reg.exit:                   ; preds = %entry
  %6 = call ptr @memset(ptr %in.i, i32 0, i32 80)
  %call.i = call i32 @mlx5_core_access_reg(ptr noundef %mdev, ptr noundef nonnull %in.i, i32 noundef 80, ptr noundef nonnull %out, i32 noundef 80, i16 noundef zeroext 16389, i32 noundef 0, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %in.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %mlx5_query_port_qetcr_reg.exit.cleanup_crit_edge

mlx5_query_port_qetcr_reg.exit.cleanup_crit_edge: ; preds = %mlx5_query_port_qetcr_reg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %mlx5_query_port_qetcr_reg.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %tc to i32
  %7 = shl nuw nsw i32 %conv, 6
  %8 = add nuw nsw i32 %7, 64
  %div7 = lshr exact i32 %8, 3
  %add.ptr = getelementptr i8, ptr %out, i32 %div7
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr, align 4
  %shr = lshr i32 %10, 16
  %11 = trunc i32 %shr to i8
  %conv3 = and i8 %11, 15
  %12 = ptrtoint ptr %tc_group to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv3, ptr %tc_group, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mlx5_query_port_qetcr_reg.exit.cleanup_crit_edge, %mlx5_query_port_qetcr_reg.exit.thread
  %retval.0 = phi i32 [ 0, %if.end ], [ %call.i, %mlx5_query_port_qetcr_reg.exit.cleanup_crit_edge ], [ -95, %mlx5_query_port_qetcr_reg.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %out) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_set_port_tc_bw_alloc(ptr noundef %mdev, ptr nocapture noundef readonly %tc_bw) #0 align 64 {
entry:
  %out.i = alloca [20 x i32], align 4
  %in = alloca [20 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %in) #9
  %0 = call ptr @memset(ptr %in, i32 0, i32 80)
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8
  %1 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %2, i32 14
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i, align 4
  %shr.i = lshr i32 %4, 16
  %and.i = and i32 %shr.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and.op.i = add nsw i32 %and.i, -1
  %sub.i = select i1 %tobool.not.i, i32 7, i32 %and.op.i
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %i.054 = phi i32 [ %inc, %do.body.do.body_crit_edge ], [ 0, %entry ]
  %5 = shl i32 %i.054, 6
  %6 = add nuw nsw i32 %5, 65
  %div48 = lshr i32 %6, 5
  %add.ptr = getelementptr i32, ptr %in, i32 %div48
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr, align 4
  %or = or i32 %8, 1073741824
  store i32 %or, ptr %add.ptr, align 4
  %arrayidx = getelementptr i8, ptr %tc_bw, i32 %i.054
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %11 = add nuw nsw i32 %5, 89
  %div1849 = lshr i32 %11, 5
  %add.ptr19 = getelementptr i32, ptr %in, i32 %div1849
  %12 = ptrtoint ptr %add.ptr19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr19, align 4
  %and24 = and i32 %13, -128
  %14 = and i8 %10, 127
  %and25 = zext i8 %14 to i32
  %or29 = or i32 %and24, %and25
  store i32 %or29, ptr %add.ptr19, align 4
  %inc = add nuw nsw i32 %i.054, 1
  %exitcond = icmp eq i32 %i.054, %sub.i
  br i1 %exitcond, label %for.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.end:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %out.i) #9
  %add.ptr.i51 = getelementptr i32, ptr %2, i32 13
  %15 = ptrtoint ptr %add.ptr.i51 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i51, align 4
  %17 = and i32 %16, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i52 = icmp eq i32 %17, 0
  br i1 %tobool.not.i52, label %for.end.mlx5_set_port_qetcr_reg.exit_crit_edge, label %if.end.i

for.end.mlx5_set_port_qetcr_reg.exit_crit_edge:   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_set_port_qetcr_reg.exit

if.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call i32 @mlx5_core_access_reg(ptr noundef %mdev, ptr noundef nonnull %in, i32 noundef 80, ptr noundef nonnull %out.i, i32 noundef 80, i16 noundef zeroext 16389, i32 noundef 0, i32 noundef 1) #9
  br label %mlx5_set_port_qetcr_reg.exit

mlx5_set_port_qetcr_reg.exit:                     ; preds = %if.end.i, %for.end.mlx5_set_port_qetcr_reg.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.i ], [ -95, %for.end.mlx5_set_port_qetcr_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %out.i) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %in) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_query_port_tc_bw_alloc(ptr noundef %mdev, i8 noundef zeroext %tc, ptr nocapture noundef writeonly %bw_pct) #0 align 64 {
entry:
  %in.i = alloca [20 x i32], align 4
  %out = alloca [20 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %out) #9
  %0 = call ptr @memset(ptr %out, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %in.i) #9
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8
  %1 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %2, i32 13
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i, align 4
  %5 = and i32 %4, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %mlx5_query_port_qetcr_reg.exit.thread, label %mlx5_query_port_qetcr_reg.exit

mlx5_query_port_qetcr_reg.exit.thread:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %in.i) #9
  br label %cleanup

mlx5_query_port_qetcr_reg.exit:                   ; preds = %entry
  %6 = call ptr @memset(ptr %in.i, i32 0, i32 80)
  %call.i = call i32 @mlx5_core_access_reg(ptr noundef %mdev, ptr noundef nonnull %in.i, i32 noundef 80, ptr noundef nonnull %out, i32 noundef 80, i16 noundef zeroext 16389, i32 noundef 0, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %in.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %mlx5_query_port_qetcr_reg.exit.cleanup_crit_edge

mlx5_query_port_qetcr_reg.exit.cleanup_crit_edge: ; preds = %mlx5_query_port_qetcr_reg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %mlx5_query_port_qetcr_reg.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %tc to i32
  %7 = shl nuw nsw i32 %conv, 6
  %8 = add nuw nsw i32 %7, 64
  %div7 = lshr exact i32 %8, 3
  %add.ptr = getelementptr i8, ptr %out, i32 %div7
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr, align 4
  %11 = trunc i32 %10 to i8
  %conv3 = and i8 %11, 127
  %12 = ptrtoint ptr %bw_pct to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv3, ptr %bw_pct, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mlx5_query_port_qetcr_reg.exit.cleanup_crit_edge, %mlx5_query_port_qetcr_reg.exit.thread
  %retval.0 = phi i32 [ 0, %if.end ], [ %call.i, %mlx5_query_port_qetcr_reg.exit.cleanup_crit_edge ], [ -95, %mlx5_query_port_qetcr_reg.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %out) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_modify_port_ets_rate_limit(ptr noundef %mdev, ptr nocapture noundef readonly %max_bw_value, ptr nocapture noundef readonly %max_bw_units) #0 align 64 {
entry:
  %out.i = alloca [20 x i32], align 4
  %in = alloca [20 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %in) #9
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 76)
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 65536, ptr %in, align 4
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8
  %3 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %4, i32 14
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i, align 4
  %shr.i = lshr i32 %6, 16
  %and.i = and i32 %shr.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and.op.i = add nsw i32 %and.i, -1
  %sub.i = select i1 %tobool.not.i, i32 7, i32 %and.op.i
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.067 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry ]
  %7 = shl i32 %i.067, 6
  %8 = add nuw nsw i32 %7, 64
  %div62 = lshr exact i32 %8, 3
  %add.ptr8 = getelementptr i8, ptr %in, i32 %div62
  %9 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr8, align 4
  %or18 = or i32 %10, 536870912
  store i32 %or18, ptr %add.ptr8, align 4
  %arrayidx = getelementptr i8, ptr %max_bw_units, i32 %i.067
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %add.ptr27 = getelementptr i32, ptr %add.ptr8, i32 1
  %13 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr27, align 4
  %and28 = and i32 %14, -983296
  %15 = and i8 %12, 15
  %and29 = zext i8 %15 to i32
  %shl30 = shl nuw nsw i32 %and29, 16
  %or31 = or i32 %shl30, %and28
  %arrayidx37 = getelementptr i8, ptr %max_bw_value, i32 %i.067
  %16 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %17 to i32
  %or46 = or i32 %or31, %conv38
  store i32 %or46, ptr %add.ptr27, align 4
  %inc = add nuw nsw i32 %i.067, 1
  %exitcond = icmp eq i32 %i.067, %sub.i
  br i1 %exitcond, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %out.i) #9
  %add.ptr.i64 = getelementptr i32, ptr %4, i32 13
  %18 = ptrtoint ptr %add.ptr.i64 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i64, align 4
  %20 = and i32 %19, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i65 = icmp eq i32 %20, 0
  br i1 %tobool.not.i65, label %for.end.mlx5_set_port_qetcr_reg.exit_crit_edge, label %if.end.i

for.end.mlx5_set_port_qetcr_reg.exit_crit_edge:   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_set_port_qetcr_reg.exit

if.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call i32 @mlx5_core_access_reg(ptr noundef %mdev, ptr noundef nonnull %in, i32 noundef 80, ptr noundef nonnull %out.i, i32 noundef 80, i16 noundef zeroext 16389, i32 noundef 0, i32 noundef 1) #9
  br label %mlx5_set_port_qetcr_reg.exit

mlx5_set_port_qetcr_reg.exit:                     ; preds = %if.end.i, %for.end.mlx5_set_port_qetcr_reg.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.i ], [ -95, %for.end.mlx5_set_port_qetcr_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %out.i) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %in) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_query_port_ets_rate_limit(ptr noundef %mdev, ptr nocapture noundef writeonly %max_bw_value, ptr nocapture noundef writeonly %max_bw_units) #0 align 64 {
entry:
  %in.i = alloca [20 x i32], align 4
  %out = alloca [20 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %out) #9
  %0 = call ptr @memset(ptr %out, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %in.i) #9
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8
  %1 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %2, i32 13
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i, align 4
  %5 = and i32 %4, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %mlx5_query_port_qetcr_reg.exit.thread, label %mlx5_query_port_qetcr_reg.exit

mlx5_query_port_qetcr_reg.exit.thread:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %in.i) #9
  br label %cleanup

mlx5_query_port_qetcr_reg.exit:                   ; preds = %entry
  %6 = call ptr @memset(ptr %in.i, i32 0, i32 80)
  %call.i = call i32 @mlx5_core_access_reg(ptr noundef %mdev, ptr noundef nonnull %in.i, i32 noundef 80, ptr noundef nonnull %out, i32 noundef 80, i16 noundef zeroext 16389, i32 noundef 0, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %in.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %mlx5_query_port_qetcr_reg.exit.for.body_crit_edge, label %mlx5_query_port_qetcr_reg.exit.cleanup_crit_edge

mlx5_query_port_qetcr_reg.exit.cleanup_crit_edge: ; preds = %mlx5_query_port_qetcr_reg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

mlx5_query_port_qetcr_reg.exit.for.body_crit_edge: ; preds = %mlx5_query_port_qetcr_reg.exit
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %mlx5_query_port_qetcr_reg.exit.for.body_crit_edge
  %i.032 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %mlx5_query_port_qetcr_reg.exit.for.body_crit_edge ]
  %7 = shl i32 %i.032, 6
  %8 = add nuw nsw i32 %7, 64
  %div19 = lshr exact i32 %8, 3
  %add.ptr = getelementptr i8, ptr %out, i32 %div19
  %add.ptr3 = getelementptr i32, ptr %add.ptr, i32 1
  %9 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr3, align 4
  %conv = trunc i32 %10 to i8
  %arrayidx = getelementptr i8, ptr %max_bw_value, i32 %i.032
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %arrayidx, align 1
  %shr5 = lshr i32 %10, 16
  %12 = trunc i32 %shr5 to i8
  %conv7 = and i8 %12, 15
  %arrayidx8 = getelementptr i8, ptr %max_bw_units, i32 %i.032
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv7, ptr %arrayidx8, align 1
  %inc = add nuw nsw i32 %i.032, 1
  %14 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %caps.i, align 8
  %add.ptr.i21 = getelementptr i32, ptr %15, i32 14
  %16 = ptrtoint ptr %add.ptr.i21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i21, align 4
  %shr.i = lshr i32 %17, 16
  %and.i = and i32 %shr.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i22 = icmp eq i32 %and.i, 0
  %and.op.i = add nsw i32 %and.i, -1
  %sub.i = select i1 %tobool.not.i22, i32 7, i32 %and.op.i
  %cmp.not.not = icmp slt i32 %i.032, %sub.i
  br i1 %cmp.not.not, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %mlx5_query_port_qetcr_reg.exit.cleanup_crit_edge, %mlx5_query_port_qetcr_reg.exit.thread
  %retval.0 = phi i32 [ %call.i, %mlx5_query_port_qetcr_reg.exit.cleanup_crit_edge ], [ -95, %mlx5_query_port_qetcr_reg.exit.thread ], [ 0, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %out) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_set_port_wol(ptr noundef %mdev, i8 noundef zeroext %wol_mode) #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #9
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 137363456, ptr %in, align 4
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 2
  %conv = zext i8 %wol_mode to i32
  %or32 = or i32 %conv, 1073741824
  %3 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or32, ptr %add.ptr13, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #9
  %4 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call = call i32 @mlx5_cmd_exec(ptr noundef %mdev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %_out, i32 noundef 16) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_query_port_wol(ptr noundef %mdev, ptr nocapture noundef writeonly %wol_mode) #0 align 64 {
entry:
  %out = alloca [4 x i32], align 4
  %in = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #9
  %0 = call ptr @memset(ptr %out, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #9
  %1 = getelementptr inbounds i8, ptr %in, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 12)
  %3 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 137428992, ptr %in, align 4
  %call = call i32 @mlx5_cmd_exec(ptr noundef %mdev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %out, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr10 = getelementptr inbounds i32, ptr %out, i32 2
  %4 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr10, align 4
  %conv = trunc i32 %5 to i8
  %6 = ptrtoint ptr %wol_mode to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %wol_mode, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_query_ports_check(ptr noundef %mdev, ptr nocapture noundef writeonly %out, i32 noundef %outlen) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %in) #9
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 0, ptr %0, align 4
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 65536, ptr %in, align 4
  %call = call i32 @mlx5_core_access_reg(ptr noundef %mdev, ptr noundef nonnull %in, i32 noundef 12, ptr noundef %out, i32 noundef %outlen, i16 noundef zeroext 20545, i32 noundef 0, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %in) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_set_ports_check(ptr noundef %mdev, ptr nocapture noundef readonly %in, i32 noundef %inlen) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %out) #9
  %call = call i32 @mlx5_core_access_reg(ptr noundef %mdev, ptr noundef %in, i32 noundef %inlen, ptr noundef nonnull %out, i32 noundef 12, i16 noundef zeroext 20545, i32 noundef 0, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %out) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_set_port_fcs(ptr noundef %mdev, i8 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %out.i = alloca [3 x i32], align 4
  %in.i = alloca [3 x i32], align 4
  %in = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %in) #9
  %0 = call ptr @memset(ptr %in, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %in.i) #9
  %1 = getelementptr inbounds i8, ptr %in.i, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 0, ptr %1, align 4
  %3 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 65536, ptr %in.i, align 4
  %call.i = call i32 @mlx5_core_access_reg(ptr noundef %mdev, ptr noundef nonnull %in.i, i32 noundef 12, ptr noundef nonnull %in, i32 noundef 12, i16 noundef zeroext 20545, i32 noundef 0, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %in.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %in, align 4
  %and = and i32 %5, -16711681
  %or = or i32 %and, 65536
  store i32 %or, ptr %in, align 4
  %add.ptr14 = getelementptr inbounds i32, ptr %in, i32 2
  %6 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr14, align 4
  %and15 = and i32 %7, -3
  %8 = shl i8 %enable, 1
  %9 = and i8 %8, 2
  %shl17 = zext i8 %9 to i32
  %or18 = or i32 %and15, %shl17
  store i32 %or18, ptr %add.ptr14, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %out.i) #9
  %call.i28 = call i32 @mlx5_core_access_reg(ptr noundef %mdev, ptr noundef nonnull %in, i32 noundef 12, ptr noundef nonnull %out.i, i32 noundef 12, i16 noundef zeroext 20545, i32 noundef 0, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %out.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i28, %do.body ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %in) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_query_port_fcs(ptr noundef %mdev, ptr nocapture noundef writeonly %supported, ptr nocapture noundef writeonly %enabled) local_unnamed_addr #0 align 64 {
entry:
  %in.i = alloca [3 x i32], align 4
  %out = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %out) #9
  %0 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %out, align 4, !annotation !91
  %1 = getelementptr inbounds [3 x i32], ptr %out, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !91
  %3 = getelementptr inbounds [3 x i32], ptr %out, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !91
  %5 = ptrtoint ptr %supported to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %supported, align 1
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %enabled, align 1
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8
  %7 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %8, i32 13
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr, align 4
  %11 = and i32 %10, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %in.i) #9
  %12 = getelementptr inbounds i8, ptr %in.i, i32 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 0, ptr %12, align 4
  %14 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 65536, ptr %in.i, align 4
  %call.i = call i32 @mlx5_core_access_reg(ptr noundef %mdev, ptr noundef nonnull %in.i, i32 noundef 12, ptr noundef nonnull %out, i32 noundef 12, i16 noundef zeroext 20545, i32 noundef 0, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %in.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 4
  %17 = trunc i32 %16 to i8
  %18 = lshr i8 %17, 1
  %19 = and i8 %18, 1
  %20 = ptrtoint ptr %supported to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %supported, align 1
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %3, align 4
  %23 = trunc i32 %22 to i8
  %24 = lshr i8 %23, 1
  %25 = and i8 %24, 1
  %26 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %enabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %out) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_query_mtpps(ptr noundef %mdev, ptr nocapture noundef writeonly %mtpps, i32 noundef %mtpps_size) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [15 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %in) #9
  %0 = call ptr @memset(ptr %in, i32 0, i32 60)
  %call = call i32 @mlx5_core_access_reg(ptr noundef %mdev, ptr noundef nonnull %in, i32 noundef 60, ptr noundef %mtpps, i32 noundef %mtpps_size, i16 noundef zeroext -28589, i32 noundef 0, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %in) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_set_mtpps(ptr noundef %mdev, ptr nocapture noundef readonly %mtpps, i32 noundef %mtpps_size) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca [15 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %out) #9
  %call = call i32 @mlx5_core_access_reg(ptr noundef %mdev, ptr noundef %mtpps, i32 noundef %mtpps_size, ptr noundef nonnull %out, i32 noundef 60, i16 noundef zeroext -28589, i32 noundef 0, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %out) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_query_mtppse(ptr noundef %mdev, i8 noundef zeroext %pin, ptr nocapture noundef writeonly %arm, ptr nocapture noundef writeonly %mode) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca [4 x i32], align 4
  %in = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #9
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %conv = zext i8 %pin to i32
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %in, align 4
  %call = call i32 @mlx5_core_access_reg(ptr noundef %mdev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %out, i32 noundef 16, i16 noundef zeroext -28588, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr10 = getelementptr inbounds i32, ptr %in, i32 1
  %3 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr10, align 4
  %shr = lshr i32 %4, 31
  %conv12 = trunc i32 %shr to i8
  %5 = ptrtoint ptr %arm to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv12, ptr %arm, align 1
  %6 = trunc i32 %4 to i8
  %conv17 = and i8 %6, 15
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv17, ptr %mode, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_set_mtppse(ptr noundef %mdev, i8 noundef zeroext %pin, i8 noundef zeroext %arm, i8 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca [4 x i32], align 4
  %in = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #9
  %0 = getelementptr inbounds i8, ptr %in, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 0, ptr %0, align 4
  %conv = zext i8 %pin to i32
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %in, align 4
  %add.ptr14 = getelementptr inbounds i32, ptr %in, i32 1
  %and16 = zext i8 %arm to i32
  %shl17 = shl i32 %and16, 31
  %3 = and i8 %mode, 15
  %and32 = zext i8 %3 to i32
  %or34 = or i32 %shl17, %and32
  %4 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or34, ptr %add.ptr14, align 4
  %call = call i32 @mlx5_core_access_reg(ptr noundef %mdev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %out, i32 noundef 16, i16 noundef zeroext -28588, i32 noundef 0, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_set_trust_state(ptr noundef %mdev, i8 noundef zeroext %trust_state) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca [2 x i32], align 8
  %in = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in) #9
  %0 = ptrtoint ptr %in to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 281474976710656, ptr %in, align 8
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 1
  %1 = and i8 %trust_state, 7
  %and15 = zext i8 %1 to i32
  %2 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and15, ptr %add.ptr13, align 4
  %call = call i32 @mlx5_core_access_reg(ptr noundef %mdev, ptr noundef nonnull %in, i32 noundef 8, ptr noundef nonnull %out, i32 noundef 8, i16 noundef zeroext 16386, i32 noundef 0, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_query_trust_state(ptr noundef %mdev, ptr nocapture noundef writeonly %trust_state) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca [2 x i32], align 8
  %in = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out) #9
  %0 = ptrtoint ptr %out to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %out, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in) #9
  %1 = ptrtoint ptr %in to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 281474976710656, ptr %in, align 8
  %call = call i32 @mlx5_core_access_reg(ptr noundef %mdev, ptr noundef nonnull %in, i32 noundef 8, ptr noundef nonnull %out, i32 noundef 8, i16 noundef zeroext 16386, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr10 = getelementptr inbounds i32, ptr %out, i32 1
  %2 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr10, align 4
  %4 = trunc i32 %3 to i8
  %conv = and i8 %4, 7
  %5 = ptrtoint ptr %trust_state to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %trust_state, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_set_dscp2prio(ptr noundef %mdev, i8 noundef zeroext %dscp, i8 noundef zeroext %prio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 132) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i86 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 132) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool2.not = icmp eq ptr %call7.i.i86, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.out60_crit_edge, label %do.body

entry.out60_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out60

do.body:                                          ; preds = %entry
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call7.i.i, align 8
  %and = and i32 %3, -16711681
  %or = or i32 %and, 65536
  store i32 %or, ptr %call7.i.i, align 8
  %call8 = tail call i32 @mlx5_core_access_reg(ptr noundef %mdev, ptr noundef nonnull %call7.i.i, i32 noundef 132, ptr noundef nonnull %call7.i.i86, i32 noundef 132, i16 noundef zeroext 16403, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %do.body.out60_crit_edge

do.body.out60_crit_edge:                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %out60

if.end11:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %4 = call ptr @memcpy(ptr %call7.i.i, ptr %call7.i.i86, i32 132)
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call7.i.i, align 8
  %and18 = and i32 %6, -16711681
  %or21 = or i32 %and18, 65536
  store i32 %or21, ptr %call7.i.i, align 8
  %conv = zext i8 %dscp to i32
  %7 = shl nuw nsw i32 %conv, 4
  %8 = add nuw nsw i32 %7, 32
  %div85 = lshr exact i32 %8, 3
  %add.ptr25 = getelementptr i8, ptr %call7.i.i, i32 %div85
  %9 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr25, align 2
  %11 = and i16 %10, 32752
  %12 = and i8 %prio, 15
  %and36 = zext i8 %12 to i16
  %or38 = or i16 %11, %and36
  %13 = or i16 %or38, -32768
  store i16 %13, ptr %add.ptr25, align 2
  %call59 = tail call i32 @mlx5_core_access_reg(ptr noundef %mdev, ptr noundef nonnull %call7.i.i, i32 noundef 132, ptr noundef nonnull %call7.i.i86, i32 noundef 132, i16 noundef zeroext 16403, i32 noundef 0, i32 noundef 1)
  br label %out60

out60:                                            ; preds = %if.end11, %do.body.out60_crit_edge, %entry.out60_crit_edge
  %err.0 = phi i32 [ %call8, %do.body.out60_crit_edge ], [ %call59, %if.end11 ], [ -12, %entry.out60_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #9
  tail call void @kfree(ptr noundef %call7.i.i86) #9
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_query_dscp2prio(ptr noundef %mdev, ptr nocapture noundef writeonly %dscp2prio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 132) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i32 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 132) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool2.not = icmp eq ptr %call7.i.i32, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.out16_crit_edge, label %do.body

entry.out16_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out16

do.body:                                          ; preds = %entry
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call7.i.i, align 8
  %and = and i32 %3, -16711681
  %or = or i32 %and, 65536
  store i32 %or, ptr %call7.i.i, align 8
  %call8 = tail call i32 @mlx5_core_access_reg(ptr noundef %mdev, ptr noundef nonnull %call7.i.i, i32 noundef 132, ptr noundef nonnull %call7.i.i32, i32 noundef 132, i16 noundef zeroext 16403, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.body.for.body_crit_edge, label %do.body.out16_crit_edge

do.body.out16_crit_edge:                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %out16

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.body.for.body_crit_edge
  %i.033 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.body.for.body_crit_edge ]
  %4 = shl i32 %i.033, 4
  %5 = add nuw nsw i32 %4, 32
  %div31 = lshr exact i32 %5, 3
  %add.ptr12 = getelementptr i8, ptr %call7.i.i32, i32 %div31
  %6 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr12, align 2
  %8 = trunc i16 %7 to i8
  %conv15 = and i8 %8, 15
  %arrayidx = getelementptr i8, ptr %dscp2prio, i32 %i.033
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv15, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.033, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.body.out16_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.out16_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %out16

out16:                                            ; preds = %for.body.out16_crit_edge, %do.body.out16_crit_edge, %entry.out16_crit_edge
  %err.0 = phi i32 [ %call8, %do.body.out16_crit_edge ], [ -12, %entry.out16_crit_edge ], [ 0, %for.body.out16_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #9
  tail call void @kfree(ptr noundef %call7.i.i32) #9
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !33, !34, !36, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !75, !76, !77, !79, !80}
!llvm.named.register.sp = !{!81}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @__ksymtab_mlx5_core_access_reg, !1, !"__ksymtab_mlx5_core_access_reg", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/port.c", i32 72, i32 1}
!2 = !{ptr @__ksymtab_mlx5_set_port_caps, !3, !"__ksymtab_mlx5_set_port_caps", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/port.c", i32 132, i32 1}
!4 = !{ptr @__ksymtab_mlx5_query_port_ptys, !5, !"__ksymtab_mlx5_query_port_ptys", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/port.c", i32 144, i32 1}
!6 = !{ptr @__ksymtab_mlx5_query_ib_port_oper, !7, !"__ksymtab_mlx5_query_ib_port_oper", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/port.c", i32 173, i32 1}
!8 = !{ptr @__ksymtab_mlx5_toggle_port_link, !9, !"__ksymtab_mlx5_toggle_port_link", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/port.c", i32 185, i32 1}
!10 = !{ptr @__ksymtab_mlx5_set_port_admin_status, !11, !"__ksymtab_mlx5_set_port_admin_status", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/port.c", i32 199, i32 1}
!12 = !{ptr @__ksymtab_mlx5_query_port_admin_status, !13, !"__ksymtab_mlx5_query_port_admin_status", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/port.c", i32 216, i32 1}
!14 = !{ptr @__ksymtab_mlx5_set_port_mtu, !15, !"__ksymtab_mlx5_set_port_mtu", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/port.c", i32 246, i32 1}
!16 = !{ptr @__ksymtab_mlx5_query_port_max_mtu, !17, !"__ksymtab_mlx5_query_port_max_mtu", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/port.c", i32 253, i32 1}
!18 = !{ptr @__ksymtab_mlx5_query_port_oper_mtu, !19, !"__ksymtab_mlx5_query_port_oper_mtu", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/port.c", i32 260, i32 1}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/port.c", i32 417, i32 3}
!22 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mlx5_query_module_eeprom._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @mlx5_query_module_eeprom._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @__ksymtab_mlx5_query_module_eeprom, !29, !"__ksymtab_mlx5_query_module_eeprom", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/port.c", i32 430, i32 1}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/port.c", i32 461, i32 3}
!32 = !{ptr @mlx5_query_module_eeprom_by_page._entry, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @mlx5_query_module_eeprom_by_page._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/port.c", i32 467, i32 3}
!36 = !{ptr @mlx5_query_module_eeprom_by_page._entry.6, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @mlx5_query_module_eeprom_by_page._entry_ptr.8, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @__ksymtab_mlx5_query_module_eeprom_by_page, !39, !"__ksymtab_mlx5_query_module_eeprom_by_page", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/port.c", i32 473, i32 1}
!40 = !{ptr @__ksymtab_mlx5_query_port_vl_hw_cap, !41, !"__ksymtab_mlx5_query_port_vl_hw_cap", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/port.c", i32 499, i32 1}
!42 = !{ptr @__ksymtab_mlx5_core_query_ib_ppcnt, !43, !"__ksymtab_mlx5_core_query_ib_ppcnt", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/port.c", i32 522, i32 1}
!44 = !{ptr @__ksymtab_mlx5_set_port_pause, !45, !"__ksymtab_mlx5_set_port_pause", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/port.c", i32 547, i32 1}
!46 = !{ptr @__ksymtab_mlx5_query_port_pause, !47, !"__ksymtab_mlx5_query_port_pause", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/port.c", i32 567, i32 1}
!48 = !{ptr @__ksymtab_mlx5_set_port_pfc, !49, !"__ksymtab_mlx5_set_port_pfc", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/port.c", i32 626, i32 1}
!50 = !{ptr @__ksymtab_mlx5_query_port_pfc, !51, !"__ksymtab_mlx5_query_port_pfc", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/port.c", i32 645, i32 1}
!52 = !{ptr @__ksymtab_mlx5_set_port_prio_tc, !53, !"__ksymtab_mlx5_set_port_prio_tc", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/port.c", i32 696, i32 1}
!54 = !{ptr @__ksymtab_mlx5_query_port_prio_tc, !55, !"__ksymtab_mlx5_query_port_prio_tc", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/port.c", i32 718, i32 1}
!56 = !{ptr @__ksymtab_mlx5_set_port_tc_group, !57, !"__ksymtab_mlx5_set_port_tc_group", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/port.c", i32 757, i32 1}
!58 = !{ptr @__ksymtab_mlx5_query_port_tc_group, !59, !"__ksymtab_mlx5_query_port_tc_group", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/port.c", i32 778, i32 1}
!60 = !{ptr @__ksymtab_mlx5_set_port_tc_bw_alloc, !61, !"__ksymtab_mlx5_set_port_tc_bw_alloc", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/port.c", i32 792, i32 1}
!62 = !{ptr @__ksymtab_mlx5_query_port_tc_bw_alloc, !63, !"__ksymtab_mlx5_query_port_tc_bw_alloc", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/port.c", i32 813, i32 1}
!64 = !{ptr @__ksymtab_mlx5_modify_port_ets_rate_limit, !65, !"__ksymtab_mlx5_modify_port_ets_rate_limit", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/port.c", i32 837, i32 1}
!66 = !{ptr @__ksymtab_mlx5_query_port_ets_rate_limit, !67, !"__ksymtab_mlx5_query_port_ets_rate_limit", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/port.c", i32 863, i32 1}
!68 = !{ptr @__ksymtab_mlx5_set_port_wol, !69, !"__ksymtab_mlx5_set_port_wol", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/port.c", i32 874, i32 1}
!70 = !{ptr @__ksymtab_mlx5_query_port_wol, !71, !"__ksymtab_mlx5_query_port_wol", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/port.c", i32 889, i32 1}
!72 = !{ptr @.str.9, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/port.c", i32 303, i32 3}
!74 = !{ptr @.str.10, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @mlx5_query_module_id._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @mlx5_query_module_id._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.11, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/port.c", i32 381, i32 3}
!79 = !{ptr @mlx5_query_mcia._entry, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @mlx5_query_mcia._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{!"sp"}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{!"auto-init"}
