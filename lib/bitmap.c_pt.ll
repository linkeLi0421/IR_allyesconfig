; ModuleID = '/llk/IR_all_yes/lib/bitmap.c_pt.bc'
source_filename = "../lib/bitmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__bitmap_equal\22, \22a\22\09"
module asm "\09.weak\09__crc___bitmap_equal\09\09\09\09"
module asm "\09.long\09__crc___bitmap_equal\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___bitmap_equal:\09\09\09\09\09"
module asm "\09.asciz \09\22__bitmap_equal\22\09\09\09\09\09"
module asm "__kstrtabns___bitmap_equal:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__bitmap_complement\22, \22a\22\09"
module asm "\09.weak\09__crc___bitmap_complement\09\09\09\09"
module asm "\09.long\09__crc___bitmap_complement\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___bitmap_complement:\09\09\09\09\09"
module asm "\09.asciz \09\22__bitmap_complement\22\09\09\09\09\09"
module asm "__kstrtabns___bitmap_complement:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__bitmap_shift_right\22, \22a\22\09"
module asm "\09.weak\09__crc___bitmap_shift_right\09\09\09\09"
module asm "\09.long\09__crc___bitmap_shift_right\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___bitmap_shift_right:\09\09\09\09\09"
module asm "\09.asciz \09\22__bitmap_shift_right\22\09\09\09\09\09"
module asm "__kstrtabns___bitmap_shift_right:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__bitmap_shift_left\22, \22a\22\09"
module asm "\09.weak\09__crc___bitmap_shift_left\09\09\09\09"
module asm "\09.long\09__crc___bitmap_shift_left\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___bitmap_shift_left:\09\09\09\09\09"
module asm "\09.asciz \09\22__bitmap_shift_left\22\09\09\09\09\09"
module asm "__kstrtabns___bitmap_shift_left:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bitmap_cut\22, \22a\22\09"
module asm "\09.weak\09__crc_bitmap_cut\09\09\09\09"
module asm "\09.long\09__crc_bitmap_cut\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bitmap_cut:\09\09\09\09\09"
module asm "\09.asciz \09\22bitmap_cut\22\09\09\09\09\09"
module asm "__kstrtabns_bitmap_cut:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__bitmap_and\22, \22a\22\09"
module asm "\09.weak\09__crc___bitmap_and\09\09\09\09"
module asm "\09.long\09__crc___bitmap_and\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___bitmap_and:\09\09\09\09\09"
module asm "\09.asciz \09\22__bitmap_and\22\09\09\09\09\09"
module asm "__kstrtabns___bitmap_and:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__bitmap_or\22, \22a\22\09"
module asm "\09.weak\09__crc___bitmap_or\09\09\09\09"
module asm "\09.long\09__crc___bitmap_or\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___bitmap_or:\09\09\09\09\09"
module asm "\09.asciz \09\22__bitmap_or\22\09\09\09\09\09"
module asm "__kstrtabns___bitmap_or:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__bitmap_xor\22, \22a\22\09"
module asm "\09.weak\09__crc___bitmap_xor\09\09\09\09"
module asm "\09.long\09__crc___bitmap_xor\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___bitmap_xor:\09\09\09\09\09"
module asm "\09.asciz \09\22__bitmap_xor\22\09\09\09\09\09"
module asm "__kstrtabns___bitmap_xor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__bitmap_andnot\22, \22a\22\09"
module asm "\09.weak\09__crc___bitmap_andnot\09\09\09\09"
module asm "\09.long\09__crc___bitmap_andnot\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___bitmap_andnot:\09\09\09\09\09"
module asm "\09.asciz \09\22__bitmap_andnot\22\09\09\09\09\09"
module asm "__kstrtabns___bitmap_andnot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__bitmap_replace\22, \22a\22\09"
module asm "\09.weak\09__crc___bitmap_replace\09\09\09\09"
module asm "\09.long\09__crc___bitmap_replace\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___bitmap_replace:\09\09\09\09\09"
module asm "\09.asciz \09\22__bitmap_replace\22\09\09\09\09\09"
module asm "__kstrtabns___bitmap_replace:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__bitmap_intersects\22, \22a\22\09"
module asm "\09.weak\09__crc___bitmap_intersects\09\09\09\09"
module asm "\09.long\09__crc___bitmap_intersects\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___bitmap_intersects:\09\09\09\09\09"
module asm "\09.asciz \09\22__bitmap_intersects\22\09\09\09\09\09"
module asm "__kstrtabns___bitmap_intersects:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__bitmap_subset\22, \22a\22\09"
module asm "\09.weak\09__crc___bitmap_subset\09\09\09\09"
module asm "\09.long\09__crc___bitmap_subset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___bitmap_subset:\09\09\09\09\09"
module asm "\09.asciz \09\22__bitmap_subset\22\09\09\09\09\09"
module asm "__kstrtabns___bitmap_subset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__bitmap_weight\22, \22a\22\09"
module asm "\09.weak\09__crc___bitmap_weight\09\09\09\09"
module asm "\09.long\09__crc___bitmap_weight\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___bitmap_weight:\09\09\09\09\09"
module asm "\09.asciz \09\22__bitmap_weight\22\09\09\09\09\09"
module asm "__kstrtabns___bitmap_weight:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__bitmap_set\22, \22a\22\09"
module asm "\09.weak\09__crc___bitmap_set\09\09\09\09"
module asm "\09.long\09__crc___bitmap_set\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___bitmap_set:\09\09\09\09\09"
module asm "\09.asciz \09\22__bitmap_set\22\09\09\09\09\09"
module asm "__kstrtabns___bitmap_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__bitmap_clear\22, \22a\22\09"
module asm "\09.weak\09__crc___bitmap_clear\09\09\09\09"
module asm "\09.long\09__crc___bitmap_clear\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___bitmap_clear:\09\09\09\09\09"
module asm "\09.asciz \09\22__bitmap_clear\22\09\09\09\09\09"
module asm "__kstrtabns___bitmap_clear:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bitmap_find_next_zero_area_off\22, \22a\22\09"
module asm "\09.weak\09__crc_bitmap_find_next_zero_area_off\09\09\09\09"
module asm "\09.long\09__crc_bitmap_find_next_zero_area_off\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bitmap_find_next_zero_area_off:\09\09\09\09\09"
module asm "\09.asciz \09\22bitmap_find_next_zero_area_off\22\09\09\09\09\09"
module asm "__kstrtabns_bitmap_find_next_zero_area_off:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bitmap_parse_user\22, \22a\22\09"
module asm "\09.weak\09__crc_bitmap_parse_user\09\09\09\09"
module asm "\09.long\09__crc_bitmap_parse_user\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bitmap_parse_user:\09\09\09\09\09"
module asm "\09.asciz \09\22bitmap_parse_user\22\09\09\09\09\09"
module asm "__kstrtabns_bitmap_parse_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bitmap_print_to_pagebuf\22, \22a\22\09"
module asm "\09.weak\09__crc_bitmap_print_to_pagebuf\09\09\09\09"
module asm "\09.long\09__crc_bitmap_print_to_pagebuf\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bitmap_print_to_pagebuf:\09\09\09\09\09"
module asm "\09.asciz \09\22bitmap_print_to_pagebuf\22\09\09\09\09\09"
module asm "__kstrtabns_bitmap_print_to_pagebuf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bitmap_print_bitmask_to_buf\22, \22a\22\09"
module asm "\09.weak\09__crc_bitmap_print_bitmask_to_buf\09\09\09\09"
module asm "\09.long\09__crc_bitmap_print_bitmask_to_buf\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bitmap_print_bitmask_to_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22bitmap_print_bitmask_to_buf\22\09\09\09\09\09"
module asm "__kstrtabns_bitmap_print_bitmask_to_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bitmap_print_list_to_buf\22, \22a\22\09"
module asm "\09.weak\09__crc_bitmap_print_list_to_buf\09\09\09\09"
module asm "\09.long\09__crc_bitmap_print_list_to_buf\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bitmap_print_list_to_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22bitmap_print_list_to_buf\22\09\09\09\09\09"
module asm "__kstrtabns_bitmap_print_list_to_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bitmap_parselist\22, \22a\22\09"
module asm "\09.weak\09__crc_bitmap_parselist\09\09\09\09"
module asm "\09.long\09__crc_bitmap_parselist\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bitmap_parselist:\09\09\09\09\09"
module asm "\09.asciz \09\22bitmap_parselist\22\09\09\09\09\09"
module asm "__kstrtabns_bitmap_parselist:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bitmap_parselist_user\22, \22a\22\09"
module asm "\09.weak\09__crc_bitmap_parselist_user\09\09\09\09"
module asm "\09.long\09__crc_bitmap_parselist_user\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bitmap_parselist_user:\09\09\09\09\09"
module asm "\09.asciz \09\22bitmap_parselist_user\22\09\09\09\09\09"
module asm "__kstrtabns_bitmap_parselist_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bitmap_parse\22, \22a\22\09"
module asm "\09.weak\09__crc_bitmap_parse\09\09\09\09"
module asm "\09.long\09__crc_bitmap_parse\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bitmap_parse:\09\09\09\09\09"
module asm "\09.asciz \09\22bitmap_parse\22\09\09\09\09\09"
module asm "__kstrtabns_bitmap_parse:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bitmap_remap\22, \22a\22\09"
module asm "\09.weak\09__crc_bitmap_remap\09\09\09\09"
module asm "\09.long\09__crc_bitmap_remap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bitmap_remap:\09\09\09\09\09"
module asm "\09.asciz \09\22bitmap_remap\22\09\09\09\09\09"
module asm "__kstrtabns_bitmap_remap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bitmap_bitremap\22, \22a\22\09"
module asm "\09.weak\09__crc_bitmap_bitremap\09\09\09\09"
module asm "\09.long\09__crc_bitmap_bitremap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bitmap_bitremap:\09\09\09\09\09"
module asm "\09.asciz \09\22bitmap_bitremap\22\09\09\09\09\09"
module asm "__kstrtabns_bitmap_bitremap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bitmap_find_free_region\22, \22a\22\09"
module asm "\09.weak\09__crc_bitmap_find_free_region\09\09\09\09"
module asm "\09.long\09__crc_bitmap_find_free_region\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bitmap_find_free_region:\09\09\09\09\09"
module asm "\09.asciz \09\22bitmap_find_free_region\22\09\09\09\09\09"
module asm "__kstrtabns_bitmap_find_free_region:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bitmap_release_region\22, \22a\22\09"
module asm "\09.weak\09__crc_bitmap_release_region\09\09\09\09"
module asm "\09.long\09__crc_bitmap_release_region\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bitmap_release_region:\09\09\09\09\09"
module asm "\09.asciz \09\22bitmap_release_region\22\09\09\09\09\09"
module asm "__kstrtabns_bitmap_release_region:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bitmap_allocate_region\22, \22a\22\09"
module asm "\09.weak\09__crc_bitmap_allocate_region\09\09\09\09"
module asm "\09.long\09__crc_bitmap_allocate_region\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bitmap_allocate_region:\09\09\09\09\09"
module asm "\09.asciz \09\22bitmap_allocate_region\22\09\09\09\09\09"
module asm "__kstrtabns_bitmap_allocate_region:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bitmap_copy_le\22, \22a\22\09"
module asm "\09.weak\09__crc_bitmap_copy_le\09\09\09\09"
module asm "\09.long\09__crc_bitmap_copy_le\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bitmap_copy_le:\09\09\09\09\09"
module asm "\09.asciz \09\22bitmap_copy_le\22\09\09\09\09\09"
module asm "__kstrtabns_bitmap_copy_le:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bitmap_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_bitmap_alloc\09\09\09\09"
module asm "\09.long\09__crc_bitmap_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bitmap_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22bitmap_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_bitmap_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bitmap_zalloc\22, \22a\22\09"
module asm "\09.weak\09__crc_bitmap_zalloc\09\09\09\09"
module asm "\09.long\09__crc_bitmap_zalloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bitmap_zalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22bitmap_zalloc\22\09\09\09\09\09"
module asm "__kstrtabns_bitmap_zalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bitmap_alloc_node\22, \22a\22\09"
module asm "\09.weak\09__crc_bitmap_alloc_node\09\09\09\09"
module asm "\09.long\09__crc_bitmap_alloc_node\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bitmap_alloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22bitmap_alloc_node\22\09\09\09\09\09"
module asm "__kstrtabns_bitmap_alloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bitmap_zalloc_node\22, \22a\22\09"
module asm "\09.weak\09__crc_bitmap_zalloc_node\09\09\09\09"
module asm "\09.long\09__crc_bitmap_zalloc_node\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bitmap_zalloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22bitmap_zalloc_node\22\09\09\09\09\09"
module asm "__kstrtabns_bitmap_zalloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bitmap_free\22, \22a\22\09"
module asm "\09.weak\09__crc_bitmap_free\09\09\09\09"
module asm "\09.long\09__crc_bitmap_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bitmap_free:\09\09\09\09\09"
module asm "\09.asciz \09\22bitmap_free\22\09\09\09\09\09"
module asm "__kstrtabns_bitmap_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_bitmap_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_bitmap_alloc\09\09\09\09"
module asm "\09.long\09__crc_devm_bitmap_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_bitmap_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_bitmap_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_devm_bitmap_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_bitmap_zalloc\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_bitmap_zalloc\09\09\09\09"
module asm "\09.long\09__crc_devm_bitmap_zalloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_bitmap_zalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_bitmap_zalloc\22\09\09\09\09\09"
module asm "__kstrtabns_devm_bitmap_zalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab___bitmap_equal = external dso_local constant [0 x i8], align 1
@__kstrtabns___bitmap_equal = external dso_local constant [0 x i8], align 1
@__ksymtab___bitmap_equal = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__bitmap_equal to i32), ptr @__kstrtab___bitmap_equal, ptr @__kstrtabns___bitmap_equal }, section "___ksymtab+__bitmap_equal", align 4
@__kstrtab___bitmap_complement = external dso_local constant [0 x i8], align 1
@__kstrtabns___bitmap_complement = external dso_local constant [0 x i8], align 1
@__ksymtab___bitmap_complement = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__bitmap_complement to i32), ptr @__kstrtab___bitmap_complement, ptr @__kstrtabns___bitmap_complement }, section "___ksymtab+__bitmap_complement", align 4
@__kstrtab___bitmap_shift_right = external dso_local constant [0 x i8], align 1
@__kstrtabns___bitmap_shift_right = external dso_local constant [0 x i8], align 1
@__ksymtab___bitmap_shift_right = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__bitmap_shift_right to i32), ptr @__kstrtab___bitmap_shift_right, ptr @__kstrtabns___bitmap_shift_right }, section "___ksymtab+__bitmap_shift_right", align 4
@__kstrtab___bitmap_shift_left = external dso_local constant [0 x i8], align 1
@__kstrtabns___bitmap_shift_left = external dso_local constant [0 x i8], align 1
@__ksymtab___bitmap_shift_left = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__bitmap_shift_left to i32), ptr @__kstrtab___bitmap_shift_left, ptr @__kstrtabns___bitmap_shift_left }, section "___ksymtab+__bitmap_shift_left", align 4
@__kstrtab_bitmap_cut = external dso_local constant [0 x i8], align 1
@__kstrtabns_bitmap_cut = external dso_local constant [0 x i8], align 1
@__ksymtab_bitmap_cut = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bitmap_cut to i32), ptr @__kstrtab_bitmap_cut, ptr @__kstrtabns_bitmap_cut }, section "___ksymtab+bitmap_cut", align 4
@__kstrtab___bitmap_and = external dso_local constant [0 x i8], align 1
@__kstrtabns___bitmap_and = external dso_local constant [0 x i8], align 1
@__ksymtab___bitmap_and = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__bitmap_and to i32), ptr @__kstrtab___bitmap_and, ptr @__kstrtabns___bitmap_and }, section "___ksymtab+__bitmap_and", align 4
@__kstrtab___bitmap_or = external dso_local constant [0 x i8], align 1
@__kstrtabns___bitmap_or = external dso_local constant [0 x i8], align 1
@__ksymtab___bitmap_or = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__bitmap_or to i32), ptr @__kstrtab___bitmap_or, ptr @__kstrtabns___bitmap_or }, section "___ksymtab+__bitmap_or", align 4
@__kstrtab___bitmap_xor = external dso_local constant [0 x i8], align 1
@__kstrtabns___bitmap_xor = external dso_local constant [0 x i8], align 1
@__ksymtab___bitmap_xor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__bitmap_xor to i32), ptr @__kstrtab___bitmap_xor, ptr @__kstrtabns___bitmap_xor }, section "___ksymtab+__bitmap_xor", align 4
@__kstrtab___bitmap_andnot = external dso_local constant [0 x i8], align 1
@__kstrtabns___bitmap_andnot = external dso_local constant [0 x i8], align 1
@__ksymtab___bitmap_andnot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__bitmap_andnot to i32), ptr @__kstrtab___bitmap_andnot, ptr @__kstrtabns___bitmap_andnot }, section "___ksymtab+__bitmap_andnot", align 4
@__kstrtab___bitmap_replace = external dso_local constant [0 x i8], align 1
@__kstrtabns___bitmap_replace = external dso_local constant [0 x i8], align 1
@__ksymtab___bitmap_replace = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__bitmap_replace to i32), ptr @__kstrtab___bitmap_replace, ptr @__kstrtabns___bitmap_replace }, section "___ksymtab+__bitmap_replace", align 4
@__kstrtab___bitmap_intersects = external dso_local constant [0 x i8], align 1
@__kstrtabns___bitmap_intersects = external dso_local constant [0 x i8], align 1
@__ksymtab___bitmap_intersects = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__bitmap_intersects to i32), ptr @__kstrtab___bitmap_intersects, ptr @__kstrtabns___bitmap_intersects }, section "___ksymtab+__bitmap_intersects", align 4
@__kstrtab___bitmap_subset = external dso_local constant [0 x i8], align 1
@__kstrtabns___bitmap_subset = external dso_local constant [0 x i8], align 1
@__ksymtab___bitmap_subset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__bitmap_subset to i32), ptr @__kstrtab___bitmap_subset, ptr @__kstrtabns___bitmap_subset }, section "___ksymtab+__bitmap_subset", align 4
@__kstrtab___bitmap_weight = external dso_local constant [0 x i8], align 1
@__kstrtabns___bitmap_weight = external dso_local constant [0 x i8], align 1
@__ksymtab___bitmap_weight = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__bitmap_weight to i32), ptr @__kstrtab___bitmap_weight, ptr @__kstrtabns___bitmap_weight }, section "___ksymtab+__bitmap_weight", align 4
@__kstrtab___bitmap_set = external dso_local constant [0 x i8], align 1
@__kstrtabns___bitmap_set = external dso_local constant [0 x i8], align 1
@__ksymtab___bitmap_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__bitmap_set to i32), ptr @__kstrtab___bitmap_set, ptr @__kstrtabns___bitmap_set }, section "___ksymtab+__bitmap_set", align 4
@__kstrtab___bitmap_clear = external dso_local constant [0 x i8], align 1
@__kstrtabns___bitmap_clear = external dso_local constant [0 x i8], align 1
@__ksymtab___bitmap_clear = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__bitmap_clear to i32), ptr @__kstrtab___bitmap_clear, ptr @__kstrtabns___bitmap_clear }, section "___ksymtab+__bitmap_clear", align 4
@__kstrtab_bitmap_find_next_zero_area_off = external dso_local constant [0 x i8], align 1
@__kstrtabns_bitmap_find_next_zero_area_off = external dso_local constant [0 x i8], align 1
@__ksymtab_bitmap_find_next_zero_area_off = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bitmap_find_next_zero_area_off to i32), ptr @__kstrtab_bitmap_find_next_zero_area_off, ptr @__kstrtabns_bitmap_find_next_zero_area_off }, section "___ksymtab+bitmap_find_next_zero_area_off", align 4
@__kstrtab_bitmap_parse_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_bitmap_parse_user = external dso_local constant [0 x i8], align 1
@__ksymtab_bitmap_parse_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bitmap_parse_user to i32), ptr @__kstrtab_bitmap_parse_user, ptr @__kstrtabns_bitmap_parse_user }, section "___ksymtab+bitmap_parse_user", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%*pbl\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%*pb\0A\00", [26 x i8] zeroinitializer }, align 32
@__kstrtab_bitmap_print_to_pagebuf = external dso_local constant [0 x i8], align 1
@__kstrtabns_bitmap_print_to_pagebuf = external dso_local constant [0 x i8], align 1
@__ksymtab_bitmap_print_to_pagebuf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bitmap_print_to_pagebuf to i32), ptr @__kstrtab_bitmap_print_to_pagebuf, ptr @__kstrtabns_bitmap_print_to_pagebuf }, section "___ksymtab+bitmap_print_to_pagebuf", align 4
@__kstrtab_bitmap_print_bitmask_to_buf = external dso_local constant [0 x i8], align 1
@__kstrtabns_bitmap_print_bitmask_to_buf = external dso_local constant [0 x i8], align 1
@__ksymtab_bitmap_print_bitmask_to_buf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bitmap_print_bitmask_to_buf to i32), ptr @__kstrtab_bitmap_print_bitmask_to_buf, ptr @__kstrtabns_bitmap_print_bitmask_to_buf }, section "___ksymtab+bitmap_print_bitmask_to_buf", align 4
@__kstrtab_bitmap_print_list_to_buf = external dso_local constant [0 x i8], align 1
@__kstrtabns_bitmap_print_list_to_buf = external dso_local constant [0 x i8], align 1
@__ksymtab_bitmap_print_list_to_buf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bitmap_print_list_to_buf to i32), ptr @__kstrtab_bitmap_print_list_to_buf, ptr @__kstrtabns_bitmap_print_list_to_buf }, section "___ksymtab+bitmap_print_list_to_buf", align 4
@__kstrtab_bitmap_parselist = external dso_local constant [0 x i8], align 1
@__kstrtabns_bitmap_parselist = external dso_local constant [0 x i8], align 1
@__ksymtab_bitmap_parselist = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bitmap_parselist to i32), ptr @__kstrtab_bitmap_parselist, ptr @__kstrtabns_bitmap_parselist }, section "___ksymtab+bitmap_parselist", align 4
@__kstrtab_bitmap_parselist_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_bitmap_parselist_user = external dso_local constant [0 x i8], align 1
@__ksymtab_bitmap_parselist_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bitmap_parselist_user to i32), ptr @__kstrtab_bitmap_parselist_user, ptr @__kstrtabns_bitmap_parselist_user }, section "___ksymtab+bitmap_parselist_user", align 4
@__kstrtab_bitmap_parse = external dso_local constant [0 x i8], align 1
@__kstrtabns_bitmap_parse = external dso_local constant [0 x i8], align 1
@__ksymtab_bitmap_parse = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bitmap_parse to i32), ptr @__kstrtab_bitmap_parse, ptr @__kstrtabns_bitmap_parse }, section "___ksymtab+bitmap_parse", align 4
@__kstrtab_bitmap_remap = external dso_local constant [0 x i8], align 1
@__kstrtabns_bitmap_remap = external dso_local constant [0 x i8], align 1
@__ksymtab_bitmap_remap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bitmap_remap to i32), ptr @__kstrtab_bitmap_remap, ptr @__kstrtabns_bitmap_remap }, section "___ksymtab+bitmap_remap", align 4
@__kstrtab_bitmap_bitremap = external dso_local constant [0 x i8], align 1
@__kstrtabns_bitmap_bitremap = external dso_local constant [0 x i8], align 1
@__ksymtab_bitmap_bitremap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bitmap_bitremap to i32), ptr @__kstrtab_bitmap_bitremap, ptr @__kstrtabns_bitmap_bitremap }, section "___ksymtab+bitmap_bitremap", align 4
@__kstrtab_bitmap_find_free_region = external dso_local constant [0 x i8], align 1
@__kstrtabns_bitmap_find_free_region = external dso_local constant [0 x i8], align 1
@__ksymtab_bitmap_find_free_region = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bitmap_find_free_region to i32), ptr @__kstrtab_bitmap_find_free_region, ptr @__kstrtabns_bitmap_find_free_region }, section "___ksymtab+bitmap_find_free_region", align 4
@__kstrtab_bitmap_release_region = external dso_local constant [0 x i8], align 1
@__kstrtabns_bitmap_release_region = external dso_local constant [0 x i8], align 1
@__ksymtab_bitmap_release_region = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bitmap_release_region to i32), ptr @__kstrtab_bitmap_release_region, ptr @__kstrtabns_bitmap_release_region }, section "___ksymtab+bitmap_release_region", align 4
@__kstrtab_bitmap_allocate_region = external dso_local constant [0 x i8], align 1
@__kstrtabns_bitmap_allocate_region = external dso_local constant [0 x i8], align 1
@__ksymtab_bitmap_allocate_region = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bitmap_allocate_region to i32), ptr @__kstrtab_bitmap_allocate_region, ptr @__kstrtabns_bitmap_allocate_region }, section "___ksymtab+bitmap_allocate_region", align 4
@__kstrtab_bitmap_copy_le = external dso_local constant [0 x i8], align 1
@__kstrtabns_bitmap_copy_le = external dso_local constant [0 x i8], align 1
@__ksymtab_bitmap_copy_le = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bitmap_copy_le to i32), ptr @__kstrtab_bitmap_copy_le, ptr @__kstrtabns_bitmap_copy_le }, section "___ksymtab+bitmap_copy_le", align 4
@__kstrtab_bitmap_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_bitmap_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_bitmap_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bitmap_alloc to i32), ptr @__kstrtab_bitmap_alloc, ptr @__kstrtabns_bitmap_alloc }, section "___ksymtab+bitmap_alloc", align 4
@__kstrtab_bitmap_zalloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_bitmap_zalloc = external dso_local constant [0 x i8], align 1
@__ksymtab_bitmap_zalloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bitmap_zalloc to i32), ptr @__kstrtab_bitmap_zalloc, ptr @__kstrtabns_bitmap_zalloc }, section "___ksymtab+bitmap_zalloc", align 4
@__kstrtab_bitmap_alloc_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_bitmap_alloc_node = external dso_local constant [0 x i8], align 1
@__ksymtab_bitmap_alloc_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bitmap_alloc_node to i32), ptr @__kstrtab_bitmap_alloc_node, ptr @__kstrtabns_bitmap_alloc_node }, section "___ksymtab+bitmap_alloc_node", align 4
@__kstrtab_bitmap_zalloc_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_bitmap_zalloc_node = external dso_local constant [0 x i8], align 1
@__ksymtab_bitmap_zalloc_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bitmap_zalloc_node to i32), ptr @__kstrtab_bitmap_zalloc_node, ptr @__kstrtabns_bitmap_zalloc_node }, section "___ksymtab+bitmap_zalloc_node", align 4
@__kstrtab_bitmap_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_bitmap_free = external dso_local constant [0 x i8], align 1
@__ksymtab_bitmap_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bitmap_free to i32), ptr @__kstrtab_bitmap_free, ptr @__kstrtabns_bitmap_free }, section "___ksymtab+bitmap_free", align 4
@__kstrtab_devm_bitmap_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_bitmap_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_bitmap_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_bitmap_alloc to i32), ptr @__kstrtab_devm_bitmap_alloc, ptr @__kstrtabns_devm_bitmap_alloc }, section "___ksymtab_gpl+devm_bitmap_alloc", align 4
@__kstrtab_devm_bitmap_zalloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_bitmap_zalloc = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_bitmap_zalloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_bitmap_zalloc to i32), ptr @__kstrtab_devm_bitmap_zalloc, ptr @__kstrtabns_devm_bitmap_zalloc }, section "___ksymtab_gpl+devm_bitmap_zalloc", align 4
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"all\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 10]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 10, i64 45]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 10, i64 58]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 10]
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 485, i32 36 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 486, i32 29 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [16 x i8] c"../lib/bitmap.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 705, i32 24 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__ksymtab___bitmap_and, ptr @__ksymtab___bitmap_andnot, ptr @__ksymtab___bitmap_clear, ptr @__ksymtab___bitmap_complement, ptr @__ksymtab___bitmap_equal, ptr @__ksymtab___bitmap_intersects, ptr @__ksymtab___bitmap_or, ptr @__ksymtab___bitmap_replace, ptr @__ksymtab___bitmap_set, ptr @__ksymtab___bitmap_shift_left, ptr @__ksymtab___bitmap_shift_right, ptr @__ksymtab___bitmap_subset, ptr @__ksymtab___bitmap_weight, ptr @__ksymtab___bitmap_xor, ptr @__ksymtab_bitmap_alloc, ptr @__ksymtab_bitmap_alloc_node, ptr @__ksymtab_bitmap_allocate_region, ptr @__ksymtab_bitmap_bitremap, ptr @__ksymtab_bitmap_copy_le, ptr @__ksymtab_bitmap_cut, ptr @__ksymtab_bitmap_find_free_region, ptr @__ksymtab_bitmap_find_next_zero_area_off, ptr @__ksymtab_bitmap_free, ptr @__ksymtab_bitmap_parse, ptr @__ksymtab_bitmap_parse_user, ptr @__ksymtab_bitmap_parselist, ptr @__ksymtab_bitmap_parselist_user, ptr @__ksymtab_bitmap_print_bitmask_to_buf, ptr @__ksymtab_bitmap_print_list_to_buf, ptr @__ksymtab_bitmap_print_to_pagebuf, ptr @__ksymtab_bitmap_release_region, ptr @__ksymtab_bitmap_remap, ptr @__ksymtab_bitmap_zalloc, ptr @__ksymtab_bitmap_zalloc_node, ptr @__ksymtab_devm_bitmap_alloc, ptr @__ksymtab_devm_bitmap_zalloc, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__bitmap_equal(ptr nocapture noundef readonly %bitmap1, ptr nocapture noundef readonly %bitmap2, i32 noundef %bits) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bits)
  %cmp23.not = icmp ult i32 %bits, 32
  br i1 %cmp23.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %div21 = lshr i32 %bits, 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %k.024 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i32, ptr %bitmap1, i32 %k.024
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr i32, ptr %bitmap2, i32 %k.024
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp2.not = icmp eq i32 %1, %3
  br i1 %cmp2.not, label %for.inc, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %k.024, 1
  %exitcond.not = icmp eq i32 %inc, %div21
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %k.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %div21, %for.inc.for.end_crit_edge ]
  %rem = and i32 %bits, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %for.end.if.end10_crit_edge, label %if.then3

for.end.if.end10_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then3:                                         ; preds = %for.end
  %arrayidx4 = getelementptr i32, ptr %bitmap1, i32 %k.0.lcssa
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4, align 4
  %arrayidx5 = getelementptr i32, ptr %bitmap2, i32 %k.0.lcssa
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx5, align 4
  %xor = xor i32 %7, %5
  %sub = sub i32 0, %bits
  %and = and i32 %sub, 31
  %shr = lshr i32 -1, %and
  %and6 = and i32 %xor, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.then3.if.end10_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3.if.end10_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.end10:                                         ; preds = %if.then3.if.end10_crit_edge, %for.end.if.end10_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then3.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end10 ], [ 0, %if.then3.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @__bitmap_or_equal(ptr nocapture noundef readonly %bitmap1, ptr nocapture noundef readonly %bitmap2, ptr nocapture noundef readonly %bitmap3, i32 noundef %bits) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bits)
  %cmp28.not = icmp ult i32 %bits, 32
  br i1 %cmp28.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %div26 = lshr i32 %bits, 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %k.029 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i32, ptr %bitmap1, i32 %k.029
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr i32, ptr %bitmap2, i32 %k.029
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %or = or i32 %3, %1
  %arrayidx2 = getelementptr i32, ptr %bitmap3, i32 %k.029
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %5)
  %cmp3.not = icmp eq i32 %or, %5
  br i1 %cmp3.not, label %for.inc, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %k.029, 1
  %exitcond.not = icmp eq i32 %inc, %div26
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %k.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %div26, %for.inc.for.end_crit_edge ]
  %rem = and i32 %bits, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %if.end5

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx6 = getelementptr i32, ptr %bitmap1, i32 %k.0.lcssa
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6, align 4
  %arrayidx7 = getelementptr i32, ptr %bitmap2, i32 %k.0.lcssa
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7, align 4
  %or8 = or i32 %9, %7
  %arrayidx9 = getelementptr i32, ptr %bitmap3, i32 %k.0.lcssa
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx9, align 4
  %xor = xor i32 %or8, %11
  %sub = sub i32 0, %bits
  %and = and i32 %sub, 31
  %shr = lshr i32 -1, %and
  %and10 = and i32 %xor, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %cmp11 = icmp eq i32 %and10, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp11, %if.end5 ], [ true, %for.end.cleanup_crit_edge ], [ false, %for.body.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__bitmap_complement(ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src, i32 noundef %bits) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %sub = add i32 %bits, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub)
  %cmp6.not = icmp ult i32 %sub, 32
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %div5 = lshr i32 %sub, 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %k.07 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i32, ptr %src, i32 %k.07
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %neg = xor i32 %1, -1
  %arrayidx1 = getelementptr i32, ptr %dst, i32 %k.07
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %neg, ptr %arrayidx1, align 4
  %inc = add nuw nsw i32 %k.07, 1
  %exitcond.not = icmp eq i32 %inc, %div5
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__bitmap_shift_right(ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src, i32 noundef %shift, i32 noundef %nbits) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %sub = add i32 %nbits, 31
  %div63 = lshr i32 %sub, 5
  %div164 = lshr i32 %shift, 5
  %rem2 = and i32 %shift, 31
  %sub3 = sub i32 0, %nbits
  %and = and i32 %sub3, 31
  %shr = lshr i32 -1, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %div63, i32 %div164)
  %cmp66 = icmp ugt i32 %div63, %div164
  br i1 %cmp66, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem2)
  %tobool.not = icmp eq i32 %rem2, 0
  %0 = add nsw i32 %div63, -2
  %sub16 = sub nuw nsw i32 32, %rem2
  %sub21 = add nsw i32 %div63, -1
  %1 = sub nsw i32 %div63, %div164
  br label %for.body

for.body:                                         ; preds = %if.end17.for.body_crit_edge, %for.body.lr.ph
  %add468 = phi i32 [ %div164, %for.body.lr.ph ], [ %add4, %if.end17.for.body_crit_edge ]
  %k.067 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end17.for.body_crit_edge ]
  br i1 %tobool.not, label %for.body.if.end17_crit_edge, label %lor.lhs.false

for.body.if.end17_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

lor.lhs.false:                                    ; preds = %for.body
  %add6 = add nuw nsw i32 %add468, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add6, i32 %div63)
  %cmp7.not = icmp ult i32 %add6, %div63
  br i1 %cmp7.not, label %if.else, label %lor.lhs.false.if.end17_crit_edge

lor.lhs.false.if.end17_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr i32, ptr %src, i32 %add6
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add468, i32 %0)
  %cmp13 = icmp eq i32 %add468, %0
  %and15 = select i1 %cmp13, i32 %shr, i32 -1
  %spec.select = and i32 %3, %and15
  %shl = shl i32 %spec.select, %sub16
  br label %if.end17

if.end17:                                         ; preds = %if.else, %lor.lhs.false.if.end17_crit_edge, %for.body.if.end17_crit_edge
  %upper.1 = phi i32 [ %shl, %if.else ], [ 0, %lor.lhs.false.if.end17_crit_edge ], [ 0, %for.body.if.end17_crit_edge ]
  %arrayidx19 = getelementptr i32, ptr %src, i32 %add468
  %4 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add468, i32 %sub21)
  %cmp22 = icmp eq i32 %add468, %sub21
  %and24 = select i1 %cmp22, i32 %shr, i32 -1
  %spec.select65 = and i32 %5, %and24
  %shr26 = lshr i32 %spec.select65, %rem2
  %or = or i32 %shr26, %upper.1
  %arrayidx27 = getelementptr i32, ptr %dst, i32 %k.067
  %6 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %arrayidx27, align 4
  %inc = add nuw nsw i32 %k.067, 1
  %add4 = add nuw nsw i32 %inc, %div164
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %if.end17.for.end_crit_edge, label %if.end17.for.body_crit_edge

if.end17.for.body_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end17.for.end_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %if.end17.for.end_crit_edge, %entry.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %shift)
  %tobool28.not = icmp ult i32 %shift, 32
  br i1 %tobool28.not, label %for.end.if.end32_crit_edge, label %if.then29

for.end.if.end32_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then29:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %sub30 = sub nsw i32 %div63, %div164
  %arrayidx31 = getelementptr i32, ptr %dst, i32 %sub30
  %mul = shl nuw nsw i32 %div164, 2
  %7 = call ptr @memset(ptr %arrayidx31, i32 0, i32 %mul)
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %for.end.if.end32_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__bitmap_shift_left(ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src, i32 noundef %shift, i32 noundef %nbits) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %sub = add i32 %nbits, 31
  %div27 = lshr i32 %sub, 5
  %div128 = lshr i32 %shift, 5
  %rem2 = and i32 %shift, 31
  %0 = xor i32 %div128, -1
  %sub4 = add nsw i32 %div27, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub4)
  %cmp29 = icmp sgt i32 %sub4, -1
  br i1 %cmp29, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem2)
  %tobool.not = icmp ne i32 %rem2, 0
  %sub7 = sub nuw nsw i32 32, %rem2
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %k.030 = phi i32 [ %sub4, %for.body.lr.ph ], [ %sub6, %if.end.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %k.030)
  %cmp5 = icmp ne i32 %k.030, 0
  %or.cond = select i1 %tobool.not, i1 %cmp5, i1 false
  %sub6 = add nsw i32 %k.030, -1
  br i1 %or.cond, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr i32, ptr %src, i32 %sub6
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %shr = lshr i32 %2, %sub7
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %lower.0 = phi i32 [ %shr, %if.then ], [ 0, %for.body.if.end_crit_edge ]
  %arrayidx8 = getelementptr i32, ptr %src, i32 %k.030
  %3 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx8, align 4
  %shl = shl i32 %4, %rem2
  %or = or i32 %shl, %lower.0
  %add9 = add i32 %k.030, %div128
  %arrayidx10 = getelementptr i32, ptr %dst, i32 %add9
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or, ptr %arrayidx10, align 4
  %cmp = icmp sgt i32 %k.030, 0
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %shift)
  %tobool11.not = icmp ult i32 %shift, 32
  br i1 %tobool11.not, label %for.end.if.end13_crit_edge, label %if.then12

for.end.if.end13_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then12:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %mul = shl nuw nsw i32 %div128, 2
  %6 = call ptr @memset(ptr %dst, i32 0, i32 %mul)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %for.end.if.end13_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bitmap_cut(ptr nocapture noundef %dst, ptr nocapture noundef readonly %src, i32 noundef %first, i32 noundef %cut, i32 noundef %nbits) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %sub = add i32 %nbits, 31
  %div43 = lshr i32 %sub, 5
  %rem = and i32 %first, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %div146 = lshr i32 %first, 5
  %arrayidx = getelementptr i32, ptr %src, i32 %div146
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %sub3 = sub nuw nsw i32 32, %rem
  %shr = lshr i32 -1, %sub3
  %and = and i32 %1, %shr
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %keep.0 = phi i32 [ %and, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %mul = shl nuw nsw i32 %div43, 2
  %2 = call ptr @memmove(ptr %dst, ptr %src, i32 %mul)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cut)
  %tobool4.not51 = icmp eq i32 %cut, 0
  %.pre = lshr i32 %first, 5
  br i1 %tobool4.not51, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %.pre, i32 %div43)
  %cmp47 = icmp ult i32 %.pre, %div43
  %sub6 = add nsw i32 %div43, -1
  br label %while.body

while.cond.loopexit:                              ; preds = %if.end12.while.cond.loopexit_crit_edge, %while.body.while.cond.loopexit_crit_edge
  %tobool4.not = icmp eq i32 %dec52, 0
  br i1 %tobool4.not, label %while.cond.loopexit.while.end_crit_edge, label %while.cond.loopexit.while.body_crit_edge

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.cond.loopexit.while.end_crit_edge:          ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.body.lr.ph
  %dec52.in = phi i32 [ %cut, %while.body.lr.ph ], [ %dec52, %while.cond.loopexit.while.body_crit_edge ]
  %dec52 = add i32 %dec52.in, -1
  br i1 %cmp47, label %while.body.for.body_crit_edge, label %while.body.while.cond.loopexit_crit_edge

while.body.while.cond.loopexit_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.loopexit

while.body.for.body_crit_edge:                    ; preds = %while.body
  br label %for.body

for.body:                                         ; preds = %if.end12.for.body_crit_edge, %while.body.for.body_crit_edge
  %i.048 = phi i32 [ %add9, %if.end12.for.body_crit_edge ], [ %.pre, %while.body.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.048, i32 %sub6)
  %cmp7 = icmp ult i32 %i.048, %sub6
  %add9 = add nuw nsw i32 %i.048, 1
  br i1 %cmp7, label %if.then8, label %for.body.if.end12_crit_edge

for.body.if.end12_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx10 = getelementptr i32, ptr %dst, i32 %add9
  %3 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx10, align 4
  %and11 = and i32 %4, 1
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %for.body.if.end12_crit_edge
  %carry.0 = phi i32 [ %and11, %if.then8 ], [ 0, %for.body.if.end12_crit_edge ]
  %arrayidx13 = getelementptr i32, ptr %dst, i32 %i.048
  %5 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx13, align 4
  %or = tail call i32 @llvm.fshl.i32(i32 %carry.0, i32 %6, i32 31)
  %7 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or, ptr %arrayidx13, align 4
  %exitcond.not = icmp eq i32 %add9, %div43
  br i1 %exitcond.not, label %if.end12.while.cond.loopexit_crit_edge, label %if.end12.for.body_crit_edge

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end12.while.cond.loopexit_crit_edge:           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.loopexit

while.end:                                        ; preds = %while.cond.loopexit.while.end_crit_edge, %if.end.while.end_crit_edge
  %shl17 = shl nsw i32 -1, %rem
  %arrayidx19 = getelementptr i32, ptr %dst, i32 %.pre
  %8 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx19, align 4
  %and20 = and i32 %9, %shl17
  %or23 = or i32 %and20, %keep.0
  store i32 %or23, ptr %arrayidx19, align 4
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__bitmap_and(ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %bitmap1, ptr nocapture noundef readonly %bitmap2, i32 noundef %bits) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bits)
  %cmp26.not = icmp ult i32 %bits, 32
  br i1 %cmp26.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %div25 = lshr i32 %bits, 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %result.028 = phi i32 [ %or, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %k.027 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i32, ptr %bitmap1, i32 %k.027
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr i32, ptr %bitmap2, i32 %k.027
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %and = and i32 %3, %1
  %arrayidx2 = getelementptr i32, ptr %dst, i32 %k.027
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and, ptr %arrayidx2, align 4
  %or = or i32 %and, %result.028
  %inc = add nuw nsw i32 %k.027, 1
  %exitcond.not = icmp eq i32 %inc, %div25
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %k.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %div25, %for.body.for.end_crit_edge ]
  %result.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %or, %for.body.for.end_crit_edge ]
  %rem = and i32 %bits, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx3 = getelementptr i32, ptr %bitmap1, i32 %k.0.lcssa
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr i32, ptr %bitmap2, i32 %k.0.lcssa
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx4, align 4
  %sub = sub i32 0, %bits
  %and6 = and i32 %sub, 31
  %shr = lshr i32 -1, %and6
  %and5 = and i32 %6, %shr
  %and7 = and i32 %and5, %8
  %arrayidx8 = getelementptr i32, ptr %dst, i32 %k.0.lcssa
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and7, ptr %arrayidx8, align 4
  %or9 = or i32 %and7, %result.0.lcssa
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  %result.1 = phi i32 [ %or9, %if.then ], [ %result.0.lcssa, %for.end.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.1)
  %cmp10 = icmp ne i32 %result.1, 0
  %conv = zext i1 %cmp10 to i32
  ret i32 %conv
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__bitmap_or(ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %bitmap1, ptr nocapture noundef readonly %bitmap2, i32 noundef %bits) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %sub = add i32 %bits, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub)
  %cmp8.not = icmp ult i32 %sub, 32
  br i1 %cmp8.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %div7 = lshr i32 %sub, 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %k.09 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i32, ptr %bitmap1, i32 %k.09
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr i32, ptr %bitmap2, i32 %k.09
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %or = or i32 %3, %1
  %arrayidx2 = getelementptr i32, ptr %dst, i32 %k.09
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %arrayidx2, align 4
  %inc = add nuw nsw i32 %k.09, 1
  %exitcond.not = icmp eq i32 %inc, %div7
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__bitmap_xor(ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %bitmap1, ptr nocapture noundef readonly %bitmap2, i32 noundef %bits) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %sub = add i32 %bits, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub)
  %cmp8.not = icmp ult i32 %sub, 32
  br i1 %cmp8.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %div7 = lshr i32 %sub, 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %k.09 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i32, ptr %bitmap1, i32 %k.09
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr i32, ptr %bitmap2, i32 %k.09
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %xor = xor i32 %3, %1
  %arrayidx2 = getelementptr i32, ptr %dst, i32 %k.09
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %xor, ptr %arrayidx2, align 4
  %inc = add nuw nsw i32 %k.09, 1
  %exitcond.not = icmp eq i32 %inc, %div7
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__bitmap_andnot(ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %bitmap1, ptr nocapture noundef readonly %bitmap2, i32 noundef %bits) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bits)
  %cmp27.not = icmp ult i32 %bits, 32
  br i1 %cmp27.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %div26 = lshr i32 %bits, 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %result.029 = phi i32 [ %or, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %k.028 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i32, ptr %bitmap1, i32 %k.028
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr i32, ptr %bitmap2, i32 %k.028
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %neg = xor i32 %3, -1
  %and = and i32 %1, %neg
  %arrayidx2 = getelementptr i32, ptr %dst, i32 %k.028
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and, ptr %arrayidx2, align 4
  %or = or i32 %and, %result.029
  %inc = add nuw nsw i32 %k.028, 1
  %exitcond.not = icmp eq i32 %inc, %div26
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %k.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %div26, %for.body.for.end_crit_edge ]
  %result.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %or, %for.body.for.end_crit_edge ]
  %rem = and i32 %bits, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx3 = getelementptr i32, ptr %bitmap1, i32 %k.0.lcssa
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr i32, ptr %bitmap2, i32 %k.0.lcssa
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx4, align 4
  %neg5 = xor i32 %8, -1
  %sub = sub i32 0, %bits
  %and7 = and i32 %sub, 31
  %shr = lshr i32 -1, %and7
  %and6 = and i32 %6, %shr
  %and8 = and i32 %and6, %neg5
  %arrayidx9 = getelementptr i32, ptr %dst, i32 %k.0.lcssa
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and8, ptr %arrayidx9, align 4
  %or10 = or i32 %and8, %result.0.lcssa
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  %result.1 = phi i32 [ %or10, %if.then ], [ %result.0.lcssa, %for.end.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.1)
  %cmp11 = icmp ne i32 %result.1, 0
  %conv = zext i1 %cmp11 to i32
  ret i32 %conv
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__bitmap_replace(ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %old, ptr nocapture noundef readonly %new, ptr nocapture noundef readonly %mask, i32 noundef %nbits) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %sub = add i32 %nbits, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub)
  %cmp14.not = icmp ult i32 %sub, 32
  br i1 %cmp14.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %div13 = lshr i32 %sub, 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %k.015 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i32, ptr %old, i32 %k.015
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr i32, ptr %mask, i32 %k.015
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %neg = xor i32 %3, -1
  %and = and i32 %1, %neg
  %arrayidx2 = getelementptr i32, ptr %new, i32 %k.015
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  %and4 = and i32 %5, %3
  %or = or i32 %and4, %and
  %arrayidx5 = getelementptr i32, ptr %dst, i32 %k.015
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %arrayidx5, align 4
  %inc = add nuw nsw i32 %k.015, 1
  %exitcond.not = icmp eq i32 %inc, %div13
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__bitmap_intersects(ptr nocapture noundef readonly %bitmap1, ptr nocapture noundef readonly %bitmap2, i32 noundef %bits) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bits)
  %cmp25.not = icmp ult i32 %bits, 32
  br i1 %cmp25.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %div23 = lshr i32 %bits, 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %k.026 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i32, ptr %bitmap1, i32 %k.026
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr i32, ptr %bitmap2, i32 %k.026
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %and = and i32 %3, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.inc, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %k.026, 1
  %exitcond.not = icmp eq i32 %inc, %div23
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %k.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %div23, %for.inc.for.end_crit_edge ]
  %rem = and i32 %bits, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool2.not = icmp eq i32 %rem, 0
  br i1 %tobool2.not, label %for.end.if.end12_crit_edge, label %if.then3

for.end.if.end12_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then3:                                         ; preds = %for.end
  %arrayidx4 = getelementptr i32, ptr %bitmap1, i32 %k.0.lcssa
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4, align 4
  %arrayidx5 = getelementptr i32, ptr %bitmap2, i32 %k.0.lcssa
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx5, align 4
  %sub = sub i32 0, %bits
  %and7 = and i32 %sub, 31
  %shr = lshr i32 -1, %and7
  %and6 = and i32 %5, %shr
  %and8 = and i32 %and6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.then3.if.end12_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3.if.end12_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.end12:                                         ; preds = %if.then3.if.end12_crit_edge, %for.end.if.end12_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then3.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ 1, %if.then3.cleanup_crit_edge ], [ 1, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__bitmap_subset(ptr nocapture noundef readonly %bitmap1, ptr nocapture noundef readonly %bitmap2, i32 noundef %bits) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bits)
  %cmp26.not = icmp ult i32 %bits, 32
  br i1 %cmp26.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %div24 = lshr i32 %bits, 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %k.027 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i32, ptr %bitmap1, i32 %k.027
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr i32, ptr %bitmap2, i32 %k.027
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %neg = xor i32 %3, -1
  %and = and i32 %1, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.inc, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %k.027, 1
  %exitcond.not = icmp eq i32 %inc, %div24
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %k.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %div24, %for.inc.for.end_crit_edge ]
  %rem = and i32 %bits, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool2.not = icmp eq i32 %rem, 0
  br i1 %tobool2.not, label %for.end.if.end13_crit_edge, label %if.then3

for.end.if.end13_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then3:                                         ; preds = %for.end
  %arrayidx4 = getelementptr i32, ptr %bitmap1, i32 %k.0.lcssa
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4, align 4
  %arrayidx5 = getelementptr i32, ptr %bitmap2, i32 %k.0.lcssa
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx5, align 4
  %neg6 = xor i32 %7, -1
  %sub = sub i32 0, %bits
  %and8 = and i32 %sub, 31
  %shr = lshr i32 -1, %and8
  %and7 = and i32 %5, %shr
  %and9 = and i32 %and7, %neg6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.then3.if.end13_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3.if.end13_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end13:                                         ; preds = %if.then3.if.end13_crit_edge, %for.end.if.end13_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then3.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end13 ], [ 0, %if.then3.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__bitmap_weight(ptr nocapture noundef readonly %bitmap, i32 noundef %bits) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bits)
  %cmp109.not = icmp ult i32 %bits, 32
  br i1 %cmp109.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %div13 = lshr i32 %bits, 5
  br label %cond.false.i

cond.false.i:                                     ; preds = %cond.false.i.cond.false.i_crit_edge, %for.body.preheader
  %w.0111 = phi i32 [ %add, %cond.false.i.cond.false.i_crit_edge ], [ 0, %for.body.preheader ]
  %k.0110 = phi i32 [ %inc, %cond.false.i.cond.false.i_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i32, ptr %bitmap, i32 %k.0110
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %call.i.i = tail call i32 @__sw_hweight32(i32 noundef %1) #14
  %add = add i32 %call.i.i, %w.0111
  %inc = add nuw nsw i32 %k.0110, 1
  %exitcond.not = icmp eq i32 %inc, %div13
  br i1 %exitcond.not, label %cond.false.i.for.end_crit_edge, label %cond.false.i.cond.false.i_crit_edge

cond.false.i.cond.false.i_crit_edge:              ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false.i

cond.false.i.for.end_crit_edge:                   ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %cond.false.i.for.end_crit_edge, %entry.for.end_crit_edge
  %k.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %div13, %cond.false.i.for.end_crit_edge ]
  %w.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %cond.false.i.for.end_crit_edge ]
  %rem = and i32 %bits, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %cond.false.i106

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cond.false.i106:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx1 = getelementptr i32, ptr %bitmap, i32 %k.0.lcssa
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %sub = sub i32 0, %bits
  %and = and i32 %sub, 31
  %shr = lshr i32 -1, %and
  %and2 = and i32 %3, %shr
  %call.i.i105 = tail call i32 @__sw_hweight32(i32 noundef %and2) #14
  %add4 = add i32 %call.i.i105, %w.0.lcssa
  br label %if.end

if.end:                                           ; preds = %cond.false.i106, %for.end.if.end_crit_edge
  %w.1 = phi i32 [ %add4, %cond.false.i106 ], [ %w.0.lcssa, %for.end.if.end_crit_edge ]
  ret i32 %w.1
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__bitmap_set(ptr nocapture noundef %map, i32 noundef %start, i32 noundef %len) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %div18 = lshr i32 %start, 5
  %add.ptr = getelementptr i32, ptr %map, i32 %div18
  %add = add i32 %start, %len
  %sub.neg = or i32 %start, -32
  %and = and i32 %start, 31
  %shl = shl nsw i32 -1, %and
  %sub119 = add i32 %sub.neg, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub119)
  %cmp20 = icmp sgt i32 %sub119, -1
  br i1 %cmp20, label %while.body.preheader, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.preheader:                             ; preds = %entry
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  %or.peel = or i32 %1, %shl
  store i32 %or.peel, ptr %add.ptr, align 4
  %incdec.ptr.peel = getelementptr i32, ptr %add.ptr, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %sub119)
  %cmp.peel = icmp ugt i32 %sub119, 31
  br i1 %cmp.peel, label %while.body.preheader.while.body_crit_edge, label %while.body.preheader.while.end.loopexit_crit_edge

while.body.preheader.while.end.loopexit_crit_edge: ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.loopexit

while.body.preheader.while.body_crit_edge:        ; preds = %while.body.preheader
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader.while.body_crit_edge
  %sub123.in = phi i32 [ %sub123, %while.body.while.body_crit_edge ], [ %sub119, %while.body.preheader.while.body_crit_edge ]
  %p.021 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %incdec.ptr.peel, %while.body.preheader.while.body_crit_edge ]
  %sub123 = add nsw i32 %sub123.in, -32
  %2 = ptrtoint ptr %p.021 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %p.021, align 4
  %incdec.ptr = getelementptr i32, ptr %p.021, i32 1
  %cmp = icmp ugt i32 %sub123.in, 63
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end.loopexit_crit_edge, !llvm.loop !86

while.body.while.end.loopexit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.loopexit

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end.loopexit:                               ; preds = %while.body.while.end.loopexit_crit_edge, %while.body.preheader.while.end.loopexit_crit_edge
  %incdec.ptr.lcssa = phi ptr [ %incdec.ptr.peel, %while.body.preheader.while.end.loopexit_crit_edge ], [ %incdec.ptr, %while.body.while.end.loopexit_crit_edge ]
  %3 = and i32 %sub119, 31
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %entry.while.end_crit_edge
  %len.addr.0.lcssa = phi i32 [ %len, %entry.while.end_crit_edge ], [ %3, %while.end.loopexit ]
  %p.0.lcssa = phi ptr [ %add.ptr, %entry.while.end_crit_edge ], [ %incdec.ptr.lcssa, %while.end.loopexit ]
  %mask_to_set.0.lcssa = phi i32 [ %shl, %entry.while.end_crit_edge ], [ -1, %while.end.loopexit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.lcssa)
  %tobool.not = icmp eq i32 %len.addr.0.lcssa, 0
  br i1 %tobool.not, label %while.end.if.end_crit_edge, label %if.then

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %sub3 = sub i32 0, %add
  %and4 = and i32 %sub3, 31
  %shr = lshr i32 -1, %and4
  %and5 = and i32 %mask_to_set.0.lcssa, %shr
  %4 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %p.0.lcssa, align 4
  %or6 = or i32 %5, %and5
  store i32 %or6, ptr %p.0.lcssa, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.if.end_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__bitmap_clear(ptr nocapture noundef %map, i32 noundef %start, i32 noundef %len) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %div20 = lshr i32 %start, 5
  %add.ptr = getelementptr i32, ptr %map, i32 %div20
  %add = add i32 %start, %len
  %sub.neg = or i32 %start, -32
  %and = and i32 %start, 31
  %shl = shl nsw i32 -1, %and
  %sub121 = add i32 %sub.neg, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub121)
  %cmp22 = icmp sgt i32 %sub121, -1
  br i1 %cmp22, label %while.body.preheader, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.preheader:                             ; preds = %entry
  %neg.peel = xor i32 %shl, -1
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  %and2.peel = and i32 %1, %neg.peel
  store i32 %and2.peel, ptr %add.ptr, align 4
  %incdec.ptr.peel = getelementptr i32, ptr %add.ptr, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %sub121)
  %cmp.peel = icmp ugt i32 %sub121, 31
  br i1 %cmp.peel, label %while.body.preheader.while.body_crit_edge, label %while.body.preheader.while.end.loopexit_crit_edge

while.body.preheader.while.end.loopexit_crit_edge: ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.loopexit

while.body.preheader.while.body_crit_edge:        ; preds = %while.body.preheader
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader.while.body_crit_edge
  %sub125.in = phi i32 [ %sub125, %while.body.while.body_crit_edge ], [ %sub121, %while.body.preheader.while.body_crit_edge ]
  %p.023 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %incdec.ptr.peel, %while.body.preheader.while.body_crit_edge ]
  %sub125 = add nsw i32 %sub125.in, -32
  %2 = ptrtoint ptr %p.023 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %p.023, align 4
  %incdec.ptr = getelementptr i32, ptr %p.023, i32 1
  %cmp = icmp ugt i32 %sub125.in, 63
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end.loopexit_crit_edge, !llvm.loop !88

while.body.while.end.loopexit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.loopexit

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end.loopexit:                               ; preds = %while.body.while.end.loopexit_crit_edge, %while.body.preheader.while.end.loopexit_crit_edge
  %incdec.ptr.lcssa = phi ptr [ %incdec.ptr.peel, %while.body.preheader.while.end.loopexit_crit_edge ], [ %incdec.ptr, %while.body.while.end.loopexit_crit_edge ]
  %3 = and i32 %sub121, 31
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %entry.while.end_crit_edge
  %len.addr.0.lcssa = phi i32 [ %len, %entry.while.end_crit_edge ], [ %3, %while.end.loopexit ]
  %p.0.lcssa = phi ptr [ %add.ptr, %entry.while.end_crit_edge ], [ %incdec.ptr.lcssa, %while.end.loopexit ]
  %mask_to_clear.0.lcssa = phi i32 [ %shl, %entry.while.end_crit_edge ], [ -1, %while.end.loopexit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.lcssa)
  %tobool.not = icmp eq i32 %len.addr.0.lcssa, 0
  br i1 %tobool.not, label %while.end.if.end_crit_edge, label %if.then

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %sub4 = sub i32 0, %add
  %and5 = and i32 %sub4, 31
  %shr = lshr i32 -1, %and5
  %and6 = and i32 %mask_to_clear.0.lcssa, %shr
  %neg7 = xor i32 %and6, -1
  %4 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %p.0.lcssa, align 4
  %and8 = and i32 %5, %neg7
  store i32 %and8, ptr %p.0.lcssa, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bitmap_find_next_zero_area_off(ptr noundef %map, i32 noundef %size, i32 noundef %start, i32 noundef %nr, i32 noundef %align_mask, i32 noundef %align_offset) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call21 = tail call i32 @_find_next_zero_bit_be(ptr noundef %map, i32 noundef %size, i32 noundef %start) #14
  %add = add i32 %align_offset, %align_mask
  %add122 = add i32 %add, %call21
  %neg = xor i32 %align_mask, -1
  %and23 = and i32 %add122, %neg
  %sub24 = sub i32 %and23, %align_offset
  %add225 = add i32 %sub24, %nr
  call void @__sanitizer_cov_trace_cmp4(i32 %add225, i32 %size)
  %cmp26 = icmp ugt i32 %add225, %size
  br i1 %cmp26, label %entry.cleanup_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

again:                                            ; preds = %if.end
  %add6 = add nuw i32 %call3, 1
  %call = tail call i32 @_find_next_zero_bit_be(ptr noundef %map, i32 noundef %size, i32 noundef %add6) #14
  %add1 = add i32 %add, %call
  %and = and i32 %add1, %neg
  %sub = sub i32 %and, %align_offset
  %add2 = add i32 %sub, %nr
  %cmp = icmp ugt i32 %add2, %size
  br i1 %cmp, label %again.cleanup_crit_edge, label %again.if.end_crit_edge

again.if.end_crit_edge:                           ; preds = %again
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

again.cleanup_crit_edge:                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %again.if.end_crit_edge, %entry.if.end_crit_edge
  %add228 = phi i32 [ %add2, %again.if.end_crit_edge ], [ %add225, %entry.if.end_crit_edge ]
  %sub27 = phi i32 [ %sub, %again.if.end_crit_edge ], [ %sub24, %entry.if.end_crit_edge ]
  %call3 = tail call i32 @_find_next_bit_be(ptr noundef %map, i32 noundef %add228, i32 noundef %sub27) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %add228)
  %cmp4 = icmp ult i32 %call3, %add228
  br i1 %cmp4, label %again, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %again.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add225, %entry.cleanup_crit_edge ], [ %sub27, %if.end.cleanup_crit_edge ], [ %add2, %again.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bitmap_parse_user(ptr noundef %ubuf, i32 noundef %ulen, ptr noundef %maskp, i32 noundef %nmaskbits) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call ptr @memdup_user_nul(ptr noundef %ubuf, i32 noundef %ulen) #14
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 @bitmap_parse(ptr noundef %call, i32 noundef -1, ptr noundef %maskp, i32 noundef %nmaskbits)
  tail call void @kfree(ptr noundef %call) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user_nul(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bitmap_parse(ptr noundef %start, i32 noundef %buflen, ptr noundef %maskp, i32 noundef %nmaskbits) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call ptr @strnchrnul(ptr noundef %start, i32 noundef %buflen, i32 noundef 10) #14
  %add.ptr = getelementptr i8, ptr %call, i32 -1
  %sub = add i32 %nmaskbits, 31
  %div44 = lshr i32 %sub, 5
  br label %for.cond

for.cond:                                         ; preds = %bitmap_get_x32_reverse.exit.for.cond_crit_edge, %entry
  %end.0 = phi ptr [ %add.ptr, %entry ], [ %end.addr.1.i, %bitmap_get_x32_reverse.exit.for.cond_crit_edge ]
  %chunks.0 = phi i32 [ %div44, %entry ], [ %dec, %bitmap_get_x32_reverse.exit.for.cond_crit_edge ]
  %chunk.0 = phi i32 [ 0, %entry ], [ %inc, %bitmap_get_x32_reverse.exit.for.cond_crit_edge ]
  %cmp.not4.i = icmp ult ptr %end.0, %start
  br i1 %cmp.not4.i, label %for.cond.bitmap_find_region_reverse.exit_crit_edge, label %for.cond.land.rhs.i_crit_edge

for.cond.land.rhs.i_crit_edge:                    ; preds = %for.cond
  br label %land.rhs.i

for.cond.bitmap_find_region_reverse.exit_crit_edge: ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_find_region_reverse.exit

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %for.cond.land.rhs.i_crit_edge
  %end.addr.05.i = phi ptr [ %incdec.ptr.i, %while.body.i.land.rhs.i_crit_edge ], [ %end.0, %for.cond.land.rhs.i_crit_edge ]
  %0 = ptrtoint ptr %end.addr.05.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %end.addr.05.i, align 1
  %conv.i.i = zext i8 %1 to i32
  %arrayidx.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.i
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i.i, align 1
  %4 = and i8 %3, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp.not.i.i = icmp ne i8 %4, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %1)
  %cmp4.i.i = icmp eq i8 %1, 44
  %spec.select.i.i = or i1 %cmp4.i.i, %cmp.not.i.i
  br i1 %spec.select.i.i, label %while.body.i, label %land.rhs.i.bitmap_find_region_reverse.exit_crit_edge

land.rhs.i.bitmap_find_region_reverse.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_find_region_reverse.exit

while.body.i:                                     ; preds = %land.rhs.i
  %incdec.ptr.i = getelementptr i8, ptr %end.addr.05.i, i32 -1
  %cmp.not.i = icmp ult ptr %incdec.ptr.i, %start
  br i1 %cmp.not.i, label %while.body.i.bitmap_find_region_reverse.exit_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

while.body.i.bitmap_find_region_reverse.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_find_region_reverse.exit

bitmap_find_region_reverse.exit:                  ; preds = %while.body.i.bitmap_find_region_reverse.exit_crit_edge, %land.rhs.i.bitmap_find_region_reverse.exit_crit_edge, %for.cond.bitmap_find_region_reverse.exit_crit_edge
  %end.addr.0.lcssa.i = phi ptr [ %end.0, %for.cond.bitmap_find_region_reverse.exit_crit_edge ], [ %end.addr.05.i, %land.rhs.i.bitmap_find_region_reverse.exit_crit_edge ], [ %incdec.ptr.i, %while.body.i.bitmap_find_region_reverse.exit_crit_edge ]
  %cmp = icmp ult ptr %end.addr.0.lcssa.i, %start
  br i1 %cmp, label %for.end, label %if.end

if.end:                                           ; preds = %bitmap_find_region_reverse.exit
  %dec = add nsw i32 %chunks.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chunks.0)
  %tobool.not = icmp eq i32 %chunks.0, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %arrayidx = getelementptr i32, ptr %maskp, i32 %chunk.0
  %incdec.ptr.i45 = getelementptr i8, ptr %end.addr.0.lcssa.i, i32 -1
  %5 = ptrtoint ptr %end.addr.0.lcssa.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %end.addr.0.lcssa.i, align 1
  %call.i = tail call i32 @hex_to_bin(i8 noundef zeroext %6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %if.end3.if.then6_crit_edge, label %if.end.i

if.end3.if.then6_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

for.cond.i:                                       ; preds = %lor.lhs.false.i
  %incdec.ptr.1.i = getelementptr i8, ptr %end.addr.0.lcssa.i, i32 -2
  %call.1.i = tail call i32 @hex_to_bin(i8 noundef zeroext %43) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp1.1.i = icmp slt i32 %call.1.i, 0
  br i1 %cmp1.1.i, label %for.cond.i.if.then6_crit_edge, label %if.end.1.i

for.cond.i.if.then6_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

if.end.1.i:                                       ; preds = %for.cond.i
  %shl.1.i = shl i32 %call.1.i, 4
  %or.1.i = or i32 %shl.1.i, %call.i
  %cmp3.1.i = icmp ult ptr %incdec.ptr.1.i, %start
  br i1 %cmp3.1.i, label %if.end.1.i.bitmap_get_x32_reverse.exit_crit_edge, label %lor.lhs.false.1.i

if.end.1.i.bitmap_get_x32_reverse.exit_crit_edge: ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_get_x32_reverse.exit

lor.lhs.false.1.i:                                ; preds = %if.end.1.i
  %7 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %incdec.ptr.1.i, align 1
  %conv.i.1.i = zext i8 %8 to i32
  %arrayidx.i.1.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.1.i
  %9 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i.1.i, align 1
  %11 = and i8 %10, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp.not.i.1.i = icmp ne i8 %11, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %8)
  %cmp4.i.1.i = icmp eq i8 %8, 44
  %spec.select.i.1.i = or i1 %cmp4.i.1.i, %cmp.not.i.1.i
  br i1 %spec.select.i.1.i, label %lor.lhs.false.1.i.bitmap_get_x32_reverse.exit_crit_edge, label %for.cond.1.i

lor.lhs.false.1.i.bitmap_get_x32_reverse.exit_crit_edge: ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_get_x32_reverse.exit

for.cond.1.i:                                     ; preds = %lor.lhs.false.1.i
  %incdec.ptr.2.i = getelementptr i8, ptr %end.addr.0.lcssa.i, i32 -3
  %call.2.i = tail call i32 @hex_to_bin(i8 noundef zeroext %8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %cmp1.2.i = icmp slt i32 %call.2.i, 0
  br i1 %cmp1.2.i, label %for.cond.1.i.if.then6_crit_edge, label %if.end.2.i

for.cond.1.i.if.then6_crit_edge:                  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

if.end.2.i:                                       ; preds = %for.cond.1.i
  %shl.2.i = shl i32 %call.2.i, 8
  %or.2.i = or i32 %shl.2.i, %or.1.i
  %cmp3.2.i = icmp ult ptr %incdec.ptr.2.i, %start
  br i1 %cmp3.2.i, label %if.end.2.i.bitmap_get_x32_reverse.exit_crit_edge, label %lor.lhs.false.2.i

if.end.2.i.bitmap_get_x32_reverse.exit_crit_edge: ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_get_x32_reverse.exit

lor.lhs.false.2.i:                                ; preds = %if.end.2.i
  %12 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %incdec.ptr.2.i, align 1
  %conv.i.2.i = zext i8 %13 to i32
  %arrayidx.i.2.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.2.i
  %14 = ptrtoint ptr %arrayidx.i.2.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i.2.i, align 1
  %16 = and i8 %15, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp.not.i.2.i = icmp ne i8 %16, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %13)
  %cmp4.i.2.i = icmp eq i8 %13, 44
  %spec.select.i.2.i = or i1 %cmp4.i.2.i, %cmp.not.i.2.i
  br i1 %spec.select.i.2.i, label %lor.lhs.false.2.i.bitmap_get_x32_reverse.exit_crit_edge, label %for.cond.2.i

lor.lhs.false.2.i.bitmap_get_x32_reverse.exit_crit_edge: ; preds = %lor.lhs.false.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_get_x32_reverse.exit

for.cond.2.i:                                     ; preds = %lor.lhs.false.2.i
  %incdec.ptr.3.i = getelementptr i8, ptr %end.addr.0.lcssa.i, i32 -4
  %call.3.i = tail call i32 @hex_to_bin(i8 noundef zeroext %13) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %cmp1.3.i = icmp slt i32 %call.3.i, 0
  br i1 %cmp1.3.i, label %for.cond.2.i.if.then6_crit_edge, label %if.end.3.i

for.cond.2.i.if.then6_crit_edge:                  ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

if.end.3.i:                                       ; preds = %for.cond.2.i
  %shl.3.i = shl i32 %call.3.i, 12
  %or.3.i = or i32 %shl.3.i, %or.2.i
  %cmp3.3.i = icmp ult ptr %incdec.ptr.3.i, %start
  br i1 %cmp3.3.i, label %if.end.3.i.bitmap_get_x32_reverse.exit_crit_edge, label %lor.lhs.false.3.i

if.end.3.i.bitmap_get_x32_reverse.exit_crit_edge: ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_get_x32_reverse.exit

lor.lhs.false.3.i:                                ; preds = %if.end.3.i
  %17 = ptrtoint ptr %incdec.ptr.3.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %incdec.ptr.3.i, align 1
  %conv.i.3.i = zext i8 %18 to i32
  %arrayidx.i.3.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.3.i
  %19 = ptrtoint ptr %arrayidx.i.3.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i.3.i, align 1
  %21 = and i8 %20, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp.not.i.3.i = icmp ne i8 %21, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %18)
  %cmp4.i.3.i = icmp eq i8 %18, 44
  %spec.select.i.3.i = or i1 %cmp4.i.3.i, %cmp.not.i.3.i
  br i1 %spec.select.i.3.i, label %lor.lhs.false.3.i.bitmap_get_x32_reverse.exit_crit_edge, label %for.cond.3.i

lor.lhs.false.3.i.bitmap_get_x32_reverse.exit_crit_edge: ; preds = %lor.lhs.false.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_get_x32_reverse.exit

for.cond.3.i:                                     ; preds = %lor.lhs.false.3.i
  %incdec.ptr.4.i = getelementptr i8, ptr %end.addr.0.lcssa.i, i32 -5
  %call.4.i = tail call i32 @hex_to_bin(i8 noundef zeroext %18) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %cmp1.4.i = icmp slt i32 %call.4.i, 0
  br i1 %cmp1.4.i, label %for.cond.3.i.if.then6_crit_edge, label %if.end.4.i

for.cond.3.i.if.then6_crit_edge:                  ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

if.end.4.i:                                       ; preds = %for.cond.3.i
  %shl.4.i = shl i32 %call.4.i, 16
  %or.4.i = or i32 %shl.4.i, %or.3.i
  %cmp3.4.i = icmp ult ptr %incdec.ptr.4.i, %start
  br i1 %cmp3.4.i, label %if.end.4.i.bitmap_get_x32_reverse.exit_crit_edge, label %lor.lhs.false.4.i

if.end.4.i.bitmap_get_x32_reverse.exit_crit_edge: ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_get_x32_reverse.exit

lor.lhs.false.4.i:                                ; preds = %if.end.4.i
  %22 = ptrtoint ptr %incdec.ptr.4.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %incdec.ptr.4.i, align 1
  %conv.i.4.i = zext i8 %23 to i32
  %arrayidx.i.4.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.4.i
  %24 = ptrtoint ptr %arrayidx.i.4.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i.4.i, align 1
  %26 = and i8 %25, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp.not.i.4.i = icmp ne i8 %26, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %23)
  %cmp4.i.4.i = icmp eq i8 %23, 44
  %spec.select.i.4.i = or i1 %cmp4.i.4.i, %cmp.not.i.4.i
  br i1 %spec.select.i.4.i, label %lor.lhs.false.4.i.bitmap_get_x32_reverse.exit_crit_edge, label %for.cond.4.i

lor.lhs.false.4.i.bitmap_get_x32_reverse.exit_crit_edge: ; preds = %lor.lhs.false.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_get_x32_reverse.exit

for.cond.4.i:                                     ; preds = %lor.lhs.false.4.i
  %incdec.ptr.5.i = getelementptr i8, ptr %end.addr.0.lcssa.i, i32 -6
  %call.5.i = tail call i32 @hex_to_bin(i8 noundef zeroext %23) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i)
  %cmp1.5.i = icmp slt i32 %call.5.i, 0
  br i1 %cmp1.5.i, label %for.cond.4.i.if.then6_crit_edge, label %if.end.5.i

for.cond.4.i.if.then6_crit_edge:                  ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

if.end.5.i:                                       ; preds = %for.cond.4.i
  %shl.5.i = shl i32 %call.5.i, 20
  %or.5.i = or i32 %shl.5.i, %or.4.i
  %cmp3.5.i = icmp ult ptr %incdec.ptr.5.i, %start
  br i1 %cmp3.5.i, label %if.end.5.i.bitmap_get_x32_reverse.exit_crit_edge, label %lor.lhs.false.5.i

if.end.5.i.bitmap_get_x32_reverse.exit_crit_edge: ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_get_x32_reverse.exit

lor.lhs.false.5.i:                                ; preds = %if.end.5.i
  %27 = ptrtoint ptr %incdec.ptr.5.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %incdec.ptr.5.i, align 1
  %conv.i.5.i = zext i8 %28 to i32
  %arrayidx.i.5.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.5.i
  %29 = ptrtoint ptr %arrayidx.i.5.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i.5.i, align 1
  %31 = and i8 %30, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp.not.i.5.i = icmp ne i8 %31, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %28)
  %cmp4.i.5.i = icmp eq i8 %28, 44
  %spec.select.i.5.i = or i1 %cmp4.i.5.i, %cmp.not.i.5.i
  br i1 %spec.select.i.5.i, label %lor.lhs.false.5.i.bitmap_get_x32_reverse.exit_crit_edge, label %for.cond.5.i

lor.lhs.false.5.i.bitmap_get_x32_reverse.exit_crit_edge: ; preds = %lor.lhs.false.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_get_x32_reverse.exit

for.cond.5.i:                                     ; preds = %lor.lhs.false.5.i
  %incdec.ptr.6.i = getelementptr i8, ptr %end.addr.0.lcssa.i, i32 -7
  %call.6.i = tail call i32 @hex_to_bin(i8 noundef zeroext %28) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6.i)
  %cmp1.6.i = icmp slt i32 %call.6.i, 0
  br i1 %cmp1.6.i, label %for.cond.5.i.if.then6_crit_edge, label %if.end.6.i

for.cond.5.i.if.then6_crit_edge:                  ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

if.end.6.i:                                       ; preds = %for.cond.5.i
  %shl.6.i = shl i32 %call.6.i, 24
  %or.6.i = or i32 %shl.6.i, %or.5.i
  %cmp3.6.i = icmp ult ptr %incdec.ptr.6.i, %start
  br i1 %cmp3.6.i, label %if.end.6.i.bitmap_get_x32_reverse.exit_crit_edge, label %lor.lhs.false.6.i

if.end.6.i.bitmap_get_x32_reverse.exit_crit_edge: ; preds = %if.end.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_get_x32_reverse.exit

lor.lhs.false.6.i:                                ; preds = %if.end.6.i
  %32 = ptrtoint ptr %incdec.ptr.6.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %incdec.ptr.6.i, align 1
  %conv.i.6.i = zext i8 %33 to i32
  %arrayidx.i.6.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.6.i
  %34 = ptrtoint ptr %arrayidx.i.6.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i.6.i, align 1
  %36 = and i8 %35, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp.not.i.6.i = icmp ne i8 %36, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %33)
  %cmp4.i.6.i = icmp eq i8 %33, 44
  %spec.select.i.6.i = or i1 %cmp4.i.6.i, %cmp.not.i.6.i
  br i1 %spec.select.i.6.i, label %lor.lhs.false.6.i.bitmap_get_x32_reverse.exit_crit_edge, label %for.cond.6.i

lor.lhs.false.6.i.bitmap_get_x32_reverse.exit_crit_edge: ; preds = %lor.lhs.false.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_get_x32_reverse.exit

for.cond.6.i:                                     ; preds = %lor.lhs.false.6.i
  %incdec.ptr.7.i = getelementptr i8, ptr %end.addr.0.lcssa.i, i32 -8
  %call.7.i = tail call i32 @hex_to_bin(i8 noundef zeroext %33) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7.i)
  %cmp1.7.i = icmp slt i32 %call.7.i, 0
  br i1 %cmp1.7.i, label %for.cond.6.i.if.then6_crit_edge, label %if.end.7.i

for.cond.6.i.if.then6_crit_edge:                  ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

if.end.7.i:                                       ; preds = %for.cond.6.i
  %shl.7.i = shl i32 %call.7.i, 28
  %or.7.i = or i32 %shl.7.i, %or.6.i
  %cmp3.7.i = icmp ult ptr %incdec.ptr.7.i, %start
  br i1 %cmp3.7.i, label %if.end.7.i.bitmap_get_x32_reverse.exit_crit_edge, label %lor.lhs.false.7.i

if.end.7.i.bitmap_get_x32_reverse.exit_crit_edge: ; preds = %if.end.7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_get_x32_reverse.exit

lor.lhs.false.7.i:                                ; preds = %if.end.7.i
  %37 = ptrtoint ptr %incdec.ptr.7.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %incdec.ptr.7.i, align 1
  %conv.i.7.i = zext i8 %38 to i32
  %arrayidx.i.7.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.7.i
  %39 = ptrtoint ptr %arrayidx.i.7.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i.7.i, align 1
  %41 = and i8 %40, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp.not.i.7.i = icmp ne i8 %41, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %38)
  %cmp4.i.7.i = icmp eq i8 %38, 44
  %spec.select.i.7.i = or i1 %cmp4.i.7.i, %cmp.not.i.7.i
  br i1 %spec.select.i.7.i, label %lor.lhs.false.7.i.bitmap_get_x32_reverse.exit_crit_edge, label %for.cond.7.i

lor.lhs.false.7.i.bitmap_get_x32_reverse.exit_crit_edge: ; preds = %lor.lhs.false.7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_get_x32_reverse.exit

for.cond.7.i:                                     ; preds = %lor.lhs.false.7.i
  %incdec.ptr7.i = getelementptr i8, ptr %end.addr.0.lcssa.i, i32 -9
  %call8.i = tail call i32 @hex_to_bin(i8 noundef zeroext %38) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call8.i)
  %cmp9.i = icmp sgt i32 %call8.i, -1
  br i1 %cmp9.i, label %for.cond.7.i.if.then6_crit_edge, label %for.cond.7.i.bitmap_get_x32_reverse.exit_crit_edge

for.cond.7.i.bitmap_get_x32_reverse.exit_crit_edge: ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_get_x32_reverse.exit

for.cond.7.i.if.then6_crit_edge:                  ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

if.end.i:                                         ; preds = %if.end3
  %cmp3.i46 = icmp ult ptr %incdec.ptr.i45, %start
  br i1 %cmp3.i46, label %if.end.i.bitmap_get_x32_reverse.exit_crit_edge, label %lor.lhs.false.i

if.end.i.bitmap_get_x32_reverse.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_get_x32_reverse.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  %42 = ptrtoint ptr %incdec.ptr.i45 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %incdec.ptr.i45, align 1
  %conv.i.i47 = zext i8 %43 to i32
  %arrayidx.i.i48 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.i47
  %44 = ptrtoint ptr %arrayidx.i.i48 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.i.i48, align 1
  %46 = and i8 %45, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp.not.i.i49 = icmp ne i8 %46, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %43)
  %cmp4.i.i50 = icmp eq i8 %43, 44
  %spec.select.i.i51 = or i1 %cmp4.i.i50, %cmp.not.i.i49
  br i1 %spec.select.i.i51, label %lor.lhs.false.i.bitmap_get_x32_reverse.exit_crit_edge, label %for.cond.i

lor.lhs.false.i.bitmap_get_x32_reverse.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_get_x32_reverse.exit

bitmap_get_x32_reverse.exit:                      ; preds = %lor.lhs.false.i.bitmap_get_x32_reverse.exit_crit_edge, %if.end.i.bitmap_get_x32_reverse.exit_crit_edge, %for.cond.7.i.bitmap_get_x32_reverse.exit_crit_edge, %lor.lhs.false.7.i.bitmap_get_x32_reverse.exit_crit_edge, %if.end.7.i.bitmap_get_x32_reverse.exit_crit_edge, %lor.lhs.false.6.i.bitmap_get_x32_reverse.exit_crit_edge, %if.end.6.i.bitmap_get_x32_reverse.exit_crit_edge, %lor.lhs.false.5.i.bitmap_get_x32_reverse.exit_crit_edge, %if.end.5.i.bitmap_get_x32_reverse.exit_crit_edge, %lor.lhs.false.4.i.bitmap_get_x32_reverse.exit_crit_edge, %if.end.4.i.bitmap_get_x32_reverse.exit_crit_edge, %lor.lhs.false.3.i.bitmap_get_x32_reverse.exit_crit_edge, %if.end.3.i.bitmap_get_x32_reverse.exit_crit_edge, %lor.lhs.false.2.i.bitmap_get_x32_reverse.exit_crit_edge, %if.end.2.i.bitmap_get_x32_reverse.exit_crit_edge, %lor.lhs.false.1.i.bitmap_get_x32_reverse.exit_crit_edge, %if.end.1.i.bitmap_get_x32_reverse.exit_crit_edge
  %or36.i = phi i32 [ %or.7.i, %for.cond.7.i.bitmap_get_x32_reverse.exit_crit_edge ], [ %call.i, %lor.lhs.false.i.bitmap_get_x32_reverse.exit_crit_edge ], [ %call.i, %if.end.i.bitmap_get_x32_reverse.exit_crit_edge ], [ %or.1.i, %if.end.1.i.bitmap_get_x32_reverse.exit_crit_edge ], [ %or.1.i, %lor.lhs.false.1.i.bitmap_get_x32_reverse.exit_crit_edge ], [ %or.2.i, %if.end.2.i.bitmap_get_x32_reverse.exit_crit_edge ], [ %or.2.i, %lor.lhs.false.2.i.bitmap_get_x32_reverse.exit_crit_edge ], [ %or.3.i, %if.end.3.i.bitmap_get_x32_reverse.exit_crit_edge ], [ %or.3.i, %lor.lhs.false.3.i.bitmap_get_x32_reverse.exit_crit_edge ], [ %or.4.i, %if.end.4.i.bitmap_get_x32_reverse.exit_crit_edge ], [ %or.4.i, %lor.lhs.false.4.i.bitmap_get_x32_reverse.exit_crit_edge ], [ %or.5.i, %if.end.5.i.bitmap_get_x32_reverse.exit_crit_edge ], [ %or.5.i, %lor.lhs.false.5.i.bitmap_get_x32_reverse.exit_crit_edge ], [ %or.6.i, %if.end.6.i.bitmap_get_x32_reverse.exit_crit_edge ], [ %or.6.i, %lor.lhs.false.6.i.bitmap_get_x32_reverse.exit_crit_edge ], [ %or.7.i, %if.end.7.i.bitmap_get_x32_reverse.exit_crit_edge ], [ %or.7.i, %lor.lhs.false.7.i.bitmap_get_x32_reverse.exit_crit_edge ]
  %end.addr.1.i = phi ptr [ %incdec.ptr7.i, %for.cond.7.i.bitmap_get_x32_reverse.exit_crit_edge ], [ %incdec.ptr.i45, %lor.lhs.false.i.bitmap_get_x32_reverse.exit_crit_edge ], [ %incdec.ptr.i45, %if.end.i.bitmap_get_x32_reverse.exit_crit_edge ], [ %incdec.ptr.1.i, %if.end.1.i.bitmap_get_x32_reverse.exit_crit_edge ], [ %incdec.ptr.1.i, %lor.lhs.false.1.i.bitmap_get_x32_reverse.exit_crit_edge ], [ %incdec.ptr.2.i, %if.end.2.i.bitmap_get_x32_reverse.exit_crit_edge ], [ %incdec.ptr.2.i, %lor.lhs.false.2.i.bitmap_get_x32_reverse.exit_crit_edge ], [ %incdec.ptr.3.i, %if.end.3.i.bitmap_get_x32_reverse.exit_crit_edge ], [ %incdec.ptr.3.i, %lor.lhs.false.3.i.bitmap_get_x32_reverse.exit_crit_edge ], [ %incdec.ptr.4.i, %if.end.4.i.bitmap_get_x32_reverse.exit_crit_edge ], [ %incdec.ptr.4.i, %lor.lhs.false.4.i.bitmap_get_x32_reverse.exit_crit_edge ], [ %incdec.ptr.5.i, %if.end.5.i.bitmap_get_x32_reverse.exit_crit_edge ], [ %incdec.ptr.5.i, %lor.lhs.false.5.i.bitmap_get_x32_reverse.exit_crit_edge ], [ %incdec.ptr.6.i, %if.end.6.i.bitmap_get_x32_reverse.exit_crit_edge ], [ %incdec.ptr.6.i, %lor.lhs.false.6.i.bitmap_get_x32_reverse.exit_crit_edge ], [ %incdec.ptr.7.i, %if.end.7.i.bitmap_get_x32_reverse.exit_crit_edge ], [ %incdec.ptr.7.i, %lor.lhs.false.7.i.bitmap_get_x32_reverse.exit_crit_edge ]
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or36.i, ptr %arrayidx, align 4
  %cmp.i52 = icmp ugt ptr %end.addr.1.i, inttoptr (i32 -4096 to ptr)
  %inc = add nuw nsw i32 %chunk.0, 1
  br i1 %cmp.i52, label %bitmap_get_x32_reverse.exit.if.then6_crit_edge, label %bitmap_get_x32_reverse.exit.for.cond_crit_edge

bitmap_get_x32_reverse.exit.for.cond_crit_edge:   ; preds = %bitmap_get_x32_reverse.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

bitmap_get_x32_reverse.exit.if.then6_crit_edge:   ; preds = %bitmap_get_x32_reverse.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

if.then6:                                         ; preds = %bitmap_get_x32_reverse.exit.if.then6_crit_edge, %for.cond.7.i.if.then6_crit_edge, %for.cond.6.i.if.then6_crit_edge, %for.cond.5.i.if.then6_crit_edge, %for.cond.4.i.if.then6_crit_edge, %for.cond.3.i.if.then6_crit_edge, %for.cond.2.i.if.then6_crit_edge, %for.cond.1.i.if.then6_crit_edge, %for.cond.i.if.then6_crit_edge, %if.end3.if.then6_crit_edge
  %retval.0.i55 = phi ptr [ %end.addr.1.i, %bitmap_get_x32_reverse.exit.if.then6_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end3.if.then6_crit_edge ], [ inttoptr (i32 -22 to ptr), %for.cond.i.if.then6_crit_edge ], [ inttoptr (i32 -22 to ptr), %for.cond.1.i.if.then6_crit_edge ], [ inttoptr (i32 -22 to ptr), %for.cond.2.i.if.then6_crit_edge ], [ inttoptr (i32 -22 to ptr), %for.cond.3.i.if.then6_crit_edge ], [ inttoptr (i32 -22 to ptr), %for.cond.4.i.if.then6_crit_edge ], [ inttoptr (i32 -22 to ptr), %for.cond.5.i.if.then6_crit_edge ], [ inttoptr (i32 -22 to ptr), %for.cond.6.i.if.then6_crit_edge ], [ inttoptr (i32 -75 to ptr), %for.cond.7.i.if.then6_crit_edge ]
  %48 = ptrtoint ptr %retval.0.i55 to i32
  br label %cleanup

for.end:                                          ; preds = %bitmap_find_region_reverse.exit
  %sub12 = sub i32 %div44, %chunks.0
  %mul = shl i32 %sub12, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %nmaskbits)
  %cmp13 = icmp slt i32 %mul, %nmaskbits
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %for.end
  %sub15 = sub i32 %nmaskbits, %mul
  %and5.i = and i32 %sub15, 31
  %div20.i.i = and i32 %sub12, 134217727
  %add.ptr.i28.i = getelementptr i32, ptr %maskp, i32 %div20.i.i
  %sub121.i.i = add i32 %sub15, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub121.i.i)
  %cmp22.i.i = icmp sgt i32 %sub121.i.i, -1
  br i1 %cmp22.i.i, label %while.body.preheader.i.i, label %if.then14.while.end.i.i_crit_edge

if.then14.while.end.i.i_crit_edge:                ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i

while.body.preheader.i.i:                         ; preds = %if.then14
  %49 = ptrtoint ptr %add.ptr.i28.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %add.ptr.i28.i, align 4
  %incdec.ptr.peel.i.i = getelementptr i32, ptr %add.ptr.i28.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %sub121.i.i)
  %cmp.peel.i.i = icmp ugt i32 %sub121.i.i, 31
  br i1 %cmp.peel.i.i, label %while.body.i.preheader.i, label %while.body.preheader.i.i.while.end.i.i_crit_edge

while.body.preheader.i.i.while.end.i.i_crit_edge: ; preds = %while.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i

while.body.i.preheader.i:                         ; preds = %while.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %umin.i = tail call i32 @llvm.umin.i32(i32 %sub121.i.i, i32 63) #14
  %50 = xor i32 %umin.i, -1
  %51 = add i32 %sub15, %50
  %52 = lshr i32 %51, 3
  %53 = and i32 %52, 536870908
  %54 = add nuw nsw i32 %53, 4
  %55 = call ptr @memset(ptr %incdec.ptr.peel.i.i, i32 0, i32 %54)
  %56 = shl nuw nsw i32 %div20.i.i, 2
  %57 = add nuw nsw i32 %56, 8
  %58 = add nuw nsw i32 %57, %53
  %uglygep.i = getelementptr i8, ptr %maskp, i32 %58
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.body.i.preheader.i, %while.body.preheader.i.i.while.end.i.i_crit_edge, %if.then14.while.end.i.i_crit_edge
  %len.addr.0.lcssa.i.i = phi i32 [ %sub15, %if.then14.while.end.i.i_crit_edge ], [ %and5.i, %while.body.i.preheader.i ], [ %and5.i, %while.body.preheader.i.i.while.end.i.i_crit_edge ]
  %p.0.lcssa.i.i = phi ptr [ %add.ptr.i28.i, %if.then14.while.end.i.i_crit_edge ], [ %uglygep.i, %while.body.i.preheader.i ], [ %incdec.ptr.peel.i.i, %while.body.preheader.i.i.while.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.lcssa.i.i)
  %tobool.not.i.i = icmp eq i32 %len.addr.0.lcssa.i.i, 0
  br i1 %tobool.not.i.i, label %while.end.i.i.cleanup_crit_edge, label %if.then.i.i

while.end.i.i.cleanup_crit_edge:                  ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i.i:                                      ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub4.i.i = sub nsw i32 0, %nmaskbits
  %and5.i.i = and i32 %sub4.i.i, 31
  %shr.i.i = lshr i32 -1, %and5.i.i
  %neg7.i.i = xor i32 %shr.i.i, -1
  %59 = ptrtoint ptr %p.0.lcssa.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %p.0.lcssa.i.i, align 4
  %and8.i.i = and i32 %60, %neg7.i.i
  store i32 %and8.i.i, ptr %p.0.lcssa.i.i, align 4
  br label %cleanup

if.end16:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %call17 = tail call i32 @_find_next_bit_be(ptr noundef %maskp, i32 noundef %mul, i32 noundef %nmaskbits) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call17, i32 %mul)
  %cmp18.not = icmp eq i32 %call17, %mul
  %. = select i1 %cmp18.not, i32 0, i32 -75
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then.i.i, %while.end.i.i.cleanup_crit_edge, %if.then6, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %48, %if.then6 ], [ %., %if.end16 ], [ 0, %while.end.i.i.cleanup_crit_edge ], [ 0, %if.then.i.i ], [ -75, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bitmap_print_to_pagebuf(i1 noundef zeroext %list, ptr noundef %buf, ptr noundef %maskp, i32 noundef %nmaskbits) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %buf to i32
  %and = and i32 %0, 4095
  %sub = sub nuw nsw i32 4096, %and
  %.str..str.1 = select i1 %list, ptr @.str, ptr @.str.1
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %sub, ptr noundef nonnull %.str..str.1, i32 noundef %nmaskbits, ptr noundef %maskp) #14
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bitmap_print_bitmask_to_buf(ptr noundef %buf, ptr noundef %maskp, i32 noundef %nmaskbits, i64 noundef %off, i32 noundef %count) #5 align 64 {
entry:
  %off.addr.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %off.addr.i)
  %0 = ptrtoint ptr %off.addr.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %off, ptr %off.addr.i, align 8
  %call.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.1, i32 noundef %nmaskbits, ptr noundef %maskp) #14
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %entry.bitmap_print_to_buf.exit_crit_edge, label %if.end.i

entry.bitmap_print_to_buf.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_print_to_buf.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = tail call i32 @strlen(ptr noundef nonnull %call.i) #15
  %add.i = add i32 %call2.i, 1
  %call3.i = call i32 @memory_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef nonnull %off.addr.i, ptr noundef nonnull %call.i, i32 noundef %add.i) #14
  call void @kfree(ptr noundef nonnull %call.i) #14
  br label %bitmap_print_to_buf.exit

bitmap_print_to_buf.exit:                         ; preds = %if.end.i, %entry.bitmap_print_to_buf.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ -12, %entry.bitmap_print_to_buf.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %off.addr.i)
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bitmap_print_list_to_buf(ptr noundef %buf, ptr noundef %maskp, i32 noundef %nmaskbits, i64 noundef %off, i32 noundef %count) #5 align 64 {
entry:
  %off.addr.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %off.addr.i)
  %0 = ptrtoint ptr %off.addr.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %off, ptr %off.addr.i, align 8
  %call.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str, i32 noundef %nmaskbits, ptr noundef %maskp) #14
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %entry.bitmap_print_to_buf.exit_crit_edge, label %if.end.i

entry.bitmap_print_to_buf.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_print_to_buf.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = tail call i32 @strlen(ptr noundef nonnull %call.i) #15
  %add.i = add i32 %call2.i, 1
  %call3.i = call i32 @memory_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef nonnull %off.addr.i, ptr noundef nonnull %call.i, i32 noundef %add.i) #14
  call void @kfree(ptr noundef nonnull %call.i) #14
  br label %bitmap_print_to_buf.exit

bitmap_print_to_buf.exit:                         ; preds = %if.end.i, %entry.bitmap_print_to_buf.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ -12, %entry.bitmap_print_to_buf.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %off.addr.i)
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bitmap_parselist(ptr noundef %buf, ptr nocapture noundef %maskp, i32 noundef %nmaskbits) #5 align 64 {
entry:
  %n.i129.i = alloca i64, align 8
  %n.i112.i = alloca i64, align 8
  %n.i85.i = alloca i64, align 8
  %n.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = add i32 %nmaskbits, 31
  %0 = lshr i32 %sub.i, 3
  %mul.i = and i32 %0, 536870908
  %1 = call ptr @memset(ptr %maskp, i32 0, i32 %mul.i)
  %tobool.not74 = icmp eq ptr %buf, null
  br i1 %tobool.not74, label %entry.cleanup_crit_edge, label %while.cond.i.preheader.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.i.preheader.lr.ph:                     ; preds = %entry
  %sub.i19 = add i32 %nmaskbits, -1
  br label %while.cond.i.preheader

while.cond.loopexit:                              ; preds = %bitmap_set.exit.i
  %tobool.not = icmp eq ptr %retval.0.i67, null
  br i1 %tobool.not, label %while.cond.loopexit.cleanup_crit_edge, label %while.cond.loopexit.while.cond.i.preheader_crit_edge

while.cond.loopexit.while.cond.i.preheader_crit_edge: ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.preheader

while.cond.loopexit.cleanup_crit_edge:            ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.i.preheader:                           ; preds = %while.cond.loopexit.while.cond.i.preheader_crit_edge, %while.cond.i.preheader.lr.ph
  %buf.addr.079 = phi ptr [ %buf, %while.cond.i.preheader.lr.ph ], [ %retval.0.i67, %while.cond.loopexit.while.cond.i.preheader_crit_edge ]
  %r.sroa.8.078 = phi i32 [ -1, %while.cond.i.preheader.lr.ph ], [ %r.sroa.8.165, %while.cond.loopexit.while.cond.i.preheader_crit_edge ]
  %r.sroa.13.076 = phi i32 [ -1, %while.cond.i.preheader.lr.ph ], [ %r.sroa.13.264, %while.cond.loopexit.while.cond.i.preheader_crit_edge ]
  %r.sroa.18.075 = phi i32 [ -1, %while.cond.i.preheader.lr.ph ], [ %r.sroa.18.363, %while.cond.loopexit.while.cond.i.preheader_crit_edge ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %while.cond.i.preheader
  %str.addr.0.i = phi ptr [ %incdec.ptr.i, %while.cond.i.while.cond.i_crit_edge ], [ %buf.addr.079, %while.cond.i.preheader ]
  %2 = ptrtoint ptr %str.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %str.addr.0.i, align 1
  %conv.i.i = zext i8 %3 to i32
  %arrayidx.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.i, align 1
  %6 = and i8 %5, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp.not.i.i = icmp ne i8 %6, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %3)
  %cmp4.i.i = icmp eq i8 %3, 44
  %spec.select.i.i = or i1 %cmp4.i.i, %cmp.not.i.i
  %incdec.ptr.i = getelementptr i8, ptr %str.addr.0.i, i32 1
  br i1 %spec.select.i.i, label %while.cond.i.while.cond.i_crit_edge, label %bitmap_find_region.exit

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

bitmap_find_region.exit:                          ; preds = %while.cond.i
  %cmp73 = icmp eq ptr %str.addr.0.i, null
  br i1 %cmp73, label %bitmap_find_region.exit.cleanup_crit_edge, label %switch.early.test

bitmap_find_region.exit.cleanup_crit_edge:        ; preds = %bitmap_find_region.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

switch.early.test:                                ; preds = %bitmap_find_region.exit
  %7 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %if.end [
    i8 10, label %switch.early.test.cleanup_crit_edge
    i8 0, label %switch.early.test.cleanup_crit_edge86
  ]

switch.early.test.cleanup_crit_edge86:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

switch.early.test.cleanup_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %switch.early.test
  %call.i = call i32 @strncasecmp(ptr noundef nonnull %str.addr.0.i, ptr noundef nonnull @.str.2, i32 noundef 3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %str.addr.0.i, i32 3
  br label %check_pattern.i

if.end.i:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %n.i.i) #14
  %8 = ptrtoint ptr %n.i.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %n.i.i, align 8, !annotation !89
  %9 = ptrtoint ptr %str.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %str.addr.0.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 78, i8 %10)
  %cmp.i.i20 = icmp eq i8 %10, 78
  br i1 %cmp.i.i20, label %if.end.i.bitmap_getnum.exit.i_crit_edge, label %if.end.i.i

if.end.i.bitmap_getnum.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_getnum.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  %call.i.i = call i32 @_parse_integer(ptr noundef nonnull %str.addr.0.i, i32 noundef 10, ptr noundef nonnull %n.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.bitmap_getnum.exit.thread.i_crit_edge, label %if.end4.i.i

if.end.i.i.bitmap_getnum.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_getnum.exit.thread.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool5.not.i.i = icmp sgt i32 %call.i.i, -1
  br i1 %tobool5.not.i.i, label %lor.lhs.false.i.i, label %if.end4.i.i.bitmap_getnum.exit.thread.i_crit_edge

if.end4.i.i.bitmap_getnum.exit.thread.i_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_getnum.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %if.end4.i.i
  %11 = ptrtoint ptr %n.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %n.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %12)
  %13 = icmp ult i64 %12, 4294967296
  br i1 %13, label %if.end12.i.i, label %lor.lhs.false.i.i.bitmap_getnum.exit.thread.i_crit_edge

lor.lhs.false.i.i.bitmap_getnum.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_getnum.exit.thread.i

if.end12.i.i:                                     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv6.i.i = trunc i64 %12 to i32
  br label %bitmap_getnum.exit.i

bitmap_getnum.exit.thread.i:                      ; preds = %lor.lhs.false.i.i.bitmap_getnum.exit.thread.i_crit_edge, %if.end4.i.i.bitmap_getnum.exit.thread.i_crit_edge, %if.end.i.i.bitmap_getnum.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi ptr [ inttoptr (i32 -75 to ptr), %if.end4.i.i.bitmap_getnum.exit.thread.i_crit_edge ], [ inttoptr (i32 -75 to ptr), %lor.lhs.false.i.i.bitmap_getnum.exit.thread.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i.i.bitmap_getnum.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %n.i.i) #14
  br label %if.then4

bitmap_getnum.exit.i:                             ; preds = %if.end12.i.i, %if.end.i.bitmap_getnum.exit.i_crit_edge
  %conv6.sink.i.i = phi i32 [ %conv6.i.i, %if.end12.i.i ], [ %sub.i19, %if.end.i.bitmap_getnum.exit.i_crit_edge ]
  %call.sink.i.i = phi i32 [ %call.i.i, %if.end12.i.i ], [ 1, %if.end.i.bitmap_getnum.exit.i_crit_edge ]
  %add.ptr14.i.i = getelementptr i8, ptr %str.addr.0.i, i32 %call.sink.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %n.i.i) #14
  %cmp.i84.i = icmp ugt ptr %add.ptr14.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i84.i, label %bitmap_getnum.exit.i.bitmap_parse_region.exit_crit_edge, label %if.end5.i

bitmap_getnum.exit.i.bitmap_parse_region.exit_crit_edge: ; preds = %bitmap_getnum.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_parse_region.exit

if.end5.i:                                        ; preds = %bitmap_getnum.exit.i
  %14 = ptrtoint ptr %add.ptr14.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr14.i.i, align 1
  %conv.i.i.i = zext i8 %15 to i32
  %arrayidx.i.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.i.i
  %16 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i.i.i, align 1
  %18 = and i8 %17, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp.not.i.i.i = icmp ne i8 %18, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %15)
  %cmp4.i.i.i = icmp eq i8 %15, 44
  %spec.select.i.i.i = or i1 %cmp4.i.i.i, %cmp.not.i.i.i
  br i1 %spec.select.i.i.i, label %if.end5.i.no_pattern.i_crit_edge, label %end_of_region.exit.i

if.end5.i.no_pattern.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_pattern.i

end_of_region.exit.i:                             ; preds = %if.end5.i
  %19 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %15, label %end_of_region.exit.i.if.then4_crit_edge [
    i8 10, label %end_of_region.exit.i.no_pattern.i_crit_edge
    i8 0, label %end_of_region.exit.i.no_pattern.i_crit_edge87
    i8 45, label %if.end12.i
  ]

end_of_region.exit.i.no_pattern.i_crit_edge87:    ; preds = %end_of_region.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_pattern.i

end_of_region.exit.i.no_pattern.i_crit_edge:      ; preds = %end_of_region.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_pattern.i

end_of_region.exit.i.if.then4_crit_edge:          ; preds = %end_of_region.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4

if.end12.i:                                       ; preds = %end_of_region.exit.i
  %add.ptr13.i = getelementptr i8, ptr %add.ptr14.i.i, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %n.i85.i) #14
  %20 = ptrtoint ptr %n.i85.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 -1, ptr %n.i85.i, align 8, !annotation !89
  %21 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %add.ptr13.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 78, i8 %22)
  %cmp.i86.i = icmp eq i8 %22, 78
  br i1 %cmp.i86.i, label %if.end12.i.bitmap_getnum.exit100.i_crit_edge, label %if.end.i89.i

if.end12.i.bitmap_getnum.exit100.i_crit_edge:     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_getnum.exit100.i

if.end.i89.i:                                     ; preds = %if.end12.i
  %call.i87.i = call i32 @_parse_integer(ptr noundef %add.ptr13.i, i32 noundef 10, ptr noundef nonnull %n.i85.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87.i)
  %tobool.not.i88.i = icmp eq i32 %call.i87.i, 0
  br i1 %tobool.not.i88.i, label %if.end.i89.i.bitmap_getnum.exit100.thread.i_crit_edge, label %if.end4.i91.i

if.end.i89.i.bitmap_getnum.exit100.thread.i_crit_edge: ; preds = %if.end.i89.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_getnum.exit100.thread.i

if.end4.i91.i:                                    ; preds = %if.end.i89.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i87.i)
  %tobool5.not.i90.i = icmp sgt i32 %call.i87.i, -1
  br i1 %tobool5.not.i90.i, label %lor.lhs.false.i92.i, label %if.end4.i91.i.bitmap_getnum.exit100.thread.i_crit_edge

if.end4.i91.i.bitmap_getnum.exit100.thread.i_crit_edge: ; preds = %if.end4.i91.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_getnum.exit100.thread.i

lor.lhs.false.i92.i:                              ; preds = %if.end4.i91.i
  %23 = ptrtoint ptr %n.i85.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %n.i85.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %24)
  %25 = icmp ult i64 %24, 4294967296
  br i1 %25, label %if.end12.i94.i, label %lor.lhs.false.i92.i.bitmap_getnum.exit100.thread.i_crit_edge

lor.lhs.false.i92.i.bitmap_getnum.exit100.thread.i_crit_edge: ; preds = %lor.lhs.false.i92.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_getnum.exit100.thread.i

if.end12.i94.i:                                   ; preds = %lor.lhs.false.i92.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv6.i93.i = trunc i64 %24 to i32
  br label %bitmap_getnum.exit100.i

bitmap_getnum.exit100.thread.i:                   ; preds = %lor.lhs.false.i92.i.bitmap_getnum.exit100.thread.i_crit_edge, %if.end4.i91.i.bitmap_getnum.exit100.thread.i_crit_edge, %if.end.i89.i.bitmap_getnum.exit100.thread.i_crit_edge
  %retval.0.i99.ph.i = phi ptr [ inttoptr (i32 -75 to ptr), %if.end4.i91.i.bitmap_getnum.exit100.thread.i_crit_edge ], [ inttoptr (i32 -75 to ptr), %lor.lhs.false.i92.i.bitmap_getnum.exit100.thread.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i89.i.bitmap_getnum.exit100.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %n.i85.i) #14
  br label %if.then4

bitmap_getnum.exit100.i:                          ; preds = %if.end12.i94.i, %if.end12.i.bitmap_getnum.exit100.i_crit_edge
  %conv6.sink.i95.i = phi i32 [ %conv6.i93.i, %if.end12.i94.i ], [ %sub.i19, %if.end12.i.bitmap_getnum.exit100.i_crit_edge ]
  %call.sink.i96.i = phi i32 [ %call.i87.i, %if.end12.i94.i ], [ 1, %if.end12.i.bitmap_getnum.exit100.i_crit_edge ]
  %add.ptr14.i97.i = getelementptr i8, ptr %add.ptr13.i, i32 %call.sink.i96.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %n.i85.i) #14
  %cmp.i101.i = icmp ugt ptr %add.ptr14.i97.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i101.i, label %bitmap_getnum.exit100.i.bitmap_parse_region.exit_crit_edge, label %bitmap_getnum.exit100.i.check_pattern.i_crit_edge

bitmap_getnum.exit100.i.check_pattern.i_crit_edge: ; preds = %bitmap_getnum.exit100.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %check_pattern.i

bitmap_getnum.exit100.i.bitmap_parse_region.exit_crit_edge: ; preds = %bitmap_getnum.exit100.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_parse_region.exit

check_pattern.i:                                  ; preds = %bitmap_getnum.exit100.i.check_pattern.i_crit_edge, %if.then.i
  %r.sroa.18.1 = phi i32 [ %sub.i19, %if.then.i ], [ %conv6.sink.i95.i, %bitmap_getnum.exit100.i.check_pattern.i_crit_edge ]
  %r.sroa.0.1 = phi i32 [ 0, %if.then.i ], [ %conv6.sink.i.i, %bitmap_getnum.exit100.i.check_pattern.i_crit_edge ]
  %str.addr.0.i21 = phi ptr [ %add.ptr.i, %if.then.i ], [ %add.ptr14.i97.i, %bitmap_getnum.exit100.i.check_pattern.i_crit_edge ]
  %26 = ptrtoint ptr %str.addr.0.i21 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %str.addr.0.i21, align 1
  %conv.i.i102.i = zext i8 %27 to i32
  %arrayidx.i.i103.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.i102.i
  %28 = ptrtoint ptr %arrayidx.i.i103.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i.i103.i, align 1
  %30 = and i8 %29, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp.not.i.i104.i = icmp ne i8 %30, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %27)
  %cmp4.i.i105.i = icmp eq i8 %27, 44
  %spec.select.i.i106.i = or i1 %cmp4.i.i105.i, %cmp.not.i.i104.i
  br i1 %spec.select.i.i106.i, label %check_pattern.i.no_pattern.i_crit_edge, label %end_of_region.exit111.i

check_pattern.i.no_pattern.i_crit_edge:           ; preds = %check_pattern.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_pattern.i

end_of_region.exit111.i:                          ; preds = %check_pattern.i
  %31 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %27, label %end_of_region.exit111.i.if.then4_crit_edge [
    i8 10, label %end_of_region.exit111.i.no_pattern.i_crit_edge
    i8 0, label %end_of_region.exit111.i.no_pattern.i_crit_edge88
    i8 58, label %if.end27.i
  ]

end_of_region.exit111.i.no_pattern.i_crit_edge88: ; preds = %end_of_region.exit111.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_pattern.i

end_of_region.exit111.i.no_pattern.i_crit_edge:   ; preds = %end_of_region.exit111.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_pattern.i

end_of_region.exit111.i.if.then4_crit_edge:       ; preds = %end_of_region.exit111.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4

if.end27.i:                                       ; preds = %end_of_region.exit111.i
  %add.ptr28.i = getelementptr i8, ptr %str.addr.0.i21, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %n.i112.i) #14
  %32 = ptrtoint ptr %n.i112.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 -1, ptr %n.i112.i, align 8, !annotation !89
  %33 = ptrtoint ptr %add.ptr28.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %add.ptr28.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 78, i8 %34)
  %cmp.i113.i = icmp eq i8 %34, 78
  br i1 %cmp.i113.i, label %if.end27.i.bitmap_getnum.exit127.i_crit_edge, label %if.end.i116.i

if.end27.i.bitmap_getnum.exit127.i_crit_edge:     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_getnum.exit127.i

if.end.i116.i:                                    ; preds = %if.end27.i
  %call.i114.i = call i32 @_parse_integer(ptr noundef %add.ptr28.i, i32 noundef 10, ptr noundef nonnull %n.i112.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114.i)
  %tobool.not.i115.i = icmp eq i32 %call.i114.i, 0
  br i1 %tobool.not.i115.i, label %if.end.i116.i.bitmap_getnum.exit127.thread.i_crit_edge, label %if.end4.i118.i

if.end.i116.i.bitmap_getnum.exit127.thread.i_crit_edge: ; preds = %if.end.i116.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_getnum.exit127.thread.i

if.end4.i118.i:                                   ; preds = %if.end.i116.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i114.i)
  %tobool5.not.i117.i = icmp sgt i32 %call.i114.i, -1
  br i1 %tobool5.not.i117.i, label %lor.lhs.false.i119.i, label %if.end4.i118.i.bitmap_getnum.exit127.thread.i_crit_edge

if.end4.i118.i.bitmap_getnum.exit127.thread.i_crit_edge: ; preds = %if.end4.i118.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_getnum.exit127.thread.i

lor.lhs.false.i119.i:                             ; preds = %if.end4.i118.i
  %35 = ptrtoint ptr %n.i112.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %n.i112.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %36)
  %37 = icmp ult i64 %36, 4294967296
  br i1 %37, label %if.end12.i121.i, label %lor.lhs.false.i119.i.bitmap_getnum.exit127.thread.i_crit_edge

lor.lhs.false.i119.i.bitmap_getnum.exit127.thread.i_crit_edge: ; preds = %lor.lhs.false.i119.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_getnum.exit127.thread.i

if.end12.i121.i:                                  ; preds = %lor.lhs.false.i119.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv6.i120.i = trunc i64 %36 to i32
  br label %bitmap_getnum.exit127.i

bitmap_getnum.exit127.thread.i:                   ; preds = %lor.lhs.false.i119.i.bitmap_getnum.exit127.thread.i_crit_edge, %if.end4.i118.i.bitmap_getnum.exit127.thread.i_crit_edge, %if.end.i116.i.bitmap_getnum.exit127.thread.i_crit_edge
  %retval.0.i126.ph.i = phi ptr [ inttoptr (i32 -75 to ptr), %if.end4.i118.i.bitmap_getnum.exit127.thread.i_crit_edge ], [ inttoptr (i32 -75 to ptr), %lor.lhs.false.i119.i.bitmap_getnum.exit127.thread.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i116.i.bitmap_getnum.exit127.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %n.i112.i) #14
  br label %if.then4

bitmap_getnum.exit127.i:                          ; preds = %if.end12.i121.i, %if.end27.i.bitmap_getnum.exit127.i_crit_edge
  %conv6.sink.i122.i = phi i32 [ %conv6.i120.i, %if.end12.i121.i ], [ %sub.i19, %if.end27.i.bitmap_getnum.exit127.i_crit_edge ]
  %call.sink.i123.i = phi i32 [ %call.i114.i, %if.end12.i121.i ], [ 1, %if.end27.i.bitmap_getnum.exit127.i_crit_edge ]
  %add.ptr14.i124.i = getelementptr i8, ptr %add.ptr28.i, i32 %call.sink.i123.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %n.i112.i) #14
  %cmp.i128.i = icmp ugt ptr %add.ptr14.i124.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i128.i, label %bitmap_getnum.exit127.i.bitmap_parse_region.exit_crit_edge, label %if.end32.i

bitmap_getnum.exit127.i.bitmap_parse_region.exit_crit_edge: ; preds = %bitmap_getnum.exit127.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_parse_region.exit

if.end32.i:                                       ; preds = %bitmap_getnum.exit127.i
  %38 = ptrtoint ptr %add.ptr14.i124.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %add.ptr14.i124.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %39)
  %cmp34.not.i = icmp eq i8 %39, 47
  br i1 %cmp34.not.i, label %if.end38.i, label %if.end32.i.if.then4_crit_edge

if.end32.i.if.then4_crit_edge:                    ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4

if.end38.i:                                       ; preds = %if.end32.i
  %add.ptr39.i = getelementptr i8, ptr %add.ptr14.i124.i, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %n.i129.i) #14
  %40 = ptrtoint ptr %n.i129.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 -1, ptr %n.i129.i, align 8, !annotation !89
  %41 = ptrtoint ptr %add.ptr39.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %add.ptr39.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 78, i8 %42)
  %cmp.i130.i = icmp eq i8 %42, 78
  br i1 %cmp.i130.i, label %if.end38.i.cleanup.sink.split.i142.i_crit_edge, label %if.end.i133.i

if.end38.i.cleanup.sink.split.i142.i_crit_edge:   ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i142.i

if.end.i133.i:                                    ; preds = %if.end38.i
  %call.i131.i = call i32 @_parse_integer(ptr noundef %add.ptr39.i, i32 noundef 10, ptr noundef nonnull %n.i129.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131.i)
  %tobool.not.i132.i = icmp eq i32 %call.i131.i, 0
  br i1 %tobool.not.i132.i, label %if.end.i133.i.bitmap_getnum.exit144.i_crit_edge, label %if.end4.i135.i

if.end.i133.i.bitmap_getnum.exit144.i_crit_edge:  ; preds = %if.end.i133.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_getnum.exit144.i

if.end4.i135.i:                                   ; preds = %if.end.i133.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i131.i)
  %tobool5.not.i134.i = icmp sgt i32 %call.i131.i, -1
  br i1 %tobool5.not.i134.i, label %lor.lhs.false.i136.i, label %if.end4.i135.i.bitmap_getnum.exit144.i_crit_edge

if.end4.i135.i.bitmap_getnum.exit144.i_crit_edge: ; preds = %if.end4.i135.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_getnum.exit144.i

lor.lhs.false.i136.i:                             ; preds = %if.end4.i135.i
  %43 = ptrtoint ptr %n.i129.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %n.i129.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %44)
  %45 = icmp ult i64 %44, 4294967296
  br i1 %45, label %if.end12.i138.i, label %lor.lhs.false.i136.i.bitmap_getnum.exit144.i_crit_edge

lor.lhs.false.i136.i.bitmap_getnum.exit144.i_crit_edge: ; preds = %lor.lhs.false.i136.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_getnum.exit144.i

if.end12.i138.i:                                  ; preds = %lor.lhs.false.i136.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv6.i137.i = trunc i64 %44 to i32
  br label %cleanup.sink.split.i142.i

cleanup.sink.split.i142.i:                        ; preds = %if.end12.i138.i, %if.end38.i.cleanup.sink.split.i142.i_crit_edge
  %conv6.sink.i139.i = phi i32 [ %conv6.i137.i, %if.end12.i138.i ], [ %sub.i19, %if.end38.i.cleanup.sink.split.i142.i_crit_edge ]
  %call.sink.i140.i = phi i32 [ %call.i131.i, %if.end12.i138.i ], [ 1, %if.end38.i.cleanup.sink.split.i142.i_crit_edge ]
  %add.ptr14.i141.i = getelementptr i8, ptr %add.ptr39.i, i32 %call.sink.i140.i
  br label %bitmap_getnum.exit144.i

bitmap_getnum.exit144.i:                          ; preds = %cleanup.sink.split.i142.i, %lor.lhs.false.i136.i.bitmap_getnum.exit144.i_crit_edge, %if.end4.i135.i.bitmap_getnum.exit144.i_crit_edge, %if.end.i133.i.bitmap_getnum.exit144.i_crit_edge
  %r.sroa.13.1 = phi i32 [ %conv6.sink.i139.i, %cleanup.sink.split.i142.i ], [ %r.sroa.13.076, %if.end.i133.i.bitmap_getnum.exit144.i_crit_edge ], [ %r.sroa.13.076, %lor.lhs.false.i136.i.bitmap_getnum.exit144.i_crit_edge ], [ %r.sroa.13.076, %if.end4.i135.i.bitmap_getnum.exit144.i_crit_edge ]
  %retval.0.i143.i = phi ptr [ %add.ptr14.i141.i, %cleanup.sink.split.i142.i ], [ inttoptr (i32 -22 to ptr), %if.end.i133.i.bitmap_getnum.exit144.i_crit_edge ], [ inttoptr (i32 -75 to ptr), %lor.lhs.false.i136.i.bitmap_getnum.exit144.i_crit_edge ], [ inttoptr (i32 -75 to ptr), %if.end4.i135.i.bitmap_getnum.exit144.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %n.i129.i) #14
  br label %bitmap_parse_region.exit

no_pattern.i:                                     ; preds = %end_of_region.exit111.i.no_pattern.i_crit_edge, %end_of_region.exit111.i.no_pattern.i_crit_edge88, %check_pattern.i.no_pattern.i_crit_edge, %end_of_region.exit.i.no_pattern.i_crit_edge, %end_of_region.exit.i.no_pattern.i_crit_edge87, %if.end5.i.no_pattern.i_crit_edge
  %r.sroa.18.2 = phi i32 [ %r.sroa.18.1, %check_pattern.i.no_pattern.i_crit_edge ], [ %r.sroa.18.1, %end_of_region.exit111.i.no_pattern.i_crit_edge ], [ %r.sroa.18.1, %end_of_region.exit111.i.no_pattern.i_crit_edge88 ], [ %conv6.sink.i.i, %end_of_region.exit.i.no_pattern.i_crit_edge ], [ %conv6.sink.i.i, %end_of_region.exit.i.no_pattern.i_crit_edge87 ], [ %conv6.sink.i.i, %if.end5.i.no_pattern.i_crit_edge ]
  %r.sroa.0.2 = phi i32 [ %r.sroa.0.1, %check_pattern.i.no_pattern.i_crit_edge ], [ %r.sroa.0.1, %end_of_region.exit111.i.no_pattern.i_crit_edge ], [ %r.sroa.0.1, %end_of_region.exit111.i.no_pattern.i_crit_edge88 ], [ %conv6.sink.i.i, %end_of_region.exit.i.no_pattern.i_crit_edge ], [ %conv6.sink.i.i, %end_of_region.exit.i.no_pattern.i_crit_edge87 ], [ %conv6.sink.i.i, %if.end5.i.no_pattern.i_crit_edge ]
  %str.addr.1.i = phi ptr [ %str.addr.0.i21, %check_pattern.i.no_pattern.i_crit_edge ], [ %str.addr.0.i21, %end_of_region.exit111.i.no_pattern.i_crit_edge ], [ %str.addr.0.i21, %end_of_region.exit111.i.no_pattern.i_crit_edge88 ], [ %add.ptr14.i.i, %end_of_region.exit.i.no_pattern.i_crit_edge ], [ %add.ptr14.i.i, %end_of_region.exit.i.no_pattern.i_crit_edge87 ], [ %add.ptr14.i.i, %if.end5.i.no_pattern.i_crit_edge ]
  %add.i = add i32 %r.sroa.18.2, 1
  %46 = ptrtoint ptr %str.addr.1.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %str.addr.1.i, align 1
  %48 = zext i8 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %47, label %no_pattern.i.bitmap_parse_region.exit_crit_edge [
    i8 10, label %no_pattern.i.if.end6_crit_edge
    i8 0, label %no_pattern.i.if.end6_crit_edge89
  ]

no_pattern.i.if.end6_crit_edge89:                 ; preds = %no_pattern.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

no_pattern.i.if.end6_crit_edge:                   ; preds = %no_pattern.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

no_pattern.i.bitmap_parse_region.exit_crit_edge:  ; preds = %no_pattern.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_parse_region.exit

bitmap_parse_region.exit:                         ; preds = %no_pattern.i.bitmap_parse_region.exit_crit_edge, %bitmap_getnum.exit144.i, %bitmap_getnum.exit127.i.bitmap_parse_region.exit_crit_edge, %bitmap_getnum.exit100.i.bitmap_parse_region.exit_crit_edge, %bitmap_getnum.exit.i.bitmap_parse_region.exit_crit_edge
  %r.sroa.18.3 = phi i32 [ %r.sroa.18.2, %no_pattern.i.bitmap_parse_region.exit_crit_edge ], [ %r.sroa.18.1, %bitmap_getnum.exit127.i.bitmap_parse_region.exit_crit_edge ], [ %r.sroa.18.1, %bitmap_getnum.exit144.i ], [ %r.sroa.18.075, %bitmap_getnum.exit.i.bitmap_parse_region.exit_crit_edge ], [ %conv6.sink.i95.i, %bitmap_getnum.exit100.i.bitmap_parse_region.exit_crit_edge ]
  %r.sroa.13.2 = phi i32 [ %add.i, %no_pattern.i.bitmap_parse_region.exit_crit_edge ], [ %r.sroa.13.076, %bitmap_getnum.exit127.i.bitmap_parse_region.exit_crit_edge ], [ %r.sroa.13.1, %bitmap_getnum.exit144.i ], [ %r.sroa.13.076, %bitmap_getnum.exit.i.bitmap_parse_region.exit_crit_edge ], [ %r.sroa.13.076, %bitmap_getnum.exit100.i.bitmap_parse_region.exit_crit_edge ]
  %r.sroa.8.1 = phi i32 [ %add.i, %no_pattern.i.bitmap_parse_region.exit_crit_edge ], [ %conv6.sink.i122.i, %bitmap_getnum.exit127.i.bitmap_parse_region.exit_crit_edge ], [ %conv6.sink.i122.i, %bitmap_getnum.exit144.i ], [ %r.sroa.8.078, %bitmap_getnum.exit.i.bitmap_parse_region.exit_crit_edge ], [ %r.sroa.8.078, %bitmap_getnum.exit100.i.bitmap_parse_region.exit_crit_edge ]
  %r.sroa.0.3 = phi i32 [ %r.sroa.0.2, %no_pattern.i.bitmap_parse_region.exit_crit_edge ], [ %r.sroa.0.1, %bitmap_getnum.exit127.i.bitmap_parse_region.exit_crit_edge ], [ %r.sroa.0.1, %bitmap_getnum.exit144.i ], [ %conv6.sink.i.i, %bitmap_getnum.exit.i.bitmap_parse_region.exit_crit_edge ], [ %conv6.sink.i.i, %bitmap_getnum.exit100.i.bitmap_parse_region.exit_crit_edge ]
  %retval.0.i = phi ptr [ %str.addr.1.i, %no_pattern.i.bitmap_parse_region.exit_crit_edge ], [ %add.ptr14.i124.i, %bitmap_getnum.exit127.i.bitmap_parse_region.exit_crit_edge ], [ %retval.0.i143.i, %bitmap_getnum.exit144.i ], [ %add.ptr14.i.i, %bitmap_getnum.exit.i.bitmap_parse_region.exit_crit_edge ], [ %add.ptr14.i97.i, %bitmap_getnum.exit100.i.bitmap_parse_region.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %bitmap_parse_region.exit.if.then4_crit_edge, label %bitmap_parse_region.exit.if.end6_crit_edge

bitmap_parse_region.exit.if.end6_crit_edge:       ; preds = %bitmap_parse_region.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

bitmap_parse_region.exit.if.then4_crit_edge:      ; preds = %bitmap_parse_region.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4

if.then4:                                         ; preds = %bitmap_parse_region.exit.if.then4_crit_edge, %if.end32.i.if.then4_crit_edge, %bitmap_getnum.exit127.thread.i, %end_of_region.exit111.i.if.then4_crit_edge, %bitmap_getnum.exit100.thread.i, %end_of_region.exit.i.if.then4_crit_edge, %bitmap_getnum.exit.thread.i
  %retval.0.i55 = phi ptr [ %retval.0.i126.ph.i, %bitmap_getnum.exit127.thread.i ], [ %retval.0.i99.ph.i, %bitmap_getnum.exit100.thread.i ], [ %retval.0.i.ph.i, %bitmap_getnum.exit.thread.i ], [ inttoptr (i32 -22 to ptr), %if.end32.i.if.then4_crit_edge ], [ inttoptr (i32 -22 to ptr), %end_of_region.exit.i.if.then4_crit_edge ], [ inttoptr (i32 -22 to ptr), %end_of_region.exit111.i.if.then4_crit_edge ], [ %retval.0.i, %bitmap_parse_region.exit.if.then4_crit_edge ]
  %49 = ptrtoint ptr %retval.0.i55 to i32
  br label %cleanup

if.end6:                                          ; preds = %bitmap_parse_region.exit.if.end6_crit_edge, %no_pattern.i.if.end6_crit_edge, %no_pattern.i.if.end6_crit_edge89
  %retval.0.i67 = phi ptr [ %retval.0.i, %bitmap_parse_region.exit.if.end6_crit_edge ], [ null, %no_pattern.i.if.end6_crit_edge ], [ null, %no_pattern.i.if.end6_crit_edge89 ]
  %r.sroa.0.366 = phi i32 [ %r.sroa.0.3, %bitmap_parse_region.exit.if.end6_crit_edge ], [ %r.sroa.0.2, %no_pattern.i.if.end6_crit_edge ], [ %r.sroa.0.2, %no_pattern.i.if.end6_crit_edge89 ]
  %r.sroa.8.165 = phi i32 [ %r.sroa.8.1, %bitmap_parse_region.exit.if.end6_crit_edge ], [ %add.i, %no_pattern.i.if.end6_crit_edge ], [ %add.i, %no_pattern.i.if.end6_crit_edge89 ]
  %r.sroa.13.264 = phi i32 [ %r.sroa.13.2, %bitmap_parse_region.exit.if.end6_crit_edge ], [ %add.i, %no_pattern.i.if.end6_crit_edge ], [ %add.i, %no_pattern.i.if.end6_crit_edge89 ]
  %r.sroa.18.363 = phi i32 [ %r.sroa.18.3, %bitmap_parse_region.exit.if.end6_crit_edge ], [ %r.sroa.18.2, %no_pattern.i.if.end6_crit_edge ], [ %r.sroa.18.2, %no_pattern.i.if.end6_crit_edge89 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %r.sroa.0.366, i32 %r.sroa.18.363)
  %cmp.i26 = icmp ugt i32 %r.sroa.0.366, %r.sroa.18.363
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.sroa.13.264)
  %cmp1.i = icmp eq i32 %r.sroa.13.264, 0
  %or.cond = select i1 %cmp.i26, i1 true, i1 %cmp1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %r.sroa.8.165, i32 %r.sroa.13.264)
  %cmp4.i = icmp ugt i32 %r.sroa.8.165, %r.sroa.13.264
  %or.cond72 = select i1 %or.cond, i1 true, i1 %cmp4.i
  br i1 %or.cond72, label %if.end6.cleanup_crit_edge, label %if.end.i30

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i30:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_cmp4(i32 %r.sroa.18.363, i32 %nmaskbits)
  %cmp6.not.i = icmp ult i32 %r.sroa.18.363, %nmaskbits
  br i1 %cmp6.not.i, label %for.body.i.preheader, label %if.end.i30.cleanup_crit_edge

if.end.i30.cleanup_crit_edge:                     ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i.preheader:                             ; preds = %if.end.i30
  %sub.i35 = add nuw i32 %r.sroa.18.363, 1
  br label %for.body.i

for.body.i:                                       ; preds = %bitmap_set.exit.i.for.body.i_crit_edge, %for.body.i.preheader
  %start.016.i = phi i32 [ %add4.i, %bitmap_set.exit.i.for.body.i_crit_edge ], [ %r.sroa.0.366, %for.body.i.preheader ]
  %add.i36 = sub i32 %sub.i35, %start.016.i
  %50 = call i32 @llvm.umin.i32(i32 %add.i36, i32 %r.sroa.8.165) #14
  %rem.i.i.i = and i32 %start.016.i, 31
  %div18.i.i.i = lshr i32 %start.016.i, 5
  %add.ptr.i28.i.i = getelementptr i32, ptr %maskp, i32 %div18.i.i.i
  %add.i.i.i = add i32 %start.016.i, %50
  %sub.neg.i.i.i = or i32 %start.016.i, -32
  %shl.i29.i.i = shl nsw i32 -1, %rem.i.i.i
  %sub119.i.i.i = add i32 %50, %sub.neg.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub119.i.i.i)
  %cmp20.i.i.i = icmp sgt i32 %sub119.i.i.i, -1
  br i1 %cmp20.i.i.i, label %while.body.preheader.i.i.i, label %for.body.i.while.end.i.i.i_crit_edge

for.body.i.while.end.i.i.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i.i

while.body.preheader.i.i.i:                       ; preds = %for.body.i
  %51 = ptrtoint ptr %add.ptr.i28.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr.i28.i.i, align 4
  %or.peel.i.i.i = or i32 %52, %shl.i29.i.i
  store i32 %or.peel.i.i.i, ptr %add.ptr.i28.i.i, align 4
  %incdec.ptr.peel.i.i.i = getelementptr i32, ptr %add.ptr.i28.i.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %sub119.i.i.i)
  %cmp.peel.i.i.i = icmp ugt i32 %sub119.i.i.i, 31
  br i1 %cmp.peel.i.i.i, label %while.body.i.preheader.i.i, label %while.body.preheader.i.i.i.while.end.loopexit.i.i.i_crit_edge

while.body.preheader.i.i.i.while.end.loopexit.i.i.i_crit_edge: ; preds = %while.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.loopexit.i.i.i

while.body.i.preheader.i.i:                       ; preds = %while.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %53 = add nuw i32 %sub119.i.i.i, 31
  %umin.i.i = call i32 @llvm.umin.i32(i32 %sub119.i.i.i, i32 63) #14
  %54 = sub nuw i32 %53, %umin.i.i
  %55 = lshr i32 %54, 3
  %56 = and i32 %55, 536870908
  %57 = add nuw nsw i32 %56, 4
  %58 = call ptr @memset(ptr %incdec.ptr.peel.i.i.i, i32 255, i32 %57)
  %59 = shl nuw nsw i32 %div18.i.i.i, 2
  %60 = add nuw nsw i32 %59, 8
  %61 = add nuw nsw i32 %60, %56
  %uglygep.i.i = getelementptr i8, ptr %maskp, i32 %61
  br label %while.end.loopexit.i.i.i

while.end.loopexit.i.i.i:                         ; preds = %while.body.i.preheader.i.i, %while.body.preheader.i.i.i.while.end.loopexit.i.i.i_crit_edge
  %incdec.ptr.lcssa.i.i.i = phi ptr [ %incdec.ptr.peel.i.i.i, %while.body.preheader.i.i.i.while.end.loopexit.i.i.i_crit_edge ], [ %uglygep.i.i, %while.body.i.preheader.i.i ]
  %62 = and i32 %sub119.i.i.i, 31
  br label %while.end.i.i.i

while.end.i.i.i:                                  ; preds = %while.end.loopexit.i.i.i, %for.body.i.while.end.i.i.i_crit_edge
  %len.addr.0.lcssa.i.i.i = phi i32 [ %50, %for.body.i.while.end.i.i.i_crit_edge ], [ %62, %while.end.loopexit.i.i.i ]
  %p.0.lcssa.i.i.i = phi ptr [ %add.ptr.i28.i.i, %for.body.i.while.end.i.i.i_crit_edge ], [ %incdec.ptr.lcssa.i.i.i, %while.end.loopexit.i.i.i ]
  %mask_to_set.0.lcssa.i.i.i = phi i32 [ %shl.i29.i.i, %for.body.i.while.end.i.i.i_crit_edge ], [ -1, %while.end.loopexit.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.lcssa.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %len.addr.0.lcssa.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %while.end.i.i.i.bitmap_set.exit.i_crit_edge, label %if.then.i.i.i

while.end.i.i.i.bitmap_set.exit.i_crit_edge:      ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_set.exit.i

if.then.i.i.i:                                    ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub3.i.i.i = sub i32 0, %add.i.i.i
  %and4.i.i.i = and i32 %sub3.i.i.i, 31
  %shr.i.i.i = lshr i32 -1, %and4.i.i.i
  %and5.i.i.i = and i32 %mask_to_set.0.lcssa.i.i.i, %shr.i.i.i
  %63 = ptrtoint ptr %p.0.lcssa.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %p.0.lcssa.i.i.i, align 4
  %or6.i.i.i = or i32 %64, %and5.i.i.i
  store i32 %or6.i.i.i, ptr %p.0.lcssa.i.i.i, align 4
  br label %bitmap_set.exit.i

bitmap_set.exit.i:                                ; preds = %if.then.i.i.i, %while.end.i.i.i.bitmap_set.exit.i_crit_edge
  %add4.i = add i32 %start.016.i, %r.sroa.13.264
  %cmp.not.i = icmp ult i32 %r.sroa.18.363, %add4.i
  br i1 %cmp.not.i, label %while.cond.loopexit, label %bitmap_set.exit.i.for.body.i_crit_edge

bitmap_set.exit.i.for.body.i_crit_edge:           ; preds = %bitmap_set.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

cleanup:                                          ; preds = %if.end.i30.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then4, %switch.early.test.cleanup_crit_edge, %switch.early.test.cleanup_crit_edge86, %bitmap_find_region.exit.cleanup_crit_edge, %while.cond.loopexit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %49, %if.then4 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %while.cond.loopexit.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ -34, %if.end.i30.cleanup_crit_edge ], [ 0, %bitmap_find_region.exit.cleanup_crit_edge ], [ 0, %switch.early.test.cleanup_crit_edge ], [ 0, %switch.early.test.cleanup_crit_edge86 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bitmap_parselist_user(ptr noundef %ubuf, i32 noundef %ulen, ptr nocapture noundef %maskp, i32 noundef %nmaskbits) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call ptr @memdup_user_nul(ptr noundef %ubuf, i32 noundef %ulen) #14
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 @bitmap_parselist(ptr noundef %call, ptr noundef %maskp, i32 noundef %nmaskbits)
  tail call void @kfree(ptr noundef %call) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strnchrnul(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bitmap_ord_to_pos(ptr noundef %buf, i32 noundef %ord, i32 noundef %nbits) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @_find_first_bit_be(ptr noundef %buf, i32 noundef %nbits) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %nbits)
  %cmp8 = icmp uge i32 %call, %nbits
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ord)
  %tobool.not9 = icmp eq i32 %ord, 0
  %or.cond10 = or i1 %cmp8, %tobool.not9
  br i1 %or.cond10, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %pos.012 = phi i32 [ %call1, %for.body.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %ord.addr.011 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %ord, %entry.for.body_crit_edge ]
  %dec = add i32 %ord.addr.011, -1
  %add = add nuw i32 %pos.012, 1
  %call1 = tail call i32 @_find_next_bit_be(ptr noundef %buf, i32 noundef %nbits, i32 noundef %add) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %nbits)
  %cmp = icmp uge i32 %call1, %nbits
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %pos.0.lcssa = phi i32 [ %call, %entry.for.end_crit_edge ], [ %call1, %for.body.for.end_crit_edge ]
  ret i32 %pos.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bitmap_remap(ptr noundef %dst, ptr noundef %src, ptr noundef %old, ptr noundef %new, i32 noundef %nbits) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %cmp = icmp eq ptr %dst, %src
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub.i28 = add i32 %nbits, 31
  %0 = lshr i32 %sub.i28, 3
  %mul.i = and i32 %0, 536870908
  %1 = call ptr @memset(ptr %dst, i32 0, i32 %mul.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %nbits)
  %cmp109.not.i.i = icmp ult i32 %nbits, 32
  br i1 %cmp109.not.i.i, label %if.end.for.end.i.i_crit_edge, label %for.body.preheader.i.i

if.end.for.end.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.body.preheader.i.i:                           ; preds = %if.end
  %div13.i.i = lshr i32 %nbits, 5
  br label %cond.false.i.i.i

cond.false.i.i.i:                                 ; preds = %cond.false.i.i.i.cond.false.i.i.i_crit_edge, %for.body.preheader.i.i
  %w.0111.i.i = phi i32 [ %add.i11.i, %cond.false.i.i.i.cond.false.i.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %k.0110.i.i = phi i32 [ %inc.i.i, %cond.false.i.i.i.cond.false.i.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %arrayidx.i.i = getelementptr i32, ptr %new, i32 %k.0110.i.i
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i, align 4
  %call.i.i.i.i = tail call i32 @__sw_hweight32(i32 noundef %3) #14
  %add.i11.i = add i32 %call.i.i.i.i, %w.0111.i.i
  %inc.i.i = add nuw nsw i32 %k.0110.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %div13.i.i
  br i1 %exitcond.not.i.i, label %cond.false.i.i.i.for.end.i.i_crit_edge, label %cond.false.i.i.i.cond.false.i.i.i_crit_edge

cond.false.i.i.i.cond.false.i.i.i_crit_edge:      ; preds = %cond.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false.i.i.i

cond.false.i.i.i.for.end.i.i_crit_edge:           ; preds = %cond.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %cond.false.i.i.i.for.end.i.i_crit_edge, %if.end.for.end.i.i_crit_edge
  %k.0.lcssa.i.i = phi i32 [ 0, %if.end.for.end.i.i_crit_edge ], [ %div13.i.i, %cond.false.i.i.i.for.end.i.i_crit_edge ]
  %w.0.lcssa.i.i = phi i32 [ 0, %if.end.for.end.i.i_crit_edge ], [ %add.i11.i, %cond.false.i.i.i.for.end.i.i_crit_edge ]
  %rem.i.i = and i32 %nbits, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool.not.i.i, label %for.end.i.i.bitmap_weight.exit_crit_edge, label %cond.false.i106.i.i

for.end.i.i.bitmap_weight.exit_crit_edge:         ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_weight.exit

cond.false.i106.i.i:                              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx1.i.i = getelementptr i32, ptr %new, i32 %k.0.lcssa.i.i
  %4 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1.i.i, align 4
  %sub.i.i = sub i32 0, %nbits
  %and.i12.i = and i32 %sub.i.i, 31
  %shr.i13.i = lshr i32 -1, %and.i12.i
  %and2.i.i = and i32 %5, %shr.i13.i
  %call.i.i105.i.i = tail call i32 @__sw_hweight32(i32 noundef %and2.i.i) #14
  %add4.i.i = add i32 %call.i.i105.i.i, %w.0.lcssa.i.i
  br label %bitmap_weight.exit

bitmap_weight.exit:                               ; preds = %cond.false.i106.i.i, %for.end.i.i.bitmap_weight.exit_crit_edge
  %retval.0.i = phi i32 [ %add4.i.i, %cond.false.i106.i.i ], [ %w.0.lcssa.i.i, %for.end.i.i.bitmap_weight.exit_crit_edge ]
  %call1 = tail call i32 @_find_next_bit_be(ptr noundef %src, i32 noundef %nbits, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %nbits)
  %cmp2244 = icmp ult i32 %call1, %nbits
  br i1 %cmp2244, label %lor.lhs.false.i.lr.ph, label %bitmap_weight.exit.cleanup_crit_edge

bitmap_weight.exit.cleanup_crit_edge:             ; preds = %bitmap_weight.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i.lr.ph:                            ; preds = %bitmap_weight.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp5 = icmp eq i32 %retval.0.i, 0
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end8.lor.lhs.false.i_crit_edge, %lor.lhs.false.i.lr.ph
  %oldbit.0245 = phi i32 [ %call1, %lor.lhs.false.i.lr.ph ], [ %call9, %if.end8.lor.lhs.false.i_crit_edge ]
  %div3.i.i = lshr i32 %oldbit.0245, 5
  %arrayidx.i.i29 = getelementptr i32, ptr %old, i32 %div3.i.i
  %6 = ptrtoint ptr %arrayidx.i.i29 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i.i29, align 4
  %and.i.i30 = and i32 %oldbit.0245, 31
  %8 = shl nuw i32 1, %and.i.i30
  %9 = and i32 %7, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.if.end8_crit_edge, label %if.end.i32

lor.lhs.false.i.if.end8_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end.i32:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %oldbit.0245)
  %cmp109.not.i.i31 = icmp ult i32 %oldbit.0245, 32
  br i1 %cmp109.not.i.i31, label %if.end.i32.for.end.i.i137_crit_edge, label %if.end.i32.cond.false.i.i.i128_crit_edge

if.end.i32.cond.false.i.i.i128_crit_edge:         ; preds = %if.end.i32
  br label %cond.false.i.i.i128

if.end.i32.for.end.i.i137_crit_edge:              ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i137

cond.false.i.i.i128:                              ; preds = %cond.false.i.i.i128.cond.false.i.i.i128_crit_edge, %if.end.i32.cond.false.i.i.i128_crit_edge
  %w.0111.i.i33 = phi i32 [ %add.i.i130, %cond.false.i.i.i128.cond.false.i.i.i128_crit_edge ], [ 0, %if.end.i32.cond.false.i.i.i128_crit_edge ]
  %k.0110.i.i34 = phi i32 [ %inc.i.i131, %cond.false.i.i.i128.cond.false.i.i.i128_crit_edge ], [ 0, %if.end.i32.cond.false.i.i.i128_crit_edge ]
  %arrayidx.i5.i = getelementptr i32, ptr %old, i32 %k.0110.i.i34
  %10 = ptrtoint ptr %arrayidx.i5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i5.i, align 4
  %call.i.i.i.i127 = tail call i32 @__sw_hweight32(i32 noundef %11) #14
  %add.i.i130 = add i32 %call.i.i.i.i127, %w.0111.i.i33
  %inc.i.i131 = add nuw nsw i32 %k.0110.i.i34, 1
  %exitcond.not.i.i132 = icmp eq i32 %inc.i.i131, %div3.i.i
  br i1 %exitcond.not.i.i132, label %cond.false.i.i.i128.for.end.i.i137_crit_edge, label %cond.false.i.i.i128.cond.false.i.i.i128_crit_edge

cond.false.i.i.i128.cond.false.i.i.i128_crit_edge: ; preds = %cond.false.i.i.i128
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false.i.i.i128

cond.false.i.i.i128.for.end.i.i137_crit_edge:     ; preds = %cond.false.i.i.i128
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i137

for.end.i.i137:                                   ; preds = %cond.false.i.i.i128.for.end.i.i137_crit_edge, %if.end.i32.for.end.i.i137_crit_edge
  %k.0.lcssa.i.i134 = phi i32 [ 0, %if.end.i32.for.end.i.i137_crit_edge ], [ %div3.i.i, %cond.false.i.i.i128.for.end.i.i137_crit_edge ]
  %w.0.lcssa.i.i135 = phi i32 [ 0, %if.end.i32.for.end.i.i137_crit_edge ], [ %add.i.i130, %cond.false.i.i.i128.for.end.i.i137_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i30)
  %tobool.not.i.i136 = icmp eq i32 %and.i.i30, 0
  br i1 %tobool.not.i.i136, label %for.end.i.i137.bitmap_pos_to_ord.exit_crit_edge, label %cond.false.i106.i.i234

for.end.i.i137.bitmap_pos_to_ord.exit_crit_edge:  ; preds = %for.end.i.i137
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_pos_to_ord.exit

cond.false.i106.i.i234:                           ; preds = %for.end.i.i137
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx1.i.i138 = getelementptr i32, ptr %old, i32 %k.0.lcssa.i.i134
  %12 = ptrtoint ptr %arrayidx1.i.i138 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx1.i.i138, align 4
  %sub.i.i139 = sub i32 0, %oldbit.0245
  %and.i6.i = and i32 %sub.i.i139, 31
  %shr.i7.i = lshr i32 -1, %and.i6.i
  %and2.i.i140 = and i32 %13, %shr.i7.i
  %call.i.i105.i.i233 = tail call i32 @__sw_hweight32(i32 noundef %and2.i.i140) #14
  %add4.i.i236 = add i32 %call.i.i105.i.i233, %w.0.lcssa.i.i135
  br label %bitmap_pos_to_ord.exit

bitmap_pos_to_ord.exit:                           ; preds = %cond.false.i106.i.i234, %for.end.i.i137.bitmap_pos_to_ord.exit_crit_edge
  %retval.0.i238 = phi i32 [ %add4.i.i236, %cond.false.i106.i.i234 ], [ %w.0.lcssa.i.i135, %for.end.i.i137.bitmap_pos_to_ord.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i238)
  %cmp4 = icmp slt i32 %retval.0.i238, 0
  %or.cond = select i1 %cmp4, i1 true, i1 %cmp5
  br i1 %or.cond, label %bitmap_pos_to_ord.exit.if.end8_crit_edge, label %if.else

bitmap_pos_to_ord.exit.if.end8_crit_edge:         ; preds = %bitmap_pos_to_ord.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.else:                                          ; preds = %bitmap_pos_to_ord.exit
  %rem = urem i32 %retval.0.i238, %retval.0.i
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %new, i32 noundef %nbits) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %nbits)
  %cmp8.i = icmp uge i32 %call.i, %nbits
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not9.i = icmp eq i32 %rem, 0
  %or.cond10.i = or i1 %tobool.not9.i, %cmp8.i
  br i1 %or.cond10.i, label %if.else.if.end8_crit_edge, label %if.else.for.body.i_crit_edge

if.else.for.body.i_crit_edge:                     ; preds = %if.else
  br label %for.body.i

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.else.for.body.i_crit_edge
  %pos.012.i = phi i32 [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %if.else.for.body.i_crit_edge ]
  %ord.addr.011.i = phi i32 [ %dec.i, %for.body.i.for.body.i_crit_edge ], [ %rem, %if.else.for.body.i_crit_edge ]
  %dec.i = add i32 %ord.addr.011.i, -1
  %add.i = add nuw i32 %pos.012.i, 1
  %call1.i = tail call i32 @_find_next_bit_be(ptr noundef %new, i32 noundef %nbits, i32 noundef %add.i) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i, i32 %nbits)
  %cmp.i = icmp uge i32 %call1.i, %nbits
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i239 = icmp eq i32 %dec.i, 0
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %tobool.not.i239
  br i1 %or.cond.i, label %for.body.i.if.end8_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.if.end8_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end8:                                          ; preds = %for.body.i.if.end8_crit_edge, %if.else.if.end8_crit_edge, %bitmap_pos_to_ord.exit.if.end8_crit_edge, %lor.lhs.false.i.if.end8_crit_edge
  %pos.0.lcssa.i.sink = phi i32 [ %oldbit.0245, %lor.lhs.false.i.if.end8_crit_edge ], [ %oldbit.0245, %bitmap_pos_to_ord.exit.if.end8_crit_edge ], [ %call.i, %if.else.if.end8_crit_edge ], [ %call1.i, %for.body.i.if.end8_crit_edge ]
  tail call void @_set_bit(i32 noundef %pos.0.lcssa.i.sink, ptr noundef %dst) #14
  %add = add i32 %oldbit.0245, 1
  %call9 = tail call i32 @_find_next_bit_be(ptr noundef %src, i32 noundef %nbits, i32 noundef %add) #14
  %cmp2 = icmp ult i32 %call9, %nbits
  br i1 %cmp2, label %if.end8.lor.lhs.false.i_crit_edge, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.lor.lhs.false.i_crit_edge:                ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i

cleanup:                                          ; preds = %if.end8.cleanup_crit_edge, %bitmap_weight.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bitmap_bitremap(i32 noundef %oldbit, ptr noundef %old, ptr noundef %new, i32 noundef %bits) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bits)
  %cmp109.not.i.i = icmp ult i32 %bits, 32
  br i1 %cmp109.not.i.i, label %entry.for.end.i.i_crit_edge, label %for.body.preheader.i.i

entry.for.end.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.body.preheader.i.i:                           ; preds = %entry
  %div13.i.i = lshr i32 %bits, 5
  br label %cond.false.i.i.i

cond.false.i.i.i:                                 ; preds = %cond.false.i.i.i.cond.false.i.i.i_crit_edge, %for.body.preheader.i.i
  %w.0111.i.i = phi i32 [ %add.i11.i, %cond.false.i.i.i.cond.false.i.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %k.0110.i.i = phi i32 [ %inc.i.i, %cond.false.i.i.i.cond.false.i.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %arrayidx.i.i = getelementptr i32, ptr %new, i32 %k.0110.i.i
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i.i, align 4
  %call.i.i.i.i = tail call i32 @__sw_hweight32(i32 noundef %1) #14
  %add.i11.i = add i32 %call.i.i.i.i, %w.0111.i.i
  %inc.i.i = add nuw nsw i32 %k.0110.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %div13.i.i
  br i1 %exitcond.not.i.i, label %cond.false.i.i.i.for.end.i.i_crit_edge, label %cond.false.i.i.i.cond.false.i.i.i_crit_edge

cond.false.i.i.i.cond.false.i.i.i_crit_edge:      ; preds = %cond.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false.i.i.i

cond.false.i.i.i.for.end.i.i_crit_edge:           ; preds = %cond.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %cond.false.i.i.i.for.end.i.i_crit_edge, %entry.for.end.i.i_crit_edge
  %k.0.lcssa.i.i = phi i32 [ 0, %entry.for.end.i.i_crit_edge ], [ %div13.i.i, %cond.false.i.i.i.for.end.i.i_crit_edge ]
  %w.0.lcssa.i.i = phi i32 [ 0, %entry.for.end.i.i_crit_edge ], [ %add.i11.i, %cond.false.i.i.i.for.end.i.i_crit_edge ]
  %rem.i.i = and i32 %bits, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool.not.i.i, label %for.end.i.i.bitmap_weight.exit_crit_edge, label %cond.false.i106.i.i

for.end.i.i.bitmap_weight.exit_crit_edge:         ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_weight.exit

cond.false.i106.i.i:                              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx1.i.i = getelementptr i32, ptr %new, i32 %k.0.lcssa.i.i
  %2 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1.i.i, align 4
  %sub.i.i = sub i32 0, %bits
  %and.i12.i = and i32 %sub.i.i, 31
  %shr.i13.i = lshr i32 -1, %and.i12.i
  %and2.i.i = and i32 %3, %shr.i13.i
  %call.i.i105.i.i = tail call i32 @__sw_hweight32(i32 noundef %and2.i.i) #14
  %add4.i.i = add i32 %call.i.i105.i.i, %w.0.lcssa.i.i
  br label %bitmap_weight.exit

bitmap_weight.exit:                               ; preds = %cond.false.i106.i.i, %for.end.i.i.bitmap_weight.exit_crit_edge
  %retval.0.i = phi i32 [ %add4.i.i, %cond.false.i106.i.i ], [ %w.0.lcssa.i.i, %for.end.i.i.bitmap_weight.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %oldbit, i32 %bits)
  %cmp.not.i = icmp ult i32 %oldbit, %bits
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %bitmap_weight.exit.cleanup_crit_edge

bitmap_weight.exit.cleanup_crit_edge:             ; preds = %bitmap_weight.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %bitmap_weight.exit
  %div3.i.i = lshr i32 %oldbit, 5
  %arrayidx.i.i11 = getelementptr i32, ptr %old, i32 %div3.i.i
  %4 = ptrtoint ptr %arrayidx.i.i11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i.i11, align 4
  %and.i.i12 = and i32 %oldbit, 31
  %6 = shl nuw i32 1, %and.i.i12
  %7 = and i32 %5, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i14

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i14:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %oldbit)
  %cmp109.not.i.i13 = icmp ult i32 %oldbit, 32
  br i1 %cmp109.not.i.i13, label %if.end.i14.for.end.i.i119_crit_edge, label %if.end.i14.cond.false.i.i.i110_crit_edge

if.end.i14.cond.false.i.i.i110_crit_edge:         ; preds = %if.end.i14
  br label %cond.false.i.i.i110

if.end.i14.for.end.i.i119_crit_edge:              ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i119

cond.false.i.i.i110:                              ; preds = %cond.false.i.i.i110.cond.false.i.i.i110_crit_edge, %if.end.i14.cond.false.i.i.i110_crit_edge
  %w.0111.i.i15 = phi i32 [ %add.i.i112, %cond.false.i.i.i110.cond.false.i.i.i110_crit_edge ], [ 0, %if.end.i14.cond.false.i.i.i110_crit_edge ]
  %k.0110.i.i16 = phi i32 [ %inc.i.i113, %cond.false.i.i.i110.cond.false.i.i.i110_crit_edge ], [ 0, %if.end.i14.cond.false.i.i.i110_crit_edge ]
  %arrayidx.i5.i = getelementptr i32, ptr %old, i32 %k.0110.i.i16
  %8 = ptrtoint ptr %arrayidx.i5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i5.i, align 4
  %call.i.i.i.i109 = tail call i32 @__sw_hweight32(i32 noundef %9) #14
  %add.i.i112 = add i32 %call.i.i.i.i109, %w.0111.i.i15
  %inc.i.i113 = add nuw nsw i32 %k.0110.i.i16, 1
  %exitcond.not.i.i114 = icmp eq i32 %inc.i.i113, %div3.i.i
  br i1 %exitcond.not.i.i114, label %cond.false.i.i.i110.for.end.i.i119_crit_edge, label %cond.false.i.i.i110.cond.false.i.i.i110_crit_edge

cond.false.i.i.i110.cond.false.i.i.i110_crit_edge: ; preds = %cond.false.i.i.i110
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false.i.i.i110

cond.false.i.i.i110.for.end.i.i119_crit_edge:     ; preds = %cond.false.i.i.i110
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i119

for.end.i.i119:                                   ; preds = %cond.false.i.i.i110.for.end.i.i119_crit_edge, %if.end.i14.for.end.i.i119_crit_edge
  %k.0.lcssa.i.i116 = phi i32 [ 0, %if.end.i14.for.end.i.i119_crit_edge ], [ %div3.i.i, %cond.false.i.i.i110.for.end.i.i119_crit_edge ]
  %w.0.lcssa.i.i117 = phi i32 [ 0, %if.end.i14.for.end.i.i119_crit_edge ], [ %add.i.i112, %cond.false.i.i.i110.for.end.i.i119_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i12)
  %tobool.not.i.i118 = icmp eq i32 %and.i.i12, 0
  br i1 %tobool.not.i.i118, label %for.end.i.i119.bitmap_pos_to_ord.exit_crit_edge, label %cond.false.i106.i.i216

for.end.i.i119.bitmap_pos_to_ord.exit_crit_edge:  ; preds = %for.end.i.i119
  call void @__sanitizer_cov_trace_pc() #13
  br label %bitmap_pos_to_ord.exit

cond.false.i106.i.i216:                           ; preds = %for.end.i.i119
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx1.i.i120 = getelementptr i32, ptr %old, i32 %k.0.lcssa.i.i116
  %10 = ptrtoint ptr %arrayidx1.i.i120 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx1.i.i120, align 4
  %sub.i.i121 = sub i32 0, %oldbit
  %and.i6.i = and i32 %sub.i.i121, 31
  %shr.i7.i = lshr i32 -1, %and.i6.i
  %and2.i.i122 = and i32 %11, %shr.i7.i
  %call.i.i105.i.i215 = tail call i32 @__sw_hweight32(i32 noundef %and2.i.i122) #14
  %add4.i.i218 = add i32 %call.i.i105.i.i215, %w.0.lcssa.i.i117
  br label %bitmap_pos_to_ord.exit

bitmap_pos_to_ord.exit:                           ; preds = %cond.false.i106.i.i216, %for.end.i.i119.bitmap_pos_to_ord.exit_crit_edge
  %retval.0.i220 = phi i32 [ %add4.i.i218, %cond.false.i106.i.i216 ], [ %w.0.lcssa.i.i117, %for.end.i.i119.bitmap_pos_to_ord.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i220)
  %cmp = icmp slt i32 %retval.0.i220, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp2 = icmp eq i32 %retval.0.i, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp2
  br i1 %or.cond, label %bitmap_pos_to_ord.exit.cleanup_crit_edge, label %if.else

bitmap_pos_to_ord.exit.cleanup_crit_edge:         ; preds = %bitmap_pos_to_ord.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %bitmap_pos_to_ord.exit
  %rem = srem i32 %retval.0.i220, %retval.0.i
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %new, i32 noundef %bits) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %bits)
  %cmp8.i = icmp uge i32 %call.i, %bits
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not9.i = icmp eq i32 %rem, 0
  %or.cond10.i = or i1 %tobool.not9.i, %cmp8.i
  br i1 %or.cond10.i, label %if.else.cleanup_crit_edge, label %if.else.for.body.i_crit_edge

if.else.for.body.i_crit_edge:                     ; preds = %if.else
  br label %for.body.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.else.for.body.i_crit_edge
  %pos.012.i = phi i32 [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %if.else.for.body.i_crit_edge ]
  %ord.addr.011.i = phi i32 [ %dec.i, %for.body.i.for.body.i_crit_edge ], [ %rem, %if.else.for.body.i_crit_edge ]
  %dec.i = add i32 %ord.addr.011.i, -1
  %add.i = add nuw i32 %pos.012.i, 1
  %call1.i = tail call i32 @_find_next_bit_be(ptr noundef %new, i32 noundef %bits, i32 noundef %add.i) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i, i32 %bits)
  %cmp.i = icmp uge i32 %call1.i, %bits
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i221 = icmp eq i32 %dec.i, 0
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %tobool.not.i221
  br i1 %or.cond.i, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %if.else.cleanup_crit_edge, %bitmap_pos_to_ord.exit.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %bitmap_weight.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %oldbit, %bitmap_pos_to_ord.exit.cleanup_crit_edge ], [ %call.i, %if.else.cleanup_crit_edge ], [ %oldbit, %lor.lhs.false.i.cleanup_crit_edge ], [ %oldbit, %bitmap_weight.exit.cleanup_crit_edge ], [ %call1.i, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bitmap_find_free_region(ptr nocapture noundef %bitmap, i32 noundef %bits, i32 noundef %order) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %shl = shl nuw i32 1, %order
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %bits)
  %cmp.not26 = icmp ugt i32 %shl, %bits
  br i1 %cmp.not26, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %sub1.i = add nuw i32 %shl, 31
  %div254.i = lshr i32 %sub1.i, 5
  %phi.bo.i = add i32 %shl, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %shl)
  %cmp.inv.i = icmp sgt i32 %shl, 31
  %phi.bo.op.i = shl i32 2, %phi.bo.i
  %phi.bo.op.op.i = add i32 %phi.bo.op.i, -1
  %add6.i = select i1 %cmp.inv.i, i32 -1, i32 %phi.bo.op.op.i
  %umax68.i = tail call i32 @llvm.umax.i32(i32 %div254.i, i32 1) #14
  br label %for.body

for.cond.loopexit:                                ; preds = %for.body.i
  %add = add i32 %add28, %shl
  %cmp.not = icmp ugt i32 %add, %bits
  br i1 %cmp.not, label %for.cond.loopexit.cleanup_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.loopexit.cleanup_crit_edge:              ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %for.body.lr.ph
  %add28 = phi i32 [ %shl, %for.body.lr.ph ], [ %add, %for.cond.loopexit.for.body_crit_edge ]
  %pos.027 = phi i32 [ 0, %for.body.lr.ph ], [ %add28, %for.cond.loopexit.for.body_crit_edge ]
  %div53.i = lshr i32 %pos.027, 5
  %sub.i = and i32 %pos.027, 31
  %shl7.i = shl i32 %add6.i, %sub.i
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.062.i, 1
  %exitcond69.not.i = icmp eq i32 %inc.i, %umax68.i
  br i1 %exitcond69.not.i, label %for.cond.i.for.body13.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.cond.i.for.body13.i_crit_edge:                ; preds = %for.cond.i
  br label %for.body13.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body
  %i.062.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.body ]
  %add9.i = add nuw nsw i32 %i.062.i, %div53.i
  %arrayidx.i = getelementptr i32, ptr %bitmap, i32 %add9.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %1, %shl7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %for.cond.loopexit

for.body13.i:                                     ; preds = %for.body13.i.for.body13.i_crit_edge, %for.cond.i.for.body13.i_crit_edge
  %i.160.i = phi i32 [ %inc17.i, %for.body13.i.for.body13.i_crit_edge ], [ 0, %for.cond.i.for.body13.i_crit_edge ]
  %add14.i = add nuw nsw i32 %i.160.i, %div53.i
  %arrayidx15.i = getelementptr i32, ptr %bitmap, i32 %add14.i
  %2 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx15.i, align 4
  %or.i = or i32 %3, %shl7.i
  store i32 %or.i, ptr %arrayidx15.i, align 4
  %inc17.i = add nuw nsw i32 %i.160.i, 1
  %exitcond67.not.i = icmp eq i32 %inc17.i, %umax68.i
  br i1 %exitcond67.not.i, label %for.body13.i.cleanup_crit_edge, label %for.body13.i.for.body13.i_crit_edge

for.body13.i.for.body13.i_crit_edge:              ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body13.i

for.body13.i.cleanup_crit_edge:                   ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.body13.i.cleanup_crit_edge, %for.cond.loopexit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %pos.027, %for.body13.i.cleanup_crit_edge ], [ -12, %for.cond.loopexit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bitmap_release_region(ptr nocapture noundef %bitmap, i32 noundef %pos, i32 noundef %order) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %shl.i = shl nuw i32 1, %order
  %div53.i = lshr i32 %pos, 5
  %sub.i = and i32 %pos, 31
  %sub1.i = add nuw i32 %shl.i, 31
  %div254.i = lshr i32 %sub1.i, 5
  %phi.bo.i = add i32 %shl.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %shl.i)
  %cmp.inv.i = icmp sgt i32 %shl.i, 31
  %phi.bo.op.i = shl i32 2, %phi.bo.i
  %phi.bo.op.op.i = add i32 %phi.bo.op.i, -1
  %add6.i = select i1 %cmp.inv.i, i32 -1, i32 %phi.bo.op.op.i
  %shl7.i = shl i32 %add6.i, %sub.i
  %neg.i = xor i32 %shl7.i, -1
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div254.i, i32 1) #14
  br label %for.body22.i

for.body22.i:                                     ; preds = %for.body22.i.for.body22.i_crit_edge, %entry
  %i.258.i = phi i32 [ 0, %entry ], [ %inc27.i, %for.body22.i.for.body22.i_crit_edge ]
  %add23.i = add nuw nsw i32 %i.258.i, %div53.i
  %arrayidx24.i = getelementptr i32, ptr %bitmap, i32 %add23.i
  %0 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx24.i, align 4
  %and25.i = and i32 %1, %neg.i
  store i32 %and25.i, ptr %arrayidx24.i, align 4
  %inc27.i = add nuw nsw i32 %i.258.i, 1
  %exitcond.not.i = icmp eq i32 %inc27.i, %umax.i
  br i1 %exitcond.not.i, label %__reg_op.exit, label %for.body22.i.for.body22.i_crit_edge

for.body22.i.for.body22.i_crit_edge:              ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body22.i

__reg_op.exit:                                    ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bitmap_allocate_region(ptr nocapture noundef %bitmap, i32 noundef %pos, i32 noundef %order) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %shl.i = shl nuw i32 1, %order
  %div53.i = lshr i32 %pos, 5
  %sub.i = and i32 %pos, 31
  %sub1.i = add nuw i32 %shl.i, 31
  %div254.i = lshr i32 %sub1.i, 5
  %phi.bo.i = add i32 %shl.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %shl.i)
  %cmp.inv.i = icmp sgt i32 %shl.i, 31
  %phi.bo.op.i = shl i32 2, %phi.bo.i
  %phi.bo.op.op.i = add i32 %phi.bo.op.i, -1
  %add6.i = select i1 %cmp.inv.i, i32 -1, i32 %phi.bo.op.op.i
  %shl7.i = shl i32 %add6.i, %sub.i
  %umax68.i = tail call i32 @llvm.umax.i32(i32 %div254.i, i32 1) #14
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.062.i, 1
  %exitcond69.not.i = icmp eq i32 %inc.i, %umax68.i
  br i1 %exitcond69.not.i, label %for.cond.i.for.body13.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.cond.i.for.body13.i_crit_edge:                ; preds = %for.cond.i
  br label %for.body13.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry
  %i.062.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %entry ]
  %add9.i = add nuw nsw i32 %i.062.i, %div53.i
  %arrayidx.i = getelementptr i32, ptr %bitmap, i32 %add9.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %1, %shl7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %for.body.i.return_crit_edge

for.body.i.return_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

for.body13.i:                                     ; preds = %for.body13.i.for.body13.i_crit_edge, %for.cond.i.for.body13.i_crit_edge
  %i.160.i = phi i32 [ %inc17.i, %for.body13.i.for.body13.i_crit_edge ], [ 0, %for.cond.i.for.body13.i_crit_edge ]
  %add14.i = add nuw nsw i32 %i.160.i, %div53.i
  %arrayidx15.i = getelementptr i32, ptr %bitmap, i32 %add14.i
  %2 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx15.i, align 4
  %or.i = or i32 %3, %shl7.i
  store i32 %or.i, ptr %arrayidx15.i, align 4
  %inc17.i = add nuw nsw i32 %i.160.i, 1
  %exitcond67.not.i = icmp eq i32 %inc17.i, %umax68.i
  br i1 %exitcond67.not.i, label %for.body13.i.return_crit_edge, label %for.body13.i.for.body13.i_crit_edge

for.body13.i.for.body13.i_crit_edge:              ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body13.i

for.body13.i.return_crit_edge:                    ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

return:                                           ; preds = %for.body13.i.return_crit_edge, %for.body.i.return_crit_edge
  %retval.0 = phi i32 [ 0, %for.body13.i.return_crit_edge ], [ -16, %for.body.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bitmap_copy_le(ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src, i32 noundef %nbits) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %nbits)
  %cmp6.not = icmp ult i32 %nbits, 32
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %div5 = lshr i32 %nbits, 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.07 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i32, ptr %src, i32 %i.07
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %arrayidx1 = getelementptr i32, ptr %dst, i32 %i.07
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %arrayidx1, align 4
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, %div5
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bitmap_alloc(i32 noundef %nbits, i32 noundef %flags) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %sub = add i32 %nbits, 31
  %0 = lshr i32 %sub, 3
  %1 = and i32 %0, 536870908
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %1, i32 noundef %flags) #16
  ret ptr %call8.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bitmap_zalloc(i32 noundef %nbits, i32 noundef %flags) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = add i32 %nbits, 31
  %0 = lshr i32 %sub.i, 3
  %1 = and i32 %0, 536870908
  %or = or i32 %flags, 256
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %1, i32 noundef %or) #16
  ret ptr %call8.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bitmap_alloc_node(i32 noundef %nbits, i32 noundef %flags, i32 %node) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %sub = add i32 %nbits, 31
  %0 = lshr i32 %sub, 3
  %1 = and i32 %0, 536870908
  %call.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %1, i32 noundef %flags) #16
  ret ptr %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bitmap_zalloc_node(i32 noundef %nbits, i32 noundef %flags, i32 %node) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = add i32 %nbits, 31
  %0 = lshr i32 %sub.i, 3
  %1 = and i32 %0, 536870908
  %or = or i32 %flags, 256
  %call.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %1, i32 noundef %or) #16
  ret ptr %call.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bitmap_free(ptr noundef %bitmap) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef %bitmap) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @devm_bitmap_alloc(ptr noundef %dev, i32 noundef %nbits, i32 noundef %flags) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = add i32 %nbits, 31
  %0 = lshr i32 %sub.i, 3
  %1 = and i32 %0, 536870908
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %1, i32 noundef %flags) #16
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @devm_bitmap_free, ptr noundef nonnull %call8.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call8.i.i, %if.end.cleanup_crit_edge ], [ null, %if.then.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_bitmap_free(ptr noundef %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef %data) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @devm_bitmap_zalloc(ptr noundef %dev, i32 noundef %nbits, i32 noundef %flags) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %nbits, 31
  %0 = lshr i32 %sub.i.i, 3
  %1 = and i32 %0, 536870908
  %or = or i32 %flags, 256
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %1, i32 noundef %or) #16
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %entry.devm_bitmap_alloc.exit_crit_edge, label %if.end.i

entry.devm_bitmap_alloc.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %devm_bitmap_alloc.exit

if.end.i:                                         ; preds = %entry
  %call.i.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @devm_bitmap_free, ptr noundef nonnull %call8.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.devm_bitmap_alloc.exit_crit_edge, label %if.then.i.i

if.end.i.devm_bitmap_alloc.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %devm_bitmap_alloc.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #14
  br label %devm_bitmap_alloc.exit

devm_bitmap_alloc.exit:                           ; preds = %if.then.i.i, %if.end.i.devm_bitmap_alloc.exit_crit_edge, %entry.devm_bitmap_alloc.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.devm_bitmap_alloc.exit_crit_edge ], [ %call8.i.i.i, %if.end.i.devm_bitmap_alloc.exit_crit_edge ], [ null, %if.then.i.i ]
  ret ptr %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memory_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_parse_integer(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_to_bin(i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind uwtable(sync) }
attributes #13 = { nomerge }
attributes #14 = { nounwind }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @__ksymtab___bitmap_equal, !1, !"__ksymtab___bitmap_equal", i1 false, i1 false}
!1 = !{!"../lib/bitmap.c", i32 62, i32 1}
!2 = !{ptr @__ksymtab___bitmap_complement, !3, !"__ksymtab___bitmap_complement", i1 false, i1 false}
!3 = !{!"../lib/bitmap.c", i32 90, i32 1}
!4 = !{ptr @__ksymtab___bitmap_shift_right, !5, !"__ksymtab___bitmap_shift_right", i1 false, i1 false}
!5 = !{!"../lib/bitmap.c", i32 133, i32 1}
!6 = !{ptr @__ksymtab___bitmap_shift_left, !7, !"__ksymtab___bitmap_shift_left", i1 false, i1 false}
!7 = !{!"../lib/bitmap.c", i32 171, i32 1}
!8 = !{ptr @__ksymtab_bitmap_cut, !9, !"__ksymtab_bitmap_cut", i1 false, i1 false}
!9 = !{!"../lib/bitmap.c", i32 238, i32 1}
!10 = !{ptr @__ksymtab___bitmap_and, !11, !"__ksymtab___bitmap_and", i1 false, i1 false}
!11 = !{!"../lib/bitmap.c", i32 254, i32 1}
!12 = !{ptr @__ksymtab___bitmap_or, !13, !"__ksymtab___bitmap_or", i1 false, i1 false}
!13 = !{!"../lib/bitmap.c", i32 265, i32 1}
!14 = !{ptr @__ksymtab___bitmap_xor, !15, !"__ksymtab___bitmap_xor", i1 false, i1 false}
!15 = !{!"../lib/bitmap.c", i32 276, i32 1}
!16 = !{ptr @__ksymtab___bitmap_andnot, !17, !"__ksymtab___bitmap_andnot", i1 false, i1 false}
!17 = !{!"../lib/bitmap.c", i32 292, i32 1}
!18 = !{ptr @__ksymtab___bitmap_replace, !19, !"__ksymtab___bitmap_replace", i1 false, i1 false}
!19 = !{!"../lib/bitmap.c", i32 304, i32 1}
!20 = !{ptr @__ksymtab___bitmap_intersects, !21, !"__ksymtab___bitmap_intersects", i1 false, i1 false}
!21 = !{!"../lib/bitmap.c", i32 319, i32 1}
!22 = !{ptr @__ksymtab___bitmap_subset, !23, !"__ksymtab___bitmap_subset", i1 false, i1 false}
!23 = !{!"../lib/bitmap.c", i32 334, i32 1}
!24 = !{ptr @__ksymtab___bitmap_weight, !25, !"__ksymtab___bitmap_weight", i1 false, i1 false}
!25 = !{!"../lib/bitmap.c", i32 349, i32 1}
!26 = !{ptr @__ksymtab___bitmap_set, !27, !"__ksymtab___bitmap_set", i1 false, i1 false}
!27 = !{!"../lib/bitmap.c", i32 370, i32 1}
!28 = !{ptr @__ksymtab___bitmap_clear, !29, !"__ksymtab___bitmap_clear", i1 false, i1 false}
!29 = !{!"../lib/bitmap.c", i32 391, i32 1}
!30 = !{ptr @__ksymtab_bitmap_find_next_zero_area_off, !31, !"__ksymtab_bitmap_find_next_zero_area_off", i1 false, i1 false}
!31 = !{!"../lib/bitmap.c", i32 430, i32 1}
!32 = !{ptr @__ksymtab_bitmap_parse_user, !33, !"__ksymtab_bitmap_parse_user", i1 false, i1 false}
!33 = !{!"../lib/bitmap.c", i32 462, i32 1}
!34 = !{ptr @.str, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../lib/bitmap.c", i32 485, i32 36}
!36 = !{ptr @.str.1, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../lib/bitmap.c", i32 486, i32 29}
!38 = !{ptr @__ksymtab_bitmap_print_to_pagebuf, !39, !"__ksymtab_bitmap_print_to_pagebuf", i1 false, i1 false}
!39 = !{!"../lib/bitmap.c", i32 488, i32 1}
!40 = !{ptr @__ksymtab_bitmap_print_bitmask_to_buf, !41, !"__ksymtab_bitmap_print_bitmask_to_buf", i1 false, i1 false}
!41 = !{!"../lib/bitmap.c", i32 596, i32 1}
!42 = !{ptr @__ksymtab_bitmap_print_list_to_buf, !43, !"__ksymtab_bitmap_print_list_to_buf", i1 false, i1 false}
!43 = !{!"../lib/bitmap.c", i32 609, i32 1}
!44 = !{ptr @__ksymtab_bitmap_parselist, !45, !"__ksymtab_bitmap_parselist", i1 false, i1 false}
!45 = !{!"../lib/bitmap.c", i32 806, i32 1}
!46 = !{ptr @__ksymtab_bitmap_parselist_user, !47, !"__ksymtab_bitmap_parselist_user", i1 false, i1 false}
!47 = !{!"../lib/bitmap.c", i32 836, i32 1}
!48 = !{ptr @__ksymtab_bitmap_parse, !49, !"__ksymtab_bitmap_parse", i1 false, i1 false}
!49 = !{!"../lib/bitmap.c", i32 915, i32 1}
!50 = !{ptr @__ksymtab_bitmap_remap, !51, !"__ksymtab_bitmap_remap", i1 false, i1 false}
!51 = !{!"../lib/bitmap.c", i32 1025, i32 1}
!52 = !{ptr @__ksymtab_bitmap_bitremap, !53, !"__ksymtab_bitmap_bitremap", i1 false, i1 false}
!53 = !{!"../lib/bitmap.c", i32 1063, i32 1}
!54 = !{ptr @__ksymtab_bitmap_find_free_region, !55, !"__ksymtab_bitmap_find_free_region", i1 false, i1 false}
!55 = !{!"../lib/bitmap.c", i32 1327, i32 1}
!56 = !{ptr @__ksymtab_bitmap_release_region, !57, !"__ksymtab_bitmap_release_region", i1 false, i1 false}
!57 = !{!"../lib/bitmap.c", i32 1344, i32 1}
!58 = !{ptr @__ksymtab_bitmap_allocate_region, !59, !"__ksymtab_bitmap_allocate_region", i1 false, i1 false}
!59 = !{!"../lib/bitmap.c", i32 1363, i32 1}
!60 = !{ptr @__ksymtab_bitmap_copy_le, !61, !"__ksymtab_bitmap_copy_le", i1 false, i1 false}
!61 = !{!"../lib/bitmap.c", i32 1385, i32 1}
!62 = !{ptr @__ksymtab_bitmap_alloc, !63, !"__ksymtab_bitmap_alloc", i1 false, i1 false}
!63 = !{!"../lib/bitmap.c", i32 1393, i32 1}
!64 = !{ptr @__ksymtab_bitmap_zalloc, !65, !"__ksymtab_bitmap_zalloc", i1 false, i1 false}
!65 = !{!"../lib/bitmap.c", i32 1399, i32 1}
!66 = !{ptr @__ksymtab_bitmap_alloc_node, !67, !"__ksymtab_bitmap_alloc_node", i1 false, i1 false}
!67 = !{!"../lib/bitmap.c", i32 1406, i32 1}
!68 = !{ptr @__ksymtab_bitmap_zalloc_node, !69, !"__ksymtab_bitmap_zalloc_node", i1 false, i1 false}
!69 = !{!"../lib/bitmap.c", i32 1412, i32 1}
!70 = !{ptr @__ksymtab_bitmap_free, !71, !"__ksymtab_bitmap_free", i1 false, i1 false}
!71 = !{!"../lib/bitmap.c", i32 1418, i32 1}
!72 = !{ptr @__ksymtab_devm_bitmap_alloc, !73, !"__ksymtab_devm_bitmap_alloc", i1 false, i1 false}
!73 = !{!"../lib/bitmap.c", i32 1443, i32 1}
!74 = !{ptr @__ksymtab_devm_bitmap_zalloc, !75, !"__ksymtab_devm_bitmap_zalloc", i1 false, i1 false}
!75 = !{!"../lib/bitmap.c", i32 1450, i32 1}
!76 = !{ptr @.str.2, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../lib/bitmap.c", i32 705, i32 24}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = distinct !{!86, !87}
!87 = !{!"llvm.loop.peeled.count", i32 1}
!88 = distinct !{!88, !87}
!89 = !{!"auto-init"}
