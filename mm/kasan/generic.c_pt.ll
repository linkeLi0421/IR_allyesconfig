; ModuleID = '/llk/IR_all_yes/mm/kasan/generic.c_pt.bc'
source_filename = "../mm/kasan/generic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__asan_register_globals\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_register_globals\09\09\09\09"
module asm "\09.long\09__crc___asan_register_globals\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_register_globals:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_register_globals\22\09\09\09\09\09"
module asm "__kstrtabns___asan_register_globals:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_unregister_globals\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_unregister_globals\09\09\09\09"
module asm "\09.long\09__crc___asan_unregister_globals\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_unregister_globals:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_unregister_globals\22\09\09\09\09\09"
module asm "__kstrtabns___asan_unregister_globals:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_load1\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_load1\09\09\09\09"
module asm "\09.long\09__crc___asan_load1\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_load1:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_load1\22\09\09\09\09\09"
module asm "__kstrtabns___asan_load1:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_load1_noabort\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_load1_noabort\09\09\09\09"
module asm "\09.long\09__crc___asan_load1_noabort\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_load1_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_load1_noabort\22\09\09\09\09\09"
module asm "__kstrtabns___asan_load1_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_store1\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_store1\09\09\09\09"
module asm "\09.long\09__crc___asan_store1\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_store1:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_store1\22\09\09\09\09\09"
module asm "__kstrtabns___asan_store1:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_store1_noabort\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_store1_noabort\09\09\09\09"
module asm "\09.long\09__crc___asan_store1_noabort\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_store1_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_store1_noabort\22\09\09\09\09\09"
module asm "__kstrtabns___asan_store1_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_load2\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_load2\09\09\09\09"
module asm "\09.long\09__crc___asan_load2\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_load2:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_load2\22\09\09\09\09\09"
module asm "__kstrtabns___asan_load2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_load2_noabort\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_load2_noabort\09\09\09\09"
module asm "\09.long\09__crc___asan_load2_noabort\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_load2_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_load2_noabort\22\09\09\09\09\09"
module asm "__kstrtabns___asan_load2_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_store2\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_store2\09\09\09\09"
module asm "\09.long\09__crc___asan_store2\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_store2:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_store2\22\09\09\09\09\09"
module asm "__kstrtabns___asan_store2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_store2_noabort\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_store2_noabort\09\09\09\09"
module asm "\09.long\09__crc___asan_store2_noabort\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_store2_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_store2_noabort\22\09\09\09\09\09"
module asm "__kstrtabns___asan_store2_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_load4\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_load4\09\09\09\09"
module asm "\09.long\09__crc___asan_load4\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_load4:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_load4\22\09\09\09\09\09"
module asm "__kstrtabns___asan_load4:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_load4_noabort\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_load4_noabort\09\09\09\09"
module asm "\09.long\09__crc___asan_load4_noabort\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_load4_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_load4_noabort\22\09\09\09\09\09"
module asm "__kstrtabns___asan_load4_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_store4\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_store4\09\09\09\09"
module asm "\09.long\09__crc___asan_store4\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_store4:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_store4\22\09\09\09\09\09"
module asm "__kstrtabns___asan_store4:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_store4_noabort\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_store4_noabort\09\09\09\09"
module asm "\09.long\09__crc___asan_store4_noabort\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_store4_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_store4_noabort\22\09\09\09\09\09"
module asm "__kstrtabns___asan_store4_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_load8\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_load8\09\09\09\09"
module asm "\09.long\09__crc___asan_load8\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_load8:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_load8\22\09\09\09\09\09"
module asm "__kstrtabns___asan_load8:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_load8_noabort\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_load8_noabort\09\09\09\09"
module asm "\09.long\09__crc___asan_load8_noabort\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_load8_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_load8_noabort\22\09\09\09\09\09"
module asm "__kstrtabns___asan_load8_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_store8\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_store8\09\09\09\09"
module asm "\09.long\09__crc___asan_store8\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_store8:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_store8\22\09\09\09\09\09"
module asm "__kstrtabns___asan_store8:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_store8_noabort\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_store8_noabort\09\09\09\09"
module asm "\09.long\09__crc___asan_store8_noabort\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_store8_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_store8_noabort\22\09\09\09\09\09"
module asm "__kstrtabns___asan_store8_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_load16\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_load16\09\09\09\09"
module asm "\09.long\09__crc___asan_load16\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_load16:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_load16\22\09\09\09\09\09"
module asm "__kstrtabns___asan_load16:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_load16_noabort\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_load16_noabort\09\09\09\09"
module asm "\09.long\09__crc___asan_load16_noabort\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_load16_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_load16_noabort\22\09\09\09\09\09"
module asm "__kstrtabns___asan_load16_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_store16\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_store16\09\09\09\09"
module asm "\09.long\09__crc___asan_store16\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_store16:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_store16\22\09\09\09\09\09"
module asm "__kstrtabns___asan_store16:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_store16_noabort\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_store16_noabort\09\09\09\09"
module asm "\09.long\09__crc___asan_store16_noabort\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_store16_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_store16_noabort\22\09\09\09\09\09"
module asm "__kstrtabns___asan_store16_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_loadN\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_loadN\09\09\09\09"
module asm "\09.long\09__crc___asan_loadN\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_loadN:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_loadN\22\09\09\09\09\09"
module asm "__kstrtabns___asan_loadN:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_loadN_noabort\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_loadN_noabort\09\09\09\09"
module asm "\09.long\09__crc___asan_loadN_noabort\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_loadN_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_loadN_noabort\22\09\09\09\09\09"
module asm "__kstrtabns___asan_loadN_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_storeN\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_storeN\09\09\09\09"
module asm "\09.long\09__crc___asan_storeN\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_storeN:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_storeN\22\09\09\09\09\09"
module asm "__kstrtabns___asan_storeN:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_storeN_noabort\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_storeN_noabort\09\09\09\09"
module asm "\09.long\09__crc___asan_storeN_noabort\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_storeN_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_storeN_noabort\22\09\09\09\09\09"
module asm "__kstrtabns___asan_storeN_noabort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_handle_no_return\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_handle_no_return\09\09\09\09"
module asm "\09.long\09__crc___asan_handle_no_return\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_handle_no_return:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_handle_no_return\22\09\09\09\09\09"
module asm "__kstrtabns___asan_handle_no_return:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_alloca_poison\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_alloca_poison\09\09\09\09"
module asm "\09.long\09__crc___asan_alloca_poison\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_alloca_poison:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_alloca_poison\22\09\09\09\09\09"
module asm "__kstrtabns___asan_alloca_poison:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_allocas_unpoison\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_allocas_unpoison\09\09\09\09"
module asm "\09.long\09__crc___asan_allocas_unpoison\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_allocas_unpoison:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_allocas_unpoison\22\09\09\09\09\09"
module asm "__kstrtabns___asan_allocas_unpoison:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_set_shadow_00\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_set_shadow_00\09\09\09\09"
module asm "\09.long\09__crc___asan_set_shadow_00\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_set_shadow_00:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_set_shadow_00\22\09\09\09\09\09"
module asm "__kstrtabns___asan_set_shadow_00:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_set_shadow_f1\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_set_shadow_f1\09\09\09\09"
module asm "\09.long\09__crc___asan_set_shadow_f1\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_set_shadow_f1:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_set_shadow_f1\22\09\09\09\09\09"
module asm "__kstrtabns___asan_set_shadow_f1:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_set_shadow_f2\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_set_shadow_f2\09\09\09\09"
module asm "\09.long\09__crc___asan_set_shadow_f2\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_set_shadow_f2:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_set_shadow_f2\22\09\09\09\09\09"
module asm "__kstrtabns___asan_set_shadow_f2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_set_shadow_f3\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_set_shadow_f3\09\09\09\09"
module asm "\09.long\09__crc___asan_set_shadow_f3\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_set_shadow_f3:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_set_shadow_f3\22\09\09\09\09\09"
module asm "__kstrtabns___asan_set_shadow_f3:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_set_shadow_f5\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_set_shadow_f5\09\09\09\09"
module asm "\09.long\09__crc___asan_set_shadow_f5\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_set_shadow_f5:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_set_shadow_f5\22\09\09\09\09\09"
module asm "__kstrtabns___asan_set_shadow_f5:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__asan_set_shadow_f8\22, \22a\22\09"
module asm "\09.weak\09__crc___asan_set_shadow_f8\09\09\09\09"
module asm "\09.long\09__crc___asan_set_shadow_f8\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___asan_set_shadow_f8:\09\09\09\09\09"
module asm "\09.asciz \09\22__asan_set_shadow_f8\22\09\09\09\09\09"
module asm "__kstrtabns___asan_set_shadow_f8:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kasan_global = type { ptr, i32, i32, ptr, ptr, i32, ptr, ptr }
%struct.slab = type { i32, %union.anon, ptr, ptr, %union.anon.0, i32, %struct.atomic_t, i32 }
%union.anon = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.0 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.kmem_cache = type { ptr, i32, i32, i32, i32, %struct.reciprocal_value, i32, i32, i32, %struct.kmem_cache_order_objects, %struct.kmem_cache_order_objects, %struct.kmem_cache_order_objects, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, %struct.kobject, i32, ptr, %struct.kasan_cache, i32, i32, [1 x ptr] }
%struct.reciprocal_value = type { i32, i8, i8 }
%struct.kmem_cache_order_objects = type { i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.kasan_cache = type { i32, i32, i8 }
%struct.kasan_alloc_meta = type { %struct.kasan_track, [2 x i32] }
%struct.kasan_track = type { i32, i32 }
%struct.kasan_free_meta = type { %struct.qlist_node, %struct.kasan_track }
%struct.qlist_node = type { ptr }

@__kstrtab___asan_register_globals = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_register_globals = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_register_globals = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_register_globals to i32), ptr @__kstrtab___asan_register_globals, ptr @__kstrtabns___asan_register_globals }, section "___ksymtab+__asan_register_globals", align 4
@__kstrtab___asan_unregister_globals = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_unregister_globals = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_unregister_globals = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_unregister_globals to i32), ptr @__kstrtab___asan_unregister_globals, ptr @__kstrtabns___asan_unregister_globals }, section "___ksymtab+__asan_unregister_globals", align 4
@__kstrtab___asan_load1 = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_load1 = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_load1 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_load1 to i32), ptr @__kstrtab___asan_load1, ptr @__kstrtabns___asan_load1 }, section "___ksymtab+__asan_load1", align 4
@__kstrtab___asan_load1_noabort = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_load1_noabort = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_load1_noabort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_load1 to i32), ptr @__kstrtab___asan_load1_noabort, ptr @__kstrtabns___asan_load1_noabort }, section "___ksymtab+__asan_load1_noabort", align 4
@__kstrtab___asan_store1 = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_store1 = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_store1 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_store1 to i32), ptr @__kstrtab___asan_store1, ptr @__kstrtabns___asan_store1 }, section "___ksymtab+__asan_store1", align 4
@__kstrtab___asan_store1_noabort = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_store1_noabort = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_store1_noabort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_store1 to i32), ptr @__kstrtab___asan_store1_noabort, ptr @__kstrtabns___asan_store1_noabort }, section "___ksymtab+__asan_store1_noabort", align 4
@__kstrtab___asan_load2 = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_load2 = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_load2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_load2 to i32), ptr @__kstrtab___asan_load2, ptr @__kstrtabns___asan_load2 }, section "___ksymtab+__asan_load2", align 4
@__kstrtab___asan_load2_noabort = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_load2_noabort = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_load2_noabort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_load2 to i32), ptr @__kstrtab___asan_load2_noabort, ptr @__kstrtabns___asan_load2_noabort }, section "___ksymtab+__asan_load2_noabort", align 4
@__kstrtab___asan_store2 = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_store2 = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_store2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_store2 to i32), ptr @__kstrtab___asan_store2, ptr @__kstrtabns___asan_store2 }, section "___ksymtab+__asan_store2", align 4
@__kstrtab___asan_store2_noabort = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_store2_noabort = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_store2_noabort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_store2 to i32), ptr @__kstrtab___asan_store2_noabort, ptr @__kstrtabns___asan_store2_noabort }, section "___ksymtab+__asan_store2_noabort", align 4
@__kstrtab___asan_load4 = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_load4 = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_load4 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_load4 to i32), ptr @__kstrtab___asan_load4, ptr @__kstrtabns___asan_load4 }, section "___ksymtab+__asan_load4", align 4
@__kstrtab___asan_load4_noabort = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_load4_noabort = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_load4_noabort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_load4 to i32), ptr @__kstrtab___asan_load4_noabort, ptr @__kstrtabns___asan_load4_noabort }, section "___ksymtab+__asan_load4_noabort", align 4
@__kstrtab___asan_store4 = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_store4 = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_store4 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_store4 to i32), ptr @__kstrtab___asan_store4, ptr @__kstrtabns___asan_store4 }, section "___ksymtab+__asan_store4", align 4
@__kstrtab___asan_store4_noabort = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_store4_noabort = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_store4_noabort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_store4 to i32), ptr @__kstrtab___asan_store4_noabort, ptr @__kstrtabns___asan_store4_noabort }, section "___ksymtab+__asan_store4_noabort", align 4
@__kstrtab___asan_load8 = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_load8 = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_load8 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_load8 to i32), ptr @__kstrtab___asan_load8, ptr @__kstrtabns___asan_load8 }, section "___ksymtab+__asan_load8", align 4
@__kstrtab___asan_load8_noabort = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_load8_noabort = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_load8_noabort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_load8 to i32), ptr @__kstrtab___asan_load8_noabort, ptr @__kstrtabns___asan_load8_noabort }, section "___ksymtab+__asan_load8_noabort", align 4
@__kstrtab___asan_store8 = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_store8 = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_store8 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_store8 to i32), ptr @__kstrtab___asan_store8, ptr @__kstrtabns___asan_store8 }, section "___ksymtab+__asan_store8", align 4
@__kstrtab___asan_store8_noabort = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_store8_noabort = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_store8_noabort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_store8 to i32), ptr @__kstrtab___asan_store8_noabort, ptr @__kstrtabns___asan_store8_noabort }, section "___ksymtab+__asan_store8_noabort", align 4
@__kstrtab___asan_load16 = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_load16 = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_load16 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_load16 to i32), ptr @__kstrtab___asan_load16, ptr @__kstrtabns___asan_load16 }, section "___ksymtab+__asan_load16", align 4
@__kstrtab___asan_load16_noabort = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_load16_noabort = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_load16_noabort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_load16 to i32), ptr @__kstrtab___asan_load16_noabort, ptr @__kstrtabns___asan_load16_noabort }, section "___ksymtab+__asan_load16_noabort", align 4
@__kstrtab___asan_store16 = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_store16 = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_store16 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_store16 to i32), ptr @__kstrtab___asan_store16, ptr @__kstrtabns___asan_store16 }, section "___ksymtab+__asan_store16", align 4
@__kstrtab___asan_store16_noabort = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_store16_noabort = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_store16_noabort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_store16 to i32), ptr @__kstrtab___asan_store16_noabort, ptr @__kstrtabns___asan_store16_noabort }, section "___ksymtab+__asan_store16_noabort", align 4
@__kstrtab___asan_loadN = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_loadN = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_loadN = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_loadN to i32), ptr @__kstrtab___asan_loadN, ptr @__kstrtabns___asan_loadN }, section "___ksymtab+__asan_loadN", align 4
@__kstrtab___asan_loadN_noabort = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_loadN_noabort = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_loadN_noabort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_loadN to i32), ptr @__kstrtab___asan_loadN_noabort, ptr @__kstrtabns___asan_loadN_noabort }, section "___ksymtab+__asan_loadN_noabort", align 4
@__kstrtab___asan_storeN = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_storeN = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_storeN = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_storeN to i32), ptr @__kstrtab___asan_storeN, ptr @__kstrtabns___asan_storeN }, section "___ksymtab+__asan_storeN", align 4
@__kstrtab___asan_storeN_noabort = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_storeN_noabort = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_storeN_noabort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_storeN to i32), ptr @__kstrtab___asan_storeN_noabort, ptr @__kstrtabns___asan_storeN_noabort }, section "___ksymtab+__asan_storeN_noabort", align 4
@__kstrtab___asan_handle_no_return = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_handle_no_return = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_handle_no_return = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_handle_no_return to i32), ptr @__kstrtab___asan_handle_no_return, ptr @__kstrtabns___asan_handle_no_return }, section "___ksymtab+__asan_handle_no_return", align 4
@.str = private unnamed_addr constant [19 x i8] c"mm/kasan/generic.c\00", align 1
@__kstrtab___asan_alloca_poison = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_alloca_poison = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_alloca_poison = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_alloca_poison to i32), ptr @__kstrtab___asan_alloca_poison, ptr @__kstrtabns___asan_alloca_poison }, section "___ksymtab+__asan_alloca_poison", align 4
@__kstrtab___asan_allocas_unpoison = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_allocas_unpoison = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_allocas_unpoison = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_allocas_unpoison to i32), ptr @__kstrtab___asan_allocas_unpoison, ptr @__kstrtabns___asan_allocas_unpoison }, section "___ksymtab+__asan_allocas_unpoison", align 4
@__kstrtab___asan_set_shadow_00 = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_set_shadow_00 = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_set_shadow_00 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_set_shadow_00 to i32), ptr @__kstrtab___asan_set_shadow_00, ptr @__kstrtabns___asan_set_shadow_00 }, section "___ksymtab+__asan_set_shadow_00", align 4
@__kstrtab___asan_set_shadow_f1 = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_set_shadow_f1 = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_set_shadow_f1 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_set_shadow_f1 to i32), ptr @__kstrtab___asan_set_shadow_f1, ptr @__kstrtabns___asan_set_shadow_f1 }, section "___ksymtab+__asan_set_shadow_f1", align 4
@__kstrtab___asan_set_shadow_f2 = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_set_shadow_f2 = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_set_shadow_f2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_set_shadow_f2 to i32), ptr @__kstrtab___asan_set_shadow_f2, ptr @__kstrtabns___asan_set_shadow_f2 }, section "___ksymtab+__asan_set_shadow_f2", align 4
@__kstrtab___asan_set_shadow_f3 = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_set_shadow_f3 = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_set_shadow_f3 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_set_shadow_f3 to i32), ptr @__kstrtab___asan_set_shadow_f3, ptr @__kstrtabns___asan_set_shadow_f3 }, section "___ksymtab+__asan_set_shadow_f3", align 4
@__kstrtab___asan_set_shadow_f5 = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_set_shadow_f5 = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_set_shadow_f5 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_set_shadow_f5 to i32), ptr @__kstrtab___asan_set_shadow_f5, ptr @__kstrtabns___asan_set_shadow_f5 }, section "___ksymtab+__asan_set_shadow_f5", align 4
@__kstrtab___asan_set_shadow_f8 = external dso_local constant [0 x i8], align 1
@__kstrtabns___asan_set_shadow_f8 = external dso_local constant [0 x i8], align 1
@__ksymtab___asan_set_shadow_f8 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__asan_set_shadow_f8 to i32), ptr @__kstrtab___asan_set_shadow_f8, ptr @__kstrtabns___asan_set_shadow_f8 }, section "___ksymtab+__asan_set_shadow_f8", align 4
@__kfence_pool = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [35 x ptr] [ptr @__ksymtab___asan_alloca_poison, ptr @__ksymtab___asan_allocas_unpoison, ptr @__ksymtab___asan_handle_no_return, ptr @__ksymtab___asan_load1, ptr @__ksymtab___asan_load16, ptr @__ksymtab___asan_load16_noabort, ptr @__ksymtab___asan_load1_noabort, ptr @__ksymtab___asan_load2, ptr @__ksymtab___asan_load2_noabort, ptr @__ksymtab___asan_load4, ptr @__ksymtab___asan_load4_noabort, ptr @__ksymtab___asan_load8, ptr @__ksymtab___asan_load8_noabort, ptr @__ksymtab___asan_loadN, ptr @__ksymtab___asan_loadN_noabort, ptr @__ksymtab___asan_register_globals, ptr @__ksymtab___asan_set_shadow_00, ptr @__ksymtab___asan_set_shadow_f1, ptr @__ksymtab___asan_set_shadow_f2, ptr @__ksymtab___asan_set_shadow_f3, ptr @__ksymtab___asan_set_shadow_f5, ptr @__ksymtab___asan_set_shadow_f8, ptr @__ksymtab___asan_store1, ptr @__ksymtab___asan_store16, ptr @__ksymtab___asan_store16_noabort, ptr @__ksymtab___asan_store1_noabort, ptr @__ksymtab___asan_store2, ptr @__ksymtab___asan_store2_noabort, ptr @__ksymtab___asan_store4, ptr @__ksymtab___asan_store4_noabort, ptr @__ksymtab___asan_store8, ptr @__ksymtab___asan_store8_noabort, ptr @__ksymtab___asan_storeN, ptr @__ksymtab___asan_storeN_noabort, ptr @__ksymtab___asan_unregister_globals], section "llvm.metadata"

@__asan_load1_noabort = dso_local alias void (i32), ptr @__asan_load1
@__asan_store1_noabort = dso_local alias void (i32), ptr @__asan_store1
@__asan_load2_noabort = dso_local alias void (i32), ptr @__asan_load2
@__asan_store2_noabort = dso_local alias void (i32), ptr @__asan_store2
@__asan_load4_noabort = dso_local alias void (i32), ptr @__asan_load4
@__asan_store4_noabort = dso_local alias void (i32), ptr @__asan_store4
@__asan_load8_noabort = dso_local alias void (i32), ptr @__asan_load8
@__asan_store8_noabort = dso_local alias void (i32), ptr @__asan_store8
@__asan_load16_noabort = dso_local alias void (i32), ptr @__asan_load16
@__asan_store16_noabort = dso_local alias void (i32), ptr @__asan_store16
@__asan_loadN_noabort = dso_local alias void (i32, i32), ptr @__asan_loadN
@__asan_storeN_noabort = dso_local alias void (i32, i32), ptr @__asan_storeN

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local zeroext i1 @kasan_check_range(i32 noundef %addr, i32 noundef %size, i1 noundef zeroext %write, i32 noundef %ret_ip) local_unnamed_addr #0 align 64 {
entry:
  %cmp.i = icmp eq i32 %size, 0
  br i1 %cmp.i, label %check_region_inline.exit, label %if.end3.i, !prof !8

if.end3.i:                                        ; preds = %entry
  %0 = xor i32 %addr, -1
  %cmp4.i = icmp ult i32 %0, %size
  br i1 %cmp4.i, label %return.sink.split.i, label %if.end16.i, !prof !8

if.end16.i:                                       ; preds = %if.end3.i
  %1 = inttoptr i32 %addr to ptr
  %cmp18.i = icmp ult ptr %1, inttoptr (i32 -1090519040 to ptr)
  br i1 %cmp18.i, label %return.sink.split.i, label %if.end.i.i, !prof !8

if.end.i.i:                                       ; preds = %if.end16.i
  %shr.i.i32.i.i = lshr i32 %addr, 3
  %2 = inttoptr i32 %shr.i.i32.i.i to ptr
  %add.ptr.i26.i.i.i = getelementptr i8, ptr %2, i32 -1627389952
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 %size
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 -1
  %3 = ptrtoint ptr %add.ptr1.i.i.i to i32
  %shr.i27.i.i.i = lshr i32 %3, 3
  %4 = inttoptr i32 %shr.i27.i.i.i to ptr
  %add.ptr3.i.i.i = getelementptr i8, ptr %4, i32 -1627389951
  %5 = ptrtoint ptr %add.ptr.i26.i.i.i to i32
  %rem.i.i.i.i = and i32 %5, 7
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %add.ptr3.i.i.i to i32
  %sub.ptr.sub.i.i.i.i = sub nsw i32 %sub.ptr.lhs.cast.i.i.i.i, %5
  %cmp.i.i33.i.i = icmp slt i32 %sub.ptr.sub.i.i.i.i, 17
  br i1 %cmp.i.i33.i.i, label %if.then.i.i34.i.i, label %if.end.i.i.i.i

if.then.i.i34.i.i:                                ; preds = %if.end.i.i
  %tobool.not8.i.i.i.i.i = icmp eq i32 %sub.ptr.sub.i.i.i.i, 0
  br i1 %tobool.not8.i.i.i.i.i, label %check_region_inline.exit, label %while.body.i.i.i.i.i

while.body.i.i.i.i.i:                             ; preds = %if.end.i.i.i.i.i, %if.then.i.i34.i.i
  %size.addr.010.i.i.i.i.i = phi i32 [ %dec.i.i.i.i.i, %if.end.i.i.i.i.i ], [ %sub.ptr.sub.i.i.i.i, %if.then.i.i34.i.i ]
  %start.addr.09.i.i.i.i.i = phi ptr [ %incdec.ptr.i.i.i.i.i, %if.end.i.i.i.i.i ], [ %add.ptr.i26.i.i.i, %if.then.i.i34.i.i ]
  %6 = load i8, ptr %start.addr.09.i.i.i.i.i, align 1
  %tobool1.not.i.i.i.i.i = icmp eq i8 %6, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.i.i.i.i.i, label %memory_is_nonzero.exit.i.i.i, !prof !9

if.end.i.i.i.i.i:                                 ; preds = %while.body.i.i.i.i.i
  %incdec.ptr.i.i.i.i.i = getelementptr i8, ptr %start.addr.09.i.i.i.i.i, i32 1
  %dec.i.i.i.i.i = add i32 %size.addr.010.i.i.i.i.i, -1
  %tobool.not.i.i.i.i.i = icmp eq i32 %dec.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %check_region_inline.exit, label %while.body.i.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  %tobool.not.i.i35.i.i = icmp eq i32 %rem.i.i.i.i, 0
  br i1 %tobool.not.i.i35.i.i, label %if.end11.i.i.i.i, label %if.then4.i.i.i.i

if.then4.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  %sub.i.i.i.i = sub nuw nsw i32 8, %rem.i.i.i.i
  %7 = load i8, ptr %add.ptr.i26.i.i.i, align 1
  %tobool1.not.i56.i.i.i.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i56.i.i.i.i, label %if.end.i62.i.i.i.i, label %bytes_is_nonzero.exit64.i.i.i.i, !prof !9

if.end.i62.i.i.i.i:                               ; preds = %if.then4.i.i.i.i
  %tobool.not.i61.i.i.i.i = icmp eq i32 %rem.i.i.i.i, 7
  br i1 %tobool.not.i61.i.i.i.i, label %if.end10.i.i.i.i, label %while.body.i57.i.i.i.i.1

while.body.i57.i.i.i.i.1:                         ; preds = %if.end.i62.i.i.i.i
  %incdec.ptr.i59.i.i.i.i = getelementptr i8, ptr %2, i32 -1627389951
  %8 = load i8, ptr %incdec.ptr.i59.i.i.i.i, align 1
  %tobool1.not.i56.i.i.i.i.1 = icmp eq i8 %8, 0
  br i1 %tobool1.not.i56.i.i.i.i.1, label %if.end.i62.i.i.i.i.1, label %bytes_is_nonzero.exit64.i.i.i.i, !prof !9

if.end.i62.i.i.i.i.1:                             ; preds = %while.body.i57.i.i.i.i.1
  %tobool.not.i61.i.i.i.i.1 = icmp eq i32 %rem.i.i.i.i, 6
  br i1 %tobool.not.i61.i.i.i.i.1, label %if.end10.i.i.i.i, label %while.body.i57.i.i.i.i.2

while.body.i57.i.i.i.i.2:                         ; preds = %if.end.i62.i.i.i.i.1
  %incdec.ptr.i59.i.i.i.i.1 = getelementptr i8, ptr %2, i32 -1627389950
  %9 = load i8, ptr %incdec.ptr.i59.i.i.i.i.1, align 1
  %tobool1.not.i56.i.i.i.i.2 = icmp eq i8 %9, 0
  br i1 %tobool1.not.i56.i.i.i.i.2, label %if.end.i62.i.i.i.i.2, label %bytes_is_nonzero.exit64.i.i.i.i, !prof !9

if.end.i62.i.i.i.i.2:                             ; preds = %while.body.i57.i.i.i.i.2
  %tobool.not.i61.i.i.i.i.2 = icmp eq i32 %rem.i.i.i.i, 5
  br i1 %tobool.not.i61.i.i.i.i.2, label %if.end10.i.i.i.i, label %while.body.i57.i.i.i.i.3

while.body.i57.i.i.i.i.3:                         ; preds = %if.end.i62.i.i.i.i.2
  %incdec.ptr.i59.i.i.i.i.2 = getelementptr i8, ptr %2, i32 -1627389949
  %10 = load i8, ptr %incdec.ptr.i59.i.i.i.i.2, align 1
  %tobool1.not.i56.i.i.i.i.3 = icmp eq i8 %10, 0
  br i1 %tobool1.not.i56.i.i.i.i.3, label %if.end.i62.i.i.i.i.3, label %bytes_is_nonzero.exit64.i.i.i.i, !prof !9

if.end.i62.i.i.i.i.3:                             ; preds = %while.body.i57.i.i.i.i.3
  %tobool.not.i61.i.i.i.i.3 = icmp eq i32 %rem.i.i.i.i, 4
  br i1 %tobool.not.i61.i.i.i.i.3, label %if.end10.i.i.i.i, label %while.body.i57.i.i.i.i.4

while.body.i57.i.i.i.i.4:                         ; preds = %if.end.i62.i.i.i.i.3
  %incdec.ptr.i59.i.i.i.i.3 = getelementptr i8, ptr %2, i32 -1627389948
  %11 = load i8, ptr %incdec.ptr.i59.i.i.i.i.3, align 1
  %tobool1.not.i56.i.i.i.i.4 = icmp eq i8 %11, 0
  br i1 %tobool1.not.i56.i.i.i.i.4, label %if.end.i62.i.i.i.i.4, label %bytes_is_nonzero.exit64.i.i.i.i, !prof !9

if.end.i62.i.i.i.i.4:                             ; preds = %while.body.i57.i.i.i.i.4
  %tobool.not.i61.i.i.i.i.4 = icmp eq i32 %rem.i.i.i.i, 3
  br i1 %tobool.not.i61.i.i.i.i.4, label %if.end10.i.i.i.i, label %while.body.i57.i.i.i.i.5

while.body.i57.i.i.i.i.5:                         ; preds = %if.end.i62.i.i.i.i.4
  %incdec.ptr.i59.i.i.i.i.4 = getelementptr i8, ptr %2, i32 -1627389947
  %12 = load i8, ptr %incdec.ptr.i59.i.i.i.i.4, align 1
  %tobool1.not.i56.i.i.i.i.5 = icmp eq i8 %12, 0
  br i1 %tobool1.not.i56.i.i.i.i.5, label %if.end.i62.i.i.i.i.5, label %bytes_is_nonzero.exit64.i.i.i.i, !prof !9

if.end.i62.i.i.i.i.5:                             ; preds = %while.body.i57.i.i.i.i.5
  %tobool.not.i61.i.i.i.i.5 = icmp eq i32 %rem.i.i.i.i, 2
  br i1 %tobool.not.i61.i.i.i.i.5, label %if.end10.i.i.i.i, label %while.body.i57.i.i.i.i.6

while.body.i57.i.i.i.i.6:                         ; preds = %if.end.i62.i.i.i.i.5
  %incdec.ptr.i59.i.i.i.i.5 = getelementptr i8, ptr %2, i32 -1627389946
  %13 = load i8, ptr %incdec.ptr.i59.i.i.i.i.5, align 1
  %tobool1.not.i56.i.i.i.i.6 = icmp eq i8 %13, 0
  br i1 %tobool1.not.i56.i.i.i.i.6, label %if.end10.i.i.i.i, label %bytes_is_nonzero.exit64.i.i.i.i, !prof !9

bytes_is_nonzero.exit64.i.i.i.i:                  ; preds = %while.body.i57.i.i.i.i.6, %while.body.i57.i.i.i.i.5, %while.body.i57.i.i.i.i.4, %while.body.i57.i.i.i.i.3, %while.body.i57.i.i.i.i.2, %while.body.i57.i.i.i.i.1, %if.then4.i.i.i.i
  %start.addr.09.i55.i.i.i.i.lcssa = phi ptr [ %add.ptr.i26.i.i.i, %if.then4.i.i.i.i ], [ %incdec.ptr.i59.i.i.i.i, %while.body.i57.i.i.i.i.1 ], [ %incdec.ptr.i59.i.i.i.i.1, %while.body.i57.i.i.i.i.2 ], [ %incdec.ptr.i59.i.i.i.i.2, %while.body.i57.i.i.i.i.3 ], [ %incdec.ptr.i59.i.i.i.i.3, %while.body.i57.i.i.i.i.4 ], [ %incdec.ptr.i59.i.i.i.i.4, %while.body.i57.i.i.i.i.5 ], [ %incdec.ptr.i59.i.i.i.i.5, %while.body.i57.i.i.i.i.6 ]
  %tobool6.not.i.i.i.i = icmp eq ptr %start.addr.09.i55.i.i.i.i.lcssa, null
  br i1 %tobool6.not.i.i.i.i, label %if.end10.i.i.i.i, label %if.then.i41.i.i, !prof !9

if.end10.i.i.i.i:                                 ; preds = %bytes_is_nonzero.exit64.i.i.i.i, %while.body.i57.i.i.i.i.6, %if.end.i62.i.i.i.i.5, %if.end.i62.i.i.i.i.4, %if.end.i62.i.i.i.i.3, %if.end.i62.i.i.i.i.2, %if.end.i62.i.i.i.i.1, %if.end.i62.i.i.i.i
  %add.ptr.i.i36.i.i = getelementptr i8, ptr %add.ptr.i26.i.i.i, i32 %sub.i.i.i.i
  %.pre.i.i.i.i = ptrtoint ptr %add.ptr.i.i36.i.i to i32
  %.pre107.i.i.i.i = sub nsw i32 %sub.ptr.lhs.cast.i.i.i.i, %.pre.i.i.i.i
  br label %if.end11.i.i.i.i

if.end11.i.i.i.i:                                 ; preds = %if.end10.i.i.i.i, %if.end.i.i.i.i
  %sub.ptr.sub14.pre-phi.i.i.i.i = phi i32 [ %.pre107.i.i.i.i, %if.end10.i.i.i.i ], [ %sub.ptr.sub.i.i.i.i, %if.end.i.i.i.i ]
  %start.addr.0.i.i.i.i = phi ptr [ %add.ptr.i.i36.i.i, %if.end10.i.i.i.i ], [ %add.ptr.i26.i.i.i, %if.end.i.i.i.i ]
  %sub.ptr.sub14.off.i.i.i.i = add i32 %sub.ptr.sub14.pre-phi.i.i.i.i, 7
  %14 = icmp ult i32 %sub.ptr.sub14.off.i.i.i.i, 15
  br i1 %14, label %while.end.i.i.i.i, label %while.body.preheader.i.i.i.i

while.body.preheader.i.i.i.i:                     ; preds = %if.end11.i.i.i.i
  %div.i.i.i.i = sdiv i32 %sub.ptr.sub14.pre-phi.i.i.i.i, 8
  %15 = shl nsw i32 %div.i.i.i.i, 3
  %uglygep.i.i.i.i = getelementptr i8, ptr %start.addr.0.i.i.i.i, i32 %15
  br label %while.body.i.i.i.i

while.body.i.i.i.i:                               ; preds = %if.end25.i.i.i.i, %while.body.preheader.i.i.i.i
  %words.099.i.i.i.i = phi i32 [ %dec.i.i.i.i, %if.end25.i.i.i.i ], [ %div.i.i.i.i, %while.body.preheader.i.i.i.i ]
  %start.addr.198.i.i.i.i = phi ptr [ %add.ptr26.i.i.i.i, %if.end25.i.i.i.i ], [ %start.addr.0.i.i.i.i, %while.body.preheader.i.i.i.i ]
  %16 = load i64, ptr %start.addr.198.i.i.i.i, align 8
  %tobool16.not.i.i.i.i = icmp eq i64 %16, 0
  br i1 %tobool16.not.i.i.i.i, label %if.end25.i.i.i.i, label %while.body.i68.preheader.i.i.i.i, !prof !9

while.body.i68.preheader.i.i.i.i:                 ; preds = %while.body.i.i.i.i
  %17 = trunc i64 %16 to i8
  %tobool1.not.i67.i.i.i.i = icmp ult i64 %16, 72057594037927936
  br i1 %tobool1.not.i67.i.i.i.i, label %if.end.i73.i.i.i.i, label %memory_is_nonzero.exit.i.i.i, !prof !9

if.end.i73.i.i.i.i:                               ; preds = %while.body.i68.preheader.i.i.i.i
  %incdec.ptr.i70.i.i.i.i = getelementptr i8, ptr %start.addr.198.i.i.i.i, i32 1
  %18 = and i64 %16, 71776119061217280
  %tobool1.not.i67.1.i.i.i.i = icmp eq i64 %18, 0
  br i1 %tobool1.not.i67.1.i.i.i.i, label %if.end.i73.1.i.i.i.i, label %memory_is_nonzero.exit.i.i.i, !prof !9

if.end.i73.1.i.i.i.i:                             ; preds = %if.end.i73.i.i.i.i
  %incdec.ptr.i70.1.i.i.i.i = getelementptr i8, ptr %start.addr.198.i.i.i.i, i32 2
  %19 = and i64 %16, 280375465082880
  %tobool1.not.i67.2.i.i.i.i = icmp eq i64 %19, 0
  br i1 %tobool1.not.i67.2.i.i.i.i, label %if.end.i73.2.i.i.i.i, label %memory_is_nonzero.exit.i.i.i, !prof !9

if.end.i73.2.i.i.i.i:                             ; preds = %if.end.i73.1.i.i.i.i
  %incdec.ptr.i70.2.i.i.i.i = getelementptr i8, ptr %start.addr.198.i.i.i.i, i32 3
  %20 = and i64 %16, 1095216660480
  %tobool1.not.i67.3.i.i.i.i = icmp eq i64 %20, 0
  br i1 %tobool1.not.i67.3.i.i.i.i, label %if.end.i73.3.i.i.i.i, label %memory_is_nonzero.exit.i.i.i, !prof !9

if.end.i73.3.i.i.i.i:                             ; preds = %if.end.i73.2.i.i.i.i
  %incdec.ptr.i70.3.i.i.i.i = getelementptr i8, ptr %start.addr.198.i.i.i.i, i32 4
  %21 = and i64 %16, 4278190080
  %tobool1.not.i67.4.i.i.i.i = icmp eq i64 %21, 0
  br i1 %tobool1.not.i67.4.i.i.i.i, label %if.end.i73.4.i.i.i.i, label %memory_is_nonzero.exit.i.i.i, !prof !9

if.end.i73.4.i.i.i.i:                             ; preds = %if.end.i73.3.i.i.i.i
  %incdec.ptr.i70.4.i.i.i.i = getelementptr i8, ptr %start.addr.198.i.i.i.i, i32 5
  %22 = and i64 %16, 16711680
  %tobool1.not.i67.5.i.i.i.i = icmp eq i64 %22, 0
  br i1 %tobool1.not.i67.5.i.i.i.i, label %if.end.i73.5.i.i.i.i, label %memory_is_nonzero.exit.i.i.i, !prof !9

if.end.i73.5.i.i.i.i:                             ; preds = %if.end.i73.4.i.i.i.i
  %incdec.ptr.i70.5.i.i.i.i = getelementptr i8, ptr %start.addr.198.i.i.i.i, i32 6
  %23 = and i64 %16, 65280
  %tobool1.not.i67.6.i.i.i.i = icmp eq i64 %23, 0
  br i1 %tobool1.not.i67.6.i.i.i.i, label %if.end.i73.6.i.i.i.i, label %memory_is_nonzero.exit.i.i.i, !prof !9

if.end.i73.6.i.i.i.i:                             ; preds = %if.end.i73.5.i.i.i.i
  %incdec.ptr.i70.6.i.i.i.i = getelementptr i8, ptr %start.addr.198.i.i.i.i, i32 7
  %tobool1.not.i67.7.i.i.i.i = icmp eq i8 %17, 0
  br i1 %tobool1.not.i67.7.i.i.i.i, label %check_region_inline.exit, label %memory_is_nonzero.exit.i.i.i, !prof !9

if.end25.i.i.i.i:                                 ; preds = %while.body.i.i.i.i
  %add.ptr26.i.i.i.i = getelementptr i8, ptr %start.addr.198.i.i.i.i, i32 8
  %dec.i.i.i.i = add i32 %words.099.i.i.i.i, -1
  %tobool15.not.i.i.i.i = icmp eq i32 %dec.i.i.i.i, 0
  br i1 %tobool15.not.i.i.i.i, label %while.end.loopexit.i.i.i.i, label %while.body.i.i.i.i

while.end.loopexit.i.i.i.i:                       ; preds = %if.end25.i.i.i.i
  %.pre108.i.i.i.i = ptrtoint ptr %uglygep.i.i.i.i to i32
  %.pre109.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %.pre108.i.i.i.i
  br label %while.end.i.i.i.i

while.end.i.i.i.i:                                ; preds = %while.end.loopexit.i.i.i.i, %if.end11.i.i.i.i
  %sub.ptr.sub29.pre-phi.i.i.i.i = phi i32 [ %.pre109.i.i.i.i, %while.end.loopexit.i.i.i.i ], [ %sub.ptr.sub14.pre-phi.i.i.i.i, %if.end11.i.i.i.i ]
  %start.addr.1.lcssa.i.i.i.i = phi ptr [ %uglygep.i.i.i.i, %while.end.loopexit.i.i.i.i ], [ %start.addr.0.i.i.i.i, %if.end11.i.i.i.i ]
  %rem30.i.i.i.i = srem i32 %sub.ptr.sub29.pre-phi.i.i.i.i, 8
  %tobool.not8.i76.i.i.i.i = icmp eq i32 %rem30.i.i.i.i, 0
  br i1 %tobool.not8.i76.i.i.i.i, label %check_region_inline.exit, label %while.body.i80.i.i.i.i

while.body.i80.i.i.i.i:                           ; preds = %if.end.i85.i.i.i.i, %while.end.i.i.i.i
  %size.addr.010.i77.i.i.i.i = phi i32 [ %dec.i83.i.i.i.i, %if.end.i85.i.i.i.i ], [ %rem30.i.i.i.i, %while.end.i.i.i.i ]
  %start.addr.09.i78.i.i.i.i = phi ptr [ %incdec.ptr.i82.i.i.i.i, %if.end.i85.i.i.i.i ], [ %start.addr.1.lcssa.i.i.i.i, %while.end.i.i.i.i ]
  %24 = load i8, ptr %start.addr.09.i78.i.i.i.i, align 1
  %tobool1.not.i79.i.i.i.i = icmp eq i8 %24, 0
  br i1 %tobool1.not.i79.i.i.i.i, label %if.end.i85.i.i.i.i, label %memory_is_nonzero.exit.i.i.i, !prof !9

if.end.i85.i.i.i.i:                               ; preds = %while.body.i80.i.i.i.i
  %incdec.ptr.i82.i.i.i.i = getelementptr i8, ptr %start.addr.09.i78.i.i.i.i, i32 1
  %dec.i83.i.i.i.i = add i32 %size.addr.010.i77.i.i.i.i, -1
  %tobool.not.i84.i.i.i.i = icmp eq i32 %dec.i83.i.i.i.i, 0
  br i1 %tobool.not.i84.i.i.i.i, label %check_region_inline.exit, label %while.body.i80.i.i.i.i

memory_is_nonzero.exit.i.i.i:                     ; preds = %while.body.i80.i.i.i.i, %if.end.i73.6.i.i.i.i, %if.end.i73.5.i.i.i.i, %if.end.i73.4.i.i.i.i, %if.end.i73.3.i.i.i.i, %if.end.i73.2.i.i.i.i, %if.end.i73.1.i.i.i.i, %if.end.i73.i.i.i.i, %while.body.i68.preheader.i.i.i.i, %while.body.i.i.i.i.i
  %retval.0.i.in.i.i.i = phi ptr [ %start.addr.198.i.i.i.i, %while.body.i68.preheader.i.i.i.i ], [ %incdec.ptr.i70.i.i.i.i, %if.end.i73.i.i.i.i ], [ %incdec.ptr.i70.1.i.i.i.i, %if.end.i73.1.i.i.i.i ], [ %incdec.ptr.i70.2.i.i.i.i, %if.end.i73.2.i.i.i.i ], [ %incdec.ptr.i70.3.i.i.i.i, %if.end.i73.3.i.i.i.i ], [ %incdec.ptr.i70.4.i.i.i.i, %if.end.i73.4.i.i.i.i ], [ %incdec.ptr.i70.5.i.i.i.i, %if.end.i73.5.i.i.i.i ], [ %incdec.ptr.i70.6.i.i.i.i, %if.end.i73.6.i.i.i.i ], [ %start.addr.09.i.i.i.i.i, %while.body.i.i.i.i.i ], [ %start.addr.09.i78.i.i.i.i, %while.body.i80.i.i.i.i ]
  %tobool.not.i37.i.i = icmp eq ptr %retval.0.i.in.i.i.i, null
  br i1 %tobool.not.i37.i.i, label %check_region_inline.exit, label %if.then.i41.i.i, !prof !9

if.then.i41.i.i:                                  ; preds = %memory_is_nonzero.exit.i.i.i, %bytes_is_nonzero.exit64.i.i.i.i
  %retval.0.i.in49.i.i.i = phi ptr [ %retval.0.i.in.i.i.i, %memory_is_nonzero.exit.i.i.i ], [ %start.addr.09.i55.i.i.i.i.lcssa, %bytes_is_nonzero.exit64.i.i.i.i ]
  %add.i38.i.i = add i32 %size, -1
  %sub.i39.i.i = add i32 %add.i38.i.i, %addr
  %shr.i29.i.i.i = lshr i32 %sub.i39.i.i, 3
  %25 = inttoptr i32 %shr.i29.i.i.i to ptr
  %add.ptr.i30.i.i.i = getelementptr i8, ptr %25, i32 -1627389952
  %cmp.not.i40.i.i = icmp eq ptr %retval.0.i.in49.i.i.i, %add.ptr.i30.i.i.i
  br i1 %cmp.not.i40.i.i, label %lor.rhs.i44.i.i, label %return.sink.split.i, !prof !9

lor.rhs.i44.i.i:                                  ; preds = %if.then.i41.i.i
  %and.i42.i.i = and i32 %sub.i39.i.i, 7
  %26 = load i8, ptr %retval.0.i.in49.i.i.i, align 1
  %conv.i43.i.i = sext i8 %26 to i32
  %cmp8.not.i.i.i = icmp slt i32 %and.i42.i.i, %conv.i43.i.i
  br i1 %cmp8.not.i.i.i, label %check_region_inline.exit, label %return.sink.split.i, !prof !10

return.sink.split.i:                              ; preds = %lor.rhs.i44.i.i, %if.then.i41.i.i, %if.end16.i, %if.end3.i
  %call43.i = tail call zeroext i1 @kasan_report(i32 noundef %addr, i32 noundef %size, i1 noundef zeroext %write, i32 noundef %ret_ip) #5
  %lnot44.i = xor i1 %call43.i, true
  br label %check_region_inline.exit

check_region_inline.exit:                         ; preds = %return.sink.split.i, %lor.rhs.i44.i.i, %memory_is_nonzero.exit.i.i.i, %if.end.i85.i.i.i.i, %while.end.i.i.i.i, %if.end.i73.6.i.i.i.i, %if.end.i.i.i.i.i, %if.then.i.i34.i.i, %entry
  %retval.0.i = phi i1 [ true, %entry ], [ true, %lor.rhs.i44.i.i ], [ true, %memory_is_nonzero.exit.i.i.i ], [ true, %while.end.i.i.i.i ], [ true, %if.end.i73.6.i.i.i.i ], [ true, %if.then.i.i34.i.i ], [ %lnot44.i, %return.sink.split.i ], [ true, %if.end.i.i.i.i.i ], [ true, %if.end.i85.i.i.i.i ]
  ret i1 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid willreturn uwtable(sync)
define dso_local zeroext i1 @kasan_byte_accessible(ptr noundef %addr) local_unnamed_addr #1 align 64 {
entry:
  %0 = ptrtoint ptr %addr to i32
  %shr.i = lshr i32 %0, 3
  %1 = inttoptr i32 %shr.i to ptr
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1627389952
  %2 = load volatile i8, ptr %add.ptr.i, align 1
  %cmp3 = icmp ult i8 %2, 8
  ret i1 %cmp3
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @kasan_cache_shrink(ptr noundef %cache) local_unnamed_addr #0 align 64 {
entry:
  tail call void @kasan_quarantine_remove_cache(ptr noundef %cache) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kasan_quarantine_remove_cache(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @kasan_cache_shutdown(ptr noundef %cache) local_unnamed_addr #0 align 64 {
entry:
  %call = tail call zeroext i1 @__kmem_cache_empty(ptr noundef %cache) #5
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @kasan_quarantine_remove_cache(ptr noundef %cache) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kmem_cache_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__asan_register_globals(ptr nocapture noundef readonly %globals, i32 noundef %size) #0 align 64 {
entry:
  %cmp3.not = icmp eq i32 %size, 0
  br i1 %cmp3.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.body, %entry
  %i.04 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr %struct.kasan_global, ptr %globals, i32 %i.04
  %size.i = getelementptr %struct.kasan_global, ptr %globals, i32 %i.04, i32 1
  %0 = load i32, ptr %size.i, align 4
  %sub.i = add i32 %0, -1
  %or.i = or i32 %sub.i, 7
  %add.i = add i32 %or.i, 1
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @kasan_unpoison(ptr noundef %1, i32 noundef %0, i1 noundef zeroext false) #5
  %2 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 %add.i
  %size_with_redzone.i = getelementptr %struct.kasan_global, ptr %globals, i32 %i.04, i32 2
  %3 = load i32, ptr %size_with_redzone.i, align 4
  %sub3.i = sub i32 %3, %add.i
  tail call void @kasan_poison(ptr noundef %add.ptr.i, i32 noundef %sub3.i, i8 noundef zeroext -7, i1 noundef zeroext false) #5
  %inc = add nuw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, %size
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone willreturn uwtable(sync)
define dso_local void @__asan_unregister_globals(ptr nocapture %globals, i32 %size) #3 align 64 {
entry:
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__asan_load1(i32 noundef %addr) #0 align 64 {
entry:
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  %cmp4.i = icmp eq i32 %addr, -1
  %2 = inttoptr i32 %addr to ptr
  %cmp18.i = icmp ult ptr %2, inttoptr (i32 -1090519040 to ptr)
  %or.cond = or i1 %cmp4.i, %cmp18.i
  br i1 %or.cond, label %return.sink.split.i, label %if.end30.i, !prof !11

if.end30.i:                                       ; preds = %entry
  %shr.i.i.i.i = lshr i32 %addr, 3
  %3 = inttoptr i32 %shr.i.i.i.i to ptr
  %add.ptr.i.i.i.i = getelementptr i8, ptr %3, i32 -1627389952
  %4 = load i8, ptr %add.ptr.i.i.i.i, align 1
  %tobool.not.i.i.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i.i.i, label %check_region_inline.exit, label %if.then.i.i.i, !prof !9

if.then.i.i.i:                                    ; preds = %if.end30.i
  %conv.i.i.i = and i32 %addr, 7
  %conv4.i.i.i = sext i8 %4 to i32
  %cmp.i.i.not.i = icmp slt i32 %conv.i.i.i, %conv4.i.i.i
  br i1 %cmp.i.i.not.i, label %check_region_inline.exit, label %return.sink.split.i, !prof !9

return.sink.split.i:                              ; preds = %if.then.i.i.i, %entry
  %call43.i = tail call zeroext i1 @kasan_report(i32 noundef %addr, i32 noundef 1, i1 noundef zeroext false, i32 noundef %1) #5
  br label %check_region_inline.exit

check_region_inline.exit:                         ; preds = %return.sink.split.i, %if.then.i.i.i, %if.end30.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__asan_store1(i32 noundef %addr) #0 align 64 {
entry:
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  %cmp4.i = icmp eq i32 %addr, -1
  %2 = inttoptr i32 %addr to ptr
  %cmp18.i = icmp ult ptr %2, inttoptr (i32 -1090519040 to ptr)
  %or.cond = or i1 %cmp4.i, %cmp18.i
  br i1 %or.cond, label %return.sink.split.i, label %if.end30.i, !prof !11

if.end30.i:                                       ; preds = %entry
  %shr.i.i.i.i = lshr i32 %addr, 3
  %3 = inttoptr i32 %shr.i.i.i.i to ptr
  %add.ptr.i.i.i.i = getelementptr i8, ptr %3, i32 -1627389952
  %4 = load i8, ptr %add.ptr.i.i.i.i, align 1
  %tobool.not.i.i.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i.i.i, label %check_region_inline.exit, label %if.then.i.i.i, !prof !9

if.then.i.i.i:                                    ; preds = %if.end30.i
  %conv.i.i.i = and i32 %addr, 7
  %conv4.i.i.i = sext i8 %4 to i32
  %cmp.i.i.not.i = icmp slt i32 %conv.i.i.i, %conv4.i.i.i
  br i1 %cmp.i.i.not.i, label %check_region_inline.exit, label %return.sink.split.i, !prof !9

return.sink.split.i:                              ; preds = %if.then.i.i.i, %entry
  %call43.i = tail call zeroext i1 @kasan_report(i32 noundef %addr, i32 noundef 1, i1 noundef zeroext true, i32 noundef %1) #5
  br label %check_region_inline.exit

check_region_inline.exit:                         ; preds = %return.sink.split.i, %if.then.i.i.i, %if.end30.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__asan_load2(i32 noundef %addr) #0 align 64 {
entry:
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  %cmp4.i = icmp ugt i32 %addr, -3
  %2 = inttoptr i32 %addr to ptr
  %cmp18.i = icmp ult ptr %2, inttoptr (i32 -1090519040 to ptr)
  %or.cond = or i1 %cmp4.i, %cmp18.i
  br i1 %or.cond, label %return.sink.split.i, label %if.end30.i, !prof !11

if.end30.i:                                       ; preds = %entry
  %sub.i.i.i = add nuw i32 %addr, 1
  %and.i.i.i = and i32 %sub.i.i.i, 7
  %cmp.i12.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i12.i.i, label %if.then.i15.i.i, label %if.end.i.i.i, !prof !8

if.then.i15.i.i:                                  ; preds = %if.end30.i
  %shr.i.i13.i.i = lshr i32 %addr, 3
  %3 = inttoptr i32 %shr.i.i13.i.i to ptr
  %add.ptr.i.i14.i.i = getelementptr i8, ptr %3, i32 -1627389952
  %4 = load i8, ptr %add.ptr.i.i14.i.i, align 1
  %tobool3.not.i.i.i = icmp eq i8 %4, 0
  br i1 %tobool3.not.i.i.i, label %lor.rhs.i.i.i, label %return.sink.split.i, !prof !10

lor.rhs.i.i.i:                                    ; preds = %if.then.i15.i.i
  %shr.i.i.i.i.i = lshr i32 %sub.i.i.i, 3
  %5 = inttoptr i32 %shr.i.i.i.i.i to ptr
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %5, i32 -1627389952
  %6 = load i8, ptr %add.ptr.i.i.i.i.i, align 1
  %tobool.not.i.i.i.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i.i.i.i, label %check_region_inline.exit, label %if.then.i.i.i.i, !prof !9

if.then.i.i.i.i:                                  ; preds = %lor.rhs.i.i.i
  %cmp.i.i.i.not.i = icmp sgt i8 %6, 0
  br i1 %cmp.i.i.i.not.i, label %check_region_inline.exit, label %return.sink.split.i, !prof !9

if.end.i.i.i:                                     ; preds = %if.end30.i
  %shr.i.i17.i.i.i = lshr i32 %sub.i.i.i, 3
  %7 = inttoptr i32 %shr.i.i17.i.i.i to ptr
  %add.ptr.i.i18.i.i.i = getelementptr i8, ptr %7, i32 -1627389952
  %8 = load i8, ptr %add.ptr.i.i18.i.i.i, align 1
  %tobool.not.i19.i.i.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i19.i.i.i, label %check_region_inline.exit, label %if.then.i23.i.i.i, !prof !9

if.then.i23.i.i.i:                                ; preds = %if.end.i.i.i
  %conv4.i21.i.i.i = sext i8 %8 to i32
  %cmp.i22.i.i.not.i = icmp slt i32 %and.i.i.i, %conv4.i21.i.i.i
  br i1 %cmp.i22.i.i.not.i, label %check_region_inline.exit, label %return.sink.split.i, !prof !9

return.sink.split.i:                              ; preds = %if.then.i23.i.i.i, %if.then.i.i.i.i, %if.then.i15.i.i, %entry
  %call43.i = tail call zeroext i1 @kasan_report(i32 noundef %addr, i32 noundef 2, i1 noundef zeroext false, i32 noundef %1) #5
  br label %check_region_inline.exit

check_region_inline.exit:                         ; preds = %return.sink.split.i, %if.then.i23.i.i.i, %if.end.i.i.i, %if.then.i.i.i.i, %lor.rhs.i.i.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__asan_store2(i32 noundef %addr) #0 align 64 {
entry:
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  %cmp4.i = icmp ugt i32 %addr, -3
  %2 = inttoptr i32 %addr to ptr
  %cmp18.i = icmp ult ptr %2, inttoptr (i32 -1090519040 to ptr)
  %or.cond = or i1 %cmp4.i, %cmp18.i
  br i1 %or.cond, label %return.sink.split.i, label %if.end30.i, !prof !11

if.end30.i:                                       ; preds = %entry
  %sub.i.i.i = add nuw i32 %addr, 1
  %and.i.i.i = and i32 %sub.i.i.i, 7
  %cmp.i12.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i12.i.i, label %if.then.i15.i.i, label %if.end.i.i.i, !prof !8

if.then.i15.i.i:                                  ; preds = %if.end30.i
  %shr.i.i13.i.i = lshr i32 %addr, 3
  %3 = inttoptr i32 %shr.i.i13.i.i to ptr
  %add.ptr.i.i14.i.i = getelementptr i8, ptr %3, i32 -1627389952
  %4 = load i8, ptr %add.ptr.i.i14.i.i, align 1
  %tobool3.not.i.i.i = icmp eq i8 %4, 0
  br i1 %tobool3.not.i.i.i, label %lor.rhs.i.i.i, label %return.sink.split.i, !prof !10

lor.rhs.i.i.i:                                    ; preds = %if.then.i15.i.i
  %shr.i.i.i.i.i = lshr i32 %sub.i.i.i, 3
  %5 = inttoptr i32 %shr.i.i.i.i.i to ptr
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %5, i32 -1627389952
  %6 = load i8, ptr %add.ptr.i.i.i.i.i, align 1
  %tobool.not.i.i.i.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i.i.i.i, label %check_region_inline.exit, label %if.then.i.i.i.i, !prof !9

if.then.i.i.i.i:                                  ; preds = %lor.rhs.i.i.i
  %cmp.i.i.i.not.i = icmp sgt i8 %6, 0
  br i1 %cmp.i.i.i.not.i, label %check_region_inline.exit, label %return.sink.split.i, !prof !9

if.end.i.i.i:                                     ; preds = %if.end30.i
  %shr.i.i17.i.i.i = lshr i32 %sub.i.i.i, 3
  %7 = inttoptr i32 %shr.i.i17.i.i.i to ptr
  %add.ptr.i.i18.i.i.i = getelementptr i8, ptr %7, i32 -1627389952
  %8 = load i8, ptr %add.ptr.i.i18.i.i.i, align 1
  %tobool.not.i19.i.i.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i19.i.i.i, label %check_region_inline.exit, label %if.then.i23.i.i.i, !prof !9

if.then.i23.i.i.i:                                ; preds = %if.end.i.i.i
  %conv4.i21.i.i.i = sext i8 %8 to i32
  %cmp.i22.i.i.not.i = icmp slt i32 %and.i.i.i, %conv4.i21.i.i.i
  br i1 %cmp.i22.i.i.not.i, label %check_region_inline.exit, label %return.sink.split.i, !prof !9

return.sink.split.i:                              ; preds = %if.then.i23.i.i.i, %if.then.i.i.i.i, %if.then.i15.i.i, %entry
  %call43.i = tail call zeroext i1 @kasan_report(i32 noundef %addr, i32 noundef 2, i1 noundef zeroext true, i32 noundef %1) #5
  br label %check_region_inline.exit

check_region_inline.exit:                         ; preds = %return.sink.split.i, %if.then.i23.i.i.i, %if.end.i.i.i, %if.then.i.i.i.i, %lor.rhs.i.i.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__asan_load4(i32 noundef %addr) #0 align 64 {
entry:
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  %cmp4.i = icmp ugt i32 %addr, -5
  %2 = inttoptr i32 %addr to ptr
  %cmp18.i = icmp ult ptr %2, inttoptr (i32 -1090519040 to ptr)
  %or.cond = or i1 %cmp4.i, %cmp18.i
  br i1 %or.cond, label %return.sink.split.i, label %if.end30.i, !prof !11

if.end30.i:                                       ; preds = %entry
  %sub.i.i.i = add nuw i32 %addr, 3
  %and.i.i.i = and i32 %sub.i.i.i, 7
  %cmp.i12.i.i = icmp ult i32 %and.i.i.i, 3
  br i1 %cmp.i12.i.i, label %if.then.i15.i.i, label %if.end.i.i.i, !prof !8

if.then.i15.i.i:                                  ; preds = %if.end30.i
  %shr.i.i13.i.i = lshr i32 %addr, 3
  %3 = inttoptr i32 %shr.i.i13.i.i to ptr
  %add.ptr.i.i14.i.i = getelementptr i8, ptr %3, i32 -1627389952
  %4 = load i8, ptr %add.ptr.i.i14.i.i, align 1
  %tobool3.not.i.i.i = icmp eq i8 %4, 0
  br i1 %tobool3.not.i.i.i, label %lor.rhs.i.i.i, label %return.sink.split.i, !prof !10

lor.rhs.i.i.i:                                    ; preds = %if.then.i15.i.i
  %shr.i.i.i.i.i = lshr i32 %sub.i.i.i, 3
  %5 = inttoptr i32 %shr.i.i.i.i.i to ptr
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %5, i32 -1627389952
  %6 = load i8, ptr %add.ptr.i.i.i.i.i, align 1
  %tobool.not.i.i.i.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i.i.i.i, label %check_region_inline.exit, label %if.then.i.i.i.i, !prof !9

if.then.i.i.i.i:                                  ; preds = %lor.rhs.i.i.i
  %conv4.i.i.i.i = sext i8 %6 to i32
  %cmp.i.i.i.not.i = icmp slt i32 %and.i.i.i, %conv4.i.i.i.i
  br i1 %cmp.i.i.i.not.i, label %check_region_inline.exit, label %return.sink.split.i, !prof !9

if.end.i.i.i:                                     ; preds = %if.end30.i
  %shr.i.i17.i.i.i = lshr i32 %sub.i.i.i, 3
  %7 = inttoptr i32 %shr.i.i17.i.i.i to ptr
  %add.ptr.i.i18.i.i.i = getelementptr i8, ptr %7, i32 -1627389952
  %8 = load i8, ptr %add.ptr.i.i18.i.i.i, align 1
  %tobool.not.i19.i.i.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i19.i.i.i, label %check_region_inline.exit, label %if.then.i23.i.i.i, !prof !9

if.then.i23.i.i.i:                                ; preds = %if.end.i.i.i
  %conv4.i21.i.i.i = sext i8 %8 to i32
  %cmp.i22.i.i.not.i = icmp slt i32 %and.i.i.i, %conv4.i21.i.i.i
  br i1 %cmp.i22.i.i.not.i, label %check_region_inline.exit, label %return.sink.split.i, !prof !9

return.sink.split.i:                              ; preds = %if.then.i23.i.i.i, %if.then.i.i.i.i, %if.then.i15.i.i, %entry
  %call43.i = tail call zeroext i1 @kasan_report(i32 noundef %addr, i32 noundef 4, i1 noundef zeroext false, i32 noundef %1) #5
  br label %check_region_inline.exit

check_region_inline.exit:                         ; preds = %return.sink.split.i, %if.then.i23.i.i.i, %if.end.i.i.i, %if.then.i.i.i.i, %lor.rhs.i.i.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__asan_store4(i32 noundef %addr) #0 align 64 {
entry:
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  %cmp4.i = icmp ugt i32 %addr, -5
  %2 = inttoptr i32 %addr to ptr
  %cmp18.i = icmp ult ptr %2, inttoptr (i32 -1090519040 to ptr)
  %or.cond = or i1 %cmp4.i, %cmp18.i
  br i1 %or.cond, label %return.sink.split.i, label %if.end30.i, !prof !11

if.end30.i:                                       ; preds = %entry
  %sub.i.i.i = add nuw i32 %addr, 3
  %and.i.i.i = and i32 %sub.i.i.i, 7
  %cmp.i12.i.i = icmp ult i32 %and.i.i.i, 3
  br i1 %cmp.i12.i.i, label %if.then.i15.i.i, label %if.end.i.i.i, !prof !8

if.then.i15.i.i:                                  ; preds = %if.end30.i
  %shr.i.i13.i.i = lshr i32 %addr, 3
  %3 = inttoptr i32 %shr.i.i13.i.i to ptr
  %add.ptr.i.i14.i.i = getelementptr i8, ptr %3, i32 -1627389952
  %4 = load i8, ptr %add.ptr.i.i14.i.i, align 1
  %tobool3.not.i.i.i = icmp eq i8 %4, 0
  br i1 %tobool3.not.i.i.i, label %lor.rhs.i.i.i, label %return.sink.split.i, !prof !10

lor.rhs.i.i.i:                                    ; preds = %if.then.i15.i.i
  %shr.i.i.i.i.i = lshr i32 %sub.i.i.i, 3
  %5 = inttoptr i32 %shr.i.i.i.i.i to ptr
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %5, i32 -1627389952
  %6 = load i8, ptr %add.ptr.i.i.i.i.i, align 1
  %tobool.not.i.i.i.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i.i.i.i, label %check_region_inline.exit, label %if.then.i.i.i.i, !prof !9

if.then.i.i.i.i:                                  ; preds = %lor.rhs.i.i.i
  %conv4.i.i.i.i = sext i8 %6 to i32
  %cmp.i.i.i.not.i = icmp slt i32 %and.i.i.i, %conv4.i.i.i.i
  br i1 %cmp.i.i.i.not.i, label %check_region_inline.exit, label %return.sink.split.i, !prof !9

if.end.i.i.i:                                     ; preds = %if.end30.i
  %shr.i.i17.i.i.i = lshr i32 %sub.i.i.i, 3
  %7 = inttoptr i32 %shr.i.i17.i.i.i to ptr
  %add.ptr.i.i18.i.i.i = getelementptr i8, ptr %7, i32 -1627389952
  %8 = load i8, ptr %add.ptr.i.i18.i.i.i, align 1
  %tobool.not.i19.i.i.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i19.i.i.i, label %check_region_inline.exit, label %if.then.i23.i.i.i, !prof !9

if.then.i23.i.i.i:                                ; preds = %if.end.i.i.i
  %conv4.i21.i.i.i = sext i8 %8 to i32
  %cmp.i22.i.i.not.i = icmp slt i32 %and.i.i.i, %conv4.i21.i.i.i
  br i1 %cmp.i22.i.i.not.i, label %check_region_inline.exit, label %return.sink.split.i, !prof !9

return.sink.split.i:                              ; preds = %if.then.i23.i.i.i, %if.then.i.i.i.i, %if.then.i15.i.i, %entry
  %call43.i = tail call zeroext i1 @kasan_report(i32 noundef %addr, i32 noundef 4, i1 noundef zeroext true, i32 noundef %1) #5
  br label %check_region_inline.exit

check_region_inline.exit:                         ; preds = %return.sink.split.i, %if.then.i23.i.i.i, %if.end.i.i.i, %if.then.i.i.i.i, %lor.rhs.i.i.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__asan_load8(i32 noundef %addr) #0 align 64 {
entry:
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  %cmp4.i = icmp ugt i32 %addr, -9
  %2 = inttoptr i32 %addr to ptr
  %cmp18.i = icmp ult ptr %2, inttoptr (i32 -1090519040 to ptr)
  %or.cond = or i1 %cmp4.i, %cmp18.i
  br i1 %or.cond, label %return.sink.split.i, label %if.end30.i, !prof !11

if.end30.i:                                       ; preds = %entry
  %sub.i.i.i = add nuw i32 %addr, 7
  %and.i.i.i = and i32 %sub.i.i.i, 7
  %cmp.i12.i.i.not = icmp eq i32 %and.i.i.i, 7
  br i1 %cmp.i12.i.i.not, label %if.end.i.i.i, label %if.then.i15.i.i, !prof !9

if.then.i15.i.i:                                  ; preds = %if.end30.i
  %shr.i.i13.i.i = lshr i32 %addr, 3
  %3 = inttoptr i32 %shr.i.i13.i.i to ptr
  %add.ptr.i.i14.i.i = getelementptr i8, ptr %3, i32 -1627389952
  %4 = load i8, ptr %add.ptr.i.i14.i.i, align 1
  %tobool3.not.i.i.i = icmp eq i8 %4, 0
  br i1 %tobool3.not.i.i.i, label %lor.rhs.i.i.i, label %return.sink.split.i, !prof !10

lor.rhs.i.i.i:                                    ; preds = %if.then.i15.i.i
  %shr.i.i.i.i.i = lshr i32 %sub.i.i.i, 3
  %5 = inttoptr i32 %shr.i.i.i.i.i to ptr
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %5, i32 -1627389952
  %6 = load i8, ptr %add.ptr.i.i.i.i.i, align 1
  %tobool.not.i.i.i.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i.i.i.i, label %check_region_inline.exit, label %if.then.i.i.i.i, !prof !9

if.then.i.i.i.i:                                  ; preds = %lor.rhs.i.i.i
  %conv4.i.i.i.i = sext i8 %6 to i32
  %cmp.i.i.i.not.i = icmp slt i32 %and.i.i.i, %conv4.i.i.i.i
  br i1 %cmp.i.i.i.not.i, label %check_region_inline.exit, label %return.sink.split.i, !prof !9

if.end.i.i.i:                                     ; preds = %if.end30.i
  %shr.i.i17.i.i.i = lshr i32 %sub.i.i.i, 3
  %7 = inttoptr i32 %shr.i.i17.i.i.i to ptr
  %add.ptr.i.i18.i.i.i = getelementptr i8, ptr %7, i32 -1627389952
  %8 = load i8, ptr %add.ptr.i.i18.i.i.i, align 1
  %tobool.not.i19.i.i.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i19.i.i.i, label %check_region_inline.exit, label %if.then.i23.i.i.i, !prof !9

if.then.i23.i.i.i:                                ; preds = %if.end.i.i.i
  %cmp.i22.i.i.not.i = icmp sgt i8 %8, 7
  br i1 %cmp.i22.i.i.not.i, label %check_region_inline.exit, label %return.sink.split.i, !prof !9

return.sink.split.i:                              ; preds = %if.then.i23.i.i.i, %if.then.i.i.i.i, %if.then.i15.i.i, %entry
  %call43.i = tail call zeroext i1 @kasan_report(i32 noundef %addr, i32 noundef 8, i1 noundef zeroext false, i32 noundef %1) #5
  br label %check_region_inline.exit

check_region_inline.exit:                         ; preds = %return.sink.split.i, %if.then.i23.i.i.i, %if.end.i.i.i, %if.then.i.i.i.i, %lor.rhs.i.i.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__asan_store8(i32 noundef %addr) #0 align 64 {
entry:
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  %cmp4.i = icmp ugt i32 %addr, -9
  %2 = inttoptr i32 %addr to ptr
  %cmp18.i = icmp ult ptr %2, inttoptr (i32 -1090519040 to ptr)
  %or.cond = or i1 %cmp4.i, %cmp18.i
  br i1 %or.cond, label %return.sink.split.i, label %if.end30.i, !prof !11

if.end30.i:                                       ; preds = %entry
  %sub.i.i.i = add nuw i32 %addr, 7
  %and.i.i.i = and i32 %sub.i.i.i, 7
  %cmp.i12.i.i.not = icmp eq i32 %and.i.i.i, 7
  br i1 %cmp.i12.i.i.not, label %if.end.i.i.i, label %if.then.i15.i.i, !prof !9

if.then.i15.i.i:                                  ; preds = %if.end30.i
  %shr.i.i13.i.i = lshr i32 %addr, 3
  %3 = inttoptr i32 %shr.i.i13.i.i to ptr
  %add.ptr.i.i14.i.i = getelementptr i8, ptr %3, i32 -1627389952
  %4 = load i8, ptr %add.ptr.i.i14.i.i, align 1
  %tobool3.not.i.i.i = icmp eq i8 %4, 0
  br i1 %tobool3.not.i.i.i, label %lor.rhs.i.i.i, label %return.sink.split.i, !prof !10

lor.rhs.i.i.i:                                    ; preds = %if.then.i15.i.i
  %shr.i.i.i.i.i = lshr i32 %sub.i.i.i, 3
  %5 = inttoptr i32 %shr.i.i.i.i.i to ptr
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %5, i32 -1627389952
  %6 = load i8, ptr %add.ptr.i.i.i.i.i, align 1
  %tobool.not.i.i.i.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i.i.i.i, label %check_region_inline.exit, label %if.then.i.i.i.i, !prof !9

if.then.i.i.i.i:                                  ; preds = %lor.rhs.i.i.i
  %conv4.i.i.i.i = sext i8 %6 to i32
  %cmp.i.i.i.not.i = icmp slt i32 %and.i.i.i, %conv4.i.i.i.i
  br i1 %cmp.i.i.i.not.i, label %check_region_inline.exit, label %return.sink.split.i, !prof !9

if.end.i.i.i:                                     ; preds = %if.end30.i
  %shr.i.i17.i.i.i = lshr i32 %sub.i.i.i, 3
  %7 = inttoptr i32 %shr.i.i17.i.i.i to ptr
  %add.ptr.i.i18.i.i.i = getelementptr i8, ptr %7, i32 -1627389952
  %8 = load i8, ptr %add.ptr.i.i18.i.i.i, align 1
  %tobool.not.i19.i.i.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i19.i.i.i, label %check_region_inline.exit, label %if.then.i23.i.i.i, !prof !9

if.then.i23.i.i.i:                                ; preds = %if.end.i.i.i
  %cmp.i22.i.i.not.i = icmp sgt i8 %8, 7
  br i1 %cmp.i22.i.i.not.i, label %check_region_inline.exit, label %return.sink.split.i, !prof !9

return.sink.split.i:                              ; preds = %if.then.i23.i.i.i, %if.then.i.i.i.i, %if.then.i15.i.i, %entry
  %call43.i = tail call zeroext i1 @kasan_report(i32 noundef %addr, i32 noundef 8, i1 noundef zeroext true, i32 noundef %1) #5
  br label %check_region_inline.exit

check_region_inline.exit:                         ; preds = %return.sink.split.i, %if.then.i23.i.i.i, %if.end.i.i.i, %if.then.i.i.i.i, %lor.rhs.i.i.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__asan_load16(i32 noundef %addr) #0 align 64 {
entry:
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  %cmp4.i = icmp ugt i32 %addr, -17
  %2 = inttoptr i32 %addr to ptr
  %cmp18.i = icmp ult ptr %2, inttoptr (i32 -1090519040 to ptr)
  %or.cond = or i1 %cmp4.i, %cmp18.i
  br i1 %or.cond, label %return.sink.split.i, label %if.end30.i, !prof !11

if.end30.i:                                       ; preds = %entry
  %shr.i.i17.i.i = lshr i32 %addr, 3
  %3 = inttoptr i32 %shr.i.i17.i.i to ptr
  %add.ptr.i.i18.i.i = getelementptr i8, ptr %3, i32 -1627389952
  %and.i19.i.i = and i32 %addr, 7
  %cmp.not.i.i.i = icmp eq i32 %and.i19.i.i, 0
  %4 = load i16, ptr %add.ptr.i.i18.i.i, align 2
  %tobool6.i.i.not.i = icmp eq i16 %4, 0
  br i1 %cmp.not.i.i.i, label %if.end.i30.i.i, label %if.then.i21.i.i, !prof !9

if.then.i21.i.i:                                  ; preds = %if.end30.i
  br i1 %tobool6.i.i.not.i, label %lor.rhs.i26.i.i, label %return.sink.split.i, !prof !10

lor.rhs.i26.i.i:                                  ; preds = %if.then.i21.i.i
  %add.i22.i.i = add nuw i32 %addr, 15
  %shr.i.i.i23.i.i = lshr i32 %add.i22.i.i, 3
  %5 = inttoptr i32 %shr.i.i.i23.i.i to ptr
  %add.ptr.i.i.i24.i.i = getelementptr i8, ptr %5, i32 -1627389952
  %6 = load i8, ptr %add.ptr.i.i.i24.i.i, align 1
  %tobool.not.i.i25.i.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i.i25.i.i, label %check_region_inline.exit, label %memory_is_poisoned.exit.i, !prof !9

if.end.i30.i.i:                                   ; preds = %if.end30.i
  br i1 %tobool6.i.i.not.i, label %check_region_inline.exit, label %return.sink.split.i, !prof !9

memory_is_poisoned.exit.i:                        ; preds = %lor.rhs.i26.i.i
  %conv.i.i.i.i = and i32 %add.i22.i.i, 7
  %conv4.i.i27.i.i = sext i8 %6 to i32
  %cmp.i.i28.i.not.i = icmp slt i32 %conv.i.i.i.i, %conv4.i.i27.i.i
  br i1 %cmp.i.i28.i.not.i, label %check_region_inline.exit, label %return.sink.split.i, !prof !9

return.sink.split.i:                              ; preds = %memory_is_poisoned.exit.i, %if.end.i30.i.i, %if.then.i21.i.i, %entry
  %call43.i = tail call zeroext i1 @kasan_report(i32 noundef %addr, i32 noundef 16, i1 noundef zeroext false, i32 noundef %1) #5
  br label %check_region_inline.exit

check_region_inline.exit:                         ; preds = %return.sink.split.i, %memory_is_poisoned.exit.i, %if.end.i30.i.i, %lor.rhs.i26.i.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__asan_store16(i32 noundef %addr) #0 align 64 {
entry:
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  %cmp4.i = icmp ugt i32 %addr, -17
  %2 = inttoptr i32 %addr to ptr
  %cmp18.i = icmp ult ptr %2, inttoptr (i32 -1090519040 to ptr)
  %or.cond = or i1 %cmp4.i, %cmp18.i
  br i1 %or.cond, label %return.sink.split.i, label %if.end30.i, !prof !11

if.end30.i:                                       ; preds = %entry
  %shr.i.i17.i.i = lshr i32 %addr, 3
  %3 = inttoptr i32 %shr.i.i17.i.i to ptr
  %add.ptr.i.i18.i.i = getelementptr i8, ptr %3, i32 -1627389952
  %and.i19.i.i = and i32 %addr, 7
  %cmp.not.i.i.i = icmp eq i32 %and.i19.i.i, 0
  %4 = load i16, ptr %add.ptr.i.i18.i.i, align 2
  %tobool6.i.i.not.i = icmp eq i16 %4, 0
  br i1 %cmp.not.i.i.i, label %if.end.i30.i.i, label %if.then.i21.i.i, !prof !9

if.then.i21.i.i:                                  ; preds = %if.end30.i
  br i1 %tobool6.i.i.not.i, label %lor.rhs.i26.i.i, label %return.sink.split.i, !prof !10

lor.rhs.i26.i.i:                                  ; preds = %if.then.i21.i.i
  %add.i22.i.i = add nuw i32 %addr, 15
  %shr.i.i.i23.i.i = lshr i32 %add.i22.i.i, 3
  %5 = inttoptr i32 %shr.i.i.i23.i.i to ptr
  %add.ptr.i.i.i24.i.i = getelementptr i8, ptr %5, i32 -1627389952
  %6 = load i8, ptr %add.ptr.i.i.i24.i.i, align 1
  %tobool.not.i.i25.i.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i.i25.i.i, label %check_region_inline.exit, label %memory_is_poisoned.exit.i, !prof !9

if.end.i30.i.i:                                   ; preds = %if.end30.i
  br i1 %tobool6.i.i.not.i, label %check_region_inline.exit, label %return.sink.split.i, !prof !9

memory_is_poisoned.exit.i:                        ; preds = %lor.rhs.i26.i.i
  %conv.i.i.i.i = and i32 %add.i22.i.i, 7
  %conv4.i.i27.i.i = sext i8 %6 to i32
  %cmp.i.i28.i.not.i = icmp slt i32 %conv.i.i.i.i, %conv4.i.i27.i.i
  br i1 %cmp.i.i28.i.not.i, label %check_region_inline.exit, label %return.sink.split.i, !prof !9

return.sink.split.i:                              ; preds = %memory_is_poisoned.exit.i, %if.end.i30.i.i, %if.then.i21.i.i, %entry
  %call43.i = tail call zeroext i1 @kasan_report(i32 noundef %addr, i32 noundef 16, i1 noundef zeroext true, i32 noundef %1) #5
  br label %check_region_inline.exit

check_region_inline.exit:                         ; preds = %return.sink.split.i, %memory_is_poisoned.exit.i, %if.end.i30.i.i, %lor.rhs.i26.i.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__asan_loadN(i32 noundef %addr, i32 noundef %size) #0 align 64 {
entry:
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  %call = tail call zeroext i1 @kasan_check_range(i32 noundef %addr, i32 noundef %size, i1 noundef zeroext false, i32 noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__asan_storeN(i32 noundef %addr, i32 noundef %size) #0 align 64 {
entry:
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  %call = tail call zeroext i1 @kasan_check_range(i32 noundef %addr, i32 noundef %size, i1 noundef zeroext true, i32 noundef %1) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone willreturn uwtable(sync)
define dso_local void @__asan_handle_no_return() #3 align 64 {
entry:
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__asan_alloca_poison(i32 noundef %addr, i32 noundef %size) #0 align 64 {
entry:
  %and7 = and i32 %addr, 31
  %cmp.not = icmp eq i32 %and7, 0
  br i1 %cmp.not, label %if.end, label %do.end, !prof !9

do.end:                                           ; preds = %entry
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 295, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %sub = add i32 %size, -1
  %or = or i32 %sub, 7
  %add = add i32 %or, 1
  %add6 = add i32 %add, %addr
  %0 = inttoptr i32 %add6 to ptr
  %sub5 = add i32 %addr, -32
  %1 = inttoptr i32 %sub5 to ptr
  %and = and i32 %size, -8
  %or2 = or i32 %sub, 31
  %add.neg = xor i32 %or, -1
  %add27 = add i32 %and, %addr
  %2 = inttoptr i32 %add27 to ptr
  %sub28 = and i32 %size, 7
  tail call void @kasan_unpoison(ptr noundef %2, i32 noundef %sub28, i1 noundef zeroext false) #5
  tail call void @kasan_poison(ptr noundef %1, i32 noundef 32, i8 noundef zeroext -54, i1 noundef zeroext false) #5
  %sub4 = add i32 %or2, 33
  %add29 = add i32 %sub4, %add.neg
  tail call void @kasan_poison(ptr noundef %0, i32 noundef %add29, i8 noundef zeroext -53, i1 noundef zeroext false) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kasan_unpoison(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kasan_poison(ptr noundef, i32 noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__asan_allocas_unpoison(ptr noundef %stack_top, ptr noundef %stack_bottom) #0 align 64 {
entry:
  %tobool.not = icmp eq ptr %stack_top, null
  %cmp = icmp ugt ptr %stack_top, %stack_bottom
  %0 = or i1 %tobool.not, %cmp
  br i1 %0, label %return, label %if.end, !prof !8

if.end:                                           ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint ptr %stack_bottom to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %stack_top to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  tail call void @kasan_unpoison(ptr noundef nonnull %stack_top, i32 noundef %sub.ptr.sub, i1 noundef zeroext false) #5
  br label %return

return:                                           ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__asan_set_shadow_00(ptr noundef %addr, i32 noundef %size) #0 align 64 {
entry:
  %call = tail call ptr @__memset(ptr noundef %addr, i32 noundef 0, i32 noundef %size) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__memset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__asan_set_shadow_f1(ptr noundef %addr, i32 noundef %size) #0 align 64 {
entry:
  %call = tail call ptr @__memset(ptr noundef %addr, i32 noundef 241, i32 noundef %size) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__asan_set_shadow_f2(ptr noundef %addr, i32 noundef %size) #0 align 64 {
entry:
  %call = tail call ptr @__memset(ptr noundef %addr, i32 noundef 242, i32 noundef %size) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__asan_set_shadow_f3(ptr noundef %addr, i32 noundef %size) #0 align 64 {
entry:
  %call = tail call ptr @__memset(ptr noundef %addr, i32 noundef 243, i32 noundef %size) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__asan_set_shadow_f5(ptr noundef %addr, i32 noundef %size) #0 align 64 {
entry:
  %call = tail call ptr @__memset(ptr noundef %addr, i32 noundef 245, i32 noundef %size) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__asan_set_shadow_f8(ptr noundef %addr, i32 noundef %size) #0 align 64 {
entry:
  %call = tail call ptr @__memset(ptr noundef %addr, i32 noundef 248, i32 noundef %size) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @kasan_record_aux_stack(ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  tail call fastcc void @__kasan_record_aux_stack(ptr noundef %addr, i1 noundef zeroext true) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define internal fastcc void @__kasan_record_aux_stack(ptr noundef %addr, i1 noundef zeroext %can_alloc) unnamed_addr #0 align 64 {
entry:
  %call = tail call ptr @kasan_addr_to_slab(ptr noundef %addr) #5
  %0 = load ptr, ptr @__kfence_pool, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %addr to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %0 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %cmp.i = icmp ugt i32 %sub.ptr.sub.i, 2097151
  %tobool.i = icmp eq ptr %0, null
  %1 = select i1 %cmp.i, i1 true, i1 %tobool.i
  %tobool = icmp ne ptr %call, null
  %or.cond = select i1 %1, i1 %tobool, i1 false
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %slab_cache = getelementptr inbounds %struct.slab, ptr %call, i32 0, i32 2
  %2 = load ptr, ptr %slab_cache, align 4
  %call.i.i.i = tail call ptr @page_address(ptr noundef nonnull %call) #5
  %sub.ptr.rhs.cast.i25 = ptrtoint ptr %call.i.i.i to i32
  %sub.ptr.sub.i26 = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i25
  %size.i = getelementptr inbounds %struct.kmem_cache, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %size.i, align 4
  %rem.i = urem i32 %sub.ptr.sub.i26, %3
  %idx.neg.i = sub i32 0, %rem.i
  %add.ptr.i = getelementptr i8, ptr %addr, i32 %idx.neg.i
  %call.i.i14.i = tail call ptr @page_address(ptr noundef nonnull %call) #5
  %4 = getelementptr inbounds %struct.slab, ptr %call, i32 0, i32 4
  %bf.load.i = load i32, ptr %4, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 1
  %bf.clear.i = and i32 %bf.lshr.i, 32767
  %sub.i = add nsw i32 %bf.clear.i, -1
  %5 = load i32, ptr %size.i, align 4
  %mul.i = mul i32 %sub.i, %5
  %add.ptr3.i = getelementptr i8, ptr %call.i.i14.i, i32 %mul.i
  %cmp.i27 = icmp ugt ptr %add.ptr.i, %add.ptr3.i
  %add.ptr3.add.ptr.i = select i1 %cmp.i27, ptr %add.ptr3.i, ptr %add.ptr.i, !prof !8
  %call5.i = tail call ptr @fixup_red_left(ptr noundef %2, ptr noundef %add.ptr3.add.ptr.i) #5
  %call3 = tail call ptr @kasan_get_alloc_meta(ptr noundef %2, ptr noundef %call5.i) #5
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %aux_stack = getelementptr inbounds %struct.kasan_alloc_meta, ptr %call3, i32 0, i32 1
  %6 = load i32, ptr %aux_stack, align 4
  %arrayidx8 = getelementptr %struct.kasan_alloc_meta, ptr %call3, i32 0, i32 1, i32 1
  store i32 %6, ptr %arrayidx8, align 4
  %call10 = tail call i32 @kasan_save_stack(i32 noundef 2048, i1 noundef zeroext %can_alloc) #5
  store i32 %call10, ptr %aux_stack, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @kasan_record_aux_stack_noalloc(ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  tail call fastcc void @__kasan_record_aux_stack(ptr noundef %addr, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @kasan_set_free_info(ptr noundef %cache, ptr noundef %object, i8 noundef zeroext %tag) local_unnamed_addr #0 align 64 {
entry:
  %call = tail call ptr @kasan_get_free_meta(ptr noundef %cache, ptr noundef %object) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %free_track = getelementptr inbounds %struct.kasan_free_meta, ptr %call, i32 0, i32 1
  tail call void @kasan_set_track(ptr noundef %free_track, i32 noundef 2048) #5
  %0 = ptrtoint ptr %object to i32
  %shr.i = lshr i32 %0, 3
  %1 = inttoptr i32 %shr.i to ptr
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1627389952
  store i8 -6, ptr %add.ptr.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kasan_get_free_meta(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kasan_set_track(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local ptr @kasan_get_free_track(ptr noundef %cache, ptr noundef %object, i8 noundef zeroext %tag) local_unnamed_addr #0 align 64 {
entry:
  %0 = ptrtoint ptr %object to i32
  %shr.i = lshr i32 %0, 3
  %1 = inttoptr i32 %shr.i to ptr
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1627389952
  %2 = load i8, ptr %add.ptr.i, align 1
  %cmp.not = icmp eq i8 %2, -6
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @kasan_get_free_meta(ptr noundef %cache, ptr noundef %object) #5
  %free_track = getelementptr inbounds %struct.kasan_free_meta, ptr %call2, i32 0, i32 1
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi ptr [ %free_track, %if.end ], [ null, %entry ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kasan_report(i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kasan_addr_to_slab(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kasan_get_alloc_meta(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kasan_save_stack(i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fixup_red_left(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nounwind null_pointer_is_valid willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"branch_weights", i32 2146410443, i32 1073205}
!11 = !{!"branch_weights", i32 4001, i32 4000000}
