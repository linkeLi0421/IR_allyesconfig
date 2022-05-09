; ModuleID = '/llk/IR_all_yes/drivers/greybus/hd.c_pt.bc'
source_filename = "../drivers/greybus/hd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__tracepoint_gb_hd_create\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_gb_hd_create\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_gb_hd_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_gb_hd_create:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_gb_hd_create\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_gb_hd_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__traceiter_gb_hd_create\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_gb_hd_create\09\09\09\09"
module asm "\09.long\09__crc___traceiter_gb_hd_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_gb_hd_create:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_gb_hd_create\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_gb_hd_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__SCK__tp_func_gb_hd_create\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_gb_hd_create\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_gb_hd_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_gb_hd_create:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_gb_hd_create\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_gb_hd_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__tracepoint_gb_hd_release\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_gb_hd_release\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_gb_hd_release\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_gb_hd_release:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_gb_hd_release\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_gb_hd_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__traceiter_gb_hd_release\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_gb_hd_release\09\09\09\09"
module asm "\09.long\09__crc___traceiter_gb_hd_release\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_gb_hd_release:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_gb_hd_release\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_gb_hd_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__SCK__tp_func_gb_hd_release\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_gb_hd_release\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_gb_hd_release\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_gb_hd_release:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_gb_hd_release\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_gb_hd_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__tracepoint_gb_hd_add\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_gb_hd_add\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_gb_hd_add\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_gb_hd_add:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_gb_hd_add\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_gb_hd_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__traceiter_gb_hd_add\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_gb_hd_add\09\09\09\09"
module asm "\09.long\09__crc___traceiter_gb_hd_add\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_gb_hd_add:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_gb_hd_add\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_gb_hd_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__SCK__tp_func_gb_hd_add\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_gb_hd_add\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_gb_hd_add\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_gb_hd_add:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_gb_hd_add\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_gb_hd_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__tracepoint_gb_hd_del\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_gb_hd_del\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_gb_hd_del\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_gb_hd_del:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_gb_hd_del\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_gb_hd_del:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__traceiter_gb_hd_del\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_gb_hd_del\09\09\09\09"
module asm "\09.long\09__crc___traceiter_gb_hd_del\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_gb_hd_del:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_gb_hd_del\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_gb_hd_del:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__SCK__tp_func_gb_hd_del\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_gb_hd_del\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_gb_hd_del\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_gb_hd_del:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_gb_hd_del\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_gb_hd_del:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__tracepoint_gb_hd_in\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_gb_hd_in\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_gb_hd_in\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_gb_hd_in:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_gb_hd_in\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_gb_hd_in:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__traceiter_gb_hd_in\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_gb_hd_in\09\09\09\09"
module asm "\09.long\09__crc___traceiter_gb_hd_in\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_gb_hd_in:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_gb_hd_in\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_gb_hd_in:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__SCK__tp_func_gb_hd_in\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_gb_hd_in\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_gb_hd_in\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_gb_hd_in:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_gb_hd_in\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_gb_hd_in:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__tracepoint_gb_message_submit\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_gb_message_submit\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_gb_message_submit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_gb_message_submit:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_gb_message_submit\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_gb_message_submit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__traceiter_gb_message_submit\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_gb_message_submit\09\09\09\09"
module asm "\09.long\09__crc___traceiter_gb_message_submit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_gb_message_submit:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_gb_message_submit\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_gb_message_submit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__SCK__tp_func_gb_message_submit\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_gb_message_submit\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_gb_message_submit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_gb_message_submit:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_gb_message_submit\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_gb_message_submit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gb_hd_output\22, \22a\22\09"
module asm "\09.weak\09__crc_gb_hd_output\09\09\09\09"
module asm "\09.long\09__crc_gb_hd_output\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gb_hd_output:\09\09\09\09\09"
module asm "\09.asciz \09\22gb_hd_output\22\09\09\09\09\09"
module asm "__kstrtabns_gb_hd_output:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gb_hd_cport_reserve\22, \22a\22\09"
module asm "\09.weak\09__crc_gb_hd_cport_reserve\09\09\09\09"
module asm "\09.long\09__crc_gb_hd_cport_reserve\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gb_hd_cport_reserve:\09\09\09\09\09"
module asm "\09.asciz \09\22gb_hd_cport_reserve\22\09\09\09\09\09"
module asm "__kstrtabns_gb_hd_cport_reserve:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gb_hd_cport_release_reserved\22, \22a\22\09"
module asm "\09.weak\09__crc_gb_hd_cport_release_reserved\09\09\09\09"
module asm "\09.long\09__crc_gb_hd_cport_release_reserved\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gb_hd_cport_release_reserved:\09\09\09\09\09"
module asm "\09.asciz \09\22gb_hd_cport_release_reserved\22\09\09\09\09\09"
module asm "__kstrtabns_gb_hd_cport_release_reserved:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gb_hd_create\22, \22a\22\09"
module asm "\09.weak\09__crc_gb_hd_create\09\09\09\09"
module asm "\09.long\09__crc_gb_hd_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gb_hd_create:\09\09\09\09\09"
module asm "\09.asciz \09\22gb_hd_create\22\09\09\09\09\09"
module asm "__kstrtabns_gb_hd_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gb_hd_add\22, \22a\22\09"
module asm "\09.weak\09__crc_gb_hd_add\09\09\09\09"
module asm "\09.long\09__crc_gb_hd_add\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gb_hd_add:\09\09\09\09\09"
module asm "\09.asciz \09\22gb_hd_add\22\09\09\09\09\09"
module asm "__kstrtabns_gb_hd_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gb_hd_del\22, \22a\22\09"
module asm "\09.weak\09__crc_gb_hd_del\09\09\09\09"
module asm "\09.long\09__crc_gb_hd_del\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gb_hd_del:\09\09\09\09\09"
module asm "\09.asciz \09\22gb_hd_del\22\09\09\09\09\09"
module asm "__kstrtabns_gb_hd_del:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gb_hd_shutdown\22, \22a\22\09"
module asm "\09.weak\09__crc_gb_hd_shutdown\09\09\09\09"
module asm "\09.long\09__crc_gb_hd_shutdown\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gb_hd_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22gb_hd_shutdown\22\09\09\09\09\09"
module asm "__kstrtabns_gb_hd_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gb_hd_put\22, \22a\22\09"
module asm "\09.weak\09__crc_gb_hd_put\09\09\09\09"
module asm "\09.long\09__crc_gb_hd_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gb_hd_put:\09\09\09\09\09"
module asm "\09.asciz \09\22gb_hd_put\22\09\09\09\09\09"
module asm "__kstrtabns_gb_hd_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%struct.atomic_t = type { i32 }
%union.anon = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.static_call_key = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.gb_host_device = type { %struct.device, i32, ptr, %struct.list_head, %struct.list_head, %struct.ida, i32, i32, ptr, [0 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.gb_hd_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__tracepoint_gb_hd_create = external dso_local global %struct.tracepoint, align 4
@__kstrtab___tracepoint_gb_hd_create = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_gb_hd_create = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_gb_hd_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_gb_hd_create to i32), ptr @__kstrtab___tracepoint_gb_hd_create, ptr @__kstrtabns___tracepoint_gb_hd_create }, section "___ksymtab_gpl+__tracepoint_gb_hd_create", align 4
@__kstrtab___traceiter_gb_hd_create = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_gb_hd_create = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_gb_hd_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_gb_hd_create to i32), ptr @__kstrtab___traceiter_gb_hd_create, ptr @__kstrtabns___traceiter_gb_hd_create }, section "___ksymtab_gpl+__traceiter_gb_hd_create", align 4
@__SCK__tp_func_gb_hd_create = external dso_local global %struct.static_call_key, align 4
@__kstrtab___SCK__tp_func_gb_hd_create = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_gb_hd_create = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_gb_hd_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_gb_hd_create to i32), ptr @__kstrtab___SCK__tp_func_gb_hd_create, ptr @__kstrtabns___SCK__tp_func_gb_hd_create }, section "___ksymtab_gpl+__SCK__tp_func_gb_hd_create", align 4
@__tracepoint_gb_hd_release = external dso_local global %struct.tracepoint, align 4
@__kstrtab___tracepoint_gb_hd_release = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_gb_hd_release = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_gb_hd_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_gb_hd_release to i32), ptr @__kstrtab___tracepoint_gb_hd_release, ptr @__kstrtabns___tracepoint_gb_hd_release }, section "___ksymtab_gpl+__tracepoint_gb_hd_release", align 4
@__kstrtab___traceiter_gb_hd_release = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_gb_hd_release = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_gb_hd_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_gb_hd_release to i32), ptr @__kstrtab___traceiter_gb_hd_release, ptr @__kstrtabns___traceiter_gb_hd_release }, section "___ksymtab_gpl+__traceiter_gb_hd_release", align 4
@__SCK__tp_func_gb_hd_release = external dso_local global %struct.static_call_key, align 4
@__kstrtab___SCK__tp_func_gb_hd_release = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_gb_hd_release = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_gb_hd_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_gb_hd_release to i32), ptr @__kstrtab___SCK__tp_func_gb_hd_release, ptr @__kstrtabns___SCK__tp_func_gb_hd_release }, section "___ksymtab_gpl+__SCK__tp_func_gb_hd_release", align 4
@__tracepoint_gb_hd_add = external dso_local global %struct.tracepoint, align 4
@__kstrtab___tracepoint_gb_hd_add = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_gb_hd_add = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_gb_hd_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_gb_hd_add to i32), ptr @__kstrtab___tracepoint_gb_hd_add, ptr @__kstrtabns___tracepoint_gb_hd_add }, section "___ksymtab_gpl+__tracepoint_gb_hd_add", align 4
@__kstrtab___traceiter_gb_hd_add = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_gb_hd_add = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_gb_hd_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_gb_hd_add to i32), ptr @__kstrtab___traceiter_gb_hd_add, ptr @__kstrtabns___traceiter_gb_hd_add }, section "___ksymtab_gpl+__traceiter_gb_hd_add", align 4
@__SCK__tp_func_gb_hd_add = external dso_local global %struct.static_call_key, align 4
@__kstrtab___SCK__tp_func_gb_hd_add = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_gb_hd_add = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_gb_hd_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_gb_hd_add to i32), ptr @__kstrtab___SCK__tp_func_gb_hd_add, ptr @__kstrtabns___SCK__tp_func_gb_hd_add }, section "___ksymtab_gpl+__SCK__tp_func_gb_hd_add", align 4
@__tracepoint_gb_hd_del = external dso_local global %struct.tracepoint, align 4
@__kstrtab___tracepoint_gb_hd_del = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_gb_hd_del = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_gb_hd_del = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_gb_hd_del to i32), ptr @__kstrtab___tracepoint_gb_hd_del, ptr @__kstrtabns___tracepoint_gb_hd_del }, section "___ksymtab_gpl+__tracepoint_gb_hd_del", align 4
@__kstrtab___traceiter_gb_hd_del = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_gb_hd_del = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_gb_hd_del = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_gb_hd_del to i32), ptr @__kstrtab___traceiter_gb_hd_del, ptr @__kstrtabns___traceiter_gb_hd_del }, section "___ksymtab_gpl+__traceiter_gb_hd_del", align 4
@__SCK__tp_func_gb_hd_del = external dso_local global %struct.static_call_key, align 4
@__kstrtab___SCK__tp_func_gb_hd_del = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_gb_hd_del = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_gb_hd_del = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_gb_hd_del to i32), ptr @__kstrtab___SCK__tp_func_gb_hd_del, ptr @__kstrtabns___SCK__tp_func_gb_hd_del }, section "___ksymtab_gpl+__SCK__tp_func_gb_hd_del", align 4
@__tracepoint_gb_hd_in = external dso_local global %struct.tracepoint, align 4
@__kstrtab___tracepoint_gb_hd_in = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_gb_hd_in = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_gb_hd_in = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_gb_hd_in to i32), ptr @__kstrtab___tracepoint_gb_hd_in, ptr @__kstrtabns___tracepoint_gb_hd_in }, section "___ksymtab_gpl+__tracepoint_gb_hd_in", align 4
@__kstrtab___traceiter_gb_hd_in = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_gb_hd_in = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_gb_hd_in = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_gb_hd_in to i32), ptr @__kstrtab___traceiter_gb_hd_in, ptr @__kstrtabns___traceiter_gb_hd_in }, section "___ksymtab_gpl+__traceiter_gb_hd_in", align 4
@__SCK__tp_func_gb_hd_in = external dso_local global %struct.static_call_key, align 4
@__kstrtab___SCK__tp_func_gb_hd_in = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_gb_hd_in = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_gb_hd_in = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_gb_hd_in to i32), ptr @__kstrtab___SCK__tp_func_gb_hd_in, ptr @__kstrtabns___SCK__tp_func_gb_hd_in }, section "___ksymtab_gpl+__SCK__tp_func_gb_hd_in", align 4
@__tracepoint_gb_message_submit = external dso_local global %struct.tracepoint, align 4
@__kstrtab___tracepoint_gb_message_submit = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_gb_message_submit = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_gb_message_submit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_gb_message_submit to i32), ptr @__kstrtab___tracepoint_gb_message_submit, ptr @__kstrtabns___tracepoint_gb_message_submit }, section "___ksymtab_gpl+__tracepoint_gb_message_submit", align 4
@__kstrtab___traceiter_gb_message_submit = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_gb_message_submit = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_gb_message_submit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_gb_message_submit to i32), ptr @__kstrtab___traceiter_gb_message_submit, ptr @__kstrtabns___traceiter_gb_message_submit }, section "___ksymtab_gpl+__traceiter_gb_message_submit", align 4
@__SCK__tp_func_gb_message_submit = external dso_local global %struct.static_call_key, align 4
@__kstrtab___SCK__tp_func_gb_message_submit = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_gb_message_submit = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_gb_message_submit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_gb_message_submit to i32), ptr @__kstrtab___SCK__tp_func_gb_message_submit, ptr @__kstrtabns___SCK__tp_func_gb_message_submit }, section "___ksymtab_gpl+__SCK__tp_func_gb_message_submit", align 4
@__kstrtab_gb_hd_output = external dso_local constant [0 x i8], align 1
@__kstrtabns_gb_hd_output = external dso_local constant [0 x i8], align 1
@__ksymtab_gb_hd_output = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gb_hd_output to i32), ptr @__kstrtab_gb_hd_output, ptr @__kstrtabns_gb_hd_output }, section "___ksymtab_gpl+gb_hd_output", align 4
@gb_hd_cport_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 55, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to reserve cport %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gb_hd_cport_reserve\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/greybus/hd.c\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gb_hd_cport_reserve._entry_ptr = internal global ptr @gb_hd_cport_reserve._entry, section ".printk_index", align 4
@__kstrtab_gb_hd_cport_reserve = external dso_local constant [0 x i8], align 1
@__kstrtabns_gb_hd_cport_reserve = external dso_local constant [0 x i8], align 1
@__ksymtab_gb_hd_cport_reserve = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gb_hd_cport_reserve to i32), ptr @__kstrtab_gb_hd_cport_reserve, ptr @__kstrtabns_gb_hd_cport_reserve }, section "___ksymtab_gpl+gb_hd_cport_reserve", align 4
@__kstrtab_gb_hd_cport_release_reserved = external dso_local constant [0 x i8], align 1
@__kstrtabns_gb_hd_cport_release_reserved = external dso_local constant [0 x i8], align 1
@__ksymtab_gb_hd_cport_release_reserved = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gb_hd_cport_release_reserved to i32), ptr @__kstrtab_gb_hd_cport_release_reserved, ptr @__kstrtabns_gb_hd_cport_release_reserved }, section "___ksymtab_gpl+gb_hd_cport_release_reserved", align 4
@gb_hd_cport_allocate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 88, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cport %d not available\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gb_hd_cport_allocate\00", [43 x i8] zeroinitializer }, align 32
@gb_hd_cport_allocate._entry_ptr = internal global ptr @gb_hd_cport_allocate._entry, section ".printk_index", align 4
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"greybus_host_device\00", [44 x i8] zeroinitializer }, align 32
@greybus_hd_type = dso_local global { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str.7, ptr null, ptr null, ptr null, ptr @gb_hd_release, ptr null }, [40 x i8] zeroinitializer }, align 32
@gb_hd_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 137, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mandatory hd-callbacks missing\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gb_hd_create\00", [19 x i8] zeroinitializer }, align 32
@gb_hd_create._entry_ptr = internal global ptr @gb_hd_create._entry, section ".printk_index", align 4
@gb_hd_create._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 142, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"greybus host-device buffers too small\0A\00", [57 x i8] zeroinitializer }, align 32
@gb_hd_create._entry_ptr.12 = internal global ptr @gb_hd_create._entry.10, section ".printk_index", align 4
@gb_hd_create._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.2, i32 147, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid number of CPorts: %zu\0A\00", [33 x i8] zeroinitializer }, align 32
@gb_hd_create._entry_ptr.15 = internal global ptr @gb_hd_create._entry.13, section ".printk_index", align 4
@gb_hd_create._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.2, i32 157, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"limiting buffer size to %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@gb_hd_create._entry_ptr.19 = internal global ptr @gb_hd_create._entry.16, section ".printk_index", align 4
@gb_hd_bus_id_map = internal global { %struct.ida, [44 x i8] } zeroinitializer, align 32
@greybus_bus_type = external dso_local global %struct.bus_type, align 4
@bus_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @bus_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"greybus%d\00", [22 x i8] zeroinitializer }, align 32
@gb_hd_create._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.9, ptr @.str.2, i32 191, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to create svc\0A\00", [42 x i8] zeroinitializer }, align 32
@gb_hd_create._entry_ptr.23 = internal global ptr @gb_hd_create._entry.21, section ".printk_index", align 4
@__kstrtab_gb_hd_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_gb_hd_create = external dso_local constant [0 x i8], align 1
@__ksymtab_gb_hd_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gb_hd_create to i32), ptr @__kstrtab_gb_hd_create, ptr @__kstrtabns_gb_hd_create }, section "___ksymtab_gpl+gb_hd_create", align 4
@__kstrtab_gb_hd_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_gb_hd_add = external dso_local constant [0 x i8], align 1
@__ksymtab_gb_hd_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gb_hd_add to i32), ptr @__kstrtab_gb_hd_add, ptr @__kstrtabns_gb_hd_add }, section "___ksymtab_gpl+gb_hd_add", align 4
@__kstrtab_gb_hd_del = external dso_local constant [0 x i8], align 1
@__kstrtabns_gb_hd_del = external dso_local constant [0 x i8], align 1
@__ksymtab_gb_hd_del = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gb_hd_del to i32), ptr @__kstrtab_gb_hd_del, ptr @__kstrtabns_gb_hd_del }, section "___ksymtab_gpl+gb_hd_del", align 4
@__kstrtab_gb_hd_shutdown = external dso_local constant [0 x i8], align 1
@__kstrtabns_gb_hd_shutdown = external dso_local constant [0 x i8], align 1
@__ksymtab_gb_hd_shutdown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gb_hd_shutdown to i32), ptr @__kstrtab_gb_hd_shutdown, ptr @__kstrtabns_gb_hd_shutdown }, section "___ksymtab_gpl+gb_hd_shutdown", align 4
@__kstrtab_gb_hd_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_gb_hd_put = external dso_local constant [0 x i8], align 1
@__ksymtab_gb_hd_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gb_hd_put to i32), ptr @__kstrtab_gb_hd_put, ptr @__kstrtabns_gb_hd_put }, section "___ksymtab_gpl+gb_hd_put", align 4
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/greybus/greybus_trace.h\00", [32 x i8] zeroinitializer }, align 32
@trace_gb_hd_release.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@bus_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @bus_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@bus_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_bus_id, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_bus_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bus_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bus_id\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@trace_gb_hd_create.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_gb_hd_add.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_gb_hd_del.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 55, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 88, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 120, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant [16 x i8] c"greybus_hd_type\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 119, i32 20 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 137, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 142, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 147, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 156, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"gb_hd_bus_id_map\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 22, i32 19 }
@___asan_gen_.96 = private unnamed_addr constant [11 x i8] c"bus_groups\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 185, i32 25 }
@___asan_gen_.102 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 191, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [35 x i8] c"../drivers/greybus/greybus_trace.h\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 467, i32 1 }
@___asan_gen_.115 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 108, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 378, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [10 x i8] c"bus_group\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 46, i32 1 }
@___asan_gen_.126 = private unnamed_addr constant [10 x i8] c"bus_attrs\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 42, i32 26 }
@___asan_gen_.129 = private unnamed_addr constant [16 x i8] c"dev_attr_bus_id\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 40, i32 8 }
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.136 = private constant [24 x i8] c"../drivers/greybus/hd.c\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 38, i32 22 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__ksymtab___SCK__tp_func_gb_hd_add, ptr @__ksymtab___SCK__tp_func_gb_hd_create, ptr @__ksymtab___SCK__tp_func_gb_hd_del, ptr @__ksymtab___SCK__tp_func_gb_hd_in, ptr @__ksymtab___SCK__tp_func_gb_hd_release, ptr @__ksymtab___SCK__tp_func_gb_message_submit, ptr @__ksymtab___traceiter_gb_hd_add, ptr @__ksymtab___traceiter_gb_hd_create, ptr @__ksymtab___traceiter_gb_hd_del, ptr @__ksymtab___traceiter_gb_hd_in, ptr @__ksymtab___traceiter_gb_hd_release, ptr @__ksymtab___traceiter_gb_message_submit, ptr @__ksymtab___tracepoint_gb_hd_add, ptr @__ksymtab___tracepoint_gb_hd_create, ptr @__ksymtab___tracepoint_gb_hd_del, ptr @__ksymtab___tracepoint_gb_hd_in, ptr @__ksymtab___tracepoint_gb_hd_release, ptr @__ksymtab___tracepoint_gb_message_submit, ptr @__ksymtab_gb_hd_add, ptr @__ksymtab_gb_hd_cport_release_reserved, ptr @__ksymtab_gb_hd_cport_reserve, ptr @__ksymtab_gb_hd_create, ptr @__ksymtab_gb_hd_del, ptr @__ksymtab_gb_hd_output, ptr @__ksymtab_gb_hd_put, ptr @__ksymtab_gb_hd_shutdown, ptr @gb_hd_cport_allocate._entry, ptr @gb_hd_cport_allocate._entry_ptr, ptr @gb_hd_cport_reserve._entry, ptr @gb_hd_cport_reserve._entry_ptr, ptr @gb_hd_create._entry, ptr @gb_hd_create._entry.10, ptr @gb_hd_create._entry.13, ptr @gb_hd_create._entry.16, ptr @gb_hd_create._entry.21, ptr @gb_hd_create._entry_ptr, ptr @gb_hd_create._entry_ptr.12, ptr @gb_hd_create._entry_ptr.15, ptr @gb_hd_create._entry_ptr.19, ptr @gb_hd_create._entry_ptr.23, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @greybus_hd_type, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @gb_hd_bus_id_map, ptr @bus_groups, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @xa_init_flags.__key, ptr @.str.27, ptr @bus_group, ptr @bus_attrs, ptr @dev_attr_bus_id, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_hd_cport_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_hd_cport_allocate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @greybus_hd_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_hd_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_hd_create._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_hd_create._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_hd_create._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_hd_bus_id_map to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_hd_create._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_bus_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_gb_hd_create(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_gb_hd_release(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_gb_hd_add(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_gb_hd_del(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_gb_hd_in(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_gb_message_submit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_hd_output(ptr noundef %hd, ptr noundef %req, i16 noundef zeroext %size, i8 noundef zeroext %cmd, i1 noundef zeroext %async) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hd, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %driver = getelementptr inbounds %struct.gb_host_device, ptr %hd, i32 0, i32 2
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false2

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %output = getelementptr inbounds %struct.gb_hd_driver, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %output, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %lor.lhs.false2.return_crit_edge, label %if.end

lor.lhs.false2.return_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 %3(ptr noundef nonnull %hd, ptr noundef %req, i16 noundef zeroext %size, i8 noundef zeroext %cmd, i1 noundef zeroext %async) #9
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false2.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %lor.lhs.false2.return_crit_edge ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_hd_cport_reserve(ptr noundef %hd, i16 noundef zeroext %cport_id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cport_id_map = getelementptr inbounds %struct.gb_host_device, ptr %hd, i32 0, i32 5
  %conv = zext i16 %cport_id to i32
  %call = tail call i32 @ida_alloc_range(ptr noundef %cport_id_map, i32 noundef %conv, i32 noundef %conv, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %hd, ptr noundef nonnull @.str, i32 noundef %conv) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gb_hd_cport_release_reserved(ptr noundef %hd, i16 noundef zeroext %cport_id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cport_id_map = getelementptr inbounds %struct.gb_host_device, ptr %hd, i32 0, i32 5
  %conv = zext i16 %cport_id to i32
  tail call void @ida_free(ptr noundef %cport_id_map, i32 noundef %conv) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_hd_cport_allocate(ptr noundef %hd, i32 noundef %cport_id, i32 noundef %flags) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cport_id_map = getelementptr inbounds %struct.gb_host_device, ptr %hd, i32 0, i32 5
  %driver = getelementptr inbounds %struct.gb_host_device, ptr %hd, i32 0, i32 2
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %cport_allocate = getelementptr inbounds %struct.gb_hd_driver, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cport_allocate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cport_allocate, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 %3(ptr noundef %hd, i32 noundef %cport_id, i32 noundef %flags) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cport_id)
  %cmp = icmp slt i32 %cport_id, 0
  %num_cports = getelementptr inbounds %struct.gb_host_device, ptr %hd, i32 0, i32 6
  %4 = ptrtoint ptr %num_cports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_cports, align 4
  br i1 %cmp, label %if.end.if.end9_crit_edge, label %if.else

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %cport_id)
  %cmp5 = icmp ugt i32 %5, %cport_id
  br i1 %cmp5, label %if.then6, label %do.end

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %add = add nuw i32 %cport_id, 1
  br label %if.end9

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %hd, ptr noundef nonnull @.str.5, i32 noundef %cport_id) #12
  br label %cleanup

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %ida_start.0 = phi i32 [ %cport_id, %if.then6 ], [ 0, %if.end.if.end9_crit_edge ]
  %ida_end.0 = phi i32 [ %add, %if.then6 ], [ %5, %if.end.if.end9_crit_edge ]
  %sub = add i32 %ida_end.0, -1
  %call10 = tail call i32 @ida_alloc_range(ptr noundef %cport_id_map, i32 noundef %ida_start.0, i32 noundef %sub, i32 noundef 3264) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call10, %if.end9 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gb_hd_cport_release(ptr noundef %hd, i16 noundef zeroext %cport_id) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.gb_host_device, ptr %hd, i32 0, i32 2
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %cport_release = getelementptr inbounds %struct.gb_hd_driver, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cport_release to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cport_release, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %3(ptr noundef %hd, i16 noundef zeroext %cport_id) #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %cport_id_map = getelementptr inbounds %struct.gb_host_device, ptr %hd, i32 0, i32 5
  %conv = zext i16 %cport_id to i32
  tail call void @ida_free(ptr noundef %cport_id_map, i32 noundef %conv) #9
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_hd_release(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_gb_hd_release(ptr noundef %dev)
  %svc = getelementptr inbounds %struct.gb_host_device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %svc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %svc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gb_svc_put(ptr noundef nonnull %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bus_id = getelementptr inbounds %struct.gb_host_device, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %bus_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bus_id, align 8
  tail call void @ida_free(ptr noundef nonnull @gb_hd_bus_id_map, i32 noundef %3) #9
  %cport_id_map = getelementptr inbounds %struct.gb_host_device, ptr %dev, i32 0, i32 5
  tail call void @ida_destroy(ptr noundef %cport_id_map) #9
  tail call void @kfree(ptr noundef %dev) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gb_hd_create(ptr noundef %driver, ptr noundef %parent, i32 noundef %buffer_size_max, i32 noundef %num_cports) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %message_send = getelementptr inbounds %struct.gb_hd_driver, ptr %driver, i32 0, i32 10
  %0 = ptrtoint ptr %message_send to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %message_send, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %message_cancel = getelementptr inbounds %struct.gb_hd_driver, ptr %driver, i32 0, i32 11
  %2 = ptrtoint ptr %message_cancel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %message_cancel, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %parent, ptr noundef nonnull @.str.8) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %buffer_size_max)
  %cmp = icmp ult i32 %buffer_size_max, 8
  br i1 %cmp, label %do.end5, label %if.end7

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %parent, ptr noundef nonnull @.str.11) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %4 = add i32 %num_cports, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %4)
  %5 = icmp ult i32 %4, -4096
  br i1 %5, label %do.end14, label %if.end16

do.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %parent, ptr noundef nonnull @.str.14, i32 noundef %num_cports) #12
  br label %cleanup

if.end16:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %buffer_size_max)
  %cmp17 = icmp ugt i32 %buffer_size_max, 65535
  br i1 %cmp17, label %do.end21, label %if.end16.if.end8.i.i_crit_edge

if.end16.if.end8.i.i_crit_edge:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

do.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %parent, ptr noundef nonnull @.str.17, i32 noundef 65535) #12
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %do.end21, %if.end16.if.end8.i.i_crit_edge
  %buffer_size_max.addr.0 = phi i32 [ 65535, %do.end21 ], [ %buffer_size_max, %if.end16.if.end8.i.i_crit_edge ]
  %6 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver, align 4
  %add = add i32 %7, 1016
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #13
  %tobool24.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool24.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end27

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end27:                                         ; preds = %if.end8.i.i
  %call28 = tail call i32 @ida_alloc_range(ptr noundef nonnull @gb_hd_bus_id_map, i32 noundef 1, i32 noundef -1, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #9
  %8 = inttoptr i32 %call28 to ptr
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  %bus_id = getelementptr inbounds %struct.gb_host_device, ptr %call9.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %bus_id to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call28, ptr %bus_id, align 32
  %driver33 = getelementptr inbounds %struct.gb_host_device, ptr %call9.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %driver33 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %driver, ptr %driver33, align 4
  %modules = getelementptr inbounds %struct.gb_host_device, ptr %call9.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %modules to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %modules, ptr %modules, align 8
  %prev.i = getelementptr inbounds %struct.gb_host_device, ptr %call9.i.i, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %modules, ptr %prev.i, align 4
  %connections = getelementptr inbounds %struct.gb_host_device, ptr %call9.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %connections to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %connections, ptr %connections, align 16
  %prev.i98 = getelementptr inbounds %struct.gb_host_device, ptr %call9.i.i, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %prev.i98 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %connections, ptr %prev.i98, align 4
  %cport_id_map = getelementptr inbounds %struct.gb_host_device, ptr %call9.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %cport_id_map, ptr noundef nonnull @.str.27, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #9
  %xa_flags.i.i = getelementptr inbounds %struct.gb_host_device, ptr %call9.i.i, i32 0, i32 5, i32 0, i32 1
  %15 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 67108869, ptr %xa_flags.i.i, align 4
  %xa_head.i.i = getelementptr inbounds %struct.gb_host_device, ptr %call9.i.i, i32 0, i32 5, i32 0, i32 2
  %16 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %xa_head.i.i, align 8
  %buffer_size_max34 = getelementptr inbounds %struct.gb_host_device, ptr %call9.i.i, i32 0, i32 7
  %17 = ptrtoint ptr %buffer_size_max34 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %buffer_size_max.addr.0, ptr %buffer_size_max34, align 16
  %num_cports35 = getelementptr inbounds %struct.gb_host_device, ptr %call9.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %num_cports35 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %num_cports, ptr %num_cports35, align 4
  %parent36 = getelementptr inbounds %struct.device, ptr %call9.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %parent36 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %parent, ptr %parent36, align 8
  %bus = getelementptr inbounds %struct.device, ptr %call9.i.i, i32 0, i32 5
  %20 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @greybus_bus_type, ptr %bus, align 8
  %type = getelementptr inbounds %struct.device, ptr %call9.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @greybus_hd_type, ptr %type, align 4
  %groups = getelementptr inbounds %struct.device, ptr %call9.i.i, i32 0, i32 34
  %22 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @bus_groups, ptr %groups, align 8
  %dma_mask = getelementptr inbounds %struct.device, ptr %parent, i32 0, i32 18
  %23 = ptrtoint ptr %dma_mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dma_mask, align 8
  %dma_mask43 = getelementptr inbounds %struct.device, ptr %call9.i.i, i32 0, i32 18
  %25 = ptrtoint ptr %dma_mask43 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %dma_mask43, align 8
  tail call void @device_initialize(ptr noundef nonnull %call9.i.i) #9
  %26 = ptrtoint ptr %bus_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bus_id, align 32
  %call47 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %call9.i.i, ptr noundef nonnull @.str.20, i32 noundef %27) #9
  tail call fastcc void @trace_gb_hd_create(ptr noundef nonnull %call9.i.i)
  %call48 = tail call ptr @gb_svc_create(ptr noundef nonnull %call9.i.i) #9
  %svc = getelementptr inbounds %struct.gb_host_device, ptr %call9.i.i, i32 0, i32 8
  %28 = ptrtoint ptr %svc to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call48, ptr %svc, align 4
  %tobool50.not = icmp eq ptr %call48, null
  br i1 %tobool50.not, label %do.end54, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end54:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call9.i.i, ptr noundef nonnull @.str.22) #12
  tail call void @put_device(ptr noundef nonnull %call9.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end54, %if.end32.cleanup_crit_edge, %if.then30, %if.end8.i.i.cleanup_crit_edge, %do.end14, %do.end5, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end5 ], [ inttoptr (i32 -22 to ptr), %do.end14 ], [ %8, %if.then30 ], [ inttoptr (i32 -12 to ptr), %do.end54 ], [ inttoptr (i32 -22 to ptr), %do.end ], [ %call9.i.i, %if.end32.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_gb_hd_create(ptr noundef %hd) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_hd_create, i32 0, i32 1), ptr blockaddress(@trace_gb_hd_create, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !123

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !124

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !125
  %call42 = tail call i32 @__traceiter_gb_hd_create(ptr noundef null, ptr noundef %hd) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !126
  %13 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !124

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !127
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_hd_create, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_hd_create, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_gb_hd_create.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_gb_hd_create.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 461, ptr noundef nonnull @.str.25) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !128
  %31 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gb_svc_create(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_hd_add(ptr noundef %hd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @device_add(ptr noundef %hd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %svc = getelementptr inbounds %struct.gb_host_device, ptr %hd, i32 0, i32 8
  %0 = ptrtoint ptr %svc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %svc, align 4
  %call1 = tail call i32 @gb_svc_add(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @device_del(ptr noundef %hd) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @trace_gb_hd_add(ptr noundef %hd)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ 0, %if.end5 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_svc_add(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_gb_hd_add(ptr noundef %hd) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_hd_add, i32 0, i32 1), ptr blockaddress(@trace_gb_hd_add, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !123

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !124

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !129
  %call42 = tail call i32 @__traceiter_gb_hd_add(ptr noundef null, ptr noundef %hd) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !130
  %13 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !124

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !127
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_hd_add, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_hd_add, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_gb_hd_add.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_gb_hd_add.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 473, ptr noundef nonnull @.str.25) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !128
  %31 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gb_hd_del(ptr noundef %hd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_gb_hd_del(ptr noundef %hd)
  %svc = getelementptr inbounds %struct.gb_host_device, ptr %hd, i32 0, i32 8
  %0 = ptrtoint ptr %svc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %svc, align 4
  tail call void @gb_svc_del(ptr noundef %1) #9
  tail call void @device_del(ptr noundef %hd) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_gb_hd_del(ptr noundef %hd) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_hd_del, i32 0, i32 1), ptr blockaddress(@trace_gb_hd_del, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !123

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !124

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !131
  %call42 = tail call i32 @__traceiter_gb_hd_del(ptr noundef null, ptr noundef %hd) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !132
  %13 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !124

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !127
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_hd_del, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_hd_del, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_gb_hd_del.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_gb_hd_del.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 479, ptr noundef nonnull @.str.25) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !128
  %31 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_svc_del(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gb_hd_shutdown(ptr nocapture noundef readonly %hd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %svc = getelementptr inbounds %struct.gb_host_device, ptr %hd, i32 0, i32 8
  %0 = ptrtoint ptr %svc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %svc, align 4
  tail call void @gb_svc_del(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gb_hd_put(ptr noundef %hd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @put_device(ptr noundef %hd) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_hd_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__raw_spin_lock_init(ptr noundef nonnull @gb_hd_bus_id_map, ptr noundef nonnull @.str.27, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #9
  store i32 67108869, ptr getelementptr inbounds (%struct.ida, ptr @gb_hd_bus_id_map, i32 0, i32 0, i32 1), align 4
  store ptr null, ptr getelementptr inbounds (%struct.ida, ptr @gb_hd_bus_id_map, i32 0, i32 0, i32 2), align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gb_hd_exit() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ida_destroy(ptr noundef nonnull @gb_hd_bus_id_map) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_gb_hd_release(ptr noundef %hd) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_hd_release, i32 0, i32 1), ptr blockaddress(@trace_gb_hd_release, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !123

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !124

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !133
  %call42 = tail call i32 @__traceiter_gb_hd_release(ptr noundef null, ptr noundef %hd) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !134
  %13 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !124

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !127
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_hd_release, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_hd_release, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_gb_hd_release.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_gb_hd_release.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 467, ptr noundef nonnull @.str.25) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !128
  %31 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_svc_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bus_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_id = getelementptr inbounds %struct.gb_host_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %bus_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bus_id, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.29, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !28, !29, !30, !31, !32, !33, !34, !36, !38, !40, !41, !42, !43, !45, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !69, !70, !71, !73, !75, !77, !79, !81, !83, !85, !86, !87, !88, !90, !91, !93, !94, !96, !97, !99, !101, !102, !104, !106, !107, !109, !110, !112}
!llvm.named.register.sp = !{!113}
!llvm.module.flags = !{!114, !115, !116, !117, !118, !119, !120, !121}
!llvm.ident = !{!122}

!0 = !{ptr @__ksymtab___tracepoint_gb_hd_create, !1, !"__ksymtab___tracepoint_gb_hd_create", i1 false, i1 false}
!1 = !{!"../drivers/greybus/hd.c", i32 15, i32 1}
!2 = !{ptr @__ksymtab___traceiter_gb_hd_create, !1, !"__ksymtab___traceiter_gb_hd_create", i1 false, i1 false}
!3 = !{ptr @__ksymtab___SCK__tp_func_gb_hd_create, !1, !"__ksymtab___SCK__tp_func_gb_hd_create", i1 false, i1 false}
!4 = !{ptr @__ksymtab___tracepoint_gb_hd_release, !5, !"__ksymtab___tracepoint_gb_hd_release", i1 false, i1 false}
!5 = !{!"../drivers/greybus/hd.c", i32 16, i32 1}
!6 = !{ptr @__ksymtab___traceiter_gb_hd_release, !5, !"__ksymtab___traceiter_gb_hd_release", i1 false, i1 false}
!7 = !{ptr @__ksymtab___SCK__tp_func_gb_hd_release, !5, !"__ksymtab___SCK__tp_func_gb_hd_release", i1 false, i1 false}
!8 = !{ptr @__ksymtab___tracepoint_gb_hd_add, !9, !"__ksymtab___tracepoint_gb_hd_add", i1 false, i1 false}
!9 = !{!"../drivers/greybus/hd.c", i32 17, i32 1}
!10 = !{ptr @__ksymtab___traceiter_gb_hd_add, !9, !"__ksymtab___traceiter_gb_hd_add", i1 false, i1 false}
!11 = !{ptr @__ksymtab___SCK__tp_func_gb_hd_add, !9, !"__ksymtab___SCK__tp_func_gb_hd_add", i1 false, i1 false}
!12 = !{ptr @__ksymtab___tracepoint_gb_hd_del, !13, !"__ksymtab___tracepoint_gb_hd_del", i1 false, i1 false}
!13 = !{!"../drivers/greybus/hd.c", i32 18, i32 1}
!14 = !{ptr @__ksymtab___traceiter_gb_hd_del, !13, !"__ksymtab___traceiter_gb_hd_del", i1 false, i1 false}
!15 = !{ptr @__ksymtab___SCK__tp_func_gb_hd_del, !13, !"__ksymtab___SCK__tp_func_gb_hd_del", i1 false, i1 false}
!16 = !{ptr @__ksymtab___tracepoint_gb_hd_in, !17, !"__ksymtab___tracepoint_gb_hd_in", i1 false, i1 false}
!17 = !{!"../drivers/greybus/hd.c", i32 19, i32 1}
!18 = !{ptr @__ksymtab___traceiter_gb_hd_in, !17, !"__ksymtab___traceiter_gb_hd_in", i1 false, i1 false}
!19 = !{ptr @__ksymtab___SCK__tp_func_gb_hd_in, !17, !"__ksymtab___SCK__tp_func_gb_hd_in", i1 false, i1 false}
!20 = !{ptr @__ksymtab___tracepoint_gb_message_submit, !21, !"__ksymtab___tracepoint_gb_message_submit", i1 false, i1 false}
!21 = !{!"../drivers/greybus/hd.c", i32 20, i32 1}
!22 = !{ptr @__ksymtab___traceiter_gb_message_submit, !21, !"__ksymtab___traceiter_gb_message_submit", i1 false, i1 false}
!23 = !{ptr @__ksymtab___SCK__tp_func_gb_message_submit, !21, !"__ksymtab___SCK__tp_func_gb_message_submit", i1 false, i1 false}
!24 = !{ptr @__ksymtab_gb_hd_output, !25, !"__ksymtab_gb_hd_output", i1 false, i1 false}
!25 = !{!"../drivers/greybus/hd.c", i32 31, i32 1}
!26 = !{ptr @.str, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/greybus/hd.c", i32 55, i32 3}
!28 = !{ptr @.str.1, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @gb_hd_cport_reserve._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @gb_hd_cport_reserve._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @__ksymtab_gb_hd_cport_reserve, !35, !"__ksymtab_gb_hd_cport_reserve", i1 false, i1 false}
!35 = !{!"../drivers/greybus/hd.c", i32 61, i32 1}
!36 = !{ptr @__ksymtab_gb_hd_cport_release_reserved, !37, !"__ksymtab_gb_hd_cport_release_reserved", i1 false, i1 false}
!37 = !{!"../drivers/greybus/hd.c", i32 69, i32 1}
!38 = !{ptr @.str.5, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/greybus/hd.c", i32 88, i32 3}
!40 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @gb_hd_cport_allocate._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @gb_hd_cport_allocate._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.7, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/greybus/hd.c", i32 120, i32 11}
!45 = !{ptr @greybus_hd_type, !46, !"greybus_hd_type", i1 false, i1 false}
!46 = !{!"../drivers/greybus/hd.c", i32 119, i32 20}
!47 = !{ptr @.str.8, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/greybus/hd.c", i32 137, i32 3}
!49 = !{ptr @.str.9, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @gb_hd_create._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @gb_hd_create._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.11, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/greybus/hd.c", i32 142, i32 3}
!54 = !{ptr @gb_hd_create._entry.10, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @gb_hd_create._entry_ptr.12, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/greybus/hd.c", i32 147, i32 3}
!58 = !{ptr @gb_hd_create._entry.13, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @gb_hd_create._entry_ptr.15, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.17, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/greybus/hd.c", i32 156, i32 3}
!62 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @gb_hd_create._entry.16, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @gb_hd_create._entry_ptr.19, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/greybus/hd.c", i32 185, i32 25}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/greybus/hd.c", i32 191, i32 3}
!69 = !{ptr @gb_hd_create._entry.21, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @gb_hd_create._entry_ptr.23, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @__ksymtab_gb_hd_create, !72, !"__ksymtab_gb_hd_create", i1 false, i1 false}
!72 = !{!"../drivers/greybus/hd.c", i32 198, i32 1}
!73 = !{ptr @__ksymtab_gb_hd_add, !74, !"__ksymtab_gb_hd_add", i1 false, i1 false}
!74 = !{!"../drivers/greybus/hd.c", i32 218, i32 1}
!75 = !{ptr @__ksymtab_gb_hd_del, !76, !"__ksymtab_gb_hd_del", i1 false, i1 false}
!76 = !{!"../drivers/greybus/hd.c", i32 232, i32 1}
!77 = !{ptr @__ksymtab_gb_hd_shutdown, !78, !"__ksymtab_gb_hd_shutdown", i1 false, i1 false}
!78 = !{!"../drivers/greybus/hd.c", i32 238, i32 1}
!79 = !{ptr @__ksymtab_gb_hd_put, !80, !"__ksymtab_gb_hd_put", i1 false, i1 false}
!80 = !{!"../drivers/greybus/hd.c", i32 244, i32 1}
!81 = !{ptr @gb_hd_bus_id_map, !82, !"gb_hd_bus_id_map", i1 false, i1 false}
!82 = !{!"../drivers/greybus/hd.c", i32 22, i32 19}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../drivers/greybus/greybus_trace.h", i32 467, i32 1}
!85 = !{ptr @.str.24, !84, !"<string literal>", i1 false, i1 false}
!86 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!87 = !{ptr @.str.25, !84, !"<string literal>", i1 false, i1 false}
!88 = distinct !{null, !89, !"__already_done", i1 false, i1 false}
!89 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!90 = !{ptr @.str.26, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @xa_init_flags.__key, !92, !"__key", i1 false, i1 false}
!92 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!93 = !{ptr @.str.27, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @bus_groups, !95, !"bus_groups", i1 false, i1 false}
!95 = !{!"../drivers/greybus/hd.c", i32 46, i32 1}
!96 = !{ptr @bus_group, !95, !"bus_group", i1 false, i1 false}
!97 = !{ptr @bus_attrs, !98, !"bus_attrs", i1 false, i1 false}
!98 = !{!"../drivers/greybus/hd.c", i32 42, i32 26}
!99 = !{ptr @.str.28, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/greybus/hd.c", i32 40, i32 8}
!101 = !{ptr @dev_attr_bus_id, !100, !"dev_attr_bus_id", i1 false, i1 false}
!102 = !{ptr @.str.29, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/greybus/hd.c", i32 38, i32 22}
!104 = distinct !{null, !105, !"__already_done", i1 false, i1 false}
!105 = !{!"../drivers/greybus/greybus_trace.h", i32 461, i32 1}
!106 = distinct !{null, !105, !"__warned", i1 false, i1 false}
!107 = distinct !{null, !108, !"__already_done", i1 false, i1 false}
!108 = !{!"../drivers/greybus/greybus_trace.h", i32 473, i32 1}
!109 = distinct !{null, !108, !"__warned", i1 false, i1 false}
!110 = distinct !{null, !111, !"__already_done", i1 false, i1 false}
!111 = !{!"../drivers/greybus/greybus_trace.h", i32 479, i32 1}
!112 = distinct !{null, !111, !"__warned", i1 false, i1 false}
!113 = !{!"sp"}
!114 = !{i32 1, !"wchar_size", i32 2}
!115 = !{i32 1, !"min_enum_size", i32 4}
!116 = !{i32 8, !"branch-target-enforcement", i32 0}
!117 = !{i32 8, !"sign-return-address", i32 0}
!118 = !{i32 8, !"sign-return-address-all", i32 0}
!119 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!120 = !{i32 7, !"uwtable", i32 1}
!121 = !{i32 7, !"frame-pointer", i32 2}
!122 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!123 = !{i64 2148695319, i64 2148695324, i64 2148695337, i64 2148695381, i64 2148695415, i64 2148695436}
!124 = !{!"branch_weights", i32 2000, i32 1}
!125 = !{i64 2154693604}
!126 = !{i64 2154693795}
!127 = !{i64 2149929726}
!128 = !{i64 2149930762}
!129 = !{i64 2154725402}
!130 = !{i64 2154725587}
!131 = !{i64 2154745095}
!132 = !{i64 2154745280}
!133 = !{i64 2154709554}
!134 = !{i64 2154709747}
