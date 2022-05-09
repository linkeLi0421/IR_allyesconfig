; ModuleID = '/llk/IR_all_yes/drivers/md/bcache/trace.c_pt.bc'
source_filename = "../drivers/md/bcache/trace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__tracepoint_bcache_request_start\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_bcache_request_start\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_bcache_request_start\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_bcache_request_start:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_bcache_request_start\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_bcache_request_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__traceiter_bcache_request_start\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_bcache_request_start\09\09\09\09"
module asm "\09.long\09__crc___traceiter_bcache_request_start\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_bcache_request_start:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_bcache_request_start\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_bcache_request_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__SCK__tp_func_bcache_request_start\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_bcache_request_start\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_bcache_request_start\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_bcache_request_start:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_bcache_request_start\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_bcache_request_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__tracepoint_bcache_request_end\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_bcache_request_end\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_bcache_request_end\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_bcache_request_end:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_bcache_request_end\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_bcache_request_end:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__traceiter_bcache_request_end\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_bcache_request_end\09\09\09\09"
module asm "\09.long\09__crc___traceiter_bcache_request_end\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_bcache_request_end:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_bcache_request_end\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_bcache_request_end:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__SCK__tp_func_bcache_request_end\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_bcache_request_end\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_bcache_request_end\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_bcache_request_end:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_bcache_request_end\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_bcache_request_end:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__tracepoint_bcache_bypass_sequential\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_bcache_bypass_sequential\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_bcache_bypass_sequential\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_bcache_bypass_sequential:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_bcache_bypass_sequential\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_bcache_bypass_sequential:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__traceiter_bcache_bypass_sequential\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_bcache_bypass_sequential\09\09\09\09"
module asm "\09.long\09__crc___traceiter_bcache_bypass_sequential\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_bcache_bypass_sequential:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_bcache_bypass_sequential\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_bcache_bypass_sequential:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__SCK__tp_func_bcache_bypass_sequential\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_bcache_bypass_sequential\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_bcache_bypass_sequential\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_bcache_bypass_sequential:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_bcache_bypass_sequential\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_bcache_bypass_sequential:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__tracepoint_bcache_bypass_congested\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_bcache_bypass_congested\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_bcache_bypass_congested\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_bcache_bypass_congested:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_bcache_bypass_congested\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_bcache_bypass_congested:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__traceiter_bcache_bypass_congested\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_bcache_bypass_congested\09\09\09\09"
module asm "\09.long\09__crc___traceiter_bcache_bypass_congested\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_bcache_bypass_congested:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_bcache_bypass_congested\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_bcache_bypass_congested:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__SCK__tp_func_bcache_bypass_congested\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_bcache_bypass_congested\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_bcache_bypass_congested\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_bcache_bypass_congested:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_bcache_bypass_congested\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_bcache_bypass_congested:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__tracepoint_bcache_read\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_bcache_read\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_bcache_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_bcache_read:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_bcache_read\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_bcache_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__traceiter_bcache_read\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_bcache_read\09\09\09\09"
module asm "\09.long\09__crc___traceiter_bcache_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_bcache_read:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_bcache_read\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_bcache_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__SCK__tp_func_bcache_read\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_bcache_read\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_bcache_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_bcache_read:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_bcache_read\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_bcache_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__tracepoint_bcache_write\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_bcache_write\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_bcache_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_bcache_write:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_bcache_write\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_bcache_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__traceiter_bcache_write\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_bcache_write\09\09\09\09"
module asm "\09.long\09__crc___traceiter_bcache_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_bcache_write:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_bcache_write\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_bcache_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__SCK__tp_func_bcache_write\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_bcache_write\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_bcache_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_bcache_write:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_bcache_write\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_bcache_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__tracepoint_bcache_read_retry\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_bcache_read_retry\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_bcache_read_retry\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_bcache_read_retry:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_bcache_read_retry\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_bcache_read_retry:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__traceiter_bcache_read_retry\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_bcache_read_retry\09\09\09\09"
module asm "\09.long\09__crc___traceiter_bcache_read_retry\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_bcache_read_retry:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_bcache_read_retry\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_bcache_read_retry:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__SCK__tp_func_bcache_read_retry\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_bcache_read_retry\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_bcache_read_retry\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_bcache_read_retry:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_bcache_read_retry\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_bcache_read_retry:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__tracepoint_bcache_cache_insert\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_bcache_cache_insert\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_bcache_cache_insert\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_bcache_cache_insert:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_bcache_cache_insert\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_bcache_cache_insert:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__traceiter_bcache_cache_insert\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_bcache_cache_insert\09\09\09\09"
module asm "\09.long\09__crc___traceiter_bcache_cache_insert\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_bcache_cache_insert:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_bcache_cache_insert\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_bcache_cache_insert:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__SCK__tp_func_bcache_cache_insert\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_bcache_cache_insert\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_bcache_cache_insert\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_bcache_cache_insert:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_bcache_cache_insert\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_bcache_cache_insert:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__tracepoint_bcache_journal_replay_key\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_bcache_journal_replay_key\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_bcache_journal_replay_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_bcache_journal_replay_key:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_bcache_journal_replay_key\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_bcache_journal_replay_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__traceiter_bcache_journal_replay_key\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_bcache_journal_replay_key\09\09\09\09"
module asm "\09.long\09__crc___traceiter_bcache_journal_replay_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_bcache_journal_replay_key:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_bcache_journal_replay_key\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_bcache_journal_replay_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__SCK__tp_func_bcache_journal_replay_key\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_bcache_journal_replay_key\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_bcache_journal_replay_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_bcache_journal_replay_key:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_bcache_journal_replay_key\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_bcache_journal_replay_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__tracepoint_bcache_journal_write\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_bcache_journal_write\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_bcache_journal_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_bcache_journal_write:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_bcache_journal_write\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_bcache_journal_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__traceiter_bcache_journal_write\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_bcache_journal_write\09\09\09\09"
module asm "\09.long\09__crc___traceiter_bcache_journal_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_bcache_journal_write:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_bcache_journal_write\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_bcache_journal_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__SCK__tp_func_bcache_journal_write\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_bcache_journal_write\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_bcache_journal_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_bcache_journal_write:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_bcache_journal_write\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_bcache_journal_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__tracepoint_bcache_journal_full\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_bcache_journal_full\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_bcache_journal_full\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_bcache_journal_full:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_bcache_journal_full\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_bcache_journal_full:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__traceiter_bcache_journal_full\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_bcache_journal_full\09\09\09\09"
module asm "\09.long\09__crc___traceiter_bcache_journal_full\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_bcache_journal_full:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_bcache_journal_full\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_bcache_journal_full:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__SCK__tp_func_bcache_journal_full\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_bcache_journal_full\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_bcache_journal_full\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_bcache_journal_full:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_bcache_journal_full\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_bcache_journal_full:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__tracepoint_bcache_journal_entry_full\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_bcache_journal_entry_full\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_bcache_journal_entry_full\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_bcache_journal_entry_full:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_bcache_journal_entry_full\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_bcache_journal_entry_full:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__traceiter_bcache_journal_entry_full\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_bcache_journal_entry_full\09\09\09\09"
module asm "\09.long\09__crc___traceiter_bcache_journal_entry_full\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_bcache_journal_entry_full:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_bcache_journal_entry_full\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_bcache_journal_entry_full:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__SCK__tp_func_bcache_journal_entry_full\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_bcache_journal_entry_full\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_bcache_journal_entry_full\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_bcache_journal_entry_full:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_bcache_journal_entry_full\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_bcache_journal_entry_full:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__tracepoint_bcache_btree_cache_cannibalize\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_bcache_btree_cache_cannibalize\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_bcache_btree_cache_cannibalize\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_bcache_btree_cache_cannibalize:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_bcache_btree_cache_cannibalize\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_bcache_btree_cache_cannibalize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__traceiter_bcache_btree_cache_cannibalize\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_bcache_btree_cache_cannibalize\09\09\09\09"
module asm "\09.long\09__crc___traceiter_bcache_btree_cache_cannibalize\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_bcache_btree_cache_cannibalize:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_bcache_btree_cache_cannibalize\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_bcache_btree_cache_cannibalize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__SCK__tp_func_bcache_btree_cache_cannibalize\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_bcache_btree_cache_cannibalize\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_bcache_btree_cache_cannibalize\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_bcache_btree_cache_cannibalize:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_bcache_btree_cache_cannibalize\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_bcache_btree_cache_cannibalize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__tracepoint_bcache_btree_read\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_bcache_btree_read\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_bcache_btree_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_bcache_btree_read:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_bcache_btree_read\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_bcache_btree_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__traceiter_bcache_btree_read\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_bcache_btree_read\09\09\09\09"
module asm "\09.long\09__crc___traceiter_bcache_btree_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_bcache_btree_read:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_bcache_btree_read\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_bcache_btree_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__SCK__tp_func_bcache_btree_read\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_bcache_btree_read\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_bcache_btree_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_bcache_btree_read:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_bcache_btree_read\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_bcache_btree_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__tracepoint_bcache_btree_write\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_bcache_btree_write\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_bcache_btree_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_bcache_btree_write:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_bcache_btree_write\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_bcache_btree_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__traceiter_bcache_btree_write\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_bcache_btree_write\09\09\09\09"
module asm "\09.long\09__crc___traceiter_bcache_btree_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_bcache_btree_write:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_bcache_btree_write\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_bcache_btree_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__SCK__tp_func_bcache_btree_write\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_bcache_btree_write\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_bcache_btree_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_bcache_btree_write:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_bcache_btree_write\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_bcache_btree_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__tracepoint_bcache_btree_node_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_bcache_btree_node_alloc\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_bcache_btree_node_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_bcache_btree_node_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_bcache_btree_node_alloc\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_bcache_btree_node_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__traceiter_bcache_btree_node_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_bcache_btree_node_alloc\09\09\09\09"
module asm "\09.long\09__crc___traceiter_bcache_btree_node_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_bcache_btree_node_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_bcache_btree_node_alloc\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_bcache_btree_node_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__SCK__tp_func_bcache_btree_node_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_bcache_btree_node_alloc\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_bcache_btree_node_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_bcache_btree_node_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_bcache_btree_node_alloc\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_bcache_btree_node_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__tracepoint_bcache_btree_node_alloc_fail\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_bcache_btree_node_alloc_fail\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_bcache_btree_node_alloc_fail\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_bcache_btree_node_alloc_fail:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_bcache_btree_node_alloc_fail\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_bcache_btree_node_alloc_fail:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__traceiter_bcache_btree_node_alloc_fail\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_bcache_btree_node_alloc_fail\09\09\09\09"
module asm "\09.long\09__crc___traceiter_bcache_btree_node_alloc_fail\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_bcache_btree_node_alloc_fail:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_bcache_btree_node_alloc_fail\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_bcache_btree_node_alloc_fail:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__SCK__tp_func_bcache_btree_node_alloc_fail\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_bcache_btree_node_alloc_fail\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_bcache_btree_node_alloc_fail\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_bcache_btree_node_alloc_fail:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_bcache_btree_node_alloc_fail\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_bcache_btree_node_alloc_fail:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__tracepoint_bcache_btree_node_free\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_bcache_btree_node_free\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_bcache_btree_node_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_bcache_btree_node_free:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_bcache_btree_node_free\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_bcache_btree_node_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__traceiter_bcache_btree_node_free\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_bcache_btree_node_free\09\09\09\09"
module asm "\09.long\09__crc___traceiter_bcache_btree_node_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_bcache_btree_node_free:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_bcache_btree_node_free\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_bcache_btree_node_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__SCK__tp_func_bcache_btree_node_free\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_bcache_btree_node_free\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_bcache_btree_node_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_bcache_btree_node_free:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_bcache_btree_node_free\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_bcache_btree_node_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__tracepoint_bcache_btree_gc_coalesce\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_bcache_btree_gc_coalesce\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_bcache_btree_gc_coalesce\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_bcache_btree_gc_coalesce:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_bcache_btree_gc_coalesce\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_bcache_btree_gc_coalesce:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__traceiter_bcache_btree_gc_coalesce\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_bcache_btree_gc_coalesce\09\09\09\09"
module asm "\09.long\09__crc___traceiter_bcache_btree_gc_coalesce\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_bcache_btree_gc_coalesce:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_bcache_btree_gc_coalesce\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_bcache_btree_gc_coalesce:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__SCK__tp_func_bcache_btree_gc_coalesce\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_bcache_btree_gc_coalesce\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_bcache_btree_gc_coalesce\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_bcache_btree_gc_coalesce:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_bcache_btree_gc_coalesce\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_bcache_btree_gc_coalesce:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__tracepoint_bcache_gc_start\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_bcache_gc_start\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_bcache_gc_start\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_bcache_gc_start:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_bcache_gc_start\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_bcache_gc_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__traceiter_bcache_gc_start\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_bcache_gc_start\09\09\09\09"
module asm "\09.long\09__crc___traceiter_bcache_gc_start\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_bcache_gc_start:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_bcache_gc_start\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_bcache_gc_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__SCK__tp_func_bcache_gc_start\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_bcache_gc_start\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_bcache_gc_start\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_bcache_gc_start:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_bcache_gc_start\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_bcache_gc_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__tracepoint_bcache_gc_end\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_bcache_gc_end\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_bcache_gc_end\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_bcache_gc_end:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_bcache_gc_end\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_bcache_gc_end:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__traceiter_bcache_gc_end\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_bcache_gc_end\09\09\09\09"
module asm "\09.long\09__crc___traceiter_bcache_gc_end\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_bcache_gc_end:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_bcache_gc_end\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_bcache_gc_end:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__SCK__tp_func_bcache_gc_end\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_bcache_gc_end\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_bcache_gc_end\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_bcache_gc_end:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_bcache_gc_end\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_bcache_gc_end:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__tracepoint_bcache_gc_copy\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_bcache_gc_copy\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_bcache_gc_copy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_bcache_gc_copy:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_bcache_gc_copy\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_bcache_gc_copy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__traceiter_bcache_gc_copy\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_bcache_gc_copy\09\09\09\09"
module asm "\09.long\09__crc___traceiter_bcache_gc_copy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_bcache_gc_copy:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_bcache_gc_copy\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_bcache_gc_copy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__SCK__tp_func_bcache_gc_copy\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_bcache_gc_copy\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_bcache_gc_copy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_bcache_gc_copy:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_bcache_gc_copy\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_bcache_gc_copy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__tracepoint_bcache_gc_copy_collision\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_bcache_gc_copy_collision\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_bcache_gc_copy_collision\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_bcache_gc_copy_collision:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_bcache_gc_copy_collision\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_bcache_gc_copy_collision:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__traceiter_bcache_gc_copy_collision\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_bcache_gc_copy_collision\09\09\09\09"
module asm "\09.long\09__crc___traceiter_bcache_gc_copy_collision\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_bcache_gc_copy_collision:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_bcache_gc_copy_collision\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_bcache_gc_copy_collision:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__SCK__tp_func_bcache_gc_copy_collision\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_bcache_gc_copy_collision\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_bcache_gc_copy_collision\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_bcache_gc_copy_collision:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_bcache_gc_copy_collision\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_bcache_gc_copy_collision:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__tracepoint_bcache_btree_insert_key\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_bcache_btree_insert_key\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_bcache_btree_insert_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_bcache_btree_insert_key:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_bcache_btree_insert_key\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_bcache_btree_insert_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__traceiter_bcache_btree_insert_key\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_bcache_btree_insert_key\09\09\09\09"
module asm "\09.long\09__crc___traceiter_bcache_btree_insert_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_bcache_btree_insert_key:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_bcache_btree_insert_key\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_bcache_btree_insert_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__SCK__tp_func_bcache_btree_insert_key\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_bcache_btree_insert_key\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_bcache_btree_insert_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_bcache_btree_insert_key:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_bcache_btree_insert_key\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_bcache_btree_insert_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__tracepoint_bcache_btree_node_split\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_bcache_btree_node_split\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_bcache_btree_node_split\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_bcache_btree_node_split:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_bcache_btree_node_split\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_bcache_btree_node_split:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__traceiter_bcache_btree_node_split\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_bcache_btree_node_split\09\09\09\09"
module asm "\09.long\09__crc___traceiter_bcache_btree_node_split\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_bcache_btree_node_split:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_bcache_btree_node_split\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_bcache_btree_node_split:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__SCK__tp_func_bcache_btree_node_split\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_bcache_btree_node_split\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_bcache_btree_node_split\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_bcache_btree_node_split:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_bcache_btree_node_split\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_bcache_btree_node_split:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__tracepoint_bcache_btree_node_compact\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_bcache_btree_node_compact\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_bcache_btree_node_compact\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_bcache_btree_node_compact:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_bcache_btree_node_compact\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_bcache_btree_node_compact:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__traceiter_bcache_btree_node_compact\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_bcache_btree_node_compact\09\09\09\09"
module asm "\09.long\09__crc___traceiter_bcache_btree_node_compact\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_bcache_btree_node_compact:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_bcache_btree_node_compact\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_bcache_btree_node_compact:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__SCK__tp_func_bcache_btree_node_compact\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_bcache_btree_node_compact\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_bcache_btree_node_compact\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_bcache_btree_node_compact:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_bcache_btree_node_compact\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_bcache_btree_node_compact:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__tracepoint_bcache_btree_set_root\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_bcache_btree_set_root\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_bcache_btree_set_root\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_bcache_btree_set_root:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_bcache_btree_set_root\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_bcache_btree_set_root:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__traceiter_bcache_btree_set_root\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_bcache_btree_set_root\09\09\09\09"
module asm "\09.long\09__crc___traceiter_bcache_btree_set_root\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_bcache_btree_set_root:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_bcache_btree_set_root\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_bcache_btree_set_root:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__SCK__tp_func_bcache_btree_set_root\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_bcache_btree_set_root\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_bcache_btree_set_root\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_bcache_btree_set_root:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_bcache_btree_set_root\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_bcache_btree_set_root:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__tracepoint_bcache_invalidate\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_bcache_invalidate\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_bcache_invalidate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_bcache_invalidate:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_bcache_invalidate\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_bcache_invalidate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__traceiter_bcache_invalidate\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_bcache_invalidate\09\09\09\09"
module asm "\09.long\09__crc___traceiter_bcache_invalidate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_bcache_invalidate:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_bcache_invalidate\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_bcache_invalidate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__SCK__tp_func_bcache_invalidate\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_bcache_invalidate\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_bcache_invalidate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_bcache_invalidate:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_bcache_invalidate\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_bcache_invalidate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__tracepoint_bcache_alloc_fail\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_bcache_alloc_fail\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_bcache_alloc_fail\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_bcache_alloc_fail:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_bcache_alloc_fail\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_bcache_alloc_fail:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__traceiter_bcache_alloc_fail\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_bcache_alloc_fail\09\09\09\09"
module asm "\09.long\09__crc___traceiter_bcache_alloc_fail\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_bcache_alloc_fail:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_bcache_alloc_fail\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_bcache_alloc_fail:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__SCK__tp_func_bcache_alloc_fail\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_bcache_alloc_fail\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_bcache_alloc_fail\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_bcache_alloc_fail:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_bcache_alloc_fail\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_bcache_alloc_fail:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__tracepoint_bcache_writeback\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_bcache_writeback\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_bcache_writeback\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_bcache_writeback:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_bcache_writeback\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_bcache_writeback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__traceiter_bcache_writeback\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_bcache_writeback\09\09\09\09"
module asm "\09.long\09__crc___traceiter_bcache_writeback\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_bcache_writeback:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_bcache_writeback\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_bcache_writeback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__SCK__tp_func_bcache_writeback\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_bcache_writeback\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_bcache_writeback\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_bcache_writeback:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_bcache_writeback\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_bcache_writeback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__tracepoint_bcache_writeback_collision\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_bcache_writeback_collision\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_bcache_writeback_collision\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_bcache_writeback_collision:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_bcache_writeback_collision\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_bcache_writeback_collision:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__traceiter_bcache_writeback_collision\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_bcache_writeback_collision\09\09\09\09"
module asm "\09.long\09__crc___traceiter_bcache_writeback_collision\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_bcache_writeback_collision:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_bcache_writeback_collision\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_bcache_writeback_collision:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__SCK__tp_func_bcache_writeback_collision\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_bcache_writeback_collision\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_bcache_writeback_collision\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_bcache_writeback_collision:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_bcache_writeback_collision\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_bcache_writeback_collision:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.134 }
%union.anon.134 = type { %struct.anon.135 }
%struct.anon.135 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.136, %struct.trace_event, ptr, ptr, %union.anon.137, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.136 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.137 = type { ptr }
%union.anon.138 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.139 = type { %struct.bpf_raw_event_map }
%union.anon.140 = type { %struct.bpf_raw_event_map }
%union.anon.141 = type { %struct.bpf_raw_event_map }
%union.anon.142 = type { %struct.bpf_raw_event_map }
%union.anon.143 = type { %struct.bpf_raw_event_map }
%union.anon.144 = type { %struct.bpf_raw_event_map }
%union.anon.145 = type { %struct.bpf_raw_event_map }
%union.anon.146 = type { %struct.bpf_raw_event_map }
%union.anon.147 = type { %struct.bpf_raw_event_map }
%union.anon.148 = type { %struct.bpf_raw_event_map }
%union.anon.149 = type { %struct.bpf_raw_event_map }
%union.anon.150 = type { %struct.bpf_raw_event_map }
%union.anon.151 = type { %struct.bpf_raw_event_map }
%union.anon.152 = type { %struct.bpf_raw_event_map }
%union.anon.153 = type { %struct.bpf_raw_event_map }
%union.anon.154 = type { %struct.bpf_raw_event_map }
%union.anon.155 = type { %struct.bpf_raw_event_map }
%union.anon.156 = type { %struct.bpf_raw_event_map }
%union.anon.157 = type { %struct.bpf_raw_event_map }
%union.anon.158 = type { %struct.bpf_raw_event_map }
%union.anon.159 = type { %struct.bpf_raw_event_map }
%union.anon.160 = type { %struct.bpf_raw_event_map }
%union.anon.161 = type { %struct.bpf_raw_event_map }
%union.anon.162 = type { %struct.bpf_raw_event_map }
%union.anon.163 = type { %struct.bpf_raw_event_map }
%union.anon.164 = type { %struct.bpf_raw_event_map }
%union.anon.165 = type { %struct.bpf_raw_event_map }
%union.anon.166 = type { %struct.bpf_raw_event_map }
%union.anon.167 = type { %struct.bpf_raw_event_map }
%union.anon.168 = type { %struct.bpf_raw_event_map }
%union.anon.169 = type { %struct.bpf_raw_event_map }
%union.anon.170 = type { %struct.bpf_raw_event_map }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.40, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.40 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.trace_event_raw_bcache_request = type { %struct.trace_entry, i32, i32, i32, i64, i32, i32, [6 x i8], [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.bcache_device = type { %struct.closure, %struct.kobject, ptr, i32, [12 x i8], ptr, i32, i32, i32, ptr, ptr, %struct.bio_set, i8, ptr, ptr }
%struct.closure = type { %union.anon.0, ptr, %struct.atomic_t, i32, %struct.list_head, i32, i32 }
%union.anon.0 = type { %struct.work_struct }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_bkey = type { %struct.trace_entry, i32, i32, i64, i8, [0 x i8] }
%struct.bkey = type { i64, i64, [0 x i64] }
%struct.btree = type { %struct.hlist_node, %union.anon.100, i32, %struct.rw_semaphore, ptr, ptr, %struct.mutex, i32, i16, i8, %struct.btree_keys, %struct.closure, %struct.semaphore, %struct.list_head, %struct.delayed_work, [2 x %struct.btree_write], ptr }
%union.anon.100 = type { [8 x i64] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.btree_keys = type { ptr, i8, i8, i8, ptr, [4 x %struct.bset_tree] }
%struct.bset_tree = type { i32, i32, %struct.bkey, ptr, ptr, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.btree_write = type { ptr, i32 }
%struct.cache_set = type { %struct.closure, %struct.list_head, %struct.kobject, %struct.kobject, ptr, %struct.cache_accounting, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, i32, %struct.atomic_t, %struct.list_head, i64, %struct.atomic_t, %struct.closure, %struct.closure, %struct.semaphore, %struct.mempool_s, %struct.mempool_s, %struct.bio_set, %struct.shrinker, %struct.mutex, i16, i16, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.wait_queue_head, ptr, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, i16, i8, %struct.gc_stat, i32, i32, ptr, %struct.bkey, i8, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.keybuf, %struct.semaphore, ptr, ptr, ptr, ptr, %struct.mutex, [16 x i8], i32, ptr, %union.anon.104, %struct.closure, %struct.semaphore, %struct.mempool_s, %struct.bset_sort_state, %struct.list_head, %struct.spinlock, %struct.journal, i32, %struct.atomic_t, i32, i32, %struct.time_stats, %struct.time_stats, %struct.time_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i16, i8, i8, [4096 x %struct.hlist_head] }
%struct.cache_accounting = type { %struct.closure, %struct.timer_list, %struct.atomic_t, %struct.cache_stat_collector, %struct.cache_stats, %struct.cache_stats, %struct.cache_stats, %struct.cache_stats }
%struct.cache_stat_collector = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.cache_stats = type { %struct.kobject, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.gc_stat = type { i32, i32, i32, i32, i64, i32 }
%struct.keybuf = type { %struct.bkey, %struct.spinlock, %struct.bkey, %struct.bkey, %struct.rb_root, %struct.anon.98 }
%struct.rb_root = type { ptr }
%struct.anon.98 = type { ptr, [500 x %struct.keybuf_key] }
%struct.keybuf_key = type { %struct.rb_node, %union.anon.99, ptr }
%union.anon.99 = type { [8 x i64] }
%union.anon.104 = type { [8 x i64] }
%struct.bset_sort_state = type { %struct.mempool_s, i32, i32, %struct.time_stats }
%struct.journal = type { %struct.spinlock, %struct.spinlock, i8, %struct.closure_waitlist, %struct.closure, i32, %struct.delayed_work, i32, i64, %struct.anon.105, %union.anon.106, [2 x %struct.journal_write], ptr }
%struct.closure_waitlist = type { %struct.llist_head }
%struct.llist_head = type { ptr }
%struct.anon.105 = type { i32, i32, i32, i32, ptr }
%union.anon.106 = type { [8 x i64] }
%struct.journal_write = type { ptr, ptr, %struct.closure_waitlist, i8, i8 }
%struct.time_stats = type { %struct.spinlock, i64, i64, i64, i64 }
%struct.hlist_head = type { ptr }
%struct.trace_event_raw_btree_node = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_bcache_bio = type { %struct.trace_entry, i32, i64, i32, [6 x i8], [0 x i8] }
%struct.trace_event_raw_bcache_read = type { %struct.trace_entry, i32, i64, i32, [6 x i8], i8, i8, [0 x i8] }
%struct.trace_event_raw_bcache_write = type { %struct.trace_entry, [16 x i8], i64, i64, i32, [6 x i8], i8, i8, [0 x i8] }
%struct.trace_event_raw_cache_set = type { %struct.trace_entry, [16 x i8], [0 x i8] }
%struct.trace_event_raw_bcache_journal_write = type { %struct.trace_entry, i32, i64, i32, [6 x i8], i32, [0 x i8] }
%struct.trace_event_raw_bcache_btree_write = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.bset = type { i64, i64, i64, i32, i32, %union.anon.101 }
%union.anon.101 = type { [0 x %struct.bkey] }
%struct.trace_event_raw_bcache_btree_gc_coalesce = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_bcache_btree_insert_key = type { %struct.trace_entry, i64, i32, i32, i64, i32, i8, i8, i8, [0 x i8] }
%struct.trace_event_raw_btree_split = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_bcache_keyscan = type { %struct.trace_entry, i32, i32, i64, i32, i64, [0 x i8] }
%struct.cache = type { ptr, %struct.cache_sb, ptr, %struct.bio, [1 x %struct.bio_vec], %struct.kobject, ptr, ptr, %struct.closure, ptr, ptr, ptr, [4 x %struct.anon.95], %struct.anon.96, i32, ptr, %struct.anon.97, i32, i8, %struct.journal_device, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.cache_sb = type { i64, i64, [16 x i8], [16 x i8], %union.anon.79, [32 x i8], i64, i64, i64, i64, i64, %union.anon.80, i32, i16, %union.anon.83, [256 x i64] }
%union.anon.79 = type { i64, [8 x i8] }
%union.anon.80 = type { %struct.anon.81 }
%struct.anon.81 = type { i64, i16, i16, i16, i32 }
%union.anon.83 = type { i16 }
%struct.anon.95 = type { i32, i32, i32, i32, ptr }
%struct.anon.96 = type { i32, i32, i32, i32, ptr }
%struct.anon.97 = type { i32, i32, ptr }
%struct.journal_device = type { [256 x i64], i32, i32, i32, %struct.atomic_t, %struct.work_struct, %struct.bio, %struct.bio_vec, %struct.bio, [8 x %struct.bio_vec] }
%struct.trace_event_raw_bcache_invalidate = type { %struct.trace_entry, i32, i32, i64, [0 x i8] }
%struct.bucket = type { %struct.atomic_t, i16, i8, i8, i16 }
%struct.trace_event_raw_bcache_alloc = type { %struct.trace_entry, i32, i64, [0 x i8] }
%struct.trace_event_raw_bcache_alloc_fail = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_bcache_request_start = internal constant [21 x i8] c"bcache_request_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_bcache_request_start = dso_local global %struct.static_call_key { ptr @__traceiter_bcache_request_start }, align 4
@__tracepoint_bcache_request_start = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_bcache_request_start, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_bcache_request_start, ptr null, ptr @__traceiter_bcache_request_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_bcache_request_start = internal constant ptr @__tracepoint_bcache_request_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_bcache_request_end = internal constant [19 x i8] c"bcache_request_end\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_bcache_request_end = dso_local global %struct.static_call_key { ptr @__traceiter_bcache_request_end }, align 4
@__tracepoint_bcache_request_end = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_bcache_request_end, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_bcache_request_end, ptr null, ptr @__traceiter_bcache_request_end, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_bcache_request_end = internal constant ptr @__tracepoint_bcache_request_end, section "__tracepoints_ptrs", align 4
@__tpstrtab_bcache_bypass_sequential = internal constant [25 x i8] c"bcache_bypass_sequential\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_bcache_bypass_sequential = dso_local global %struct.static_call_key { ptr @__traceiter_bcache_bypass_sequential }, align 4
@__tracepoint_bcache_bypass_sequential = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_bcache_bypass_sequential, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_bcache_bypass_sequential, ptr null, ptr @__traceiter_bcache_bypass_sequential, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_bcache_bypass_sequential = internal constant ptr @__tracepoint_bcache_bypass_sequential, section "__tracepoints_ptrs", align 4
@__tpstrtab_bcache_bypass_congested = internal constant [24 x i8] c"bcache_bypass_congested\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_bcache_bypass_congested = dso_local global %struct.static_call_key { ptr @__traceiter_bcache_bypass_congested }, align 4
@__tracepoint_bcache_bypass_congested = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_bcache_bypass_congested, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_bcache_bypass_congested, ptr null, ptr @__traceiter_bcache_bypass_congested, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_bcache_bypass_congested = internal constant ptr @__tracepoint_bcache_bypass_congested, section "__tracepoints_ptrs", align 4
@__tpstrtab_bcache_read = internal constant [12 x i8] c"bcache_read\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_bcache_read = dso_local global %struct.static_call_key { ptr @__traceiter_bcache_read }, align 4
@__tracepoint_bcache_read = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_bcache_read, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_bcache_read, ptr null, ptr @__traceiter_bcache_read, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_bcache_read = internal constant ptr @__tracepoint_bcache_read, section "__tracepoints_ptrs", align 4
@__tpstrtab_bcache_write = internal constant [13 x i8] c"bcache_write\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_bcache_write = dso_local global %struct.static_call_key { ptr @__traceiter_bcache_write }, align 4
@__tracepoint_bcache_write = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_bcache_write, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_bcache_write, ptr null, ptr @__traceiter_bcache_write, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_bcache_write = internal constant ptr @__tracepoint_bcache_write, section "__tracepoints_ptrs", align 4
@__tpstrtab_bcache_read_retry = internal constant [18 x i8] c"bcache_read_retry\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_bcache_read_retry = dso_local global %struct.static_call_key { ptr @__traceiter_bcache_read_retry }, align 4
@__tracepoint_bcache_read_retry = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_bcache_read_retry, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_bcache_read_retry, ptr null, ptr @__traceiter_bcache_read_retry, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_bcache_read_retry = internal constant ptr @__tracepoint_bcache_read_retry, section "__tracepoints_ptrs", align 4
@__tpstrtab_bcache_cache_insert = internal constant [20 x i8] c"bcache_cache_insert\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_bcache_cache_insert = dso_local global %struct.static_call_key { ptr @__traceiter_bcache_cache_insert }, align 4
@__tracepoint_bcache_cache_insert = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_bcache_cache_insert, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_bcache_cache_insert, ptr null, ptr @__traceiter_bcache_cache_insert, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_bcache_cache_insert = internal constant ptr @__tracepoint_bcache_cache_insert, section "__tracepoints_ptrs", align 4
@__tpstrtab_bcache_journal_replay_key = internal constant [26 x i8] c"bcache_journal_replay_key\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_bcache_journal_replay_key = dso_local global %struct.static_call_key { ptr @__traceiter_bcache_journal_replay_key }, align 4
@__tracepoint_bcache_journal_replay_key = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_bcache_journal_replay_key, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_bcache_journal_replay_key, ptr null, ptr @__traceiter_bcache_journal_replay_key, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_bcache_journal_replay_key = internal constant ptr @__tracepoint_bcache_journal_replay_key, section "__tracepoints_ptrs", align 4
@__tpstrtab_bcache_journal_full = internal constant [20 x i8] c"bcache_journal_full\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_bcache_journal_full = dso_local global %struct.static_call_key { ptr @__traceiter_bcache_journal_full }, align 4
@__tracepoint_bcache_journal_full = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_bcache_journal_full, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_bcache_journal_full, ptr null, ptr @__traceiter_bcache_journal_full, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_bcache_journal_full = internal constant ptr @__tracepoint_bcache_journal_full, section "__tracepoints_ptrs", align 4
@__tpstrtab_bcache_journal_entry_full = internal constant [26 x i8] c"bcache_journal_entry_full\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_bcache_journal_entry_full = dso_local global %struct.static_call_key { ptr @__traceiter_bcache_journal_entry_full }, align 4
@__tracepoint_bcache_journal_entry_full = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_bcache_journal_entry_full, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_bcache_journal_entry_full, ptr null, ptr @__traceiter_bcache_journal_entry_full, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_bcache_journal_entry_full = internal constant ptr @__tracepoint_bcache_journal_entry_full, section "__tracepoints_ptrs", align 4
@__tpstrtab_bcache_journal_write = internal constant [21 x i8] c"bcache_journal_write\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_bcache_journal_write = dso_local global %struct.static_call_key { ptr @__traceiter_bcache_journal_write }, align 4
@__tracepoint_bcache_journal_write = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_bcache_journal_write, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_bcache_journal_write, ptr null, ptr @__traceiter_bcache_journal_write, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_bcache_journal_write = internal constant ptr @__tracepoint_bcache_journal_write, section "__tracepoints_ptrs", align 4
@__tpstrtab_bcache_btree_cache_cannibalize = internal constant [31 x i8] c"bcache_btree_cache_cannibalize\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_bcache_btree_cache_cannibalize = dso_local global %struct.static_call_key { ptr @__traceiter_bcache_btree_cache_cannibalize }, align 4
@__tracepoint_bcache_btree_cache_cannibalize = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_bcache_btree_cache_cannibalize, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_bcache_btree_cache_cannibalize, ptr null, ptr @__traceiter_bcache_btree_cache_cannibalize, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_bcache_btree_cache_cannibalize = internal constant ptr @__tracepoint_bcache_btree_cache_cannibalize, section "__tracepoints_ptrs", align 4
@__tpstrtab_bcache_btree_read = internal constant [18 x i8] c"bcache_btree_read\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_bcache_btree_read = dso_local global %struct.static_call_key { ptr @__traceiter_bcache_btree_read }, align 4
@__tracepoint_bcache_btree_read = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_bcache_btree_read, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_bcache_btree_read, ptr null, ptr @__traceiter_bcache_btree_read, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_bcache_btree_read = internal constant ptr @__tracepoint_bcache_btree_read, section "__tracepoints_ptrs", align 4
@__tpstrtab_bcache_btree_write = internal constant [19 x i8] c"bcache_btree_write\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_bcache_btree_write = dso_local global %struct.static_call_key { ptr @__traceiter_bcache_btree_write }, align 4
@__tracepoint_bcache_btree_write = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_bcache_btree_write, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_bcache_btree_write, ptr null, ptr @__traceiter_bcache_btree_write, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_bcache_btree_write = internal constant ptr @__tracepoint_bcache_btree_write, section "__tracepoints_ptrs", align 4
@__tpstrtab_bcache_btree_node_alloc = internal constant [24 x i8] c"bcache_btree_node_alloc\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_bcache_btree_node_alloc = dso_local global %struct.static_call_key { ptr @__traceiter_bcache_btree_node_alloc }, align 4
@__tracepoint_bcache_btree_node_alloc = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_bcache_btree_node_alloc, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_bcache_btree_node_alloc, ptr null, ptr @__traceiter_bcache_btree_node_alloc, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_bcache_btree_node_alloc = internal constant ptr @__tracepoint_bcache_btree_node_alloc, section "__tracepoints_ptrs", align 4
@__tpstrtab_bcache_btree_node_alloc_fail = internal constant [29 x i8] c"bcache_btree_node_alloc_fail\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_bcache_btree_node_alloc_fail = dso_local global %struct.static_call_key { ptr @__traceiter_bcache_btree_node_alloc_fail }, align 4
@__tracepoint_bcache_btree_node_alloc_fail = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_bcache_btree_node_alloc_fail, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_bcache_btree_node_alloc_fail, ptr null, ptr @__traceiter_bcache_btree_node_alloc_fail, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_bcache_btree_node_alloc_fail = internal constant ptr @__tracepoint_bcache_btree_node_alloc_fail, section "__tracepoints_ptrs", align 4
@__tpstrtab_bcache_btree_node_free = internal constant [23 x i8] c"bcache_btree_node_free\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_bcache_btree_node_free = dso_local global %struct.static_call_key { ptr @__traceiter_bcache_btree_node_free }, align 4
@__tracepoint_bcache_btree_node_free = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_bcache_btree_node_free, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_bcache_btree_node_free, ptr null, ptr @__traceiter_bcache_btree_node_free, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_bcache_btree_node_free = internal constant ptr @__tracepoint_bcache_btree_node_free, section "__tracepoints_ptrs", align 4
@__tpstrtab_bcache_btree_gc_coalesce = internal constant [25 x i8] c"bcache_btree_gc_coalesce\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_bcache_btree_gc_coalesce = dso_local global %struct.static_call_key { ptr @__traceiter_bcache_btree_gc_coalesce }, align 4
@__tracepoint_bcache_btree_gc_coalesce = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_bcache_btree_gc_coalesce, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_bcache_btree_gc_coalesce, ptr null, ptr @__traceiter_bcache_btree_gc_coalesce, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_bcache_btree_gc_coalesce = internal constant ptr @__tracepoint_bcache_btree_gc_coalesce, section "__tracepoints_ptrs", align 4
@__tpstrtab_bcache_gc_start = internal constant [16 x i8] c"bcache_gc_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_bcache_gc_start = dso_local global %struct.static_call_key { ptr @__traceiter_bcache_gc_start }, align 4
@__tracepoint_bcache_gc_start = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_bcache_gc_start, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_bcache_gc_start, ptr null, ptr @__traceiter_bcache_gc_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_bcache_gc_start = internal constant ptr @__tracepoint_bcache_gc_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_bcache_gc_end = internal constant [14 x i8] c"bcache_gc_end\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_bcache_gc_end = dso_local global %struct.static_call_key { ptr @__traceiter_bcache_gc_end }, align 4
@__tracepoint_bcache_gc_end = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_bcache_gc_end, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_bcache_gc_end, ptr null, ptr @__traceiter_bcache_gc_end, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_bcache_gc_end = internal constant ptr @__tracepoint_bcache_gc_end, section "__tracepoints_ptrs", align 4
@__tpstrtab_bcache_gc_copy = internal constant [15 x i8] c"bcache_gc_copy\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_bcache_gc_copy = dso_local global %struct.static_call_key { ptr @__traceiter_bcache_gc_copy }, align 4
@__tracepoint_bcache_gc_copy = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_bcache_gc_copy, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_bcache_gc_copy, ptr null, ptr @__traceiter_bcache_gc_copy, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_bcache_gc_copy = internal constant ptr @__tracepoint_bcache_gc_copy, section "__tracepoints_ptrs", align 4
@__tpstrtab_bcache_gc_copy_collision = internal constant [25 x i8] c"bcache_gc_copy_collision\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_bcache_gc_copy_collision = dso_local global %struct.static_call_key { ptr @__traceiter_bcache_gc_copy_collision }, align 4
@__tracepoint_bcache_gc_copy_collision = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_bcache_gc_copy_collision, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_bcache_gc_copy_collision, ptr null, ptr @__traceiter_bcache_gc_copy_collision, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_bcache_gc_copy_collision = internal constant ptr @__tracepoint_bcache_gc_copy_collision, section "__tracepoints_ptrs", align 4
@__tpstrtab_bcache_btree_insert_key = internal constant [24 x i8] c"bcache_btree_insert_key\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_bcache_btree_insert_key = dso_local global %struct.static_call_key { ptr @__traceiter_bcache_btree_insert_key }, align 4
@__tracepoint_bcache_btree_insert_key = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_bcache_btree_insert_key, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_bcache_btree_insert_key, ptr null, ptr @__traceiter_bcache_btree_insert_key, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_bcache_btree_insert_key = internal constant ptr @__tracepoint_bcache_btree_insert_key, section "__tracepoints_ptrs", align 4
@__tpstrtab_bcache_btree_node_split = internal constant [24 x i8] c"bcache_btree_node_split\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_bcache_btree_node_split = dso_local global %struct.static_call_key { ptr @__traceiter_bcache_btree_node_split }, align 4
@__tracepoint_bcache_btree_node_split = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_bcache_btree_node_split, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_bcache_btree_node_split, ptr null, ptr @__traceiter_bcache_btree_node_split, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_bcache_btree_node_split = internal constant ptr @__tracepoint_bcache_btree_node_split, section "__tracepoints_ptrs", align 4
@__tpstrtab_bcache_btree_node_compact = internal constant [26 x i8] c"bcache_btree_node_compact\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_bcache_btree_node_compact = dso_local global %struct.static_call_key { ptr @__traceiter_bcache_btree_node_compact }, align 4
@__tracepoint_bcache_btree_node_compact = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_bcache_btree_node_compact, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_bcache_btree_node_compact, ptr null, ptr @__traceiter_bcache_btree_node_compact, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_bcache_btree_node_compact = internal constant ptr @__tracepoint_bcache_btree_node_compact, section "__tracepoints_ptrs", align 4
@__tpstrtab_bcache_btree_set_root = internal constant [22 x i8] c"bcache_btree_set_root\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_bcache_btree_set_root = dso_local global %struct.static_call_key { ptr @__traceiter_bcache_btree_set_root }, align 4
@__tracepoint_bcache_btree_set_root = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_bcache_btree_set_root, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_bcache_btree_set_root, ptr null, ptr @__traceiter_bcache_btree_set_root, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_bcache_btree_set_root = internal constant ptr @__tracepoint_bcache_btree_set_root, section "__tracepoints_ptrs", align 4
@__tpstrtab_bcache_keyscan = internal constant [15 x i8] c"bcache_keyscan\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_bcache_keyscan = dso_local global %struct.static_call_key { ptr @__traceiter_bcache_keyscan }, align 4
@__tracepoint_bcache_keyscan = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_bcache_keyscan, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_bcache_keyscan, ptr null, ptr @__traceiter_bcache_keyscan, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_bcache_keyscan = internal constant ptr @__tracepoint_bcache_keyscan, section "__tracepoints_ptrs", align 4
@__tpstrtab_bcache_invalidate = internal constant [18 x i8] c"bcache_invalidate\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_bcache_invalidate = dso_local global %struct.static_call_key { ptr @__traceiter_bcache_invalidate }, align 4
@__tracepoint_bcache_invalidate = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_bcache_invalidate, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_bcache_invalidate, ptr null, ptr @__traceiter_bcache_invalidate, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_bcache_invalidate = internal constant ptr @__tracepoint_bcache_invalidate, section "__tracepoints_ptrs", align 4
@__tpstrtab_bcache_alloc = internal constant [13 x i8] c"bcache_alloc\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_bcache_alloc = dso_local global %struct.static_call_key { ptr @__traceiter_bcache_alloc }, align 4
@__tracepoint_bcache_alloc = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_bcache_alloc, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_bcache_alloc, ptr null, ptr @__traceiter_bcache_alloc, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_bcache_alloc = internal constant ptr @__tracepoint_bcache_alloc, section "__tracepoints_ptrs", align 4
@__tpstrtab_bcache_alloc_fail = internal constant [18 x i8] c"bcache_alloc_fail\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_bcache_alloc_fail = dso_local global %struct.static_call_key { ptr @__traceiter_bcache_alloc_fail }, align 4
@__tracepoint_bcache_alloc_fail = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_bcache_alloc_fail, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_bcache_alloc_fail, ptr null, ptr @__traceiter_bcache_alloc_fail, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_bcache_alloc_fail = internal constant ptr @__tracepoint_bcache_alloc_fail, section "__tracepoints_ptrs", align 4
@__tpstrtab_bcache_writeback = internal constant [17 x i8] c"bcache_writeback\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_bcache_writeback = dso_local global %struct.static_call_key { ptr @__traceiter_bcache_writeback }, align 4
@__tracepoint_bcache_writeback = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_bcache_writeback, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_bcache_writeback, ptr null, ptr @__traceiter_bcache_writeback, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_bcache_writeback = internal constant ptr @__tracepoint_bcache_writeback, section "__tracepoints_ptrs", align 4
@__tpstrtab_bcache_writeback_collision = internal constant [27 x i8] c"bcache_writeback_collision\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_bcache_writeback_collision = dso_local global %struct.static_call_key { ptr @__traceiter_bcache_writeback_collision }, align 4
@__tracepoint_bcache_writeback_collision = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_bcache_writeback_collision, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_bcache_writeback_collision, ptr null, ptr @__traceiter_bcache_writeback_collision, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_bcache_writeback_collision = internal constant ptr @__tracepoint_bcache_writeback_collision, section "__tracepoints_ptrs", align 4
@str__bcache__trace_system_name = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bcache\00", [25 x i8] zeroinitializer }, align 32
@trace_event_fields_bcache_request = internal global { [8 x %struct.trace_event_fields], [32 x i8] } { [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.134 { %struct.anon.135 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.134 { %struct.anon.135 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.134 { %struct.anon.135 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.134 { %struct.anon.135 { ptr @.str.6, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.134 { %struct.anon.135 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.134 { %struct.anon.135 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.134 { %struct.anon.135 { ptr @.str.10, i32 6, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_bcache_request = internal global %struct.trace_event_class { ptr @str__bcache__trace_system_name, ptr @trace_event_raw_event_bcache_request, ptr @perf_trace_bcache_request, ptr @trace_event_reg, ptr @trace_event_fields_bcache_request, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_bcache_request, i64 24), ptr getelementptr (i8, ptr @event_class_bcache_request, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_fields_bkey = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.11, %union.anon.134 { %struct.anon.135 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.134 { %struct.anon.135 { ptr @.str.13, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.134 { %struct.anon.135 { ptr @.str.15, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.134 { %struct.anon.135 { ptr @.str.17, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_bkey = internal global %struct.trace_event_class { ptr @str__bcache__trace_system_name, ptr @trace_event_raw_event_bkey, ptr @perf_trace_bkey, ptr @trace_event_reg, ptr @trace_event_fields_bkey, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_bkey, i64 24), ptr getelementptr (i8, ptr @event_class_bkey, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_fields_btree_node = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.18, %union.anon.134 { %struct.anon.135 { ptr @.str.19, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_btree_node = internal global %struct.trace_event_class { ptr @str__bcache__trace_system_name, ptr @trace_event_raw_event_btree_node, ptr @perf_trace_btree_node, ptr @trace_event_reg, ptr @trace_event_fields_btree_node, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_btree_node, i64 24), ptr getelementptr (i8, ptr @event_class_btree_node, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_bcache_request = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_bcache_request, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_bcache_request = internal global { [260 x i8], [92 x i8] } { [260 x i8] c"\22%d,%d %s %llu + %u (from %d,%d @ %llu)\22, ((unsigned int) ((REC->dev) >> 20)), ((unsigned int) ((REC->dev) & ((1U << 20) - 1))), REC->rwbs, (unsigned long long)REC->sector, REC->nr_sector, REC->orig_major, REC->orig_minor, (unsigned long long)REC->orig_sector\00", [92 x i8] zeroinitializer }, align 32
@event_bcache_request_start = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_bcache_request, %union.anon.136 { ptr @__tracepoint_bcache_request_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_bcache_request }, ptr @print_fmt_bcache_request, ptr null, %union.anon.137 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_bcache_request_start = internal global ptr @event_bcache_request_start, section "_ftrace_events", align 4
@event_bcache_request_end = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_bcache_request, %union.anon.136 { ptr @__tracepoint_bcache_request_end }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_bcache_request }, ptr @print_fmt_bcache_request, ptr null, %union.anon.137 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_bcache_request_end = internal global ptr @event_bcache_request_end, section "_ftrace_events", align 4
@trace_event_fields_bcache_bio = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.134 { %struct.anon.135 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.134 { %struct.anon.135 { ptr @.str.6, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.134 { %struct.anon.135 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.134 { %struct.anon.135 { ptr @.str.10, i32 6, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_bcache_bio = internal global %struct.trace_event_class { ptr @str__bcache__trace_system_name, ptr @trace_event_raw_event_bcache_bio, ptr @perf_trace_bcache_bio, ptr @trace_event_reg, ptr @trace_event_fields_bcache_bio, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_bcache_bio, i64 24), ptr getelementptr (i8, ptr @event_class_bcache_bio, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_bcache_bio = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_bcache_bio, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_bcache_bio = internal global { [169 x i8], [55 x i8] } { [169 x i8] c"\22%d,%d  %s %llu + %u\22, ((unsigned int) ((REC->dev) >> 20)), ((unsigned int) ((REC->dev) & ((1U << 20) - 1))), REC->rwbs, (unsigned long long)REC->sector, REC->nr_sector\00", [55 x i8] zeroinitializer }, align 32
@event_bcache_bypass_sequential = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_bcache_bio, %union.anon.136 { ptr @__tracepoint_bcache_bypass_sequential }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_bcache_bio }, ptr @print_fmt_bcache_bio, ptr null, %union.anon.137 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_bcache_bypass_sequential = internal global ptr @event_bcache_bypass_sequential, section "_ftrace_events", align 4
@event_bcache_bypass_congested = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_bcache_bio, %union.anon.136 { ptr @__tracepoint_bcache_bypass_congested }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_bcache_bio }, ptr @print_fmt_bcache_bio, ptr null, %union.anon.137 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_bcache_bypass_congested = internal global ptr @event_bcache_bypass_congested, section "_ftrace_events", align 4
@trace_event_fields_bcache_read = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.134 { %struct.anon.135 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.134 { %struct.anon.135 { ptr @.str.6, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.134 { %struct.anon.135 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.134 { %struct.anon.135 { ptr @.str.10, i32 6, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.134 { %struct.anon.135 { ptr @.str.22, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.134 { %struct.anon.135 { ptr @.str.23, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_bcache_read = internal global %struct.trace_event_class { ptr @str__bcache__trace_system_name, ptr @trace_event_raw_event_bcache_read, ptr @perf_trace_bcache_read, ptr @trace_event_reg, ptr @trace_event_fields_bcache_read, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_bcache_read, i64 24), ptr getelementptr (i8, ptr @event_class_bcache_read, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_bcache_read = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_bcache_read, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_bcache_read = internal global { [215 x i8], [41 x i8] } { [215 x i8] c"\22%d,%d  %s %llu + %u hit %u bypass %u\22, ((unsigned int) ((REC->dev) >> 20)), ((unsigned int) ((REC->dev) & ((1U << 20) - 1))), REC->rwbs, (unsigned long long)REC->sector, REC->nr_sector, REC->cache_hit, REC->bypass\00", [41 x i8] zeroinitializer }, align 32
@event_bcache_read = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_bcache_read, %union.anon.136 { ptr @__tracepoint_bcache_read }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_bcache_read }, ptr @print_fmt_bcache_read, ptr null, %union.anon.137 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_bcache_read = internal global ptr @event_bcache_read, section "_ftrace_events", align 4
@trace_event_fields_bcache_write = internal global { [8 x %struct.trace_event_fields], [32 x i8] } { [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.25, %union.anon.134 { %struct.anon.135 { ptr @.str.26, i32 16, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.134 { %struct.anon.135 { ptr @.str.13, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.134 { %struct.anon.135 { ptr @.str.6, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.134 { %struct.anon.135 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.134 { %struct.anon.135 { ptr @.str.10, i32 6, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.134 { %struct.anon.135 { ptr @.str.27, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.134 { %struct.anon.135 { ptr @.str.23, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_bcache_write = internal global %struct.trace_event_class { ptr @str__bcache__trace_system_name, ptr @trace_event_raw_event_bcache_write, ptr @perf_trace_bcache_write, ptr @trace_event_reg, ptr @trace_event_fields_bcache_write, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_bcache_write, i64 24), ptr getelementptr (i8, ptr @event_class_bcache_write, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_bcache_write = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_bcache_write, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_bcache_write = internal global { [160 x i8], [32 x i8] } { [160 x i8] c"\22%pU inode %llu  %s %llu + %u hit %u bypass %u\22, REC->uuid, REC->inode, REC->rwbs, (unsigned long long)REC->sector, REC->nr_sector, REC->writeback, REC->bypass\00", [32 x i8] zeroinitializer }, align 32
@event_bcache_write = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_bcache_write, %union.anon.136 { ptr @__tracepoint_bcache_write }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_bcache_write }, ptr @print_fmt_bcache_write, ptr null, %union.anon.137 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_bcache_write = internal global ptr @event_bcache_write, section "_ftrace_events", align 4
@event_bcache_read_retry = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_bcache_bio, %union.anon.136 { ptr @__tracepoint_bcache_read_retry }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_bcache_bio }, ptr @print_fmt_bcache_bio, ptr null, %union.anon.137 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_bcache_read_retry = internal global ptr @event_bcache_read_retry, section "_ftrace_events", align 4
@trace_event_type_funcs_bkey = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_bkey, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_bkey = internal global { [74 x i8], [54 x i8] } { [74 x i8] c"\22%u:%llu len %u dirty %u\22, REC->inode, REC->offset, REC->size, REC->dirty\00", [54 x i8] zeroinitializer }, align 32
@event_bcache_cache_insert = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_bkey, %union.anon.136 { ptr @__tracepoint_bcache_cache_insert }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_bkey }, ptr @print_fmt_bkey, ptr null, %union.anon.137 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_bcache_cache_insert = internal global ptr @event_bcache_cache_insert, section "_ftrace_events", align 4
@trace_event_fields_cache_set = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.25, %union.anon.134 { %struct.anon.135 { ptr @.str.26, i32 16, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_cache_set = internal global %struct.trace_event_class { ptr @str__bcache__trace_system_name, ptr @trace_event_raw_event_cache_set, ptr @perf_trace_cache_set, ptr @trace_event_reg, ptr @trace_event_fields_cache_set, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cache_set, i64 24), ptr getelementptr (i8, ptr @event_class_cache_set, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@event_bcache_journal_replay_key = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_bkey, %union.anon.136 { ptr @__tracepoint_bcache_journal_replay_key }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_bkey }, ptr @print_fmt_bkey, ptr null, %union.anon.137 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_bcache_journal_replay_key = internal global ptr @event_bcache_journal_replay_key, section "_ftrace_events", align 4
@trace_event_type_funcs_cache_set = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cache_set, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cache_set = internal global { [17 x i8], [47 x i8] } { [17 x i8] c"\22%pU\22, REC->uuid\00", [47 x i8] zeroinitializer }, align 32
@event_bcache_journal_full = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cache_set, %union.anon.136 { ptr @__tracepoint_bcache_journal_full }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cache_set }, ptr @print_fmt_cache_set, ptr null, %union.anon.137 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_bcache_journal_full = internal global ptr @event_bcache_journal_full, section "_ftrace_events", align 4
@event_bcache_journal_entry_full = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cache_set, %union.anon.136 { ptr @__tracepoint_bcache_journal_entry_full }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cache_set }, ptr @print_fmt_cache_set, ptr null, %union.anon.137 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_bcache_journal_entry_full = internal global ptr @event_bcache_journal_entry_full, section "_ftrace_events", align 4
@trace_event_fields_bcache_journal_write = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.134 { %struct.anon.135 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.134 { %struct.anon.135 { ptr @.str.6, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.134 { %struct.anon.135 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.134 { %struct.anon.135 { ptr @.str.10, i32 6, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.134 { %struct.anon.135 { ptr @.str.31, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_bcache_journal_write = internal global %struct.trace_event_class { ptr @str__bcache__trace_system_name, ptr @trace_event_raw_event_bcache_journal_write, ptr @perf_trace_bcache_journal_write, ptr @trace_event_reg, ptr @trace_event_fields_bcache_journal_write, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_bcache_journal_write, i64 24), ptr getelementptr (i8, ptr @event_class_bcache_journal_write, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_bcache_journal_write = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_bcache_journal_write, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_bcache_journal_write = internal global { [191 x i8], [33 x i8] } { [191 x i8] c"\22%d,%d  %s %llu + %u keys %u\22, ((unsigned int) ((REC->dev) >> 20)), ((unsigned int) ((REC->dev) & ((1U << 20) - 1))), REC->rwbs, (unsigned long long)REC->sector, REC->nr_sector, REC->nr_keys\00", [33 x i8] zeroinitializer }, align 32
@event_bcache_journal_write = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_bcache_journal_write, %union.anon.136 { ptr @__tracepoint_bcache_journal_write }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_bcache_journal_write }, ptr @print_fmt_bcache_journal_write, ptr null, %union.anon.137 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_bcache_journal_write = internal global ptr @event_bcache_journal_write, section "_ftrace_events", align 4
@event_bcache_btree_cache_cannibalize = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cache_set, %union.anon.136 { ptr @__tracepoint_bcache_btree_cache_cannibalize }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cache_set }, ptr @print_fmt_cache_set, ptr null, %union.anon.137 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_bcache_btree_cache_cannibalize = internal global ptr @event_bcache_btree_cache_cannibalize, section "_ftrace_events", align 4
@trace_event_type_funcs_btree_node = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_btree_node, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_btree_node = internal global { [26 x i8], [38 x i8] } { [26 x i8] c"\22bucket %zu\22, REC->bucket\00", [38 x i8] zeroinitializer }, align 32
@event_bcache_btree_read = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_btree_node, %union.anon.136 { ptr @__tracepoint_bcache_btree_read }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_btree_node }, ptr @print_fmt_btree_node, ptr null, %union.anon.137 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_bcache_btree_read = internal global ptr @event_bcache_btree_read, section "_ftrace_events", align 4
@trace_event_fields_bcache_btree_write = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.18, %union.anon.134 { %struct.anon.135 { ptr @.str.19, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.134 { %struct.anon.135 { ptr @.str.35, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.134 { %struct.anon.135 { ptr @.str.36, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_bcache_btree_write = internal global %struct.trace_event_class { ptr @str__bcache__trace_system_name, ptr @trace_event_raw_event_bcache_btree_write, ptr @perf_trace_bcache_btree_write, ptr @trace_event_reg, ptr @trace_event_fields_bcache_btree_write, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_bcache_btree_write, i64 24), ptr getelementptr (i8, ptr @event_class_bcache_btree_write, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_bcache_btree_write = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_bcache_btree_write, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_bcache_btree_write = internal global { [71 x i8], [57 x i8] } { [71 x i8] c"\22bucket %zu written block %u + %u\22, REC->bucket, REC->block, REC->keys\00", [57 x i8] zeroinitializer }, align 32
@event_bcache_btree_write = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_bcache_btree_write, %union.anon.136 { ptr @__tracepoint_bcache_btree_write }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_bcache_btree_write }, ptr @print_fmt_bcache_btree_write, ptr null, %union.anon.137 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_bcache_btree_write = internal global ptr @event_bcache_btree_write, section "_ftrace_events", align 4
@event_bcache_btree_node_alloc = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_btree_node, %union.anon.136 { ptr @__tracepoint_bcache_btree_node_alloc }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_btree_node }, ptr @print_fmt_btree_node, ptr null, %union.anon.137 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_bcache_btree_node_alloc = internal global ptr @event_bcache_btree_node_alloc, section "_ftrace_events", align 4
@event_bcache_btree_node_alloc_fail = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cache_set, %union.anon.136 { ptr @__tracepoint_bcache_btree_node_alloc_fail }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cache_set }, ptr @print_fmt_cache_set, ptr null, %union.anon.137 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_bcache_btree_node_alloc_fail = internal global ptr @event_bcache_btree_node_alloc_fail, section "_ftrace_events", align 4
@event_bcache_btree_node_free = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_btree_node, %union.anon.136 { ptr @__tracepoint_bcache_btree_node_free }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_btree_node }, ptr @print_fmt_btree_node, ptr null, %union.anon.137 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_bcache_btree_node_free = internal global ptr @event_bcache_btree_node_free, section "_ftrace_events", align 4
@trace_event_fields_bcache_btree_gc_coalesce = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.34, %union.anon.134 { %struct.anon.135 { ptr @.str.38, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_bcache_btree_gc_coalesce = internal global %struct.trace_event_class { ptr @str__bcache__trace_system_name, ptr @trace_event_raw_event_bcache_btree_gc_coalesce, ptr @perf_trace_bcache_btree_gc_coalesce, ptr @trace_event_reg, ptr @trace_event_fields_bcache_btree_gc_coalesce, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_bcache_btree_gc_coalesce, i64 24), ptr getelementptr (i8, ptr @event_class_bcache_btree_gc_coalesce, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_bcache_btree_gc_coalesce = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_bcache_btree_gc_coalesce, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_bcache_btree_gc_coalesce = internal global { [33 x i8], [63 x i8] } { [33 x i8] c"\22coalesced %u nodes\22, REC->nodes\00", [63 x i8] zeroinitializer }, align 32
@event_bcache_btree_gc_coalesce = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_bcache_btree_gc_coalesce, %union.anon.136 { ptr @__tracepoint_bcache_btree_gc_coalesce }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_bcache_btree_gc_coalesce }, ptr @print_fmt_bcache_btree_gc_coalesce, ptr null, %union.anon.137 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_bcache_btree_gc_coalesce = internal global ptr @event_bcache_btree_gc_coalesce, section "_ftrace_events", align 4
@event_bcache_gc_start = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cache_set, %union.anon.136 { ptr @__tracepoint_bcache_gc_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cache_set }, ptr @print_fmt_cache_set, ptr null, %union.anon.137 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_bcache_gc_start = internal global ptr @event_bcache_gc_start, section "_ftrace_events", align 4
@event_bcache_gc_end = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cache_set, %union.anon.136 { ptr @__tracepoint_bcache_gc_end }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cache_set }, ptr @print_fmt_cache_set, ptr null, %union.anon.137 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_bcache_gc_end = internal global ptr @event_bcache_gc_end, section "_ftrace_events", align 4
@event_bcache_gc_copy = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_bkey, %union.anon.136 { ptr @__tracepoint_bcache_gc_copy }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_bkey }, ptr @print_fmt_bkey, ptr null, %union.anon.137 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_bcache_gc_copy = internal global ptr @event_bcache_gc_copy, section "_ftrace_events", align 4
@event_bcache_gc_copy_collision = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_bkey, %union.anon.136 { ptr @__tracepoint_bcache_gc_copy_collision }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_bkey }, ptr @print_fmt_bkey, ptr null, %union.anon.137 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_bcache_gc_copy_collision = internal global ptr @event_bcache_gc_copy_collision, section "_ftrace_events", align 4
@trace_event_fields_bcache_btree_insert_key = internal global { [9 x %struct.trace_event_fields], [40 x i8] } { [9 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.14, %union.anon.134 { %struct.anon.135 { ptr @.str.40, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.134 { %struct.anon.135 { ptr @.str.41, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.134 { %struct.anon.135 { ptr @.str.13, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.134 { %struct.anon.135 { ptr @.str.15, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.134 { %struct.anon.135 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.42, %union.anon.134 { %struct.anon.135 { ptr @.str.17, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.42, %union.anon.134 { %struct.anon.135 { ptr @.str.43, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.42, %union.anon.134 { %struct.anon.135 { ptr @.str.44, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_bcache_btree_insert_key = internal global %struct.trace_event_class { ptr @str__bcache__trace_system_name, ptr @trace_event_raw_event_bcache_btree_insert_key, ptr @perf_trace_bcache_btree_insert_key, ptr @trace_event_reg, ptr @trace_event_fields_bcache_btree_insert_key, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_bcache_btree_insert_key, i64 24), ptr getelementptr (i8, ptr @event_class_bcache_btree_insert_key, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_bcache_btree_insert_key = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_bcache_btree_insert_key, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_bcache_btree_insert_key = internal global { [154 x i8], [38 x i8] } { [154 x i8] c"\22%u for %u at %llu(%u): %u:%llu len %u dirty %u\22, REC->status, REC->op, REC->btree_node, REC->btree_level, REC->inode, REC->offset, REC->size, REC->dirty\00", [38 x i8] zeroinitializer }, align 32
@event_bcache_btree_insert_key = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_bcache_btree_insert_key, %union.anon.136 { ptr @__tracepoint_bcache_btree_insert_key }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_bcache_btree_insert_key }, ptr @print_fmt_bcache_btree_insert_key, ptr null, %union.anon.137 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_bcache_btree_insert_key = internal global ptr @event_bcache_btree_insert_key, section "_ftrace_events", align 4
@trace_event_fields_btree_split = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.18, %union.anon.134 { %struct.anon.135 { ptr @.str.19, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.134 { %struct.anon.135 { ptr @.str.36, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_btree_split = internal global %struct.trace_event_class { ptr @str__bcache__trace_system_name, ptr @trace_event_raw_event_btree_split, ptr @perf_trace_btree_split, ptr @trace_event_reg, ptr @trace_event_fields_btree_split, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_btree_split, i64 24), ptr getelementptr (i8, ptr @event_class_btree_split, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_btree_split = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_btree_split, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_btree_split = internal global { [45 x i8], [51 x i8] } { [45 x i8] c"\22bucket %zu keys %u\22, REC->bucket, REC->keys\00", [51 x i8] zeroinitializer }, align 32
@event_bcache_btree_node_split = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_btree_split, %union.anon.136 { ptr @__tracepoint_bcache_btree_node_split }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_btree_split }, ptr @print_fmt_btree_split, ptr null, %union.anon.137 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_bcache_btree_node_split = internal global ptr @event_bcache_btree_node_split, section "_ftrace_events", align 4
@event_bcache_btree_node_compact = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_btree_split, %union.anon.136 { ptr @__tracepoint_bcache_btree_node_compact }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_btree_split }, ptr @print_fmt_btree_split, ptr null, %union.anon.137 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_bcache_btree_node_compact = internal global ptr @event_bcache_btree_node_compact, section "_ftrace_events", align 4
@event_bcache_btree_set_root = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_btree_node, %union.anon.136 { ptr @__tracepoint_bcache_btree_set_root }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_btree_node }, ptr @print_fmt_btree_node, ptr null, %union.anon.137 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_bcache_btree_set_root = internal global ptr @event_bcache_btree_set_root, section "_ftrace_events", align 4
@trace_event_fields_bcache_keyscan = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.47, %union.anon.134 { %struct.anon.135 { ptr @.str.48, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.47, %union.anon.134 { %struct.anon.135 { ptr @.str.49, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.50, %union.anon.134 { %struct.anon.135 { ptr @.str.51, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.47, %union.anon.134 { %struct.anon.135 { ptr @.str.52, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.50, %union.anon.134 { %struct.anon.135 { ptr @.str.53, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_bcache_keyscan = internal global %struct.trace_event_class { ptr @str__bcache__trace_system_name, ptr @trace_event_raw_event_bcache_keyscan, ptr @perf_trace_bcache_keyscan, ptr @trace_event_reg, ptr @trace_event_fields_bcache_keyscan, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_bcache_keyscan, i64 24), ptr getelementptr (i8, ptr @event_class_bcache_keyscan, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_bcache_keyscan = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_bcache_keyscan, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_bcache_keyscan = internal global { [125 x i8], [35 x i8] } { [125 x i8] c"\22found %u keys from %u:%llu to %u:%llu\22, REC->nr_found, REC->start_inode, REC->start_offset, REC->end_inode, REC->end_offset\00", [35 x i8] zeroinitializer }, align 32
@event_bcache_keyscan = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_bcache_keyscan, %union.anon.136 { ptr @__tracepoint_bcache_keyscan }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_bcache_keyscan }, ptr @print_fmt_bcache_keyscan, ptr null, %union.anon.137 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_bcache_keyscan = internal global ptr @event_bcache_keyscan, section "_ftrace_events", align 4
@trace_event_fields_bcache_invalidate = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.34, %union.anon.134 { %struct.anon.135 { ptr @.str.55, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.134 { %struct.anon.135 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.50, %union.anon.134 { %struct.anon.135 { ptr @.str.15, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_bcache_invalidate = internal global %struct.trace_event_class { ptr @str__bcache__trace_system_name, ptr @trace_event_raw_event_bcache_invalidate, ptr @perf_trace_bcache_invalidate, ptr @trace_event_reg, ptr @trace_event_fields_bcache_invalidate, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_bcache_invalidate, i64 24), ptr getelementptr (i8, ptr @event_class_bcache_invalidate, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_bcache_invalidate = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_bcache_invalidate, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_bcache_invalidate = internal global { [160 x i8], [32 x i8] } { [160 x i8] c"\22invalidated %u sectors at %d,%d sector=%llu\22, REC->sectors, ((unsigned int) ((REC->dev) >> 20)), ((unsigned int) ((REC->dev) & ((1U << 20) - 1))), REC->offset\00", [32 x i8] zeroinitializer }, align 32
@event_bcache_invalidate = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_bcache_invalidate, %union.anon.136 { ptr @__tracepoint_bcache_invalidate }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_bcache_invalidate }, ptr @print_fmt_bcache_invalidate, ptr null, %union.anon.137 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_bcache_invalidate = internal global ptr @event_bcache_invalidate, section "_ftrace_events", align 4
@trace_event_fields_bcache_alloc = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.134 { %struct.anon.135 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.50, %union.anon.134 { %struct.anon.135 { ptr @.str.15, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_bcache_alloc = internal global %struct.trace_event_class { ptr @str__bcache__trace_system_name, ptr @trace_event_raw_event_bcache_alloc, ptr @perf_trace_bcache_alloc, ptr @trace_event_reg, ptr @trace_event_fields_bcache_alloc, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_bcache_alloc, i64 24), ptr getelementptr (i8, ptr @event_class_bcache_alloc, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_bcache_alloc = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_bcache_alloc, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_bcache_alloc = internal global { [130 x i8], [62 x i8] } { [130 x i8] c"\22allocated %d,%d sector=%llu\22, ((unsigned int) ((REC->dev) >> 20)), ((unsigned int) ((REC->dev) & ((1U << 20) - 1))), REC->offset\00", [62 x i8] zeroinitializer }, align 32
@event_bcache_alloc = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_bcache_alloc, %union.anon.136 { ptr @__tracepoint_bcache_alloc }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_bcache_alloc }, ptr @print_fmt_bcache_alloc, ptr null, %union.anon.137 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_bcache_alloc = internal global ptr @event_bcache_alloc, section "_ftrace_events", align 4
@trace_event_fields_bcache_alloc_fail = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.134 { %struct.anon.135 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.134 { %struct.anon.135 { ptr @.str.58, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.134 { %struct.anon.135 { ptr @.str.59, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.134 { %struct.anon.135 { ptr @.str.60, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_bcache_alloc_fail = internal global %struct.trace_event_class { ptr @str__bcache__trace_system_name, ptr @trace_event_raw_event_bcache_alloc_fail, ptr @perf_trace_bcache_alloc_fail, ptr @trace_event_reg, ptr @trace_event_fields_bcache_alloc_fail, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_bcache_alloc_fail, i64 24), ptr getelementptr (i8, ptr @event_class_bcache_alloc_fail, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_bcache_alloc_fail = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_bcache_alloc_fail, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_bcache_alloc_fail = internal global { [177 x i8], [47 x i8] } { [177 x i8] c"\22alloc fail %d,%d free %u free_inc %u blocked %u\22, ((unsigned int) ((REC->dev) >> 20)), ((unsigned int) ((REC->dev) & ((1U << 20) - 1))), REC->free, REC->free_inc, REC->blocked\00", [47 x i8] zeroinitializer }, align 32
@event_bcache_alloc_fail = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_bcache_alloc_fail, %union.anon.136 { ptr @__tracepoint_bcache_alloc_fail }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_bcache_alloc_fail }, ptr @print_fmt_bcache_alloc_fail, ptr null, %union.anon.137 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_bcache_alloc_fail = internal global ptr @event_bcache_alloc_fail, section "_ftrace_events", align 4
@event_bcache_writeback = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_bkey, %union.anon.136 { ptr @__tracepoint_bcache_writeback }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_bkey }, ptr @print_fmt_bkey, ptr null, %union.anon.137 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_bcache_writeback = internal global ptr @event_bcache_writeback, section "_ftrace_events", align 4
@event_bcache_writeback_collision = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_bkey, %union.anon.136 { ptr @__tracepoint_bcache_writeback_collision }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_bkey }, ptr @print_fmt_bkey, ptr null, %union.anon.137 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_bcache_writeback_collision = internal global ptr @event_bcache_writeback_collision, section "_ftrace_events", align 4
@__bpf_trace_tp_map_bcache_request_start = internal global %union.anon.138 { %struct.bpf_raw_event_map { ptr @__tracepoint_bcache_request_start, ptr @__bpf_trace_bcache_request, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_bcache_request_end = internal global %union.anon.139 { %struct.bpf_raw_event_map { ptr @__tracepoint_bcache_request_end, ptr @__bpf_trace_bcache_request, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_bcache_bypass_sequential = internal global %union.anon.140 { %struct.bpf_raw_event_map { ptr @__tracepoint_bcache_bypass_sequential, ptr @__bpf_trace_bcache_bio, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_bcache_bypass_congested = internal global %union.anon.141 { %struct.bpf_raw_event_map { ptr @__tracepoint_bcache_bypass_congested, ptr @__bpf_trace_bcache_bio, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_bcache_read = internal global %union.anon.142 { %struct.bpf_raw_event_map { ptr @__tracepoint_bcache_read, ptr @__bpf_trace_bcache_read, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_bcache_write = internal global %union.anon.143 { %struct.bpf_raw_event_map { ptr @__tracepoint_bcache_write, ptr @__bpf_trace_bcache_write, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_bcache_read_retry = internal global %union.anon.144 { %struct.bpf_raw_event_map { ptr @__tracepoint_bcache_read_retry, ptr @__bpf_trace_bcache_bio, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_bcache_cache_insert = internal global %union.anon.145 { %struct.bpf_raw_event_map { ptr @__tracepoint_bcache_cache_insert, ptr @__bpf_trace_bkey, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_bcache_journal_replay_key = internal global %union.anon.146 { %struct.bpf_raw_event_map { ptr @__tracepoint_bcache_journal_replay_key, ptr @__bpf_trace_bkey, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_bcache_journal_full = internal global %union.anon.147 { %struct.bpf_raw_event_map { ptr @__tracepoint_bcache_journal_full, ptr @__bpf_trace_cache_set, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_bcache_journal_entry_full = internal global %union.anon.148 { %struct.bpf_raw_event_map { ptr @__tracepoint_bcache_journal_entry_full, ptr @__bpf_trace_cache_set, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_bcache_journal_write = internal global %union.anon.149 { %struct.bpf_raw_event_map { ptr @__tracepoint_bcache_journal_write, ptr @__bpf_trace_bcache_journal_write, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_bcache_btree_cache_cannibalize = internal global %union.anon.150 { %struct.bpf_raw_event_map { ptr @__tracepoint_bcache_btree_cache_cannibalize, ptr @__bpf_trace_cache_set, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_bcache_btree_read = internal global %union.anon.151 { %struct.bpf_raw_event_map { ptr @__tracepoint_bcache_btree_read, ptr @__bpf_trace_btree_node, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_bcache_btree_write = internal global %union.anon.152 { %struct.bpf_raw_event_map { ptr @__tracepoint_bcache_btree_write, ptr @__bpf_trace_bcache_btree_write, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_bcache_btree_node_alloc = internal global %union.anon.153 { %struct.bpf_raw_event_map { ptr @__tracepoint_bcache_btree_node_alloc, ptr @__bpf_trace_btree_node, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_bcache_btree_node_alloc_fail = internal global %union.anon.154 { %struct.bpf_raw_event_map { ptr @__tracepoint_bcache_btree_node_alloc_fail, ptr @__bpf_trace_cache_set, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_bcache_btree_node_free = internal global %union.anon.155 { %struct.bpf_raw_event_map { ptr @__tracepoint_bcache_btree_node_free, ptr @__bpf_trace_btree_node, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_bcache_btree_gc_coalesce = internal global %union.anon.156 { %struct.bpf_raw_event_map { ptr @__tracepoint_bcache_btree_gc_coalesce, ptr @__bpf_trace_bcache_btree_gc_coalesce, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_bcache_gc_start = internal global %union.anon.157 { %struct.bpf_raw_event_map { ptr @__tracepoint_bcache_gc_start, ptr @__bpf_trace_cache_set, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_bcache_gc_end = internal global %union.anon.158 { %struct.bpf_raw_event_map { ptr @__tracepoint_bcache_gc_end, ptr @__bpf_trace_cache_set, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_bcache_gc_copy = internal global %union.anon.159 { %struct.bpf_raw_event_map { ptr @__tracepoint_bcache_gc_copy, ptr @__bpf_trace_bkey, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_bcache_gc_copy_collision = internal global %union.anon.160 { %struct.bpf_raw_event_map { ptr @__tracepoint_bcache_gc_copy_collision, ptr @__bpf_trace_bkey, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_bcache_btree_insert_key = internal global %union.anon.161 { %struct.bpf_raw_event_map { ptr @__tracepoint_bcache_btree_insert_key, ptr @__bpf_trace_bcache_btree_insert_key, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_bcache_btree_node_split = internal global %union.anon.162 { %struct.bpf_raw_event_map { ptr @__tracepoint_bcache_btree_node_split, ptr @__bpf_trace_btree_split, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_bcache_btree_node_compact = internal global %union.anon.163 { %struct.bpf_raw_event_map { ptr @__tracepoint_bcache_btree_node_compact, ptr @__bpf_trace_btree_split, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_bcache_btree_set_root = internal global %union.anon.164 { %struct.bpf_raw_event_map { ptr @__tracepoint_bcache_btree_set_root, ptr @__bpf_trace_btree_node, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_bcache_keyscan = internal global %union.anon.165 { %struct.bpf_raw_event_map { ptr @__tracepoint_bcache_keyscan, ptr @__bpf_trace_bcache_keyscan, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_bcache_invalidate = internal global %union.anon.166 { %struct.bpf_raw_event_map { ptr @__tracepoint_bcache_invalidate, ptr @__bpf_trace_bcache_invalidate, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_bcache_alloc = internal global %union.anon.167 { %struct.bpf_raw_event_map { ptr @__tracepoint_bcache_alloc, ptr @__bpf_trace_bcache_alloc, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_bcache_alloc_fail = internal global %union.anon.168 { %struct.bpf_raw_event_map { ptr @__tracepoint_bcache_alloc_fail, ptr @__bpf_trace_bcache_alloc_fail, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_bcache_writeback = internal global %union.anon.169 { %struct.bpf_raw_event_map { ptr @__tracepoint_bcache_writeback, ptr @__bpf_trace_bkey, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_bcache_writeback_collision = internal global %union.anon.170 { %struct.bpf_raw_event_map { ptr @__tracepoint_bcache_writeback_collision, ptr @__bpf_trace_bkey, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__kstrtab___tracepoint_bcache_request_start = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_bcache_request_start = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_bcache_request_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_bcache_request_start to i32), ptr @__kstrtab___tracepoint_bcache_request_start, ptr @__kstrtabns___tracepoint_bcache_request_start }, section "___ksymtab_gpl+__tracepoint_bcache_request_start", align 4
@__kstrtab___traceiter_bcache_request_start = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_bcache_request_start = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_bcache_request_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_bcache_request_start to i32), ptr @__kstrtab___traceiter_bcache_request_start, ptr @__kstrtabns___traceiter_bcache_request_start }, section "___ksymtab_gpl+__traceiter_bcache_request_start", align 4
@__kstrtab___SCK__tp_func_bcache_request_start = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_bcache_request_start = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_bcache_request_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_bcache_request_start to i32), ptr @__kstrtab___SCK__tp_func_bcache_request_start, ptr @__kstrtabns___SCK__tp_func_bcache_request_start }, section "___ksymtab_gpl+__SCK__tp_func_bcache_request_start", align 4
@__kstrtab___tracepoint_bcache_request_end = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_bcache_request_end = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_bcache_request_end = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_bcache_request_end to i32), ptr @__kstrtab___tracepoint_bcache_request_end, ptr @__kstrtabns___tracepoint_bcache_request_end }, section "___ksymtab_gpl+__tracepoint_bcache_request_end", align 4
@__kstrtab___traceiter_bcache_request_end = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_bcache_request_end = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_bcache_request_end = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_bcache_request_end to i32), ptr @__kstrtab___traceiter_bcache_request_end, ptr @__kstrtabns___traceiter_bcache_request_end }, section "___ksymtab_gpl+__traceiter_bcache_request_end", align 4
@__kstrtab___SCK__tp_func_bcache_request_end = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_bcache_request_end = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_bcache_request_end = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_bcache_request_end to i32), ptr @__kstrtab___SCK__tp_func_bcache_request_end, ptr @__kstrtabns___SCK__tp_func_bcache_request_end }, section "___ksymtab_gpl+__SCK__tp_func_bcache_request_end", align 4
@__kstrtab___tracepoint_bcache_bypass_sequential = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_bcache_bypass_sequential = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_bcache_bypass_sequential = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_bcache_bypass_sequential to i32), ptr @__kstrtab___tracepoint_bcache_bypass_sequential, ptr @__kstrtabns___tracepoint_bcache_bypass_sequential }, section "___ksymtab_gpl+__tracepoint_bcache_bypass_sequential", align 4
@__kstrtab___traceiter_bcache_bypass_sequential = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_bcache_bypass_sequential = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_bcache_bypass_sequential = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_bcache_bypass_sequential to i32), ptr @__kstrtab___traceiter_bcache_bypass_sequential, ptr @__kstrtabns___traceiter_bcache_bypass_sequential }, section "___ksymtab_gpl+__traceiter_bcache_bypass_sequential", align 4
@__kstrtab___SCK__tp_func_bcache_bypass_sequential = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_bcache_bypass_sequential = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_bcache_bypass_sequential = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_bcache_bypass_sequential to i32), ptr @__kstrtab___SCK__tp_func_bcache_bypass_sequential, ptr @__kstrtabns___SCK__tp_func_bcache_bypass_sequential }, section "___ksymtab_gpl+__SCK__tp_func_bcache_bypass_sequential", align 4
@__kstrtab___tracepoint_bcache_bypass_congested = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_bcache_bypass_congested = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_bcache_bypass_congested = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_bcache_bypass_congested to i32), ptr @__kstrtab___tracepoint_bcache_bypass_congested, ptr @__kstrtabns___tracepoint_bcache_bypass_congested }, section "___ksymtab_gpl+__tracepoint_bcache_bypass_congested", align 4
@__kstrtab___traceiter_bcache_bypass_congested = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_bcache_bypass_congested = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_bcache_bypass_congested = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_bcache_bypass_congested to i32), ptr @__kstrtab___traceiter_bcache_bypass_congested, ptr @__kstrtabns___traceiter_bcache_bypass_congested }, section "___ksymtab_gpl+__traceiter_bcache_bypass_congested", align 4
@__kstrtab___SCK__tp_func_bcache_bypass_congested = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_bcache_bypass_congested = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_bcache_bypass_congested = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_bcache_bypass_congested to i32), ptr @__kstrtab___SCK__tp_func_bcache_bypass_congested, ptr @__kstrtabns___SCK__tp_func_bcache_bypass_congested }, section "___ksymtab_gpl+__SCK__tp_func_bcache_bypass_congested", align 4
@__kstrtab___tracepoint_bcache_read = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_bcache_read = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_bcache_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_bcache_read to i32), ptr @__kstrtab___tracepoint_bcache_read, ptr @__kstrtabns___tracepoint_bcache_read }, section "___ksymtab_gpl+__tracepoint_bcache_read", align 4
@__kstrtab___traceiter_bcache_read = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_bcache_read = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_bcache_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_bcache_read to i32), ptr @__kstrtab___traceiter_bcache_read, ptr @__kstrtabns___traceiter_bcache_read }, section "___ksymtab_gpl+__traceiter_bcache_read", align 4
@__kstrtab___SCK__tp_func_bcache_read = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_bcache_read = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_bcache_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_bcache_read to i32), ptr @__kstrtab___SCK__tp_func_bcache_read, ptr @__kstrtabns___SCK__tp_func_bcache_read }, section "___ksymtab_gpl+__SCK__tp_func_bcache_read", align 4
@__kstrtab___tracepoint_bcache_write = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_bcache_write = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_bcache_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_bcache_write to i32), ptr @__kstrtab___tracepoint_bcache_write, ptr @__kstrtabns___tracepoint_bcache_write }, section "___ksymtab_gpl+__tracepoint_bcache_write", align 4
@__kstrtab___traceiter_bcache_write = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_bcache_write = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_bcache_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_bcache_write to i32), ptr @__kstrtab___traceiter_bcache_write, ptr @__kstrtabns___traceiter_bcache_write }, section "___ksymtab_gpl+__traceiter_bcache_write", align 4
@__kstrtab___SCK__tp_func_bcache_write = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_bcache_write = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_bcache_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_bcache_write to i32), ptr @__kstrtab___SCK__tp_func_bcache_write, ptr @__kstrtabns___SCK__tp_func_bcache_write }, section "___ksymtab_gpl+__SCK__tp_func_bcache_write", align 4
@__kstrtab___tracepoint_bcache_read_retry = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_bcache_read_retry = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_bcache_read_retry = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_bcache_read_retry to i32), ptr @__kstrtab___tracepoint_bcache_read_retry, ptr @__kstrtabns___tracepoint_bcache_read_retry }, section "___ksymtab_gpl+__tracepoint_bcache_read_retry", align 4
@__kstrtab___traceiter_bcache_read_retry = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_bcache_read_retry = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_bcache_read_retry = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_bcache_read_retry to i32), ptr @__kstrtab___traceiter_bcache_read_retry, ptr @__kstrtabns___traceiter_bcache_read_retry }, section "___ksymtab_gpl+__traceiter_bcache_read_retry", align 4
@__kstrtab___SCK__tp_func_bcache_read_retry = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_bcache_read_retry = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_bcache_read_retry = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_bcache_read_retry to i32), ptr @__kstrtab___SCK__tp_func_bcache_read_retry, ptr @__kstrtabns___SCK__tp_func_bcache_read_retry }, section "___ksymtab_gpl+__SCK__tp_func_bcache_read_retry", align 4
@__kstrtab___tracepoint_bcache_cache_insert = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_bcache_cache_insert = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_bcache_cache_insert = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_bcache_cache_insert to i32), ptr @__kstrtab___tracepoint_bcache_cache_insert, ptr @__kstrtabns___tracepoint_bcache_cache_insert }, section "___ksymtab_gpl+__tracepoint_bcache_cache_insert", align 4
@__kstrtab___traceiter_bcache_cache_insert = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_bcache_cache_insert = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_bcache_cache_insert = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_bcache_cache_insert to i32), ptr @__kstrtab___traceiter_bcache_cache_insert, ptr @__kstrtabns___traceiter_bcache_cache_insert }, section "___ksymtab_gpl+__traceiter_bcache_cache_insert", align 4
@__kstrtab___SCK__tp_func_bcache_cache_insert = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_bcache_cache_insert = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_bcache_cache_insert = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_bcache_cache_insert to i32), ptr @__kstrtab___SCK__tp_func_bcache_cache_insert, ptr @__kstrtabns___SCK__tp_func_bcache_cache_insert }, section "___ksymtab_gpl+__SCK__tp_func_bcache_cache_insert", align 4
@__kstrtab___tracepoint_bcache_journal_replay_key = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_bcache_journal_replay_key = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_bcache_journal_replay_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_bcache_journal_replay_key to i32), ptr @__kstrtab___tracepoint_bcache_journal_replay_key, ptr @__kstrtabns___tracepoint_bcache_journal_replay_key }, section "___ksymtab_gpl+__tracepoint_bcache_journal_replay_key", align 4
@__kstrtab___traceiter_bcache_journal_replay_key = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_bcache_journal_replay_key = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_bcache_journal_replay_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_bcache_journal_replay_key to i32), ptr @__kstrtab___traceiter_bcache_journal_replay_key, ptr @__kstrtabns___traceiter_bcache_journal_replay_key }, section "___ksymtab_gpl+__traceiter_bcache_journal_replay_key", align 4
@__kstrtab___SCK__tp_func_bcache_journal_replay_key = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_bcache_journal_replay_key = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_bcache_journal_replay_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_bcache_journal_replay_key to i32), ptr @__kstrtab___SCK__tp_func_bcache_journal_replay_key, ptr @__kstrtabns___SCK__tp_func_bcache_journal_replay_key }, section "___ksymtab_gpl+__SCK__tp_func_bcache_journal_replay_key", align 4
@__kstrtab___tracepoint_bcache_journal_write = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_bcache_journal_write = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_bcache_journal_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_bcache_journal_write to i32), ptr @__kstrtab___tracepoint_bcache_journal_write, ptr @__kstrtabns___tracepoint_bcache_journal_write }, section "___ksymtab_gpl+__tracepoint_bcache_journal_write", align 4
@__kstrtab___traceiter_bcache_journal_write = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_bcache_journal_write = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_bcache_journal_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_bcache_journal_write to i32), ptr @__kstrtab___traceiter_bcache_journal_write, ptr @__kstrtabns___traceiter_bcache_journal_write }, section "___ksymtab_gpl+__traceiter_bcache_journal_write", align 4
@__kstrtab___SCK__tp_func_bcache_journal_write = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_bcache_journal_write = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_bcache_journal_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_bcache_journal_write to i32), ptr @__kstrtab___SCK__tp_func_bcache_journal_write, ptr @__kstrtabns___SCK__tp_func_bcache_journal_write }, section "___ksymtab_gpl+__SCK__tp_func_bcache_journal_write", align 4
@__kstrtab___tracepoint_bcache_journal_full = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_bcache_journal_full = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_bcache_journal_full = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_bcache_journal_full to i32), ptr @__kstrtab___tracepoint_bcache_journal_full, ptr @__kstrtabns___tracepoint_bcache_journal_full }, section "___ksymtab_gpl+__tracepoint_bcache_journal_full", align 4
@__kstrtab___traceiter_bcache_journal_full = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_bcache_journal_full = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_bcache_journal_full = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_bcache_journal_full to i32), ptr @__kstrtab___traceiter_bcache_journal_full, ptr @__kstrtabns___traceiter_bcache_journal_full }, section "___ksymtab_gpl+__traceiter_bcache_journal_full", align 4
@__kstrtab___SCK__tp_func_bcache_journal_full = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_bcache_journal_full = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_bcache_journal_full = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_bcache_journal_full to i32), ptr @__kstrtab___SCK__tp_func_bcache_journal_full, ptr @__kstrtabns___SCK__tp_func_bcache_journal_full }, section "___ksymtab_gpl+__SCK__tp_func_bcache_journal_full", align 4
@__kstrtab___tracepoint_bcache_journal_entry_full = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_bcache_journal_entry_full = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_bcache_journal_entry_full = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_bcache_journal_entry_full to i32), ptr @__kstrtab___tracepoint_bcache_journal_entry_full, ptr @__kstrtabns___tracepoint_bcache_journal_entry_full }, section "___ksymtab_gpl+__tracepoint_bcache_journal_entry_full", align 4
@__kstrtab___traceiter_bcache_journal_entry_full = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_bcache_journal_entry_full = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_bcache_journal_entry_full = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_bcache_journal_entry_full to i32), ptr @__kstrtab___traceiter_bcache_journal_entry_full, ptr @__kstrtabns___traceiter_bcache_journal_entry_full }, section "___ksymtab_gpl+__traceiter_bcache_journal_entry_full", align 4
@__kstrtab___SCK__tp_func_bcache_journal_entry_full = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_bcache_journal_entry_full = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_bcache_journal_entry_full = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_bcache_journal_entry_full to i32), ptr @__kstrtab___SCK__tp_func_bcache_journal_entry_full, ptr @__kstrtabns___SCK__tp_func_bcache_journal_entry_full }, section "___ksymtab_gpl+__SCK__tp_func_bcache_journal_entry_full", align 4
@__kstrtab___tracepoint_bcache_btree_cache_cannibalize = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_bcache_btree_cache_cannibalize = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_bcache_btree_cache_cannibalize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_bcache_btree_cache_cannibalize to i32), ptr @__kstrtab___tracepoint_bcache_btree_cache_cannibalize, ptr @__kstrtabns___tracepoint_bcache_btree_cache_cannibalize }, section "___ksymtab_gpl+__tracepoint_bcache_btree_cache_cannibalize", align 4
@__kstrtab___traceiter_bcache_btree_cache_cannibalize = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_bcache_btree_cache_cannibalize = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_bcache_btree_cache_cannibalize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_bcache_btree_cache_cannibalize to i32), ptr @__kstrtab___traceiter_bcache_btree_cache_cannibalize, ptr @__kstrtabns___traceiter_bcache_btree_cache_cannibalize }, section "___ksymtab_gpl+__traceiter_bcache_btree_cache_cannibalize", align 4
@__kstrtab___SCK__tp_func_bcache_btree_cache_cannibalize = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_bcache_btree_cache_cannibalize = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_bcache_btree_cache_cannibalize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_bcache_btree_cache_cannibalize to i32), ptr @__kstrtab___SCK__tp_func_bcache_btree_cache_cannibalize, ptr @__kstrtabns___SCK__tp_func_bcache_btree_cache_cannibalize }, section "___ksymtab_gpl+__SCK__tp_func_bcache_btree_cache_cannibalize", align 4
@__kstrtab___tracepoint_bcache_btree_read = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_bcache_btree_read = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_bcache_btree_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_bcache_btree_read to i32), ptr @__kstrtab___tracepoint_bcache_btree_read, ptr @__kstrtabns___tracepoint_bcache_btree_read }, section "___ksymtab_gpl+__tracepoint_bcache_btree_read", align 4
@__kstrtab___traceiter_bcache_btree_read = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_bcache_btree_read = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_bcache_btree_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_bcache_btree_read to i32), ptr @__kstrtab___traceiter_bcache_btree_read, ptr @__kstrtabns___traceiter_bcache_btree_read }, section "___ksymtab_gpl+__traceiter_bcache_btree_read", align 4
@__kstrtab___SCK__tp_func_bcache_btree_read = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_bcache_btree_read = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_bcache_btree_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_bcache_btree_read to i32), ptr @__kstrtab___SCK__tp_func_bcache_btree_read, ptr @__kstrtabns___SCK__tp_func_bcache_btree_read }, section "___ksymtab_gpl+__SCK__tp_func_bcache_btree_read", align 4
@__kstrtab___tracepoint_bcache_btree_write = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_bcache_btree_write = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_bcache_btree_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_bcache_btree_write to i32), ptr @__kstrtab___tracepoint_bcache_btree_write, ptr @__kstrtabns___tracepoint_bcache_btree_write }, section "___ksymtab_gpl+__tracepoint_bcache_btree_write", align 4
@__kstrtab___traceiter_bcache_btree_write = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_bcache_btree_write = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_bcache_btree_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_bcache_btree_write to i32), ptr @__kstrtab___traceiter_bcache_btree_write, ptr @__kstrtabns___traceiter_bcache_btree_write }, section "___ksymtab_gpl+__traceiter_bcache_btree_write", align 4
@__kstrtab___SCK__tp_func_bcache_btree_write = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_bcache_btree_write = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_bcache_btree_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_bcache_btree_write to i32), ptr @__kstrtab___SCK__tp_func_bcache_btree_write, ptr @__kstrtabns___SCK__tp_func_bcache_btree_write }, section "___ksymtab_gpl+__SCK__tp_func_bcache_btree_write", align 4
@__kstrtab___tracepoint_bcache_btree_node_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_bcache_btree_node_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_bcache_btree_node_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_bcache_btree_node_alloc to i32), ptr @__kstrtab___tracepoint_bcache_btree_node_alloc, ptr @__kstrtabns___tracepoint_bcache_btree_node_alloc }, section "___ksymtab_gpl+__tracepoint_bcache_btree_node_alloc", align 4
@__kstrtab___traceiter_bcache_btree_node_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_bcache_btree_node_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_bcache_btree_node_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_bcache_btree_node_alloc to i32), ptr @__kstrtab___traceiter_bcache_btree_node_alloc, ptr @__kstrtabns___traceiter_bcache_btree_node_alloc }, section "___ksymtab_gpl+__traceiter_bcache_btree_node_alloc", align 4
@__kstrtab___SCK__tp_func_bcache_btree_node_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_bcache_btree_node_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_bcache_btree_node_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_bcache_btree_node_alloc to i32), ptr @__kstrtab___SCK__tp_func_bcache_btree_node_alloc, ptr @__kstrtabns___SCK__tp_func_bcache_btree_node_alloc }, section "___ksymtab_gpl+__SCK__tp_func_bcache_btree_node_alloc", align 4
@__kstrtab___tracepoint_bcache_btree_node_alloc_fail = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_bcache_btree_node_alloc_fail = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_bcache_btree_node_alloc_fail = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_bcache_btree_node_alloc_fail to i32), ptr @__kstrtab___tracepoint_bcache_btree_node_alloc_fail, ptr @__kstrtabns___tracepoint_bcache_btree_node_alloc_fail }, section "___ksymtab_gpl+__tracepoint_bcache_btree_node_alloc_fail", align 4
@__kstrtab___traceiter_bcache_btree_node_alloc_fail = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_bcache_btree_node_alloc_fail = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_bcache_btree_node_alloc_fail = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_bcache_btree_node_alloc_fail to i32), ptr @__kstrtab___traceiter_bcache_btree_node_alloc_fail, ptr @__kstrtabns___traceiter_bcache_btree_node_alloc_fail }, section "___ksymtab_gpl+__traceiter_bcache_btree_node_alloc_fail", align 4
@__kstrtab___SCK__tp_func_bcache_btree_node_alloc_fail = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_bcache_btree_node_alloc_fail = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_bcache_btree_node_alloc_fail = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_bcache_btree_node_alloc_fail to i32), ptr @__kstrtab___SCK__tp_func_bcache_btree_node_alloc_fail, ptr @__kstrtabns___SCK__tp_func_bcache_btree_node_alloc_fail }, section "___ksymtab_gpl+__SCK__tp_func_bcache_btree_node_alloc_fail", align 4
@__kstrtab___tracepoint_bcache_btree_node_free = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_bcache_btree_node_free = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_bcache_btree_node_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_bcache_btree_node_free to i32), ptr @__kstrtab___tracepoint_bcache_btree_node_free, ptr @__kstrtabns___tracepoint_bcache_btree_node_free }, section "___ksymtab_gpl+__tracepoint_bcache_btree_node_free", align 4
@__kstrtab___traceiter_bcache_btree_node_free = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_bcache_btree_node_free = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_bcache_btree_node_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_bcache_btree_node_free to i32), ptr @__kstrtab___traceiter_bcache_btree_node_free, ptr @__kstrtabns___traceiter_bcache_btree_node_free }, section "___ksymtab_gpl+__traceiter_bcache_btree_node_free", align 4
@__kstrtab___SCK__tp_func_bcache_btree_node_free = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_bcache_btree_node_free = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_bcache_btree_node_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_bcache_btree_node_free to i32), ptr @__kstrtab___SCK__tp_func_bcache_btree_node_free, ptr @__kstrtabns___SCK__tp_func_bcache_btree_node_free }, section "___ksymtab_gpl+__SCK__tp_func_bcache_btree_node_free", align 4
@__kstrtab___tracepoint_bcache_btree_gc_coalesce = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_bcache_btree_gc_coalesce = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_bcache_btree_gc_coalesce = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_bcache_btree_gc_coalesce to i32), ptr @__kstrtab___tracepoint_bcache_btree_gc_coalesce, ptr @__kstrtabns___tracepoint_bcache_btree_gc_coalesce }, section "___ksymtab_gpl+__tracepoint_bcache_btree_gc_coalesce", align 4
@__kstrtab___traceiter_bcache_btree_gc_coalesce = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_bcache_btree_gc_coalesce = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_bcache_btree_gc_coalesce = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_bcache_btree_gc_coalesce to i32), ptr @__kstrtab___traceiter_bcache_btree_gc_coalesce, ptr @__kstrtabns___traceiter_bcache_btree_gc_coalesce }, section "___ksymtab_gpl+__traceiter_bcache_btree_gc_coalesce", align 4
@__kstrtab___SCK__tp_func_bcache_btree_gc_coalesce = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_bcache_btree_gc_coalesce = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_bcache_btree_gc_coalesce = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_bcache_btree_gc_coalesce to i32), ptr @__kstrtab___SCK__tp_func_bcache_btree_gc_coalesce, ptr @__kstrtabns___SCK__tp_func_bcache_btree_gc_coalesce }, section "___ksymtab_gpl+__SCK__tp_func_bcache_btree_gc_coalesce", align 4
@__kstrtab___tracepoint_bcache_gc_start = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_bcache_gc_start = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_bcache_gc_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_bcache_gc_start to i32), ptr @__kstrtab___tracepoint_bcache_gc_start, ptr @__kstrtabns___tracepoint_bcache_gc_start }, section "___ksymtab_gpl+__tracepoint_bcache_gc_start", align 4
@__kstrtab___traceiter_bcache_gc_start = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_bcache_gc_start = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_bcache_gc_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_bcache_gc_start to i32), ptr @__kstrtab___traceiter_bcache_gc_start, ptr @__kstrtabns___traceiter_bcache_gc_start }, section "___ksymtab_gpl+__traceiter_bcache_gc_start", align 4
@__kstrtab___SCK__tp_func_bcache_gc_start = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_bcache_gc_start = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_bcache_gc_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_bcache_gc_start to i32), ptr @__kstrtab___SCK__tp_func_bcache_gc_start, ptr @__kstrtabns___SCK__tp_func_bcache_gc_start }, section "___ksymtab_gpl+__SCK__tp_func_bcache_gc_start", align 4
@__kstrtab___tracepoint_bcache_gc_end = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_bcache_gc_end = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_bcache_gc_end = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_bcache_gc_end to i32), ptr @__kstrtab___tracepoint_bcache_gc_end, ptr @__kstrtabns___tracepoint_bcache_gc_end }, section "___ksymtab_gpl+__tracepoint_bcache_gc_end", align 4
@__kstrtab___traceiter_bcache_gc_end = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_bcache_gc_end = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_bcache_gc_end = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_bcache_gc_end to i32), ptr @__kstrtab___traceiter_bcache_gc_end, ptr @__kstrtabns___traceiter_bcache_gc_end }, section "___ksymtab_gpl+__traceiter_bcache_gc_end", align 4
@__kstrtab___SCK__tp_func_bcache_gc_end = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_bcache_gc_end = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_bcache_gc_end = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_bcache_gc_end to i32), ptr @__kstrtab___SCK__tp_func_bcache_gc_end, ptr @__kstrtabns___SCK__tp_func_bcache_gc_end }, section "___ksymtab_gpl+__SCK__tp_func_bcache_gc_end", align 4
@__kstrtab___tracepoint_bcache_gc_copy = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_bcache_gc_copy = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_bcache_gc_copy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_bcache_gc_copy to i32), ptr @__kstrtab___tracepoint_bcache_gc_copy, ptr @__kstrtabns___tracepoint_bcache_gc_copy }, section "___ksymtab_gpl+__tracepoint_bcache_gc_copy", align 4
@__kstrtab___traceiter_bcache_gc_copy = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_bcache_gc_copy = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_bcache_gc_copy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_bcache_gc_copy to i32), ptr @__kstrtab___traceiter_bcache_gc_copy, ptr @__kstrtabns___traceiter_bcache_gc_copy }, section "___ksymtab_gpl+__traceiter_bcache_gc_copy", align 4
@__kstrtab___SCK__tp_func_bcache_gc_copy = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_bcache_gc_copy = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_bcache_gc_copy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_bcache_gc_copy to i32), ptr @__kstrtab___SCK__tp_func_bcache_gc_copy, ptr @__kstrtabns___SCK__tp_func_bcache_gc_copy }, section "___ksymtab_gpl+__SCK__tp_func_bcache_gc_copy", align 4
@__kstrtab___tracepoint_bcache_gc_copy_collision = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_bcache_gc_copy_collision = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_bcache_gc_copy_collision = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_bcache_gc_copy_collision to i32), ptr @__kstrtab___tracepoint_bcache_gc_copy_collision, ptr @__kstrtabns___tracepoint_bcache_gc_copy_collision }, section "___ksymtab_gpl+__tracepoint_bcache_gc_copy_collision", align 4
@__kstrtab___traceiter_bcache_gc_copy_collision = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_bcache_gc_copy_collision = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_bcache_gc_copy_collision = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_bcache_gc_copy_collision to i32), ptr @__kstrtab___traceiter_bcache_gc_copy_collision, ptr @__kstrtabns___traceiter_bcache_gc_copy_collision }, section "___ksymtab_gpl+__traceiter_bcache_gc_copy_collision", align 4
@__kstrtab___SCK__tp_func_bcache_gc_copy_collision = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_bcache_gc_copy_collision = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_bcache_gc_copy_collision = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_bcache_gc_copy_collision to i32), ptr @__kstrtab___SCK__tp_func_bcache_gc_copy_collision, ptr @__kstrtabns___SCK__tp_func_bcache_gc_copy_collision }, section "___ksymtab_gpl+__SCK__tp_func_bcache_gc_copy_collision", align 4
@__kstrtab___tracepoint_bcache_btree_insert_key = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_bcache_btree_insert_key = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_bcache_btree_insert_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_bcache_btree_insert_key to i32), ptr @__kstrtab___tracepoint_bcache_btree_insert_key, ptr @__kstrtabns___tracepoint_bcache_btree_insert_key }, section "___ksymtab_gpl+__tracepoint_bcache_btree_insert_key", align 4
@__kstrtab___traceiter_bcache_btree_insert_key = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_bcache_btree_insert_key = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_bcache_btree_insert_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_bcache_btree_insert_key to i32), ptr @__kstrtab___traceiter_bcache_btree_insert_key, ptr @__kstrtabns___traceiter_bcache_btree_insert_key }, section "___ksymtab_gpl+__traceiter_bcache_btree_insert_key", align 4
@__kstrtab___SCK__tp_func_bcache_btree_insert_key = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_bcache_btree_insert_key = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_bcache_btree_insert_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_bcache_btree_insert_key to i32), ptr @__kstrtab___SCK__tp_func_bcache_btree_insert_key, ptr @__kstrtabns___SCK__tp_func_bcache_btree_insert_key }, section "___ksymtab_gpl+__SCK__tp_func_bcache_btree_insert_key", align 4
@__kstrtab___tracepoint_bcache_btree_node_split = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_bcache_btree_node_split = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_bcache_btree_node_split = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_bcache_btree_node_split to i32), ptr @__kstrtab___tracepoint_bcache_btree_node_split, ptr @__kstrtabns___tracepoint_bcache_btree_node_split }, section "___ksymtab_gpl+__tracepoint_bcache_btree_node_split", align 4
@__kstrtab___traceiter_bcache_btree_node_split = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_bcache_btree_node_split = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_bcache_btree_node_split = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_bcache_btree_node_split to i32), ptr @__kstrtab___traceiter_bcache_btree_node_split, ptr @__kstrtabns___traceiter_bcache_btree_node_split }, section "___ksymtab_gpl+__traceiter_bcache_btree_node_split", align 4
@__kstrtab___SCK__tp_func_bcache_btree_node_split = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_bcache_btree_node_split = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_bcache_btree_node_split = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_bcache_btree_node_split to i32), ptr @__kstrtab___SCK__tp_func_bcache_btree_node_split, ptr @__kstrtabns___SCK__tp_func_bcache_btree_node_split }, section "___ksymtab_gpl+__SCK__tp_func_bcache_btree_node_split", align 4
@__kstrtab___tracepoint_bcache_btree_node_compact = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_bcache_btree_node_compact = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_bcache_btree_node_compact = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_bcache_btree_node_compact to i32), ptr @__kstrtab___tracepoint_bcache_btree_node_compact, ptr @__kstrtabns___tracepoint_bcache_btree_node_compact }, section "___ksymtab_gpl+__tracepoint_bcache_btree_node_compact", align 4
@__kstrtab___traceiter_bcache_btree_node_compact = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_bcache_btree_node_compact = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_bcache_btree_node_compact = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_bcache_btree_node_compact to i32), ptr @__kstrtab___traceiter_bcache_btree_node_compact, ptr @__kstrtabns___traceiter_bcache_btree_node_compact }, section "___ksymtab_gpl+__traceiter_bcache_btree_node_compact", align 4
@__kstrtab___SCK__tp_func_bcache_btree_node_compact = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_bcache_btree_node_compact = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_bcache_btree_node_compact = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_bcache_btree_node_compact to i32), ptr @__kstrtab___SCK__tp_func_bcache_btree_node_compact, ptr @__kstrtabns___SCK__tp_func_bcache_btree_node_compact }, section "___ksymtab_gpl+__SCK__tp_func_bcache_btree_node_compact", align 4
@__kstrtab___tracepoint_bcache_btree_set_root = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_bcache_btree_set_root = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_bcache_btree_set_root = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_bcache_btree_set_root to i32), ptr @__kstrtab___tracepoint_bcache_btree_set_root, ptr @__kstrtabns___tracepoint_bcache_btree_set_root }, section "___ksymtab_gpl+__tracepoint_bcache_btree_set_root", align 4
@__kstrtab___traceiter_bcache_btree_set_root = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_bcache_btree_set_root = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_bcache_btree_set_root = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_bcache_btree_set_root to i32), ptr @__kstrtab___traceiter_bcache_btree_set_root, ptr @__kstrtabns___traceiter_bcache_btree_set_root }, section "___ksymtab_gpl+__traceiter_bcache_btree_set_root", align 4
@__kstrtab___SCK__tp_func_bcache_btree_set_root = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_bcache_btree_set_root = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_bcache_btree_set_root = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_bcache_btree_set_root to i32), ptr @__kstrtab___SCK__tp_func_bcache_btree_set_root, ptr @__kstrtabns___SCK__tp_func_bcache_btree_set_root }, section "___ksymtab_gpl+__SCK__tp_func_bcache_btree_set_root", align 4
@__kstrtab___tracepoint_bcache_invalidate = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_bcache_invalidate = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_bcache_invalidate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_bcache_invalidate to i32), ptr @__kstrtab___tracepoint_bcache_invalidate, ptr @__kstrtabns___tracepoint_bcache_invalidate }, section "___ksymtab_gpl+__tracepoint_bcache_invalidate", align 4
@__kstrtab___traceiter_bcache_invalidate = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_bcache_invalidate = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_bcache_invalidate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_bcache_invalidate to i32), ptr @__kstrtab___traceiter_bcache_invalidate, ptr @__kstrtabns___traceiter_bcache_invalidate }, section "___ksymtab_gpl+__traceiter_bcache_invalidate", align 4
@__kstrtab___SCK__tp_func_bcache_invalidate = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_bcache_invalidate = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_bcache_invalidate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_bcache_invalidate to i32), ptr @__kstrtab___SCK__tp_func_bcache_invalidate, ptr @__kstrtabns___SCK__tp_func_bcache_invalidate }, section "___ksymtab_gpl+__SCK__tp_func_bcache_invalidate", align 4
@__kstrtab___tracepoint_bcache_alloc_fail = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_bcache_alloc_fail = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_bcache_alloc_fail = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_bcache_alloc_fail to i32), ptr @__kstrtab___tracepoint_bcache_alloc_fail, ptr @__kstrtabns___tracepoint_bcache_alloc_fail }, section "___ksymtab_gpl+__tracepoint_bcache_alloc_fail", align 4
@__kstrtab___traceiter_bcache_alloc_fail = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_bcache_alloc_fail = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_bcache_alloc_fail = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_bcache_alloc_fail to i32), ptr @__kstrtab___traceiter_bcache_alloc_fail, ptr @__kstrtabns___traceiter_bcache_alloc_fail }, section "___ksymtab_gpl+__traceiter_bcache_alloc_fail", align 4
@__kstrtab___SCK__tp_func_bcache_alloc_fail = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_bcache_alloc_fail = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_bcache_alloc_fail = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_bcache_alloc_fail to i32), ptr @__kstrtab___SCK__tp_func_bcache_alloc_fail, ptr @__kstrtabns___SCK__tp_func_bcache_alloc_fail }, section "___ksymtab_gpl+__SCK__tp_func_bcache_alloc_fail", align 4
@__kstrtab___tracepoint_bcache_writeback = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_bcache_writeback = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_bcache_writeback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_bcache_writeback to i32), ptr @__kstrtab___tracepoint_bcache_writeback, ptr @__kstrtabns___tracepoint_bcache_writeback }, section "___ksymtab_gpl+__tracepoint_bcache_writeback", align 4
@__kstrtab___traceiter_bcache_writeback = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_bcache_writeback = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_bcache_writeback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_bcache_writeback to i32), ptr @__kstrtab___traceiter_bcache_writeback, ptr @__kstrtabns___traceiter_bcache_writeback }, section "___ksymtab_gpl+__traceiter_bcache_writeback", align 4
@__kstrtab___SCK__tp_func_bcache_writeback = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_bcache_writeback = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_bcache_writeback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_bcache_writeback to i32), ptr @__kstrtab___SCK__tp_func_bcache_writeback, ptr @__kstrtabns___SCK__tp_func_bcache_writeback }, section "___ksymtab_gpl+__SCK__tp_func_bcache_writeback", align 4
@__kstrtab___tracepoint_bcache_writeback_collision = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_bcache_writeback_collision = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_bcache_writeback_collision = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_bcache_writeback_collision to i32), ptr @__kstrtab___tracepoint_bcache_writeback_collision, ptr @__kstrtabns___tracepoint_bcache_writeback_collision }, section "___ksymtab_gpl+__tracepoint_bcache_writeback_collision", align 4
@__kstrtab___traceiter_bcache_writeback_collision = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_bcache_writeback_collision = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_bcache_writeback_collision = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_bcache_writeback_collision to i32), ptr @__kstrtab___traceiter_bcache_writeback_collision, ptr @__kstrtabns___traceiter_bcache_writeback_collision }, section "___ksymtab_gpl+__traceiter_bcache_writeback_collision", align 4
@__kstrtab___SCK__tp_func_bcache_writeback_collision = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_bcache_writeback_collision = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_bcache_writeback_collision = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_bcache_writeback_collision to i32), ptr @__kstrtab___SCK__tp_func_bcache_writeback_collision, ptr @__kstrtabns___SCK__tp_func_bcache_writeback_collision }, section "___ksymtab_gpl+__SCK__tp_func_bcache_writeback_collision", align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dev_t\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dev\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"orig_major\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"orig_minor\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sector_t\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sector\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"orig_sector\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nr_sector\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"char[6]\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rwbs\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"size\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"inode\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u64\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"offset\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bool\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dirty\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"size_t\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bucket\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%d,%d %s %llu + %u (from %d,%d @ %llu)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%d,%d  %s %llu + %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cache_hit\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bypass\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%d,%d  %s %llu + %u hit %u bypass %u\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"char[16]\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"uuid\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"writeback\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%pU inode %llu  %s %llu + %u hit %u bypass %u\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%u:%llu len %u dirty %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pU\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nr_keys\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%d,%d  %s %llu + %u keys %u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bucket %zu\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"unsigned\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"block\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"keys\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bucket %zu written block %u + %u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nodes\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"coalesced %u nodes\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"btree_node\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"btree_level\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"u8\00", [29 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"op\00", [29 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%u for %u at %llu(%u): %u:%llu len %u dirty %u\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bucket %zu keys %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"__u32\00", [26 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nr_found\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"start_inode\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"__u64\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"start_offset\00", [19 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"end_inode\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"end_offset\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"found %u keys from %u:%llu to %u:%llu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sectors\00", [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"invalidated %u sectors at %d,%d sector=%llu\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"allocated %d,%d sector=%llu\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"free\00", [27 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"free_inc\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"blocked\00", [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"alloc fail %d,%d free %u free_inc %u blocked %u\0A\00", [47 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_ = private constant [29 x i8] c"../drivers/md/bcache/trace.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [31 x i8] c"str__bcache__trace_system_name\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 36, i32 1 }
@___asan_gen_.65 = private unnamed_addr constant [34 x i8] c"trace_event_fields_bcache_request\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [24 x i8] c"trace_event_fields_bkey\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [30 x i8] c"trace_event_fields_btree_node\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [38 x i8] c"trace_event_type_funcs_bcache_request\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [25 x i8] c"print_fmt_bcache_request\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [27 x i8] c"event_bcache_request_start\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 80, i32 1 }
@___asan_gen_.83 = private unnamed_addr constant [25 x i8] c"event_bcache_request_end\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 85, i32 1 }
@___asan_gen_.86 = private unnamed_addr constant [30 x i8] c"trace_event_fields_bcache_bio\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [34 x i8] c"trace_event_type_funcs_bcache_bio\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [21 x i8] c"print_fmt_bcache_bio\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [31 x i8] c"event_bcache_bypass_sequential\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 113, i32 1 }
@___asan_gen_.98 = private unnamed_addr constant [30 x i8] c"event_bcache_bypass_congested\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 118, i32 1 }
@___asan_gen_.101 = private unnamed_addr constant [31 x i8] c"trace_event_fields_bcache_read\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [35 x i8] c"trace_event_type_funcs_bcache_read\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [22 x i8] c"print_fmt_bcache_read\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [18 x i8] c"event_bcache_read\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [32 x i8] c"trace_event_fields_bcache_write\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [36 x i8] c"trace_event_type_funcs_bcache_write\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [23 x i8] c"print_fmt_bcache_write\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [19 x i8] c"event_bcache_write\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [24 x i8] c"event_bcache_read_retry\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 182, i32 1 }
@___asan_gen_.128 = private unnamed_addr constant [28 x i8] c"trace_event_type_funcs_bkey\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [15 x i8] c"print_fmt_bkey\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [26 x i8] c"event_bcache_cache_insert\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 187, i32 1 }
@___asan_gen_.137 = private unnamed_addr constant [29 x i8] c"trace_event_fields_cache_set\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [32 x i8] c"event_bcache_journal_replay_key\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 209, i32 1 }
@___asan_gen_.143 = private unnamed_addr constant [33 x i8] c"trace_event_type_funcs_cache_set\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [20 x i8] c"print_fmt_cache_set\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [26 x i8] c"event_bcache_journal_full\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 214, i32 1 }
@___asan_gen_.152 = private unnamed_addr constant [32 x i8] c"event_bcache_journal_entry_full\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 219, i32 1 }
@___asan_gen_.155 = private unnamed_addr constant [40 x i8] c"trace_event_fields_bcache_journal_write\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [44 x i8] c"trace_event_type_funcs_bcache_journal_write\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [31 x i8] c"print_fmt_bcache_journal_write\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [27 x i8] c"event_bcache_journal_write\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [37 x i8] c"event_bcache_btree_cache_cannibalize\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 252, i32 1 }
@___asan_gen_.170 = private unnamed_addr constant [34 x i8] c"trace_event_type_funcs_btree_node\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [21 x i8] c"print_fmt_btree_node\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [24 x i8] c"event_bcache_btree_read\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 257, i32 1 }
@___asan_gen_.179 = private unnamed_addr constant [38 x i8] c"trace_event_fields_bcache_btree_write\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [42 x i8] c"trace_event_type_funcs_bcache_btree_write\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [29 x i8] c"print_fmt_bcache_btree_write\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [25 x i8] c"event_bcache_btree_write\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [30 x i8] c"event_bcache_btree_node_alloc\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 282, i32 1 }
@___asan_gen_.194 = private unnamed_addr constant [35 x i8] c"event_bcache_btree_node_alloc_fail\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 287, i32 1 }
@___asan_gen_.197 = private unnamed_addr constant [29 x i8] c"event_bcache_btree_node_free\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 292, i32 1 }
@___asan_gen_.200 = private unnamed_addr constant [44 x i8] c"trace_event_fields_bcache_btree_gc_coalesce\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [48 x i8] c"trace_event_type_funcs_bcache_btree_gc_coalesce\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [35 x i8] c"print_fmt_bcache_btree_gc_coalesce\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [31 x i8] c"event_bcache_btree_gc_coalesce\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [22 x i8] c"event_bcache_gc_start\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 312, i32 1 }
@___asan_gen_.215 = private unnamed_addr constant [20 x i8] c"event_bcache_gc_end\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 317, i32 1 }
@___asan_gen_.218 = private unnamed_addr constant [21 x i8] c"event_bcache_gc_copy\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 322, i32 1 }
@___asan_gen_.221 = private unnamed_addr constant [31 x i8] c"event_bcache_gc_copy_collision\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 327, i32 1 }
@___asan_gen_.224 = private unnamed_addr constant [43 x i8] c"trace_event_fields_bcache_btree_insert_key\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [47 x i8] c"trace_event_type_funcs_bcache_btree_insert_key\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [34 x i8] c"print_fmt_bcache_btree_insert_key\00", align 1
@___asan_gen_.233 = private unnamed_addr constant [30 x i8] c"event_bcache_btree_insert_key\00", align 1
@___asan_gen_.236 = private unnamed_addr constant [31 x i8] c"trace_event_fields_btree_split\00", align 1
@___asan_gen_.239 = private unnamed_addr constant [35 x i8] c"trace_event_type_funcs_btree_split\00", align 1
@___asan_gen_.242 = private unnamed_addr constant [22 x i8] c"print_fmt_btree_split\00", align 1
@___asan_gen_.245 = private unnamed_addr constant [30 x i8] c"event_bcache_btree_node_split\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 382, i32 1 }
@___asan_gen_.248 = private unnamed_addr constant [32 x i8] c"event_bcache_btree_node_compact\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 387, i32 1 }
@___asan_gen_.251 = private unnamed_addr constant [28 x i8] c"event_bcache_btree_set_root\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 392, i32 1 }
@___asan_gen_.254 = private unnamed_addr constant [34 x i8] c"trace_event_fields_bcache_keyscan\00", align 1
@___asan_gen_.257 = private unnamed_addr constant [38 x i8] c"trace_event_type_funcs_bcache_keyscan\00", align 1
@___asan_gen_.260 = private unnamed_addr constant [25 x i8] c"print_fmt_bcache_keyscan\00", align 1
@___asan_gen_.263 = private unnamed_addr constant [21 x i8] c"event_bcache_keyscan\00", align 1
@___asan_gen_.266 = private unnamed_addr constant [37 x i8] c"trace_event_fields_bcache_invalidate\00", align 1
@___asan_gen_.269 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_bcache_invalidate\00", align 1
@___asan_gen_.272 = private unnamed_addr constant [28 x i8] c"print_fmt_bcache_invalidate\00", align 1
@___asan_gen_.275 = private unnamed_addr constant [24 x i8] c"event_bcache_invalidate\00", align 1
@___asan_gen_.278 = private unnamed_addr constant [32 x i8] c"trace_event_fields_bcache_alloc\00", align 1
@___asan_gen_.281 = private unnamed_addr constant [36 x i8] c"trace_event_type_funcs_bcache_alloc\00", align 1
@___asan_gen_.284 = private unnamed_addr constant [23 x i8] c"print_fmt_bcache_alloc\00", align 1
@___asan_gen_.287 = private unnamed_addr constant [19 x i8] c"event_bcache_alloc\00", align 1
@___asan_gen_.290 = private unnamed_addr constant [37 x i8] c"trace_event_fields_bcache_alloc_fail\00", align 1
@___asan_gen_.293 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_bcache_alloc_fail\00", align 1
@___asan_gen_.296 = private unnamed_addr constant [28 x i8] c"print_fmt_bcache_alloc_fail\00", align 1
@___asan_gen_.299 = private unnamed_addr constant [24 x i8] c"event_bcache_alloc_fail\00", align 1
@___asan_gen_.302 = private unnamed_addr constant [23 x i8] c"event_bcache_writeback\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 492, i32 1 }
@___asan_gen_.305 = private unnamed_addr constant [33 x i8] c"event_bcache_writeback_collision\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 497, i32 1 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 10, i32 1 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 90, i32 1 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 123, i32 1 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 151, i32 1 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 41, i32 1 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 194, i32 1 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 224, i32 1 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 63, i32 1 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 262, i32 1 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 297, i32 1 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 332, i32 1 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 365, i32 1 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 397, i32 1 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 428, i32 1 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 449, i32 1 }
@___asan_gen_.491 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.492 = private unnamed_addr constant [33 x i8] c"../include/trace/events/bcache.h\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 467, i32 1 }
@llvm.compiler.used = appending global [385 x ptr] [ptr @__bpf_trace_tp_map_bcache_alloc, ptr @__bpf_trace_tp_map_bcache_alloc_fail, ptr @__bpf_trace_tp_map_bcache_btree_cache_cannibalize, ptr @__bpf_trace_tp_map_bcache_btree_gc_coalesce, ptr @__bpf_trace_tp_map_bcache_btree_insert_key, ptr @__bpf_trace_tp_map_bcache_btree_node_alloc, ptr @__bpf_trace_tp_map_bcache_btree_node_alloc_fail, ptr @__bpf_trace_tp_map_bcache_btree_node_compact, ptr @__bpf_trace_tp_map_bcache_btree_node_free, ptr @__bpf_trace_tp_map_bcache_btree_node_split, ptr @__bpf_trace_tp_map_bcache_btree_read, ptr @__bpf_trace_tp_map_bcache_btree_set_root, ptr @__bpf_trace_tp_map_bcache_btree_write, ptr @__bpf_trace_tp_map_bcache_bypass_congested, ptr @__bpf_trace_tp_map_bcache_bypass_sequential, ptr @__bpf_trace_tp_map_bcache_cache_insert, ptr @__bpf_trace_tp_map_bcache_gc_copy, ptr @__bpf_trace_tp_map_bcache_gc_copy_collision, ptr @__bpf_trace_tp_map_bcache_gc_end, ptr @__bpf_trace_tp_map_bcache_gc_start, ptr @__bpf_trace_tp_map_bcache_invalidate, ptr @__bpf_trace_tp_map_bcache_journal_entry_full, ptr @__bpf_trace_tp_map_bcache_journal_full, ptr @__bpf_trace_tp_map_bcache_journal_replay_key, ptr @__bpf_trace_tp_map_bcache_journal_write, ptr @__bpf_trace_tp_map_bcache_keyscan, ptr @__bpf_trace_tp_map_bcache_read, ptr @__bpf_trace_tp_map_bcache_read_retry, ptr @__bpf_trace_tp_map_bcache_request_end, ptr @__bpf_trace_tp_map_bcache_request_start, ptr @__bpf_trace_tp_map_bcache_write, ptr @__bpf_trace_tp_map_bcache_writeback, ptr @__bpf_trace_tp_map_bcache_writeback_collision, ptr @__event_bcache_alloc, ptr @__event_bcache_alloc_fail, ptr @__event_bcache_btree_cache_cannibalize, ptr @__event_bcache_btree_gc_coalesce, ptr @__event_bcache_btree_insert_key, ptr @__event_bcache_btree_node_alloc, ptr @__event_bcache_btree_node_alloc_fail, ptr @__event_bcache_btree_node_compact, ptr @__event_bcache_btree_node_free, ptr @__event_bcache_btree_node_split, ptr @__event_bcache_btree_read, ptr @__event_bcache_btree_set_root, ptr @__event_bcache_btree_write, ptr @__event_bcache_bypass_congested, ptr @__event_bcache_bypass_sequential, ptr @__event_bcache_cache_insert, ptr @__event_bcache_gc_copy, ptr @__event_bcache_gc_copy_collision, ptr @__event_bcache_gc_end, ptr @__event_bcache_gc_start, ptr @__event_bcache_invalidate, ptr @__event_bcache_journal_entry_full, ptr @__event_bcache_journal_full, ptr @__event_bcache_journal_replay_key, ptr @__event_bcache_journal_write, ptr @__event_bcache_keyscan, ptr @__event_bcache_read, ptr @__event_bcache_read_retry, ptr @__event_bcache_request_end, ptr @__event_bcache_request_start, ptr @__event_bcache_write, ptr @__event_bcache_writeback, ptr @__event_bcache_writeback_collision, ptr @__ksymtab___SCK__tp_func_bcache_alloc_fail, ptr @__ksymtab___SCK__tp_func_bcache_btree_cache_cannibalize, ptr @__ksymtab___SCK__tp_func_bcache_btree_gc_coalesce, ptr @__ksymtab___SCK__tp_func_bcache_btree_insert_key, ptr @__ksymtab___SCK__tp_func_bcache_btree_node_alloc, ptr @__ksymtab___SCK__tp_func_bcache_btree_node_alloc_fail, ptr @__ksymtab___SCK__tp_func_bcache_btree_node_compact, ptr @__ksymtab___SCK__tp_func_bcache_btree_node_free, ptr @__ksymtab___SCK__tp_func_bcache_btree_node_split, ptr @__ksymtab___SCK__tp_func_bcache_btree_read, ptr @__ksymtab___SCK__tp_func_bcache_btree_set_root, ptr @__ksymtab___SCK__tp_func_bcache_btree_write, ptr @__ksymtab___SCK__tp_func_bcache_bypass_congested, ptr @__ksymtab___SCK__tp_func_bcache_bypass_sequential, ptr @__ksymtab___SCK__tp_func_bcache_cache_insert, ptr @__ksymtab___SCK__tp_func_bcache_gc_copy, ptr @__ksymtab___SCK__tp_func_bcache_gc_copy_collision, ptr @__ksymtab___SCK__tp_func_bcache_gc_end, ptr @__ksymtab___SCK__tp_func_bcache_gc_start, ptr @__ksymtab___SCK__tp_func_bcache_invalidate, ptr @__ksymtab___SCK__tp_func_bcache_journal_entry_full, ptr @__ksymtab___SCK__tp_func_bcache_journal_full, ptr @__ksymtab___SCK__tp_func_bcache_journal_replay_key, ptr @__ksymtab___SCK__tp_func_bcache_journal_write, ptr @__ksymtab___SCK__tp_func_bcache_read, ptr @__ksymtab___SCK__tp_func_bcache_read_retry, ptr @__ksymtab___SCK__tp_func_bcache_request_end, ptr @__ksymtab___SCK__tp_func_bcache_request_start, ptr @__ksymtab___SCK__tp_func_bcache_write, ptr @__ksymtab___SCK__tp_func_bcache_writeback, ptr @__ksymtab___SCK__tp_func_bcache_writeback_collision, ptr @__ksymtab___traceiter_bcache_alloc_fail, ptr @__ksymtab___traceiter_bcache_btree_cache_cannibalize, ptr @__ksymtab___traceiter_bcache_btree_gc_coalesce, ptr @__ksymtab___traceiter_bcache_btree_insert_key, ptr @__ksymtab___traceiter_bcache_btree_node_alloc, ptr @__ksymtab___traceiter_bcache_btree_node_alloc_fail, ptr @__ksymtab___traceiter_bcache_btree_node_compact, ptr @__ksymtab___traceiter_bcache_btree_node_free, ptr @__ksymtab___traceiter_bcache_btree_node_split, ptr @__ksymtab___traceiter_bcache_btree_read, ptr @__ksymtab___traceiter_bcache_btree_set_root, ptr @__ksymtab___traceiter_bcache_btree_write, ptr @__ksymtab___traceiter_bcache_bypass_congested, ptr @__ksymtab___traceiter_bcache_bypass_sequential, ptr @__ksymtab___traceiter_bcache_cache_insert, ptr @__ksymtab___traceiter_bcache_gc_copy, ptr @__ksymtab___traceiter_bcache_gc_copy_collision, ptr @__ksymtab___traceiter_bcache_gc_end, ptr @__ksymtab___traceiter_bcache_gc_start, ptr @__ksymtab___traceiter_bcache_invalidate, ptr @__ksymtab___traceiter_bcache_journal_entry_full, ptr @__ksymtab___traceiter_bcache_journal_full, ptr @__ksymtab___traceiter_bcache_journal_replay_key, ptr @__ksymtab___traceiter_bcache_journal_write, ptr @__ksymtab___traceiter_bcache_read, ptr @__ksymtab___traceiter_bcache_read_retry, ptr @__ksymtab___traceiter_bcache_request_end, ptr @__ksymtab___traceiter_bcache_request_start, ptr @__ksymtab___traceiter_bcache_write, ptr @__ksymtab___traceiter_bcache_writeback, ptr @__ksymtab___traceiter_bcache_writeback_collision, ptr @__ksymtab___tracepoint_bcache_alloc_fail, ptr @__ksymtab___tracepoint_bcache_btree_cache_cannibalize, ptr @__ksymtab___tracepoint_bcache_btree_gc_coalesce, ptr @__ksymtab___tracepoint_bcache_btree_insert_key, ptr @__ksymtab___tracepoint_bcache_btree_node_alloc, ptr @__ksymtab___tracepoint_bcache_btree_node_alloc_fail, ptr @__ksymtab___tracepoint_bcache_btree_node_compact, ptr @__ksymtab___tracepoint_bcache_btree_node_free, ptr @__ksymtab___tracepoint_bcache_btree_node_split, ptr @__ksymtab___tracepoint_bcache_btree_read, ptr @__ksymtab___tracepoint_bcache_btree_set_root, ptr @__ksymtab___tracepoint_bcache_btree_write, ptr @__ksymtab___tracepoint_bcache_bypass_congested, ptr @__ksymtab___tracepoint_bcache_bypass_sequential, ptr @__ksymtab___tracepoint_bcache_cache_insert, ptr @__ksymtab___tracepoint_bcache_gc_copy, ptr @__ksymtab___tracepoint_bcache_gc_copy_collision, ptr @__ksymtab___tracepoint_bcache_gc_end, ptr @__ksymtab___tracepoint_bcache_gc_start, ptr @__ksymtab___tracepoint_bcache_invalidate, ptr @__ksymtab___tracepoint_bcache_journal_entry_full, ptr @__ksymtab___tracepoint_bcache_journal_full, ptr @__ksymtab___tracepoint_bcache_journal_replay_key, ptr @__ksymtab___tracepoint_bcache_journal_write, ptr @__ksymtab___tracepoint_bcache_read, ptr @__ksymtab___tracepoint_bcache_read_retry, ptr @__ksymtab___tracepoint_bcache_request_end, ptr @__ksymtab___tracepoint_bcache_request_start, ptr @__ksymtab___tracepoint_bcache_write, ptr @__ksymtab___tracepoint_bcache_writeback, ptr @__ksymtab___tracepoint_bcache_writeback_collision, ptr @__tracepoint_bcache_alloc, ptr @__tracepoint_bcache_alloc_fail, ptr @__tracepoint_bcache_btree_cache_cannibalize, ptr @__tracepoint_bcache_btree_gc_coalesce, ptr @__tracepoint_bcache_btree_insert_key, ptr @__tracepoint_bcache_btree_node_alloc, ptr @__tracepoint_bcache_btree_node_alloc_fail, ptr @__tracepoint_bcache_btree_node_compact, ptr @__tracepoint_bcache_btree_node_free, ptr @__tracepoint_bcache_btree_node_split, ptr @__tracepoint_bcache_btree_read, ptr @__tracepoint_bcache_btree_set_root, ptr @__tracepoint_bcache_btree_write, ptr @__tracepoint_bcache_bypass_congested, ptr @__tracepoint_bcache_bypass_sequential, ptr @__tracepoint_bcache_cache_insert, ptr @__tracepoint_bcache_gc_copy, ptr @__tracepoint_bcache_gc_copy_collision, ptr @__tracepoint_bcache_gc_end, ptr @__tracepoint_bcache_gc_start, ptr @__tracepoint_bcache_invalidate, ptr @__tracepoint_bcache_journal_entry_full, ptr @__tracepoint_bcache_journal_full, ptr @__tracepoint_bcache_journal_replay_key, ptr @__tracepoint_bcache_journal_write, ptr @__tracepoint_bcache_keyscan, ptr @__tracepoint_bcache_read, ptr @__tracepoint_bcache_read_retry, ptr @__tracepoint_bcache_request_end, ptr @__tracepoint_bcache_request_start, ptr @__tracepoint_bcache_write, ptr @__tracepoint_bcache_writeback, ptr @__tracepoint_bcache_writeback_collision, ptr @__tracepoint_ptr_bcache_alloc, ptr @__tracepoint_ptr_bcache_alloc_fail, ptr @__tracepoint_ptr_bcache_btree_cache_cannibalize, ptr @__tracepoint_ptr_bcache_btree_gc_coalesce, ptr @__tracepoint_ptr_bcache_btree_insert_key, ptr @__tracepoint_ptr_bcache_btree_node_alloc, ptr @__tracepoint_ptr_bcache_btree_node_alloc_fail, ptr @__tracepoint_ptr_bcache_btree_node_compact, ptr @__tracepoint_ptr_bcache_btree_node_free, ptr @__tracepoint_ptr_bcache_btree_node_split, ptr @__tracepoint_ptr_bcache_btree_read, ptr @__tracepoint_ptr_bcache_btree_set_root, ptr @__tracepoint_ptr_bcache_btree_write, ptr @__tracepoint_ptr_bcache_bypass_congested, ptr @__tracepoint_ptr_bcache_bypass_sequential, ptr @__tracepoint_ptr_bcache_cache_insert, ptr @__tracepoint_ptr_bcache_gc_copy, ptr @__tracepoint_ptr_bcache_gc_copy_collision, ptr @__tracepoint_ptr_bcache_gc_end, ptr @__tracepoint_ptr_bcache_gc_start, ptr @__tracepoint_ptr_bcache_invalidate, ptr @__tracepoint_ptr_bcache_journal_entry_full, ptr @__tracepoint_ptr_bcache_journal_full, ptr @__tracepoint_ptr_bcache_journal_replay_key, ptr @__tracepoint_ptr_bcache_journal_write, ptr @__tracepoint_ptr_bcache_keyscan, ptr @__tracepoint_ptr_bcache_read, ptr @__tracepoint_ptr_bcache_read_retry, ptr @__tracepoint_ptr_bcache_request_end, ptr @__tracepoint_ptr_bcache_request_start, ptr @__tracepoint_ptr_bcache_write, ptr @__tracepoint_ptr_bcache_writeback, ptr @__tracepoint_ptr_bcache_writeback_collision, ptr @event_bcache_alloc, ptr @event_bcache_alloc_fail, ptr @event_bcache_btree_cache_cannibalize, ptr @event_bcache_btree_gc_coalesce, ptr @event_bcache_btree_insert_key, ptr @event_bcache_btree_node_alloc, ptr @event_bcache_btree_node_alloc_fail, ptr @event_bcache_btree_node_compact, ptr @event_bcache_btree_node_free, ptr @event_bcache_btree_node_split, ptr @event_bcache_btree_read, ptr @event_bcache_btree_set_root, ptr @event_bcache_btree_write, ptr @event_bcache_bypass_congested, ptr @event_bcache_bypass_sequential, ptr @event_bcache_cache_insert, ptr @event_bcache_gc_copy, ptr @event_bcache_gc_copy_collision, ptr @event_bcache_gc_end, ptr @event_bcache_gc_start, ptr @event_bcache_invalidate, ptr @event_bcache_journal_entry_full, ptr @event_bcache_journal_full, ptr @event_bcache_journal_replay_key, ptr @event_bcache_journal_write, ptr @event_bcache_keyscan, ptr @event_bcache_read, ptr @event_bcache_read_retry, ptr @event_bcache_request_end, ptr @event_bcache_request_start, ptr @event_bcache_write, ptr @event_bcache_writeback, ptr @event_bcache_writeback_collision, ptr @event_class_bcache_alloc, ptr @event_class_bcache_alloc_fail, ptr @event_class_bcache_bio, ptr @event_class_bcache_btree_gc_coalesce, ptr @event_class_bcache_btree_insert_key, ptr @event_class_bcache_btree_write, ptr @event_class_bcache_invalidate, ptr @event_class_bcache_journal_write, ptr @event_class_bcache_keyscan, ptr @event_class_bcache_read, ptr @event_class_bcache_request, ptr @event_class_bcache_write, ptr @event_class_bkey, ptr @event_class_btree_node, ptr @event_class_btree_split, ptr @event_class_cache_set, ptr @str__bcache__trace_system_name, ptr @trace_event_fields_bcache_request, ptr @trace_event_fields_bkey, ptr @trace_event_fields_btree_node, ptr @trace_event_type_funcs_bcache_request, ptr @print_fmt_bcache_request, ptr @trace_event_fields_bcache_bio, ptr @trace_event_type_funcs_bcache_bio, ptr @print_fmt_bcache_bio, ptr @trace_event_fields_bcache_read, ptr @trace_event_type_funcs_bcache_read, ptr @print_fmt_bcache_read, ptr @trace_event_fields_bcache_write, ptr @trace_event_type_funcs_bcache_write, ptr @print_fmt_bcache_write, ptr @trace_event_type_funcs_bkey, ptr @print_fmt_bkey, ptr @trace_event_fields_cache_set, ptr @trace_event_type_funcs_cache_set, ptr @print_fmt_cache_set, ptr @trace_event_fields_bcache_journal_write, ptr @trace_event_type_funcs_bcache_journal_write, ptr @print_fmt_bcache_journal_write, ptr @trace_event_type_funcs_btree_node, ptr @print_fmt_btree_node, ptr @trace_event_fields_bcache_btree_write, ptr @trace_event_type_funcs_bcache_btree_write, ptr @print_fmt_bcache_btree_write, ptr @trace_event_fields_bcache_btree_gc_coalesce, ptr @trace_event_type_funcs_bcache_btree_gc_coalesce, ptr @print_fmt_bcache_btree_gc_coalesce, ptr @trace_event_fields_bcache_btree_insert_key, ptr @trace_event_type_funcs_bcache_btree_insert_key, ptr @print_fmt_bcache_btree_insert_key, ptr @trace_event_fields_btree_split, ptr @trace_event_type_funcs_btree_split, ptr @print_fmt_btree_split, ptr @trace_event_fields_bcache_keyscan, ptr @trace_event_type_funcs_bcache_keyscan, ptr @print_fmt_bcache_keyscan, ptr @trace_event_fields_bcache_invalidate, ptr @trace_event_type_funcs_bcache_invalidate, ptr @print_fmt_bcache_invalidate, ptr @trace_event_fields_bcache_alloc, ptr @trace_event_type_funcs_bcache_alloc, ptr @print_fmt_bcache_alloc, ptr @trace_event_fields_bcache_alloc_fail, ptr @trace_event_type_funcs_bcache_alloc_fail, ptr @print_fmt_bcache_alloc_fail, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61], section "llvm.metadata"
@0 = internal global [144 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__bcache__trace_system_name to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_bcache_request to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_bkey to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_btree_node to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_bcache_request to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_bcache_request to i32), i32 260, i32 352, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_bcache_request_start to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_bcache_request_end to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_bcache_bio to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_bcache_bio to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_bcache_bio to i32), i32 169, i32 224, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_bcache_bypass_sequential to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_bcache_bypass_congested to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_bcache_read to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_bcache_read to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_bcache_read to i32), i32 215, i32 256, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_bcache_read to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_bcache_write to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_bcache_write to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_bcache_write to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_bcache_write to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_bcache_read_retry to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_bkey to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_bkey to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_bcache_cache_insert to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cache_set to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_bcache_journal_replay_key to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cache_set to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cache_set to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_bcache_journal_full to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_bcache_journal_entry_full to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_bcache_journal_write to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_bcache_journal_write to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_bcache_journal_write to i32), i32 191, i32 224, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_bcache_journal_write to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_bcache_btree_cache_cannibalize to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_btree_node to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_btree_node to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_bcache_btree_read to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_bcache_btree_write to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_bcache_btree_write to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_bcache_btree_write to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_bcache_btree_write to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_bcache_btree_node_alloc to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_bcache_btree_node_alloc_fail to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_bcache_btree_node_free to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_bcache_btree_gc_coalesce to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_bcache_btree_gc_coalesce to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_bcache_btree_gc_coalesce to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_bcache_btree_gc_coalesce to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_bcache_gc_start to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_bcache_gc_end to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_bcache_gc_copy to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_bcache_gc_copy_collision to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_bcache_btree_insert_key to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_bcache_btree_insert_key to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_bcache_btree_insert_key to i32), i32 154, i32 192, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_bcache_btree_insert_key to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_btree_split to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_btree_split to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_btree_split to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_bcache_btree_node_split to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_bcache_btree_node_compact to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_bcache_btree_set_root to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_bcache_keyscan to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_bcache_keyscan to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_bcache_keyscan to i32), i32 125, i32 160, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_bcache_keyscan to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_bcache_invalidate to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_bcache_invalidate to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_bcache_invalidate to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_bcache_invalidate to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_bcache_alloc to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_bcache_alloc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_bcache_alloc to i32), i32 130, i32 192, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_bcache_alloc to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_bcache_alloc_fail to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_bcache_alloc_fail to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_bcache_alloc_fail to i32), i32 177, i32 224, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_bcache_alloc_fail to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_bcache_writeback to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_bcache_writeback_collision to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_bcache_request_start(ptr nocapture readnone %__data, ptr noundef %d, ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_bcache_request_start, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %d, ptr noundef %bio) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_bcache_request_end(ptr nocapture readnone %__data, ptr noundef %d, ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_bcache_request_end, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %d, ptr noundef %bio) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_bcache_bypass_sequential(ptr nocapture readnone %__data, ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_bcache_bypass_sequential, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %bio) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_bcache_bypass_congested(ptr nocapture readnone %__data, ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_bcache_bypass_congested, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %bio) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_bcache_read(ptr nocapture readnone %__data, ptr noundef %bio, i1 noundef zeroext %hit, i1 noundef zeroext %bypass) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_bcache_read, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body3_crit_edge

entry.do.body3_crit_edge:                         ; preds = %entry
  br label %do.body3

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body3:                                         ; preds = %do.body3.do.body3_crit_edge, %entry.do.body3_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body3.do.body3_crit_edge ], [ %0, %entry.do.body3_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %bio, i1 noundef zeroext %hit, i1 noundef zeroext %bypass) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool12.not = icmp eq ptr %6, null
  br i1 %tobool12.not, label %do.body3.if.end_crit_edge, label %do.body3.do.body3_crit_edge

do.body3.do.body3_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body3

do.body3.if.end_crit_edge:                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body3.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_bcache_write(ptr nocapture readnone %__data, ptr noundef %c, i64 noundef %inode, ptr noundef %bio, i1 noundef zeroext %writeback, i1 noundef zeroext %bypass) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_bcache_write, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body3_crit_edge

entry.do.body3_crit_edge:                         ; preds = %entry
  br label %do.body3

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body3:                                         ; preds = %do.body3.do.body3_crit_edge, %entry.do.body3_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body3.do.body3_crit_edge ], [ %0, %entry.do.body3_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %c, i64 noundef %inode, ptr noundef %bio, i1 noundef zeroext %writeback, i1 noundef zeroext %bypass) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool12.not = icmp eq ptr %6, null
  br i1 %tobool12.not, label %do.body3.if.end_crit_edge, label %do.body3.do.body3_crit_edge

do.body3.do.body3_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body3

do.body3.if.end_crit_edge:                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body3.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_bcache_read_retry(ptr nocapture readnone %__data, ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_bcache_read_retry, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %bio) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_bcache_cache_insert(ptr nocapture readnone %__data, ptr noundef %k) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_bcache_cache_insert, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %k) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_bcache_journal_replay_key(ptr nocapture readnone %__data, ptr noundef %k) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_bcache_journal_replay_key, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %k) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_bcache_journal_full(ptr nocapture readnone %__data, ptr noundef %c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_bcache_journal_full, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %c) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_bcache_journal_entry_full(ptr nocapture readnone %__data, ptr noundef %c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_bcache_journal_entry_full, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %c) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_bcache_journal_write(ptr nocapture readnone %__data, ptr noundef %bio, i32 noundef %keys) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_bcache_journal_write, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %bio, i32 noundef %keys) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_bcache_btree_cache_cannibalize(ptr nocapture readnone %__data, ptr noundef %c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_bcache_btree_cache_cannibalize, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %c) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_bcache_btree_read(ptr nocapture readnone %__data, ptr noundef %b) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_bcache_btree_read, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %b) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_bcache_btree_write(ptr nocapture readnone %__data, ptr noundef %b) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_bcache_btree_write, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %b) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_bcache_btree_node_alloc(ptr nocapture readnone %__data, ptr noundef %b) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_bcache_btree_node_alloc, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %b) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_bcache_btree_node_alloc_fail(ptr nocapture readnone %__data, ptr noundef %c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_bcache_btree_node_alloc_fail, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %c) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_bcache_btree_node_free(ptr nocapture readnone %__data, ptr noundef %b) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_bcache_btree_node_free, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %b) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_bcache_btree_gc_coalesce(ptr nocapture readnone %__data, i32 noundef %nodes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_bcache_btree_gc_coalesce, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, i32 noundef %nodes) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_bcache_gc_start(ptr nocapture readnone %__data, ptr noundef %c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_bcache_gc_start, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %c) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_bcache_gc_end(ptr nocapture readnone %__data, ptr noundef %c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_bcache_gc_end, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %c) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_bcache_gc_copy(ptr nocapture readnone %__data, ptr noundef %k) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_bcache_gc_copy, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %k) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_bcache_gc_copy_collision(ptr nocapture readnone %__data, ptr noundef %k) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_bcache_gc_copy_collision, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %k) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_bcache_btree_insert_key(ptr nocapture readnone %__data, ptr noundef %b, ptr noundef %k, i32 noundef %op, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_bcache_btree_insert_key, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %b, ptr noundef %k, i32 noundef %op, i32 noundef %status) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_bcache_btree_node_split(ptr nocapture readnone %__data, ptr noundef %b, i32 noundef %keys) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_bcache_btree_node_split, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %b, i32 noundef %keys) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_bcache_btree_node_compact(ptr nocapture readnone %__data, ptr noundef %b, i32 noundef %keys) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_bcache_btree_node_compact, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %b, i32 noundef %keys) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_bcache_btree_set_root(ptr nocapture readnone %__data, ptr noundef %b) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_bcache_btree_set_root, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %b) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_bcache_keyscan(ptr nocapture readnone %__data, i32 noundef %nr_found, i32 noundef %start_inode, i64 noundef %start_offset, i32 noundef %end_inode, i64 noundef %end_offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_bcache_keyscan, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, i32 noundef %nr_found, i32 noundef %start_inode, i64 noundef %start_offset, i32 noundef %end_inode, i64 noundef %end_offset) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_bcache_invalidate(ptr nocapture readnone %__data, ptr noundef %ca, i32 noundef %bucket) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_bcache_invalidate, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %ca, i32 noundef %bucket) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_bcache_alloc(ptr nocapture readnone %__data, ptr noundef %ca, i32 noundef %bucket) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_bcache_alloc, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %ca, i32 noundef %bucket) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_bcache_alloc_fail(ptr nocapture readnone %__data, ptr noundef %ca, i32 noundef %reserve) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_bcache_alloc_fail, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %ca, i32 noundef %reserve) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_bcache_writeback(ptr nocapture readnone %__data, ptr noundef %k) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_bcache_writeback, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %k) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_bcache_writeback_collision(ptr nocapture readnone %__data, ptr noundef %k) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_bcache_writeback_collision, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %k) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_bcache_request(ptr noundef %__data, ptr nocapture noundef readonly %d, ptr nocapture noundef readonly %bio) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !532

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !533

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 48) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %3 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bi_bdev, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %4, i32 0, i32 17
  %5 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bd_disk, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i = shl i32 %8, 20
  %first_minor.i = getelementptr inbounds %struct.gendisk, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %first_minor.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %first_minor.i, align 4
  %or.i = or i32 %shl.i, %10
  %dev = getelementptr inbounds %struct.trace_event_raw_bcache_request, ptr %call3, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or.i, ptr %dev, align 8
  %disk = getelementptr inbounds %struct.bcache_device, ptr %d, i32 0, i32 5
  %12 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %disk, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %orig_major = getelementptr inbounds %struct.trace_event_raw_bcache_request, ptr %call3, i32 0, i32 2
  %16 = ptrtoint ptr %orig_major to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %orig_major, align 4
  %17 = load ptr, ptr %disk, align 4
  %first_minor = getelementptr inbounds %struct.gendisk, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %first_minor to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %first_minor, align 4
  %orig_minor = getelementptr inbounds %struct.trace_event_raw_bcache_request, ptr %call3, i32 0, i32 3
  %20 = ptrtoint ptr %orig_minor to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %orig_minor, align 8
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %21 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %bi_iter, align 8
  %sector = getelementptr inbounds %struct.trace_event_raw_bcache_request, ptr %call3, i32 0, i32 4
  %23 = ptrtoint ptr %sector to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %sector, align 8
  %24 = load i64, ptr %bi_iter, align 8
  %25 = trunc i64 %24 to i32
  %conv = add i32 %25, -16
  %orig_sector = getelementptr inbounds %struct.trace_event_raw_bcache_request, ptr %call3, i32 0, i32 5
  %26 = ptrtoint ptr %orig_sector to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv, ptr %orig_sector, align 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %27 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bi_size, align 8
  %shr = lshr i32 %28, 9
  %nr_sector = getelementptr inbounds %struct.trace_event_raw_bcache_request, ptr %call3, i32 0, i32 6
  %29 = ptrtoint ptr %nr_sector to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shr, ptr %nr_sector, align 4
  %rwbs = getelementptr inbounds %struct.trace_event_raw_bcache_request, ptr %call3, i32 0, i32 7
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %30 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bi_opf, align 8
  call void @blk_fill_rwbs(ptr noundef %rwbs, i32 noundef %31) #5
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_bcache_request(ptr noundef %__data, ptr nocapture noundef readonly %d, ptr nocapture noundef readonly %bio) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !534
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !534
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !522) #5
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 52, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !522) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %27 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bi_bdev, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %28, i32 0, i32 17
  %29 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bd_disk, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 8
  %shl.i = shl i32 %32, 20
  %first_minor.i = getelementptr inbounds %struct.gendisk, ptr %30, i32 0, i32 1
  %33 = ptrtoint ptr %first_minor.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %first_minor.i, align 4
  %or.i = or i32 %shl.i, %34
  %dev = getelementptr inbounds %struct.trace_event_raw_bcache_request, ptr %call13, i32 0, i32 1
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or.i, ptr %dev, align 8
  %disk = getelementptr inbounds %struct.bcache_device, ptr %d, i32 0, i32 5
  %36 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %disk, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 8
  %orig_major = getelementptr inbounds %struct.trace_event_raw_bcache_request, ptr %call13, i32 0, i32 2
  %40 = ptrtoint ptr %orig_major to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %orig_major, align 4
  %41 = load ptr, ptr %disk, align 4
  %first_minor = getelementptr inbounds %struct.gendisk, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %first_minor to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %first_minor, align 4
  %orig_minor = getelementptr inbounds %struct.trace_event_raw_bcache_request, ptr %call13, i32 0, i32 3
  %44 = ptrtoint ptr %orig_minor to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %orig_minor, align 8
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %45 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %bi_iter, align 8
  %sector = getelementptr inbounds %struct.trace_event_raw_bcache_request, ptr %call13, i32 0, i32 4
  %47 = ptrtoint ptr %sector to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %sector, align 8
  %48 = load i64, ptr %bi_iter, align 8
  %49 = trunc i64 %48 to i32
  %conv = add i32 %49, -16
  %orig_sector = getelementptr inbounds %struct.trace_event_raw_bcache_request, ptr %call13, i32 0, i32 5
  %50 = ptrtoint ptr %orig_sector to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv, ptr %orig_sector, align 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %51 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bi_size, align 8
  %shr = lshr i32 %52, 9
  %nr_sector = getelementptr inbounds %struct.trace_event_raw_bcache_request, ptr %call13, i32 0, i32 6
  %53 = ptrtoint ptr %nr_sector to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %shr, ptr %nr_sector, align 4
  %rwbs = getelementptr inbounds %struct.trace_event_raw_bcache_request, ptr %call13, i32 0, i32 7
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %54 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bi_opf, align 8
  call void @blk_fill_rwbs(ptr noundef %rwbs, i32 noundef %55) #5
  %56 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rctx, align 4
  %58 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 52, i32 noundef %57, ptr noundef %__data, i64 noundef 1, ptr noundef %59, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_bkey(ptr noundef %__data, ptr nocapture noundef readonly %k) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !532

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !533

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 32) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %k, align 8
  %5 = trunc i64 %4 to i32
  %conv = and i32 %5, 1048575
  %inode = getelementptr inbounds %struct.trace_event_raw_bkey, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %inode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %inode, align 4
  %low.i = getelementptr inbounds %struct.bkey, ptr %k, i32 0, i32 1
  %7 = ptrtoint ptr %low.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %low.i, align 8
  %offset = getelementptr inbounds %struct.trace_event_raw_bkey, ptr %call3, i32 0, i32 3
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %offset, align 8
  %10 = load i64, ptr %k, align 8
  %shr.i = lshr i64 %10, 20
  %11 = trunc i64 %shr.i to i32
  %conv9 = and i32 %11, 65535
  %size = getelementptr inbounds %struct.trace_event_raw_bkey, ptr %call3, i32 0, i32 1
  %12 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv9, ptr %size, align 8
  %13 = load i64, ptr %k, align 8
  %dirty = getelementptr inbounds %struct.trace_event_raw_bkey, ptr %call3, i32 0, i32 4
  %14 = lshr i64 %13, 36
  %15 = trunc i64 %14 to i8
  %16 = and i8 %15, 1
  %17 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %dirty, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_bkey(ptr noundef %__data, ptr nocapture noundef readonly %k) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !534
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !534
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !522) #5
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !522) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %27 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %k, align 8
  %29 = trunc i64 %28 to i32
  %conv = and i32 %29, 1048575
  %inode = getelementptr inbounds %struct.trace_event_raw_bkey, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %inode to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv, ptr %inode, align 4
  %low.i = getelementptr inbounds %struct.bkey, ptr %k, i32 0, i32 1
  %31 = ptrtoint ptr %low.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %low.i, align 8
  %offset = getelementptr inbounds %struct.trace_event_raw_bkey, ptr %call13, i32 0, i32 3
  %33 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %offset, align 8
  %34 = load i64, ptr %k, align 8
  %shr.i = lshr i64 %34, 20
  %35 = trunc i64 %shr.i to i32
  %conv20 = and i32 %35, 65535
  %size = getelementptr inbounds %struct.trace_event_raw_bkey, ptr %call13, i32 0, i32 1
  %36 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv20, ptr %size, align 8
  %37 = load i64, ptr %k, align 8
  %dirty = getelementptr inbounds %struct.trace_event_raw_bkey, ptr %call13, i32 0, i32 4
  %38 = lshr i64 %37, 36
  %39 = trunc i64 %38 to i8
  %40 = and i8 %39, 1
  %41 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %dirty, align 8
  %42 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rctx, align 4
  %44 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 36, i32 noundef %43, ptr noundef %__data, i64 noundef 1, ptr noundef %45, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_btree_node(ptr noundef %__data, ptr nocapture noundef readonly %b) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !532

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !533

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %c = getelementptr inbounds %struct.btree, ptr %b, i32 0, i32 4
  %3 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %c, align 4
  %ptr.i.i = getelementptr inbounds %struct.btree, ptr %b, i32 0, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %ptr.i.i, align 8
  %shr.i.i = lshr i64 %6, 8
  %and.i.i = and i64 %shr.i.i, 8796093022207
  %bucket_bits.i.i = getelementptr inbounds %struct.cache_set, ptr %4, i32 0, i32 24
  %7 = ptrtoint ptr %bucket_bits.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %bucket_bits.i.i, align 8
  %sh_prom.i.i = zext i16 %8 to i64
  %shr.i1.i = lshr i64 %and.i.i, %sh_prom.i.i
  %conv1.i.i = trunc i64 %shr.i1.i to i32
  %bucket = getelementptr inbounds %struct.trace_event_raw_btree_node, ptr %call3, i32 0, i32 1
  %9 = ptrtoint ptr %bucket to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv1.i.i, ptr %bucket, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_btree_node(ptr noundef %__data, ptr nocapture noundef readonly %b) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !534
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !534
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !522) #5
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !522) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %c = getelementptr inbounds %struct.btree, ptr %b, i32 0, i32 4
  %27 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %c, align 4
  %ptr.i.i = getelementptr inbounds %struct.btree, ptr %b, i32 0, i32 1, i32 0, i32 2
  %29 = ptrtoint ptr %ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %ptr.i.i, align 8
  %shr.i.i = lshr i64 %30, 8
  %and.i.i = and i64 %shr.i.i, 8796093022207
  %bucket_bits.i.i = getelementptr inbounds %struct.cache_set, ptr %28, i32 0, i32 24
  %31 = ptrtoint ptr %bucket_bits.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %bucket_bits.i.i, align 8
  %sh_prom.i.i = zext i16 %32 to i64
  %shr.i1.i = lshr i64 %and.i.i, %sh_prom.i.i
  %conv1.i.i = trunc i64 %shr.i1.i to i32
  %bucket = getelementptr inbounds %struct.trace_event_raw_btree_node, ptr %call13, i32 0, i32 1
  %33 = ptrtoint ptr %bucket to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv1.i.i, ptr %bucket, align 4
  %34 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rctx, align 4
  %36 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %35, ptr noundef %__data, i64 noundef 1, ptr noundef %37, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_bcache_bio(ptr noundef %__data, ptr nocapture noundef readonly %bio) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !532

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !533

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 40) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %3 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bi_bdev, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %4, i32 0, i32 17
  %5 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bd_disk, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i = shl i32 %8, 20
  %first_minor.i = getelementptr inbounds %struct.gendisk, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %first_minor.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %first_minor.i, align 4
  %or.i = or i32 %shl.i, %10
  %dev = getelementptr inbounds %struct.trace_event_raw_bcache_bio, ptr %call3, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or.i, ptr %dev, align 8
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %12 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %bi_iter, align 8
  %sector = getelementptr inbounds %struct.trace_event_raw_bcache_bio, ptr %call3, i32 0, i32 2
  %14 = ptrtoint ptr %sector to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %sector, align 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %15 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bi_size, align 8
  %shr = lshr i32 %16, 9
  %nr_sector = getelementptr inbounds %struct.trace_event_raw_bcache_bio, ptr %call3, i32 0, i32 3
  %17 = ptrtoint ptr %nr_sector to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr, ptr %nr_sector, align 8
  %rwbs = getelementptr inbounds %struct.trace_event_raw_bcache_bio, ptr %call3, i32 0, i32 4
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %18 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bi_opf, align 8
  call void @blk_fill_rwbs(ptr noundef %rwbs, i32 noundef %19) #5
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_bcache_bio(ptr noundef %__data, ptr nocapture noundef readonly %bio) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !534
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !534
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !522) #5
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !522) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %27 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bi_bdev, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %28, i32 0, i32 17
  %29 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bd_disk, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 8
  %shl.i = shl i32 %32, 20
  %first_minor.i = getelementptr inbounds %struct.gendisk, ptr %30, i32 0, i32 1
  %33 = ptrtoint ptr %first_minor.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %first_minor.i, align 4
  %or.i = or i32 %shl.i, %34
  %dev = getelementptr inbounds %struct.trace_event_raw_bcache_bio, ptr %call13, i32 0, i32 1
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or.i, ptr %dev, align 8
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %36 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %bi_iter, align 8
  %sector = getelementptr inbounds %struct.trace_event_raw_bcache_bio, ptr %call13, i32 0, i32 2
  %38 = ptrtoint ptr %sector to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %sector, align 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %39 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bi_size, align 8
  %shr = lshr i32 %40, 9
  %nr_sector = getelementptr inbounds %struct.trace_event_raw_bcache_bio, ptr %call13, i32 0, i32 3
  %41 = ptrtoint ptr %nr_sector to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %shr, ptr %nr_sector, align 8
  %rwbs = getelementptr inbounds %struct.trace_event_raw_bcache_bio, ptr %call13, i32 0, i32 4
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %42 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bi_opf, align 8
  call void @blk_fill_rwbs(ptr noundef %rwbs, i32 noundef %43) #5
  %44 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rctx, align 4
  %46 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %45, ptr noundef %__data, i64 noundef 1, ptr noundef %47, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_bcache_read(ptr noundef %__data, ptr nocapture noundef readonly %bio, i1 noundef zeroext %hit, i1 noundef zeroext %bypass) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  %frombool = zext i1 %hit to i8
  %frombool1 = zext i1 %bypass to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !532

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !533

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call5 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 40) #5
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %3 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bi_bdev, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %4, i32 0, i32 17
  %5 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bd_disk, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i = shl i32 %8, 20
  %first_minor.i = getelementptr inbounds %struct.gendisk, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %first_minor.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %first_minor.i, align 4
  %or.i = or i32 %shl.i, %10
  %dev = getelementptr inbounds %struct.trace_event_raw_bcache_read, ptr %call5, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or.i, ptr %dev, align 8
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %12 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %bi_iter, align 8
  %sector = getelementptr inbounds %struct.trace_event_raw_bcache_read, ptr %call5, i32 0, i32 2
  %14 = ptrtoint ptr %sector to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %sector, align 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %15 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bi_size, align 8
  %shr = lshr i32 %16, 9
  %nr_sector = getelementptr inbounds %struct.trace_event_raw_bcache_read, ptr %call5, i32 0, i32 3
  %17 = ptrtoint ptr %nr_sector to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr, ptr %nr_sector, align 8
  %rwbs = getelementptr inbounds %struct.trace_event_raw_bcache_read, ptr %call5, i32 0, i32 4
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %18 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bi_opf, align 8
  call void @blk_fill_rwbs(ptr noundef %rwbs, i32 noundef %19) #5
  %cache_hit = getelementptr inbounds %struct.trace_event_raw_bcache_read, ptr %call5, i32 0, i32 5
  %20 = ptrtoint ptr %cache_hit to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool, ptr %cache_hit, align 2
  %bypass14 = getelementptr inbounds %struct.trace_event_raw_bcache_read, ptr %call5, i32 0, i32 6
  %21 = ptrtoint ptr %bypass14 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %frombool1, ptr %bypass14, align 1
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_bcache_read(ptr noundef %__data, ptr nocapture noundef readonly %bio, i1 noundef zeroext %hit, i1 noundef zeroext %bypass) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  %frombool = zext i1 %hit to i8
  %frombool1 = zext i1 %bypass to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !534
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !534
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !522) #5
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true10, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true10:                                  ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true10.cleanup_crit_edge, label %land.lhs.true10.if.end_crit_edge

land.lhs.true10.if.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true10.if.end_crit_edge, %entry.if.end_crit_edge
  %call16 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end.cleanup_crit_edge, label %if.end19

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !522) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %27 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bi_bdev, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %28, i32 0, i32 17
  %29 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bd_disk, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 8
  %shl.i = shl i32 %32, 20
  %first_minor.i = getelementptr inbounds %struct.gendisk, ptr %30, i32 0, i32 1
  %33 = ptrtoint ptr %first_minor.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %first_minor.i, align 4
  %or.i = or i32 %shl.i, %34
  %dev = getelementptr inbounds %struct.trace_event_raw_bcache_read, ptr %call16, i32 0, i32 1
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or.i, ptr %dev, align 8
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %36 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %bi_iter, align 8
  %sector = getelementptr inbounds %struct.trace_event_raw_bcache_read, ptr %call16, i32 0, i32 2
  %38 = ptrtoint ptr %sector to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %sector, align 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %39 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bi_size, align 8
  %shr = lshr i32 %40, 9
  %nr_sector = getelementptr inbounds %struct.trace_event_raw_bcache_read, ptr %call16, i32 0, i32 3
  %41 = ptrtoint ptr %nr_sector to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %shr, ptr %nr_sector, align 8
  %rwbs = getelementptr inbounds %struct.trace_event_raw_bcache_read, ptr %call16, i32 0, i32 4
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %42 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bi_opf, align 8
  call void @blk_fill_rwbs(ptr noundef %rwbs, i32 noundef %43) #5
  %cache_hit = getelementptr inbounds %struct.trace_event_raw_bcache_read, ptr %call16, i32 0, i32 5
  %44 = ptrtoint ptr %cache_hit to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %frombool, ptr %cache_hit, align 2
  %bypass25 = getelementptr inbounds %struct.trace_event_raw_bcache_read, ptr %call16, i32 0, i32 6
  %45 = ptrtoint ptr %bypass25 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %frombool1, ptr %bypass25, align 1
  %46 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rctx, align 4
  %48 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call16, i32 noundef 44, i32 noundef %47, ptr noundef %__data, i64 noundef 1, ptr noundef %49, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end.cleanup_crit_edge, %land.lhs.true10.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_bcache_write(ptr noundef %__data, ptr nocapture noundef readonly %c, i64 noundef %inode, ptr nocapture noundef readonly %bio, i1 noundef zeroext %writeback, i1 noundef zeroext %bypass) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  %frombool = zext i1 %writeback to i8
  %frombool1 = zext i1 %bypass to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !532

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !533

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call5 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 56) #5
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %uuid = getelementptr inbounds %struct.trace_event_raw_bcache_write, ptr %call5, i32 0, i32 1
  %set_uuid = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 56
  %3 = call ptr @memcpy(ptr %uuid, ptr %set_uuid, i32 16)
  %inode10 = getelementptr inbounds %struct.trace_event_raw_bcache_write, ptr %call5, i32 0, i32 2
  %4 = ptrtoint ptr %inode10 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %inode, ptr %inode10, align 8
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %5 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %bi_iter, align 8
  %sector = getelementptr inbounds %struct.trace_event_raw_bcache_write, ptr %call5, i32 0, i32 3
  %7 = ptrtoint ptr %sector to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %sector, align 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bi_size, align 8
  %shr = lshr i32 %9, 9
  %nr_sector = getelementptr inbounds %struct.trace_event_raw_bcache_write, ptr %call5, i32 0, i32 4
  %10 = ptrtoint ptr %nr_sector to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shr, ptr %nr_sector, align 8
  %rwbs = getelementptr inbounds %struct.trace_event_raw_bcache_write, ptr %call5, i32 0, i32 5
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %11 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bi_opf, align 8
  call void @blk_fill_rwbs(ptr noundef %rwbs, i32 noundef %12) #5
  %writeback14 = getelementptr inbounds %struct.trace_event_raw_bcache_write, ptr %call5, i32 0, i32 6
  %13 = ptrtoint ptr %writeback14 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool, ptr %writeback14, align 2
  %bypass17 = getelementptr inbounds %struct.trace_event_raw_bcache_write, ptr %call5, i32 0, i32 7
  %14 = ptrtoint ptr %bypass17 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %frombool1, ptr %bypass17, align 1
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_bcache_write(ptr noundef %__data, ptr nocapture noundef readonly %c, i64 noundef %inode, ptr nocapture noundef readonly %bio, i1 noundef zeroext %writeback, i1 noundef zeroext %bypass) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  %frombool = zext i1 %writeback to i8
  %frombool1 = zext i1 %bypass to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !534
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !534
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !522) #5
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true10, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true10:                                  ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true10.cleanup_crit_edge, label %land.lhs.true10.if.end_crit_edge

land.lhs.true10.if.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true10.if.end_crit_edge, %entry.if.end_crit_edge
  %call16 = call ptr @perf_trace_buf_alloc(i32 noundef 60, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end.cleanup_crit_edge, label %if.end19

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !522) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %uuid = getelementptr inbounds %struct.trace_event_raw_bcache_write, ptr %call16, i32 0, i32 1
  %set_uuid = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 56
  %27 = call ptr @memcpy(ptr %uuid, ptr %set_uuid, i32 16)
  %inode21 = getelementptr inbounds %struct.trace_event_raw_bcache_write, ptr %call16, i32 0, i32 2
  %28 = ptrtoint ptr %inode21 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %inode, ptr %inode21, align 8
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %29 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %bi_iter, align 8
  %sector = getelementptr inbounds %struct.trace_event_raw_bcache_write, ptr %call16, i32 0, i32 3
  %31 = ptrtoint ptr %sector to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %sector, align 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %32 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bi_size, align 8
  %shr = lshr i32 %33, 9
  %nr_sector = getelementptr inbounds %struct.trace_event_raw_bcache_write, ptr %call16, i32 0, i32 4
  %34 = ptrtoint ptr %nr_sector to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %shr, ptr %nr_sector, align 8
  %rwbs = getelementptr inbounds %struct.trace_event_raw_bcache_write, ptr %call16, i32 0, i32 5
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %35 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bi_opf, align 8
  call void @blk_fill_rwbs(ptr noundef %rwbs, i32 noundef %36) #5
  %writeback25 = getelementptr inbounds %struct.trace_event_raw_bcache_write, ptr %call16, i32 0, i32 6
  %37 = ptrtoint ptr %writeback25 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %frombool, ptr %writeback25, align 2
  %bypass28 = getelementptr inbounds %struct.trace_event_raw_bcache_write, ptr %call16, i32 0, i32 7
  %38 = ptrtoint ptr %bypass28 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %frombool1, ptr %bypass28, align 1
  %39 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rctx, align 4
  %41 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call16, i32 noundef 60, i32 noundef %40, ptr noundef %__data, i64 noundef 1, ptr noundef %42, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end.cleanup_crit_edge, %land.lhs.true10.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cache_set(ptr noundef %__data, ptr nocapture noundef readonly %c) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !532

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !533

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %uuid = getelementptr inbounds %struct.trace_event_raw_cache_set, ptr %call3, i32 0, i32 1
  %set_uuid = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 56
  %3 = call ptr @memcpy(ptr %uuid, ptr %set_uuid, i32 16)
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cache_set(ptr noundef %__data, ptr nocapture noundef readonly %c) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !534
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !534
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !522) #5
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !522) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %uuid = getelementptr inbounds %struct.trace_event_raw_cache_set, ptr %call13, i32 0, i32 1
  %set_uuid = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 56
  %27 = call ptr @memcpy(ptr %uuid, ptr %set_uuid, i32 16)
  %28 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rctx, align 4
  %30 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %29, ptr noundef %__data, i64 noundef 1, ptr noundef %31, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_bcache_journal_write(ptr noundef %__data, ptr nocapture noundef readonly %bio, i32 noundef %keys) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !532

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !533

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 40) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %3 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bi_bdev, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %4, i32 0, i32 17
  %5 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bd_disk, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i = shl i32 %8, 20
  %first_minor.i = getelementptr inbounds %struct.gendisk, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %first_minor.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %first_minor.i, align 4
  %or.i = or i32 %shl.i, %10
  %dev = getelementptr inbounds %struct.trace_event_raw_bcache_journal_write, ptr %call3, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or.i, ptr %dev, align 8
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %12 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %bi_iter, align 8
  %sector = getelementptr inbounds %struct.trace_event_raw_bcache_journal_write, ptr %call3, i32 0, i32 2
  %14 = ptrtoint ptr %sector to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %sector, align 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %15 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bi_size, align 8
  %shr = lshr i32 %16, 9
  %nr_sector = getelementptr inbounds %struct.trace_event_raw_bcache_journal_write, ptr %call3, i32 0, i32 3
  %17 = ptrtoint ptr %nr_sector to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr, ptr %nr_sector, align 8
  %nr_keys = getelementptr inbounds %struct.trace_event_raw_bcache_journal_write, ptr %call3, i32 0, i32 5
  %18 = ptrtoint ptr %nr_keys to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %keys, ptr %nr_keys, align 4
  %rwbs = getelementptr inbounds %struct.trace_event_raw_bcache_journal_write, ptr %call3, i32 0, i32 4
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %19 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bi_opf, align 8
  call void @blk_fill_rwbs(ptr noundef %rwbs, i32 noundef %20) #5
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_bcache_journal_write(ptr noundef %__data, ptr nocapture noundef readonly %bio, i32 noundef %keys) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !534
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !534
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !522) #5
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !522) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %27 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bi_bdev, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %28, i32 0, i32 17
  %29 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bd_disk, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 8
  %shl.i = shl i32 %32, 20
  %first_minor.i = getelementptr inbounds %struct.gendisk, ptr %30, i32 0, i32 1
  %33 = ptrtoint ptr %first_minor.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %first_minor.i, align 4
  %or.i = or i32 %shl.i, %34
  %dev = getelementptr inbounds %struct.trace_event_raw_bcache_journal_write, ptr %call13, i32 0, i32 1
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or.i, ptr %dev, align 8
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %36 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %bi_iter, align 8
  %sector = getelementptr inbounds %struct.trace_event_raw_bcache_journal_write, ptr %call13, i32 0, i32 2
  %38 = ptrtoint ptr %sector to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %sector, align 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %39 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bi_size, align 8
  %shr = lshr i32 %40, 9
  %nr_sector = getelementptr inbounds %struct.trace_event_raw_bcache_journal_write, ptr %call13, i32 0, i32 3
  %41 = ptrtoint ptr %nr_sector to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %shr, ptr %nr_sector, align 8
  %nr_keys = getelementptr inbounds %struct.trace_event_raw_bcache_journal_write, ptr %call13, i32 0, i32 5
  %42 = ptrtoint ptr %nr_keys to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %keys, ptr %nr_keys, align 4
  %rwbs = getelementptr inbounds %struct.trace_event_raw_bcache_journal_write, ptr %call13, i32 0, i32 4
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %43 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bi_opf, align 8
  call void @blk_fill_rwbs(ptr noundef %rwbs, i32 noundef %44) #5
  %45 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rctx, align 4
  %47 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %46, ptr noundef %__data, i64 noundef 1, ptr noundef %48, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_bcache_btree_write(ptr noundef %__data, ptr nocapture noundef readonly %b) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !532

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !533

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 20) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %c = getelementptr inbounds %struct.btree, ptr %b, i32 0, i32 4
  %3 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %c, align 4
  %ptr.i.i = getelementptr inbounds %struct.btree, ptr %b, i32 0, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %ptr.i.i, align 8
  %shr.i.i = lshr i64 %6, 8
  %and.i.i = and i64 %shr.i.i, 8796093022207
  %bucket_bits.i.i = getelementptr inbounds %struct.cache_set, ptr %4, i32 0, i32 24
  %7 = ptrtoint ptr %bucket_bits.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %bucket_bits.i.i, align 8
  %sh_prom.i.i = zext i16 %8 to i64
  %shr.i1.i = lshr i64 %and.i.i, %sh_prom.i.i
  %conv1.i.i = trunc i64 %shr.i1.i to i32
  %bucket = getelementptr inbounds %struct.trace_event_raw_bcache_btree_write, ptr %call3, i32 0, i32 1
  %9 = ptrtoint ptr %bucket to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv1.i.i, ptr %bucket, align 4
  %written = getelementptr inbounds %struct.btree, ptr %b, i32 0, i32 8
  %10 = ptrtoint ptr %written to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %written, align 4
  %conv = zext i16 %11 to i32
  %block = getelementptr inbounds %struct.trace_event_raw_bcache_btree_write, ptr %call3, i32 0, i32 2
  %12 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %block, align 4
  %nsets = getelementptr inbounds %struct.btree, ptr %b, i32 0, i32 10, i32 2
  %13 = ptrtoint ptr %nsets to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %nsets, align 1
  %idxprom = zext i8 %14 to i32
  %data = getelementptr %struct.btree, ptr %b, i32 0, i32 10, i32 5, i32 %idxprom, i32 5
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 8
  %keys8 = getelementptr inbounds %struct.bset, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %keys8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %keys8, align 4
  %keys9 = getelementptr inbounds %struct.trace_event_raw_bcache_btree_write, ptr %call3, i32 0, i32 3
  %19 = ptrtoint ptr %keys9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %keys9, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_bcache_btree_write(ptr noundef %__data, ptr nocapture noundef readonly %b) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !534
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !534
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !522) #5
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !522) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %c = getelementptr inbounds %struct.btree, ptr %b, i32 0, i32 4
  %27 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %c, align 4
  %ptr.i.i = getelementptr inbounds %struct.btree, ptr %b, i32 0, i32 1, i32 0, i32 2
  %29 = ptrtoint ptr %ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %ptr.i.i, align 8
  %shr.i.i = lshr i64 %30, 8
  %and.i.i = and i64 %shr.i.i, 8796093022207
  %bucket_bits.i.i = getelementptr inbounds %struct.cache_set, ptr %28, i32 0, i32 24
  %31 = ptrtoint ptr %bucket_bits.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %bucket_bits.i.i, align 8
  %sh_prom.i.i = zext i16 %32 to i64
  %shr.i1.i = lshr i64 %and.i.i, %sh_prom.i.i
  %conv1.i.i = trunc i64 %shr.i1.i to i32
  %bucket = getelementptr inbounds %struct.trace_event_raw_bcache_btree_write, ptr %call13, i32 0, i32 1
  %33 = ptrtoint ptr %bucket to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv1.i.i, ptr %bucket, align 4
  %written = getelementptr inbounds %struct.btree, ptr %b, i32 0, i32 8
  %34 = ptrtoint ptr %written to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %written, align 4
  %conv = zext i16 %35 to i32
  %block = getelementptr inbounds %struct.trace_event_raw_bcache_btree_write, ptr %call13, i32 0, i32 2
  %36 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv, ptr %block, align 4
  %nsets = getelementptr inbounds %struct.btree, ptr %b, i32 0, i32 10, i32 2
  %37 = ptrtoint ptr %nsets to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %nsets, align 1
  %idxprom = zext i8 %38 to i32
  %data = getelementptr %struct.btree, ptr %b, i32 0, i32 10, i32 5, i32 %idxprom, i32 5
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data, align 8
  %keys20 = getelementptr inbounds %struct.bset, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %keys20 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %keys20, align 4
  %keys21 = getelementptr inbounds %struct.trace_event_raw_bcache_btree_write, ptr %call13, i32 0, i32 3
  %43 = ptrtoint ptr %keys21 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %keys21, align 4
  %44 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rctx, align 4
  %46 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %45, ptr noundef %__data, i64 noundef 1, ptr noundef %47, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_bcache_btree_gc_coalesce(ptr noundef %__data, i32 noundef %nodes) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !532

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !533

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %nodes6 = getelementptr inbounds %struct.trace_event_raw_bcache_btree_gc_coalesce, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %nodes6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %nodes, ptr %nodes6, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_bcache_btree_gc_coalesce(ptr noundef %__data, i32 noundef %nodes) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !534
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !534
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !522) #5
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !522) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %nodes17 = getelementptr inbounds %struct.trace_event_raw_bcache_btree_gc_coalesce, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %nodes17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %nodes, ptr %nodes17, align 4
  %28 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rctx, align 4
  %30 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %29, ptr noundef %__data, i64 noundef 1, ptr noundef %31, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_bcache_btree_insert_key(ptr noundef %__data, ptr nocapture noundef readonly %b, ptr nocapture noundef readonly %k, i32 noundef %op, i32 noundef %status) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !532

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !533

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 40) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %c = getelementptr inbounds %struct.btree, ptr %b, i32 0, i32 4
  %3 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %c, align 4
  %ptr.i.i = getelementptr inbounds %struct.btree, ptr %b, i32 0, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %ptr.i.i, align 8
  %shr.i.i = lshr i64 %6, 8
  %and.i.i = and i64 %shr.i.i, 8796093022207
  %bucket_bits.i.i = getelementptr inbounds %struct.cache_set, ptr %4, i32 0, i32 24
  %7 = ptrtoint ptr %bucket_bits.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %bucket_bits.i.i, align 8
  %sh_prom.i.i = zext i16 %8 to i64
  %shr.i1.i = lshr i64 %and.i.i, %sh_prom.i.i
  %conv = and i64 %shr.i1.i, 4294967295
  %btree_node = getelementptr inbounds %struct.trace_event_raw_bcache_btree_insert_key, ptr %call3, i32 0, i32 1
  %9 = ptrtoint ptr %btree_node to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv, ptr %btree_node, align 8
  %level = getelementptr inbounds %struct.btree, ptr %b, i32 0, i32 9
  %10 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %level, align 2
  %conv7 = zext i8 %11 to i32
  %btree_level = getelementptr inbounds %struct.trace_event_raw_bcache_btree_insert_key, ptr %call3, i32 0, i32 2
  %12 = ptrtoint ptr %btree_level to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv7, ptr %btree_level, align 8
  %13 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %k, align 8
  %15 = trunc i64 %14 to i32
  %conv9 = and i32 %15, 1048575
  %inode = getelementptr inbounds %struct.trace_event_raw_bcache_btree_insert_key, ptr %call3, i32 0, i32 3
  %16 = ptrtoint ptr %inode to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv9, ptr %inode, align 4
  %low.i = getelementptr inbounds %struct.bkey, ptr %k, i32 0, i32 1
  %17 = ptrtoint ptr %low.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %low.i, align 8
  %offset = getelementptr inbounds %struct.trace_event_raw_bcache_btree_insert_key, ptr %call3, i32 0, i32 4
  %19 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %offset, align 8
  %20 = load i64, ptr %k, align 8
  %shr.i = lshr i64 %20, 20
  %21 = trunc i64 %shr.i to i32
  %conv12 = and i32 %21, 65535
  %size = getelementptr inbounds %struct.trace_event_raw_bcache_btree_insert_key, ptr %call3, i32 0, i32 5
  %22 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv12, ptr %size, align 8
  %23 = load i64, ptr %k, align 8
  %shr.i43 = lshr i64 %23, 36
  %24 = trunc i64 %shr.i43 to i8
  %conv14 = and i8 %24, 1
  %dirty = getelementptr inbounds %struct.trace_event_raw_bcache_btree_insert_key, ptr %call3, i32 0, i32 6
  %25 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv14, ptr %dirty, align 4
  %conv15 = trunc i32 %op to i8
  %op16 = getelementptr inbounds %struct.trace_event_raw_bcache_btree_insert_key, ptr %call3, i32 0, i32 7
  %26 = ptrtoint ptr %op16 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv15, ptr %op16, align 1
  %conv17 = trunc i32 %status to i8
  %status18 = getelementptr inbounds %struct.trace_event_raw_bcache_btree_insert_key, ptr %call3, i32 0, i32 8
  %27 = ptrtoint ptr %status18 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv17, ptr %status18, align 2
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_bcache_btree_insert_key(ptr noundef %__data, ptr nocapture noundef readonly %b, ptr nocapture noundef readonly %k, i32 noundef %op, i32 noundef %status) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !534
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !534
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !522) #5
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !522) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %c = getelementptr inbounds %struct.btree, ptr %b, i32 0, i32 4
  %27 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %c, align 4
  %ptr.i.i = getelementptr inbounds %struct.btree, ptr %b, i32 0, i32 1, i32 0, i32 2
  %29 = ptrtoint ptr %ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %ptr.i.i, align 8
  %shr.i.i = lshr i64 %30, 8
  %and.i.i = and i64 %shr.i.i, 8796093022207
  %bucket_bits.i.i = getelementptr inbounds %struct.cache_set, ptr %28, i32 0, i32 24
  %31 = ptrtoint ptr %bucket_bits.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %bucket_bits.i.i, align 8
  %sh_prom.i.i = zext i16 %32 to i64
  %shr.i1.i = lshr i64 %and.i.i, %sh_prom.i.i
  %conv = and i64 %shr.i1.i, 4294967295
  %btree_node = getelementptr inbounds %struct.trace_event_raw_bcache_btree_insert_key, ptr %call13, i32 0, i32 1
  %33 = ptrtoint ptr %btree_node to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %conv, ptr %btree_node, align 8
  %level = getelementptr inbounds %struct.btree, ptr %b, i32 0, i32 9
  %34 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %level, align 2
  %conv18 = zext i8 %35 to i32
  %btree_level = getelementptr inbounds %struct.trace_event_raw_bcache_btree_insert_key, ptr %call13, i32 0, i32 2
  %36 = ptrtoint ptr %btree_level to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv18, ptr %btree_level, align 8
  %37 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %k, align 8
  %39 = trunc i64 %38 to i32
  %conv20 = and i32 %39, 1048575
  %inode = getelementptr inbounds %struct.trace_event_raw_bcache_btree_insert_key, ptr %call13, i32 0, i32 3
  %40 = ptrtoint ptr %inode to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv20, ptr %inode, align 4
  %low.i = getelementptr inbounds %struct.bkey, ptr %k, i32 0, i32 1
  %41 = ptrtoint ptr %low.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %low.i, align 8
  %offset = getelementptr inbounds %struct.trace_event_raw_bcache_btree_insert_key, ptr %call13, i32 0, i32 4
  %43 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %offset, align 8
  %44 = load i64, ptr %k, align 8
  %shr.i = lshr i64 %44, 20
  %45 = trunc i64 %shr.i to i32
  %conv23 = and i32 %45, 65535
  %size = getelementptr inbounds %struct.trace_event_raw_bcache_btree_insert_key, ptr %call13, i32 0, i32 5
  %46 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv23, ptr %size, align 8
  %47 = load i64, ptr %k, align 8
  %shr.i66 = lshr i64 %47, 36
  %48 = trunc i64 %shr.i66 to i8
  %conv25 = and i8 %48, 1
  %dirty = getelementptr inbounds %struct.trace_event_raw_bcache_btree_insert_key, ptr %call13, i32 0, i32 6
  %49 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv25, ptr %dirty, align 4
  %conv26 = trunc i32 %op to i8
  %op27 = getelementptr inbounds %struct.trace_event_raw_bcache_btree_insert_key, ptr %call13, i32 0, i32 7
  %50 = ptrtoint ptr %op27 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv26, ptr %op27, align 1
  %conv28 = trunc i32 %status to i8
  %status29 = getelementptr inbounds %struct.trace_event_raw_bcache_btree_insert_key, ptr %call13, i32 0, i32 8
  %51 = ptrtoint ptr %status29 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv28, ptr %status29, align 2
  %52 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rctx, align 4
  %54 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %53, ptr noundef %__data, i64 noundef 1, ptr noundef %55, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_btree_split(ptr noundef %__data, ptr nocapture noundef readonly %b, i32 noundef %keys) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !532

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !533

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %c = getelementptr inbounds %struct.btree, ptr %b, i32 0, i32 4
  %3 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %c, align 4
  %ptr.i.i = getelementptr inbounds %struct.btree, ptr %b, i32 0, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %ptr.i.i, align 8
  %shr.i.i = lshr i64 %6, 8
  %and.i.i = and i64 %shr.i.i, 8796093022207
  %bucket_bits.i.i = getelementptr inbounds %struct.cache_set, ptr %4, i32 0, i32 24
  %7 = ptrtoint ptr %bucket_bits.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %bucket_bits.i.i, align 8
  %sh_prom.i.i = zext i16 %8 to i64
  %shr.i1.i = lshr i64 %and.i.i, %sh_prom.i.i
  %conv1.i.i = trunc i64 %shr.i1.i to i32
  %bucket = getelementptr inbounds %struct.trace_event_raw_btree_split, ptr %call3, i32 0, i32 1
  %9 = ptrtoint ptr %bucket to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv1.i.i, ptr %bucket, align 4
  %keys7 = getelementptr inbounds %struct.trace_event_raw_btree_split, ptr %call3, i32 0, i32 2
  %10 = ptrtoint ptr %keys7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %keys, ptr %keys7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_btree_split(ptr noundef %__data, ptr nocapture noundef readonly %b, i32 noundef %keys) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !534
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !534
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !522) #5
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !522) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %c = getelementptr inbounds %struct.btree, ptr %b, i32 0, i32 4
  %27 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %c, align 4
  %ptr.i.i = getelementptr inbounds %struct.btree, ptr %b, i32 0, i32 1, i32 0, i32 2
  %29 = ptrtoint ptr %ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %ptr.i.i, align 8
  %shr.i.i = lshr i64 %30, 8
  %and.i.i = and i64 %shr.i.i, 8796093022207
  %bucket_bits.i.i = getelementptr inbounds %struct.cache_set, ptr %28, i32 0, i32 24
  %31 = ptrtoint ptr %bucket_bits.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %bucket_bits.i.i, align 8
  %sh_prom.i.i = zext i16 %32 to i64
  %shr.i1.i = lshr i64 %and.i.i, %sh_prom.i.i
  %conv1.i.i = trunc i64 %shr.i1.i to i32
  %bucket = getelementptr inbounds %struct.trace_event_raw_btree_split, ptr %call13, i32 0, i32 1
  %33 = ptrtoint ptr %bucket to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv1.i.i, ptr %bucket, align 4
  %keys18 = getelementptr inbounds %struct.trace_event_raw_btree_split, ptr %call13, i32 0, i32 2
  %34 = ptrtoint ptr %keys18 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %keys, ptr %keys18, align 4
  %35 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rctx, align 4
  %37 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %36, ptr noundef %__data, i64 noundef 1, ptr noundef %38, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_bcache_keyscan(ptr noundef %__data, i32 noundef %nr_found, i32 noundef %start_inode, i64 noundef %start_offset, i32 noundef %end_inode, i64 noundef %end_offset) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !532

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !533

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 40) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %nr_found6 = getelementptr inbounds %struct.trace_event_raw_bcache_keyscan, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %nr_found6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %nr_found, ptr %nr_found6, align 8
  %start_inode7 = getelementptr inbounds %struct.trace_event_raw_bcache_keyscan, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %start_inode7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %start_inode, ptr %start_inode7, align 4
  %start_offset8 = getelementptr inbounds %struct.trace_event_raw_bcache_keyscan, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %start_offset8 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %start_offset, ptr %start_offset8, align 8
  %end_inode9 = getelementptr inbounds %struct.trace_event_raw_bcache_keyscan, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %end_inode9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %end_inode, ptr %end_inode9, align 8
  %end_offset10 = getelementptr inbounds %struct.trace_event_raw_bcache_keyscan, ptr %call3, i32 0, i32 5
  %7 = ptrtoint ptr %end_offset10 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %end_offset, ptr %end_offset10, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_bcache_keyscan(ptr noundef %__data, i32 noundef %nr_found, i32 noundef %start_inode, i64 noundef %start_offset, i32 noundef %end_inode, i64 noundef %end_offset) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !534
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !534
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !522) #5
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !522) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %nr_found17 = getelementptr inbounds %struct.trace_event_raw_bcache_keyscan, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %nr_found17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %nr_found, ptr %nr_found17, align 8
  %start_inode18 = getelementptr inbounds %struct.trace_event_raw_bcache_keyscan, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %start_inode18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %start_inode, ptr %start_inode18, align 4
  %start_offset19 = getelementptr inbounds %struct.trace_event_raw_bcache_keyscan, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %start_offset19 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %start_offset, ptr %start_offset19, align 8
  %end_inode20 = getelementptr inbounds %struct.trace_event_raw_bcache_keyscan, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %end_inode20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %end_inode, ptr %end_inode20, align 8
  %end_offset21 = getelementptr inbounds %struct.trace_event_raw_bcache_keyscan, ptr %call13, i32 0, i32 5
  %31 = ptrtoint ptr %end_offset21 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %end_offset, ptr %end_offset21, align 8
  %32 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rctx, align 4
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %33, ptr noundef %__data, i64 noundef 1, ptr noundef %35, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_bcache_invalidate(ptr noundef %__data, ptr nocapture noundef readonly %ca, i32 noundef %bucket) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !532

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !533

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %bdev = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 6
  %3 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bdev, align 4
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bd_dev, align 4
  %dev = getelementptr inbounds %struct.trace_event_raw_bcache_invalidate, ptr %call3, i32 0, i32 2
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %dev, align 4
  %8 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ca, align 8
  %bucket_bits = getelementptr inbounds %struct.cache_set, ptr %9, i32 0, i32 24
  %10 = ptrtoint ptr %bucket_bits to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %bucket_bits, align 8
  %conv = zext i16 %11 to i32
  %shl = shl i32 %bucket, %conv
  %conv6 = zext i32 %shl to i64
  %offset = getelementptr inbounds %struct.trace_event_raw_bcache_invalidate, ptr %call3, i32 0, i32 3
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv6, ptr %offset, align 8
  %buckets = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 15
  %13 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buckets, align 8
  %gc_mark.i = getelementptr %struct.bucket, ptr %14, i32 %bucket, i32 4
  %15 = ptrtoint ptr %gc_mark.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %gc_mark.i, align 4
  %17 = lshr i16 %16, 2
  %18 = and i16 %17, 8191
  %conv8 = zext i16 %18 to i32
  %sectors = getelementptr inbounds %struct.trace_event_raw_bcache_invalidate, ptr %call3, i32 0, i32 1
  %19 = ptrtoint ptr %sectors to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv8, ptr %sectors, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_bcache_invalidate(ptr noundef %__data, ptr nocapture noundef readonly %ca, i32 noundef %bucket) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !534
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !534
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !522) #5
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !522) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %bdev = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 6
  %27 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bdev, align 4
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bd_dev, align 4
  %dev = getelementptr inbounds %struct.trace_event_raw_bcache_invalidate, ptr %call13, i32 0, i32 2
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %dev, align 4
  %32 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ca, align 8
  %bucket_bits = getelementptr inbounds %struct.cache_set, ptr %33, i32 0, i32 24
  %34 = ptrtoint ptr %bucket_bits to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %bucket_bits, align 8
  %conv = zext i16 %35 to i32
  %shl = shl i32 %bucket, %conv
  %conv17 = zext i32 %shl to i64
  %offset = getelementptr inbounds %struct.trace_event_raw_bcache_invalidate, ptr %call13, i32 0, i32 3
  %36 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %conv17, ptr %offset, align 8
  %buckets = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 15
  %37 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %buckets, align 8
  %gc_mark.i = getelementptr %struct.bucket, ptr %38, i32 %bucket, i32 4
  %39 = ptrtoint ptr %gc_mark.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %gc_mark.i, align 4
  %41 = lshr i16 %40, 2
  %42 = and i16 %41, 8191
  %conv20 = zext i16 %42 to i32
  %sectors = getelementptr inbounds %struct.trace_event_raw_bcache_invalidate, ptr %call13, i32 0, i32 1
  %43 = ptrtoint ptr %sectors to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv20, ptr %sectors, align 8
  %44 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rctx, align 4
  %46 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %45, ptr noundef %__data, i64 noundef 1, ptr noundef %47, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_bcache_alloc(ptr noundef %__data, ptr nocapture noundef readonly %ca, i32 noundef %bucket) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !532

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !533

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %bdev = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 6
  %3 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bdev, align 4
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bd_dev, align 4
  %dev = getelementptr inbounds %struct.trace_event_raw_bcache_alloc, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %dev, align 8
  %8 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ca, align 8
  %bucket_bits = getelementptr inbounds %struct.cache_set, ptr %9, i32 0, i32 24
  %10 = ptrtoint ptr %bucket_bits to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %bucket_bits, align 8
  %conv = zext i16 %11 to i32
  %shl = shl i32 %bucket, %conv
  %conv6 = zext i32 %shl to i64
  %offset = getelementptr inbounds %struct.trace_event_raw_bcache_alloc, ptr %call3, i32 0, i32 2
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv6, ptr %offset, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_bcache_alloc(ptr noundef %__data, ptr nocapture noundef readonly %ca, i32 noundef %bucket) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !534
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !534
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !522) #5
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !522) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %bdev = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 6
  %27 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bdev, align 4
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bd_dev, align 4
  %dev = getelementptr inbounds %struct.trace_event_raw_bcache_alloc, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %dev, align 8
  %32 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ca, align 8
  %bucket_bits = getelementptr inbounds %struct.cache_set, ptr %33, i32 0, i32 24
  %34 = ptrtoint ptr %bucket_bits to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %bucket_bits, align 8
  %conv = zext i16 %35 to i32
  %shl = shl i32 %bucket, %conv
  %conv17 = zext i32 %shl to i64
  %offset = getelementptr inbounds %struct.trace_event_raw_bcache_alloc, ptr %call13, i32 0, i32 2
  %36 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %conv17, ptr %offset, align 8
  %37 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rctx, align 4
  %39 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %38, ptr noundef %__data, i64 noundef 1, ptr noundef %40, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_bcache_alloc_fail(ptr noundef %__data, ptr nocapture noundef readonly %ca, i32 noundef %reserve) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !532

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !533

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %bdev = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 6
  %3 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bdev, align 4
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bd_dev, align 4
  %dev = getelementptr inbounds %struct.trace_event_raw_bcache_alloc_fail, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %dev, align 4
  %arrayidx = getelementptr %struct.cache, ptr %ca, i32 0, i32 12, i32 %reserve
  %back = getelementptr %struct.cache, ptr %ca, i32 0, i32 12, i32 %reserve, i32 1
  %8 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %back, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %sub = sub i32 %9, %11
  %mask = getelementptr %struct.cache, ptr %ca, i32 0, i32 12, i32 %reserve, i32 3
  %12 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mask, align 4
  %and = and i32 %sub, %13
  %free10 = getelementptr inbounds %struct.trace_event_raw_bcache_alloc_fail, ptr %call3, i32 0, i32 2
  %14 = ptrtoint ptr %free10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and, ptr %free10, align 4
  %free_inc = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 13
  %back11 = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 13, i32 1
  %15 = ptrtoint ptr %back11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %back11, align 4
  %17 = ptrtoint ptr %free_inc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %free_inc, align 8
  %sub14 = sub i32 %16, %18
  %mask16 = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 13, i32 3
  %19 = ptrtoint ptr %mask16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mask16, align 4
  %and17 = and i32 %sub14, %20
  %free_inc18 = getelementptr inbounds %struct.trace_event_raw_bcache_alloc_fail, ptr %call3, i32 0, i32 3
  %21 = ptrtoint ptr %free_inc18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and17, ptr %free_inc18, align 4
  %22 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ca, align 8
  %prio_blocked = getelementptr inbounds %struct.cache_set, ptr %23, i32 0, i32 34
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %prio_blocked, i32 noundef 4) #5
  %24 = ptrtoint ptr %prio_blocked to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %prio_blocked, align 4
  %blocked = getelementptr inbounds %struct.trace_event_raw_bcache_alloc_fail, ptr %call3, i32 0, i32 4
  %26 = ptrtoint ptr %blocked to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %blocked, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_bcache_alloc_fail(ptr noundef %__data, ptr nocapture noundef readonly %ca, i32 noundef %reserve) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !534
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !534
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !522) #5
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !522) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %bdev = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 6
  %27 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bdev, align 4
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bd_dev, align 4
  %dev = getelementptr inbounds %struct.trace_event_raw_bcache_alloc_fail, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %dev, align 4
  %arrayidx17 = getelementptr %struct.cache, ptr %ca, i32 0, i32 12, i32 %reserve
  %back = getelementptr %struct.cache, ptr %ca, i32 0, i32 12, i32 %reserve, i32 1
  %32 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %back, align 4
  %34 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx17, align 4
  %sub20 = sub i32 %33, %35
  %mask = getelementptr %struct.cache, ptr %ca, i32 0, i32 12, i32 %reserve, i32 3
  %36 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mask, align 4
  %and23 = and i32 %sub20, %37
  %free24 = getelementptr inbounds %struct.trace_event_raw_bcache_alloc_fail, ptr %call13, i32 0, i32 2
  %38 = ptrtoint ptr %free24 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and23, ptr %free24, align 4
  %free_inc = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 13
  %back25 = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 13, i32 1
  %39 = ptrtoint ptr %back25 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %back25, align 4
  %41 = ptrtoint ptr %free_inc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %free_inc, align 8
  %sub28 = sub i32 %40, %42
  %mask30 = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 13, i32 3
  %43 = ptrtoint ptr %mask30 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mask30, align 4
  %and31 = and i32 %sub28, %44
  %free_inc32 = getelementptr inbounds %struct.trace_event_raw_bcache_alloc_fail, ptr %call13, i32 0, i32 3
  %45 = ptrtoint ptr %free_inc32 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %and31, ptr %free_inc32, align 4
  %46 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ca, align 8
  %prio_blocked = getelementptr inbounds %struct.cache_set, ptr %47, i32 0, i32 34
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %prio_blocked, i32 noundef 4) #5
  %48 = ptrtoint ptr %prio_blocked to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %prio_blocked, align 4
  %blocked = getelementptr inbounds %struct.trace_event_raw_bcache_alloc_fail, ptr %call13, i32 0, i32 4
  %50 = ptrtoint ptr %blocked to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %blocked, align 4
  %51 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rctx, align 4
  %53 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %52, ptr noundef %__data, i64 noundef 1, ptr noundef %54, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_bcache_request(ptr noundef %__data, ptr noundef %d, ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %d to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %bio to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_bcache_bio(ptr noundef %__data, ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %bio to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_bcache_read(ptr noundef %__data, ptr noundef %bio, i1 noundef zeroext %hit, i1 noundef zeroext %bypass) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %bio to i32
  %conv = zext i32 %0 to i64
  %conv6 = zext i1 %hit to i64
  %conv12 = zext i1 %bypass to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv6, i64 noundef %conv12) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_bcache_write(ptr noundef %__data, ptr noundef %c, i64 noundef %inode, ptr noundef %bio, i1 noundef zeroext %writeback, i1 noundef zeroext %bypass) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %c to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %bio to i32
  %conv8 = zext i32 %1 to i64
  %conv13 = zext i1 %writeback to i64
  %conv19 = zext i1 %bypass to i64
  tail call void @bpf_trace_run5(ptr noundef %__data, i64 noundef %conv, i64 noundef %inode, i64 noundef %conv8, i64 noundef %conv13, i64 noundef %conv19) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_bkey(ptr noundef %__data, ptr noundef %k) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %k to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cache_set(ptr noundef %__data, ptr noundef %c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %c to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_bcache_journal_write(ptr noundef %__data, ptr noundef %bio, i32 noundef %keys) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %bio to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %keys to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_btree_node(ptr noundef %__data, ptr noundef %b) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %b to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_bcache_btree_write(ptr noundef %__data, ptr noundef %b) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %b to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_bcache_btree_gc_coalesce(ptr noundef %__data, i32 noundef %nodes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i32 %nodes to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_bcache_btree_insert_key(ptr noundef %__data, ptr noundef %b, ptr noundef %k, i32 noundef %op, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %b to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %k to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i32 %op to i64
  %conv12 = zext i32 %status to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_btree_split(ptr noundef %__data, ptr noundef %b, i32 noundef %keys) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %b to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %keys to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_bcache_keyscan(ptr noundef %__data, i32 noundef %nr_found, i32 noundef %start_inode, i64 noundef %start_offset, i32 noundef %end_inode, i64 noundef %end_offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i32 %nr_found to i64
  %conv4 = zext i32 %start_inode to i64
  %conv11 = zext i32 %end_inode to i64
  tail call void @bpf_trace_run5(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %start_offset, i64 noundef %conv11, i64 noundef %end_offset) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_bcache_invalidate(ptr noundef %__data, ptr noundef %ca, i32 noundef %bucket) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %ca to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %bucket to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_bcache_alloc(ptr noundef %__data, ptr noundef %ca, i32 noundef %bucket) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %ca to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %bucket to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_bcache_alloc_fail(ptr noundef %__data, ptr noundef %ca, i32 noundef %reserve) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %ca to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %reserve to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_fill_rwbs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_bcache_request(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %dev = getelementptr inbounds %struct.trace_event_raw_bcache_request, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev, align 8
  %shr = lshr i32 %3, 20
  %and = and i32 %3, 1048575
  %rwbs = getelementptr inbounds %struct.trace_event_raw_bcache_request, ptr %1, i32 0, i32 7
  %sector = getelementptr inbounds %struct.trace_event_raw_bcache_request, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sector, align 8
  %nr_sector = getelementptr inbounds %struct.trace_event_raw_bcache_request, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %nr_sector to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_sector, align 4
  %orig_major = getelementptr inbounds %struct.trace_event_raw_bcache_request, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %orig_major to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %orig_major, align 4
  %orig_minor = getelementptr inbounds %struct.trace_event_raw_bcache_request, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %orig_minor to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %orig_minor, align 8
  %orig_sector = getelementptr inbounds %struct.trace_event_raw_bcache_request, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %orig_sector to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %orig_sector, align 8
  %conv = zext i32 %13 to i64
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.20, i32 noundef %shr, i32 noundef %and, ptr noundef %rwbs, i64 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i64 noundef %conv) #5
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_bcache_bio(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %dev = getelementptr inbounds %struct.trace_event_raw_bcache_bio, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev, align 8
  %shr = lshr i32 %3, 20
  %and = and i32 %3, 1048575
  %rwbs = getelementptr inbounds %struct.trace_event_raw_bcache_bio, ptr %1, i32 0, i32 4
  %sector = getelementptr inbounds %struct.trace_event_raw_bcache_bio, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sector, align 8
  %nr_sector = getelementptr inbounds %struct.trace_event_raw_bcache_bio, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %nr_sector to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_sector, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.21, i32 noundef %shr, i32 noundef %and, ptr noundef %rwbs, i64 noundef %5, i32 noundef %7) #5
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_bcache_read(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %dev = getelementptr inbounds %struct.trace_event_raw_bcache_read, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev, align 8
  %shr = lshr i32 %3, 20
  %and = and i32 %3, 1048575
  %rwbs = getelementptr inbounds %struct.trace_event_raw_bcache_read, ptr %1, i32 0, i32 4
  %sector = getelementptr inbounds %struct.trace_event_raw_bcache_read, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sector, align 8
  %nr_sector = getelementptr inbounds %struct.trace_event_raw_bcache_read, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %nr_sector to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_sector, align 8
  %cache_hit = getelementptr inbounds %struct.trace_event_raw_bcache_read, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %cache_hit to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cache_hit, align 2, !range !535
  %10 = zext i8 %9 to i32
  %bypass = getelementptr inbounds %struct.trace_event_raw_bcache_read, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %bypass to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bypass, align 1, !range !535
  %13 = zext i8 %12 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.24, i32 noundef %shr, i32 noundef %and, ptr noundef %rwbs, i64 noundef %5, i32 noundef %7, i32 noundef %10, i32 noundef %13) #5
  %call4 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_bcache_write(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %uuid = getelementptr inbounds %struct.trace_event_raw_bcache_write, ptr %1, i32 0, i32 1
  %inode = getelementptr inbounds %struct.trace_event_raw_bcache_write, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %inode, align 8
  %rwbs = getelementptr inbounds %struct.trace_event_raw_bcache_write, ptr %1, i32 0, i32 5
  %sector = getelementptr inbounds %struct.trace_event_raw_bcache_write, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sector, align 8
  %nr_sector = getelementptr inbounds %struct.trace_event_raw_bcache_write, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %nr_sector to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_sector, align 8
  %writeback = getelementptr inbounds %struct.trace_event_raw_bcache_write, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %writeback to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %writeback, align 2, !range !535
  %10 = zext i8 %9 to i32
  %bypass = getelementptr inbounds %struct.trace_event_raw_bcache_write, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %bypass to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bypass, align 1, !range !535
  %13 = zext i8 %12 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.28, ptr noundef %uuid, i64 noundef %3, ptr noundef %rwbs, i64 noundef %5, i32 noundef %7, i32 noundef %10, i32 noundef %13) #5
  %call4 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_bkey(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %inode = getelementptr inbounds %struct.trace_event_raw_bkey, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inode, align 4
  %offset = getelementptr inbounds %struct.trace_event_raw_bkey, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %offset, align 8
  %size = getelementptr inbounds %struct.trace_event_raw_bkey, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 8
  %dirty = getelementptr inbounds %struct.trace_event_raw_bkey, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %dirty to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dirty, align 8, !range !535
  %10 = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.29, i32 noundef %3, i64 noundef %5, i32 noundef %7, i32 noundef %10) #5
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cache_set(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %uuid = getelementptr inbounds %struct.trace_event_raw_cache_set, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.30, ptr noundef %uuid) #5
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_bcache_journal_write(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %dev = getelementptr inbounds %struct.trace_event_raw_bcache_journal_write, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev, align 8
  %shr = lshr i32 %3, 20
  %and = and i32 %3, 1048575
  %rwbs = getelementptr inbounds %struct.trace_event_raw_bcache_journal_write, ptr %1, i32 0, i32 4
  %sector = getelementptr inbounds %struct.trace_event_raw_bcache_journal_write, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sector, align 8
  %nr_sector = getelementptr inbounds %struct.trace_event_raw_bcache_journal_write, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %nr_sector to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_sector, align 8
  %nr_keys = getelementptr inbounds %struct.trace_event_raw_bcache_journal_write, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %nr_keys to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_keys, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.32, i32 noundef %shr, i32 noundef %and, ptr noundef %rwbs, i64 noundef %5, i32 noundef %7, i32 noundef %9) #5
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_btree_node(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %bucket = getelementptr inbounds %struct.trace_event_raw_btree_node, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bucket to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bucket, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.33, i32 noundef %3) #5
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_bcache_btree_write(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %bucket = getelementptr inbounds %struct.trace_event_raw_bcache_btree_write, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bucket to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bucket, align 4
  %block = getelementptr inbounds %struct.trace_event_raw_bcache_btree_write, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %block, align 4
  %keys = getelementptr inbounds %struct.trace_event_raw_bcache_btree_write, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %keys, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.37, i32 noundef %3, i32 noundef %5, i32 noundef %7) #5
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_bcache_btree_gc_coalesce(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %nodes = getelementptr inbounds %struct.trace_event_raw_bcache_btree_gc_coalesce, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nodes, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.39, i32 noundef %3) #5
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_bcache_btree_insert_key(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %status = getelementptr inbounds %struct.trace_event_raw_bcache_btree_insert_key, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %status, align 2
  %conv = zext i8 %3 to i32
  %op = getelementptr inbounds %struct.trace_event_raw_bcache_btree_insert_key, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %op, align 1
  %conv1 = zext i8 %5 to i32
  %btree_node = getelementptr inbounds %struct.trace_event_raw_bcache_btree_insert_key, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %btree_node to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %btree_node, align 8
  %btree_level = getelementptr inbounds %struct.trace_event_raw_bcache_btree_insert_key, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %btree_level to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %btree_level, align 8
  %inode = getelementptr inbounds %struct.trace_event_raw_bcache_btree_insert_key, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %inode, align 4
  %offset = getelementptr inbounds %struct.trace_event_raw_bcache_btree_insert_key, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %offset, align 8
  %size = getelementptr inbounds %struct.trace_event_raw_bcache_btree_insert_key, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 8
  %dirty = getelementptr inbounds %struct.trace_event_raw_bcache_btree_insert_key, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %dirty to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %dirty, align 4
  %conv2 = zext i8 %17 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.45, i32 noundef %conv, i32 noundef %conv1, i64 noundef %7, i32 noundef %9, i32 noundef %11, i64 noundef %13, i32 noundef %15, i32 noundef %conv2) #5
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_btree_split(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %bucket = getelementptr inbounds %struct.trace_event_raw_btree_split, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bucket to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bucket, align 4
  %keys = getelementptr inbounds %struct.trace_event_raw_btree_split, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %keys, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.46, i32 noundef %3, i32 noundef %5) #5
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_bcache_keyscan(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %nr_found = getelementptr inbounds %struct.trace_event_raw_bcache_keyscan, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nr_found to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_found, align 8
  %start_inode = getelementptr inbounds %struct.trace_event_raw_bcache_keyscan, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %start_inode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %start_inode, align 4
  %start_offset = getelementptr inbounds %struct.trace_event_raw_bcache_keyscan, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %start_offset to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %start_offset, align 8
  %end_inode = getelementptr inbounds %struct.trace_event_raw_bcache_keyscan, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %end_inode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end_inode, align 8
  %end_offset = getelementptr inbounds %struct.trace_event_raw_bcache_keyscan, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %end_offset to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %end_offset, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.54, i32 noundef %3, i32 noundef %5, i64 noundef %7, i32 noundef %9, i64 noundef %11) #5
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_bcache_invalidate(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %sectors = getelementptr inbounds %struct.trace_event_raw_bcache_invalidate, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sectors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sectors, align 8
  %dev = getelementptr inbounds %struct.trace_event_raw_bcache_invalidate, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev, align 4
  %shr = lshr i32 %5, 20
  %and = and i32 %5, 1048575
  %offset = getelementptr inbounds %struct.trace_event_raw_bcache_invalidate, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %offset, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.56, i32 noundef %3, i32 noundef %shr, i32 noundef %and, i64 noundef %7) #5
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_bcache_alloc(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %dev = getelementptr inbounds %struct.trace_event_raw_bcache_alloc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev, align 8
  %shr = lshr i32 %3, 20
  %and = and i32 %3, 1048575
  %offset = getelementptr inbounds %struct.trace_event_raw_bcache_alloc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %offset, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.57, i32 noundef %shr, i32 noundef %and, i64 noundef %5) #5
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_bcache_alloc_fail(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %dev = getelementptr inbounds %struct.trace_event_raw_bcache_alloc_fail, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev, align 4
  %shr = lshr i32 %3, 20
  %and = and i32 %3, 1048575
  %free = getelementptr inbounds %struct.trace_event_raw_bcache_alloc_fail, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %free, align 4
  %free_inc = getelementptr inbounds %struct.trace_event_raw_bcache_alloc_fail, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %free_inc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %free_inc, align 4
  %blocked = getelementptr inbounds %struct.trace_event_raw_bcache_alloc_fail, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %blocked to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %blocked, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.61, i32 noundef %shr, i32 noundef %and, i32 noundef %5, i32 noundef %7, i32 noundef %9) #5
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run5(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run4(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 144)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 144)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !136, !138, !139, !140, !141, !142, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !255, !256, !257, !259, !260, !261, !263, !264, !265, !267, !268, !269, !271, !272, !273, !275, !276, !277, !279, !280, !281, !283, !284, !285, !287, !288, !289, !291, !292, !293, !295, !296, !297, !299, !300, !301, !303, !304, !305, !307, !308, !309, !311, !312, !313, !315, !316, !317, !319, !320, !321, !323, !324, !325, !327, !328, !329, !331, !332, !333, !335, !336, !337, !339, !340, !341, !343, !344, !345, !347, !348, !349, !351, !352, !353, !355, !356, !357, !359, !360, !361, !363, !364, !365, !367, !368, !369, !371, !372, !373, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521}
!llvm.named.register.sp = !{!522}
!llvm.module.flags = !{!523, !524, !525, !526, !527, !528, !529, !530}
!llvm.ident = !{!531}

!0 = !{ptr @__tracepoint_bcache_request_start, !1, !"__tracepoint_bcache_request_start", i1 false, i1 false}
!1 = !{!"../include/trace/events/bcache.h", i32 80, i32 1}
!2 = !{ptr @__tracepoint_ptr_bcache_request_start, !1, !"__tracepoint_ptr_bcache_request_start", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_bcache_request_start, !1, !"__SCK__tp_func_bcache_request_start", i1 false, i1 false}
!4 = !{ptr @__tracepoint_bcache_request_end, !5, !"__tracepoint_bcache_request_end", i1 false, i1 false}
!5 = !{!"../include/trace/events/bcache.h", i32 85, i32 1}
!6 = !{ptr @__tracepoint_ptr_bcache_request_end, !5, !"__tracepoint_ptr_bcache_request_end", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_bcache_request_end, !5, !"__SCK__tp_func_bcache_request_end", i1 false, i1 false}
!8 = !{ptr @__tracepoint_bcache_bypass_sequential, !9, !"__tracepoint_bcache_bypass_sequential", i1 false, i1 false}
!9 = !{!"../include/trace/events/bcache.h", i32 113, i32 1}
!10 = !{ptr @__tracepoint_ptr_bcache_bypass_sequential, !9, !"__tracepoint_ptr_bcache_bypass_sequential", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_bcache_bypass_sequential, !9, !"__SCK__tp_func_bcache_bypass_sequential", i1 false, i1 false}
!12 = !{ptr @__tracepoint_bcache_bypass_congested, !13, !"__tracepoint_bcache_bypass_congested", i1 false, i1 false}
!13 = !{!"../include/trace/events/bcache.h", i32 118, i32 1}
!14 = !{ptr @__tracepoint_ptr_bcache_bypass_congested, !13, !"__tracepoint_ptr_bcache_bypass_congested", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_bcache_bypass_congested, !13, !"__SCK__tp_func_bcache_bypass_congested", i1 false, i1 false}
!16 = !{ptr @__tracepoint_bcache_read, !17, !"__tracepoint_bcache_read", i1 false, i1 false}
!17 = !{!"../include/trace/events/bcache.h", i32 123, i32 1}
!18 = !{ptr @__tracepoint_ptr_bcache_read, !17, !"__tracepoint_ptr_bcache_read", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_bcache_read, !17, !"__SCK__tp_func_bcache_read", i1 false, i1 false}
!20 = !{ptr @__tracepoint_bcache_write, !21, !"__tracepoint_bcache_write", i1 false, i1 false}
!21 = !{!"../include/trace/events/bcache.h", i32 151, i32 1}
!22 = !{ptr @__tracepoint_ptr_bcache_write, !21, !"__tracepoint_ptr_bcache_write", i1 false, i1 false}
!23 = !{ptr @__SCK__tp_func_bcache_write, !21, !"__SCK__tp_func_bcache_write", i1 false, i1 false}
!24 = !{ptr @__tracepoint_bcache_read_retry, !25, !"__tracepoint_bcache_read_retry", i1 false, i1 false}
!25 = !{!"../include/trace/events/bcache.h", i32 182, i32 1}
!26 = !{ptr @__tracepoint_ptr_bcache_read_retry, !25, !"__tracepoint_ptr_bcache_read_retry", i1 false, i1 false}
!27 = !{ptr @__SCK__tp_func_bcache_read_retry, !25, !"__SCK__tp_func_bcache_read_retry", i1 false, i1 false}
!28 = !{ptr @__tracepoint_bcache_cache_insert, !29, !"__tracepoint_bcache_cache_insert", i1 false, i1 false}
!29 = !{!"../include/trace/events/bcache.h", i32 187, i32 1}
!30 = !{ptr @__tracepoint_ptr_bcache_cache_insert, !29, !"__tracepoint_ptr_bcache_cache_insert", i1 false, i1 false}
!31 = !{ptr @__SCK__tp_func_bcache_cache_insert, !29, !"__SCK__tp_func_bcache_cache_insert", i1 false, i1 false}
!32 = !{ptr @__tracepoint_bcache_journal_replay_key, !33, !"__tracepoint_bcache_journal_replay_key", i1 false, i1 false}
!33 = !{!"../include/trace/events/bcache.h", i32 209, i32 1}
!34 = !{ptr @__tracepoint_ptr_bcache_journal_replay_key, !33, !"__tracepoint_ptr_bcache_journal_replay_key", i1 false, i1 false}
!35 = !{ptr @__SCK__tp_func_bcache_journal_replay_key, !33, !"__SCK__tp_func_bcache_journal_replay_key", i1 false, i1 false}
!36 = !{ptr @__tracepoint_bcache_journal_full, !37, !"__tracepoint_bcache_journal_full", i1 false, i1 false}
!37 = !{!"../include/trace/events/bcache.h", i32 214, i32 1}
!38 = !{ptr @__tracepoint_ptr_bcache_journal_full, !37, !"__tracepoint_ptr_bcache_journal_full", i1 false, i1 false}
!39 = !{ptr @__SCK__tp_func_bcache_journal_full, !37, !"__SCK__tp_func_bcache_journal_full", i1 false, i1 false}
!40 = !{ptr @__tracepoint_bcache_journal_entry_full, !41, !"__tracepoint_bcache_journal_entry_full", i1 false, i1 false}
!41 = !{!"../include/trace/events/bcache.h", i32 219, i32 1}
!42 = !{ptr @__tracepoint_ptr_bcache_journal_entry_full, !41, !"__tracepoint_ptr_bcache_journal_entry_full", i1 false, i1 false}
!43 = !{ptr @__SCK__tp_func_bcache_journal_entry_full, !41, !"__SCK__tp_func_bcache_journal_entry_full", i1 false, i1 false}
!44 = !{ptr @__tracepoint_bcache_journal_write, !45, !"__tracepoint_bcache_journal_write", i1 false, i1 false}
!45 = !{!"../include/trace/events/bcache.h", i32 224, i32 1}
!46 = !{ptr @__tracepoint_ptr_bcache_journal_write, !45, !"__tracepoint_ptr_bcache_journal_write", i1 false, i1 false}
!47 = !{ptr @__SCK__tp_func_bcache_journal_write, !45, !"__SCK__tp_func_bcache_journal_write", i1 false, i1 false}
!48 = !{ptr @__tracepoint_bcache_btree_cache_cannibalize, !49, !"__tracepoint_bcache_btree_cache_cannibalize", i1 false, i1 false}
!49 = !{!"../include/trace/events/bcache.h", i32 252, i32 1}
!50 = !{ptr @__tracepoint_ptr_bcache_btree_cache_cannibalize, !49, !"__tracepoint_ptr_bcache_btree_cache_cannibalize", i1 false, i1 false}
!51 = !{ptr @__SCK__tp_func_bcache_btree_cache_cannibalize, !49, !"__SCK__tp_func_bcache_btree_cache_cannibalize", i1 false, i1 false}
!52 = !{ptr @__tracepoint_bcache_btree_read, !53, !"__tracepoint_bcache_btree_read", i1 false, i1 false}
!53 = !{!"../include/trace/events/bcache.h", i32 257, i32 1}
!54 = !{ptr @__tracepoint_ptr_bcache_btree_read, !53, !"__tracepoint_ptr_bcache_btree_read", i1 false, i1 false}
!55 = !{ptr @__SCK__tp_func_bcache_btree_read, !53, !"__SCK__tp_func_bcache_btree_read", i1 false, i1 false}
!56 = !{ptr @__tracepoint_bcache_btree_write, !57, !"__tracepoint_bcache_btree_write", i1 false, i1 false}
!57 = !{!"../include/trace/events/bcache.h", i32 262, i32 1}
!58 = !{ptr @__tracepoint_ptr_bcache_btree_write, !57, !"__tracepoint_ptr_bcache_btree_write", i1 false, i1 false}
!59 = !{ptr @__SCK__tp_func_bcache_btree_write, !57, !"__SCK__tp_func_bcache_btree_write", i1 false, i1 false}
!60 = !{ptr @__tracepoint_bcache_btree_node_alloc, !61, !"__tracepoint_bcache_btree_node_alloc", i1 false, i1 false}
!61 = !{!"../include/trace/events/bcache.h", i32 282, i32 1}
!62 = !{ptr @__tracepoint_ptr_bcache_btree_node_alloc, !61, !"__tracepoint_ptr_bcache_btree_node_alloc", i1 false, i1 false}
!63 = !{ptr @__SCK__tp_func_bcache_btree_node_alloc, !61, !"__SCK__tp_func_bcache_btree_node_alloc", i1 false, i1 false}
!64 = !{ptr @__tracepoint_bcache_btree_node_alloc_fail, !65, !"__tracepoint_bcache_btree_node_alloc_fail", i1 false, i1 false}
!65 = !{!"../include/trace/events/bcache.h", i32 287, i32 1}
!66 = !{ptr @__tracepoint_ptr_bcache_btree_node_alloc_fail, !65, !"__tracepoint_ptr_bcache_btree_node_alloc_fail", i1 false, i1 false}
!67 = !{ptr @__SCK__tp_func_bcache_btree_node_alloc_fail, !65, !"__SCK__tp_func_bcache_btree_node_alloc_fail", i1 false, i1 false}
!68 = !{ptr @__tracepoint_bcache_btree_node_free, !69, !"__tracepoint_bcache_btree_node_free", i1 false, i1 false}
!69 = !{!"../include/trace/events/bcache.h", i32 292, i32 1}
!70 = !{ptr @__tracepoint_ptr_bcache_btree_node_free, !69, !"__tracepoint_ptr_bcache_btree_node_free", i1 false, i1 false}
!71 = !{ptr @__SCK__tp_func_bcache_btree_node_free, !69, !"__SCK__tp_func_bcache_btree_node_free", i1 false, i1 false}
!72 = !{ptr @__tracepoint_bcache_btree_gc_coalesce, !73, !"__tracepoint_bcache_btree_gc_coalesce", i1 false, i1 false}
!73 = !{!"../include/trace/events/bcache.h", i32 297, i32 1}
!74 = !{ptr @__tracepoint_ptr_bcache_btree_gc_coalesce, !73, !"__tracepoint_ptr_bcache_btree_gc_coalesce", i1 false, i1 false}
!75 = !{ptr @__SCK__tp_func_bcache_btree_gc_coalesce, !73, !"__SCK__tp_func_bcache_btree_gc_coalesce", i1 false, i1 false}
!76 = !{ptr @__tracepoint_bcache_gc_start, !77, !"__tracepoint_bcache_gc_start", i1 false, i1 false}
!77 = !{!"../include/trace/events/bcache.h", i32 312, i32 1}
!78 = !{ptr @__tracepoint_ptr_bcache_gc_start, !77, !"__tracepoint_ptr_bcache_gc_start", i1 false, i1 false}
!79 = !{ptr @__SCK__tp_func_bcache_gc_start, !77, !"__SCK__tp_func_bcache_gc_start", i1 false, i1 false}
!80 = !{ptr @__tracepoint_bcache_gc_end, !81, !"__tracepoint_bcache_gc_end", i1 false, i1 false}
!81 = !{!"../include/trace/events/bcache.h", i32 317, i32 1}
!82 = !{ptr @__tracepoint_ptr_bcache_gc_end, !81, !"__tracepoint_ptr_bcache_gc_end", i1 false, i1 false}
!83 = !{ptr @__SCK__tp_func_bcache_gc_end, !81, !"__SCK__tp_func_bcache_gc_end", i1 false, i1 false}
!84 = !{ptr @__tracepoint_bcache_gc_copy, !85, !"__tracepoint_bcache_gc_copy", i1 false, i1 false}
!85 = !{!"../include/trace/events/bcache.h", i32 322, i32 1}
!86 = !{ptr @__tracepoint_ptr_bcache_gc_copy, !85, !"__tracepoint_ptr_bcache_gc_copy", i1 false, i1 false}
!87 = !{ptr @__SCK__tp_func_bcache_gc_copy, !85, !"__SCK__tp_func_bcache_gc_copy", i1 false, i1 false}
!88 = !{ptr @__tracepoint_bcache_gc_copy_collision, !89, !"__tracepoint_bcache_gc_copy_collision", i1 false, i1 false}
!89 = !{!"../include/trace/events/bcache.h", i32 327, i32 1}
!90 = !{ptr @__tracepoint_ptr_bcache_gc_copy_collision, !89, !"__tracepoint_ptr_bcache_gc_copy_collision", i1 false, i1 false}
!91 = !{ptr @__SCK__tp_func_bcache_gc_copy_collision, !89, !"__SCK__tp_func_bcache_gc_copy_collision", i1 false, i1 false}
!92 = !{ptr @__tracepoint_bcache_btree_insert_key, !93, !"__tracepoint_bcache_btree_insert_key", i1 false, i1 false}
!93 = !{!"../include/trace/events/bcache.h", i32 332, i32 1}
!94 = !{ptr @__tracepoint_ptr_bcache_btree_insert_key, !93, !"__tracepoint_ptr_bcache_btree_insert_key", i1 false, i1 false}
!95 = !{ptr @__SCK__tp_func_bcache_btree_insert_key, !93, !"__SCK__tp_func_bcache_btree_insert_key", i1 false, i1 false}
!96 = !{ptr @__tracepoint_bcache_btree_node_split, !97, !"__tracepoint_bcache_btree_node_split", i1 false, i1 false}
!97 = !{!"../include/trace/events/bcache.h", i32 382, i32 1}
!98 = !{ptr @__tracepoint_ptr_bcache_btree_node_split, !97, !"__tracepoint_ptr_bcache_btree_node_split", i1 false, i1 false}
!99 = !{ptr @__SCK__tp_func_bcache_btree_node_split, !97, !"__SCK__tp_func_bcache_btree_node_split", i1 false, i1 false}
!100 = !{ptr @__tracepoint_bcache_btree_node_compact, !101, !"__tracepoint_bcache_btree_node_compact", i1 false, i1 false}
!101 = !{!"../include/trace/events/bcache.h", i32 387, i32 1}
!102 = !{ptr @__tracepoint_ptr_bcache_btree_node_compact, !101, !"__tracepoint_ptr_bcache_btree_node_compact", i1 false, i1 false}
!103 = !{ptr @__SCK__tp_func_bcache_btree_node_compact, !101, !"__SCK__tp_func_bcache_btree_node_compact", i1 false, i1 false}
!104 = !{ptr @__tracepoint_bcache_btree_set_root, !105, !"__tracepoint_bcache_btree_set_root", i1 false, i1 false}
!105 = !{!"../include/trace/events/bcache.h", i32 392, i32 1}
!106 = !{ptr @__tracepoint_ptr_bcache_btree_set_root, !105, !"__tracepoint_ptr_bcache_btree_set_root", i1 false, i1 false}
!107 = !{ptr @__SCK__tp_func_bcache_btree_set_root, !105, !"__SCK__tp_func_bcache_btree_set_root", i1 false, i1 false}
!108 = !{ptr @__tracepoint_bcache_keyscan, !109, !"__tracepoint_bcache_keyscan", i1 false, i1 false}
!109 = !{!"../include/trace/events/bcache.h", i32 397, i32 1}
!110 = !{ptr @__tracepoint_ptr_bcache_keyscan, !109, !"__tracepoint_ptr_bcache_keyscan", i1 false, i1 false}
!111 = !{ptr @__SCK__tp_func_bcache_keyscan, !109, !"__SCK__tp_func_bcache_keyscan", i1 false, i1 false}
!112 = !{ptr @__tracepoint_bcache_invalidate, !113, !"__tracepoint_bcache_invalidate", i1 false, i1 false}
!113 = !{!"../include/trace/events/bcache.h", i32 428, i32 1}
!114 = !{ptr @__tracepoint_ptr_bcache_invalidate, !113, !"__tracepoint_ptr_bcache_invalidate", i1 false, i1 false}
!115 = !{ptr @__SCK__tp_func_bcache_invalidate, !113, !"__SCK__tp_func_bcache_invalidate", i1 false, i1 false}
!116 = !{ptr @__tracepoint_bcache_alloc, !117, !"__tracepoint_bcache_alloc", i1 false, i1 false}
!117 = !{!"../include/trace/events/bcache.h", i32 449, i32 1}
!118 = !{ptr @__tracepoint_ptr_bcache_alloc, !117, !"__tracepoint_ptr_bcache_alloc", i1 false, i1 false}
!119 = !{ptr @__SCK__tp_func_bcache_alloc, !117, !"__SCK__tp_func_bcache_alloc", i1 false, i1 false}
!120 = !{ptr @__tracepoint_bcache_alloc_fail, !121, !"__tracepoint_bcache_alloc_fail", i1 false, i1 false}
!121 = !{!"../include/trace/events/bcache.h", i32 467, i32 1}
!122 = !{ptr @__tracepoint_ptr_bcache_alloc_fail, !121, !"__tracepoint_ptr_bcache_alloc_fail", i1 false, i1 false}
!123 = !{ptr @__SCK__tp_func_bcache_alloc_fail, !121, !"__SCK__tp_func_bcache_alloc_fail", i1 false, i1 false}
!124 = !{ptr @__tracepoint_bcache_writeback, !125, !"__tracepoint_bcache_writeback", i1 false, i1 false}
!125 = !{!"../include/trace/events/bcache.h", i32 492, i32 1}
!126 = !{ptr @__tracepoint_ptr_bcache_writeback, !125, !"__tracepoint_ptr_bcache_writeback", i1 false, i1 false}
!127 = !{ptr @__SCK__tp_func_bcache_writeback, !125, !"__SCK__tp_func_bcache_writeback", i1 false, i1 false}
!128 = !{ptr @__tracepoint_bcache_writeback_collision, !129, !"__tracepoint_bcache_writeback_collision", i1 false, i1 false}
!129 = !{!"../include/trace/events/bcache.h", i32 497, i32 1}
!130 = !{ptr @__tracepoint_ptr_bcache_writeback_collision, !129, !"__tracepoint_ptr_bcache_writeback_collision", i1 false, i1 false}
!131 = !{ptr @__SCK__tp_func_bcache_writeback_collision, !129, !"__SCK__tp_func_bcache_writeback_collision", i1 false, i1 false}
!132 = !{ptr @event_class_bcache_request, !133, !"event_class_bcache_request", i1 false, i1 false}
!133 = !{!"../include/trace/events/bcache.h", i32 10, i32 1}
!134 = !{ptr @event_class_bkey, !135, !"event_class_bkey", i1 false, i1 false}
!135 = !{!"../include/trace/events/bcache.h", i32 41, i32 1}
!136 = !{ptr @event_class_btree_node, !137, !"event_class_btree_node", i1 false, i1 false}
!137 = !{!"../include/trace/events/bcache.h", i32 63, i32 1}
!138 = !{ptr @event_bcache_request_start, !1, !"event_bcache_request_start", i1 false, i1 false}
!139 = !{ptr @__event_bcache_request_start, !1, !"__event_bcache_request_start", i1 false, i1 false}
!140 = !{ptr @event_bcache_request_end, !5, !"event_bcache_request_end", i1 false, i1 false}
!141 = !{ptr @__event_bcache_request_end, !5, !"__event_bcache_request_end", i1 false, i1 false}
!142 = !{ptr @event_class_bcache_bio, !143, !"event_class_bcache_bio", i1 false, i1 false}
!143 = !{!"../include/trace/events/bcache.h", i32 90, i32 1}
!144 = !{ptr @event_bcache_bypass_sequential, !9, !"event_bcache_bypass_sequential", i1 false, i1 false}
!145 = !{ptr @__event_bcache_bypass_sequential, !9, !"__event_bcache_bypass_sequential", i1 false, i1 false}
!146 = !{ptr @event_bcache_bypass_congested, !13, !"event_bcache_bypass_congested", i1 false, i1 false}
!147 = !{ptr @__event_bcache_bypass_congested, !13, !"__event_bcache_bypass_congested", i1 false, i1 false}
!148 = !{ptr @event_class_bcache_read, !17, !"event_class_bcache_read", i1 false, i1 false}
!149 = !{ptr @event_bcache_read, !17, !"event_bcache_read", i1 false, i1 false}
!150 = !{ptr @__event_bcache_read, !17, !"__event_bcache_read", i1 false, i1 false}
!151 = !{ptr @event_class_bcache_write, !21, !"event_class_bcache_write", i1 false, i1 false}
!152 = !{ptr @event_bcache_write, !21, !"event_bcache_write", i1 false, i1 false}
!153 = !{ptr @__event_bcache_write, !21, !"__event_bcache_write", i1 false, i1 false}
!154 = !{ptr @event_bcache_read_retry, !25, !"event_bcache_read_retry", i1 false, i1 false}
!155 = !{ptr @__event_bcache_read_retry, !25, !"__event_bcache_read_retry", i1 false, i1 false}
!156 = !{ptr @event_bcache_cache_insert, !29, !"event_bcache_cache_insert", i1 false, i1 false}
!157 = !{ptr @__event_bcache_cache_insert, !29, !"__event_bcache_cache_insert", i1 false, i1 false}
!158 = !{ptr @event_class_cache_set, !159, !"event_class_cache_set", i1 false, i1 false}
!159 = !{!"../include/trace/events/bcache.h", i32 194, i32 1}
!160 = !{ptr @event_bcache_journal_replay_key, !33, !"event_bcache_journal_replay_key", i1 false, i1 false}
!161 = !{ptr @__event_bcache_journal_replay_key, !33, !"__event_bcache_journal_replay_key", i1 false, i1 false}
!162 = !{ptr @event_bcache_journal_full, !37, !"event_bcache_journal_full", i1 false, i1 false}
!163 = !{ptr @__event_bcache_journal_full, !37, !"__event_bcache_journal_full", i1 false, i1 false}
!164 = !{ptr @event_bcache_journal_entry_full, !41, !"event_bcache_journal_entry_full", i1 false, i1 false}
!165 = !{ptr @__event_bcache_journal_entry_full, !41, !"__event_bcache_journal_entry_full", i1 false, i1 false}
!166 = !{ptr @event_class_bcache_journal_write, !45, !"event_class_bcache_journal_write", i1 false, i1 false}
!167 = !{ptr @event_bcache_journal_write, !45, !"event_bcache_journal_write", i1 false, i1 false}
!168 = !{ptr @__event_bcache_journal_write, !45, !"__event_bcache_journal_write", i1 false, i1 false}
!169 = !{ptr @event_bcache_btree_cache_cannibalize, !49, !"event_bcache_btree_cache_cannibalize", i1 false, i1 false}
!170 = !{ptr @__event_bcache_btree_cache_cannibalize, !49, !"__event_bcache_btree_cache_cannibalize", i1 false, i1 false}
!171 = !{ptr @event_bcache_btree_read, !53, !"event_bcache_btree_read", i1 false, i1 false}
!172 = !{ptr @__event_bcache_btree_read, !53, !"__event_bcache_btree_read", i1 false, i1 false}
!173 = !{ptr @event_class_bcache_btree_write, !57, !"event_class_bcache_btree_write", i1 false, i1 false}
!174 = !{ptr @event_bcache_btree_write, !57, !"event_bcache_btree_write", i1 false, i1 false}
!175 = !{ptr @__event_bcache_btree_write, !57, !"__event_bcache_btree_write", i1 false, i1 false}
!176 = !{ptr @event_bcache_btree_node_alloc, !61, !"event_bcache_btree_node_alloc", i1 false, i1 false}
!177 = !{ptr @__event_bcache_btree_node_alloc, !61, !"__event_bcache_btree_node_alloc", i1 false, i1 false}
!178 = !{ptr @event_bcache_btree_node_alloc_fail, !65, !"event_bcache_btree_node_alloc_fail", i1 false, i1 false}
!179 = !{ptr @__event_bcache_btree_node_alloc_fail, !65, !"__event_bcache_btree_node_alloc_fail", i1 false, i1 false}
!180 = !{ptr @event_bcache_btree_node_free, !69, !"event_bcache_btree_node_free", i1 false, i1 false}
!181 = !{ptr @__event_bcache_btree_node_free, !69, !"__event_bcache_btree_node_free", i1 false, i1 false}
!182 = !{ptr @event_class_bcache_btree_gc_coalesce, !73, !"event_class_bcache_btree_gc_coalesce", i1 false, i1 false}
!183 = !{ptr @event_bcache_btree_gc_coalesce, !73, !"event_bcache_btree_gc_coalesce", i1 false, i1 false}
!184 = !{ptr @__event_bcache_btree_gc_coalesce, !73, !"__event_bcache_btree_gc_coalesce", i1 false, i1 false}
!185 = !{ptr @event_bcache_gc_start, !77, !"event_bcache_gc_start", i1 false, i1 false}
!186 = !{ptr @__event_bcache_gc_start, !77, !"__event_bcache_gc_start", i1 false, i1 false}
!187 = !{ptr @event_bcache_gc_end, !81, !"event_bcache_gc_end", i1 false, i1 false}
!188 = !{ptr @__event_bcache_gc_end, !81, !"__event_bcache_gc_end", i1 false, i1 false}
!189 = !{ptr @event_bcache_gc_copy, !85, !"event_bcache_gc_copy", i1 false, i1 false}
!190 = !{ptr @__event_bcache_gc_copy, !85, !"__event_bcache_gc_copy", i1 false, i1 false}
!191 = !{ptr @event_bcache_gc_copy_collision, !89, !"event_bcache_gc_copy_collision", i1 false, i1 false}
!192 = !{ptr @__event_bcache_gc_copy_collision, !89, !"__event_bcache_gc_copy_collision", i1 false, i1 false}
!193 = !{ptr @event_class_bcache_btree_insert_key, !93, !"event_class_bcache_btree_insert_key", i1 false, i1 false}
!194 = !{ptr @event_bcache_btree_insert_key, !93, !"event_bcache_btree_insert_key", i1 false, i1 false}
!195 = !{ptr @__event_bcache_btree_insert_key, !93, !"__event_bcache_btree_insert_key", i1 false, i1 false}
!196 = !{ptr @event_class_btree_split, !197, !"event_class_btree_split", i1 false, i1 false}
!197 = !{!"../include/trace/events/bcache.h", i32 365, i32 1}
!198 = !{ptr @event_bcache_btree_node_split, !97, !"event_bcache_btree_node_split", i1 false, i1 false}
!199 = !{ptr @__event_bcache_btree_node_split, !97, !"__event_bcache_btree_node_split", i1 false, i1 false}
!200 = !{ptr @event_bcache_btree_node_compact, !101, !"event_bcache_btree_node_compact", i1 false, i1 false}
!201 = !{ptr @__event_bcache_btree_node_compact, !101, !"__event_bcache_btree_node_compact", i1 false, i1 false}
!202 = !{ptr @event_bcache_btree_set_root, !105, !"event_bcache_btree_set_root", i1 false, i1 false}
!203 = !{ptr @__event_bcache_btree_set_root, !105, !"__event_bcache_btree_set_root", i1 false, i1 false}
!204 = !{ptr @event_class_bcache_keyscan, !109, !"event_class_bcache_keyscan", i1 false, i1 false}
!205 = !{ptr @event_bcache_keyscan, !109, !"event_bcache_keyscan", i1 false, i1 false}
!206 = !{ptr @__event_bcache_keyscan, !109, !"__event_bcache_keyscan", i1 false, i1 false}
!207 = !{ptr @event_class_bcache_invalidate, !113, !"event_class_bcache_invalidate", i1 false, i1 false}
!208 = !{ptr @event_bcache_invalidate, !113, !"event_bcache_invalidate", i1 false, i1 false}
!209 = !{ptr @__event_bcache_invalidate, !113, !"__event_bcache_invalidate", i1 false, i1 false}
!210 = !{ptr @event_class_bcache_alloc, !117, !"event_class_bcache_alloc", i1 false, i1 false}
!211 = !{ptr @event_bcache_alloc, !117, !"event_bcache_alloc", i1 false, i1 false}
!212 = !{ptr @__event_bcache_alloc, !117, !"__event_bcache_alloc", i1 false, i1 false}
!213 = !{ptr @event_class_bcache_alloc_fail, !121, !"event_class_bcache_alloc_fail", i1 false, i1 false}
!214 = !{ptr @event_bcache_alloc_fail, !121, !"event_bcache_alloc_fail", i1 false, i1 false}
!215 = !{ptr @__event_bcache_alloc_fail, !121, !"__event_bcache_alloc_fail", i1 false, i1 false}
!216 = !{ptr @event_bcache_writeback, !125, !"event_bcache_writeback", i1 false, i1 false}
!217 = !{ptr @__event_bcache_writeback, !125, !"__event_bcache_writeback", i1 false, i1 false}
!218 = !{ptr @event_bcache_writeback_collision, !129, !"event_bcache_writeback_collision", i1 false, i1 false}
!219 = !{ptr @__event_bcache_writeback_collision, !129, !"__event_bcache_writeback_collision", i1 false, i1 false}
!220 = !{ptr @__bpf_trace_tp_map_bcache_request_start, !1, !"__bpf_trace_tp_map_bcache_request_start", i1 false, i1 false}
!221 = !{ptr @__bpf_trace_tp_map_bcache_request_end, !5, !"__bpf_trace_tp_map_bcache_request_end", i1 false, i1 false}
!222 = !{ptr @__bpf_trace_tp_map_bcache_bypass_sequential, !9, !"__bpf_trace_tp_map_bcache_bypass_sequential", i1 false, i1 false}
!223 = !{ptr @__bpf_trace_tp_map_bcache_bypass_congested, !13, !"__bpf_trace_tp_map_bcache_bypass_congested", i1 false, i1 false}
!224 = !{ptr @__bpf_trace_tp_map_bcache_read, !17, !"__bpf_trace_tp_map_bcache_read", i1 false, i1 false}
!225 = !{ptr @__bpf_trace_tp_map_bcache_write, !21, !"__bpf_trace_tp_map_bcache_write", i1 false, i1 false}
!226 = !{ptr @__bpf_trace_tp_map_bcache_read_retry, !25, !"__bpf_trace_tp_map_bcache_read_retry", i1 false, i1 false}
!227 = !{ptr @__bpf_trace_tp_map_bcache_cache_insert, !29, !"__bpf_trace_tp_map_bcache_cache_insert", i1 false, i1 false}
!228 = !{ptr @__bpf_trace_tp_map_bcache_journal_replay_key, !33, !"__bpf_trace_tp_map_bcache_journal_replay_key", i1 false, i1 false}
!229 = !{ptr @__bpf_trace_tp_map_bcache_journal_full, !37, !"__bpf_trace_tp_map_bcache_journal_full", i1 false, i1 false}
!230 = !{ptr @__bpf_trace_tp_map_bcache_journal_entry_full, !41, !"__bpf_trace_tp_map_bcache_journal_entry_full", i1 false, i1 false}
!231 = !{ptr @__bpf_trace_tp_map_bcache_journal_write, !45, !"__bpf_trace_tp_map_bcache_journal_write", i1 false, i1 false}
!232 = !{ptr @__bpf_trace_tp_map_bcache_btree_cache_cannibalize, !49, !"__bpf_trace_tp_map_bcache_btree_cache_cannibalize", i1 false, i1 false}
!233 = !{ptr @__bpf_trace_tp_map_bcache_btree_read, !53, !"__bpf_trace_tp_map_bcache_btree_read", i1 false, i1 false}
!234 = !{ptr @__bpf_trace_tp_map_bcache_btree_write, !57, !"__bpf_trace_tp_map_bcache_btree_write", i1 false, i1 false}
!235 = !{ptr @__bpf_trace_tp_map_bcache_btree_node_alloc, !61, !"__bpf_trace_tp_map_bcache_btree_node_alloc", i1 false, i1 false}
!236 = !{ptr @__bpf_trace_tp_map_bcache_btree_node_alloc_fail, !65, !"__bpf_trace_tp_map_bcache_btree_node_alloc_fail", i1 false, i1 false}
!237 = !{ptr @__bpf_trace_tp_map_bcache_btree_node_free, !69, !"__bpf_trace_tp_map_bcache_btree_node_free", i1 false, i1 false}
!238 = !{ptr @__bpf_trace_tp_map_bcache_btree_gc_coalesce, !73, !"__bpf_trace_tp_map_bcache_btree_gc_coalesce", i1 false, i1 false}
!239 = !{ptr @__bpf_trace_tp_map_bcache_gc_start, !77, !"__bpf_trace_tp_map_bcache_gc_start", i1 false, i1 false}
!240 = !{ptr @__bpf_trace_tp_map_bcache_gc_end, !81, !"__bpf_trace_tp_map_bcache_gc_end", i1 false, i1 false}
!241 = !{ptr @__bpf_trace_tp_map_bcache_gc_copy, !85, !"__bpf_trace_tp_map_bcache_gc_copy", i1 false, i1 false}
!242 = !{ptr @__bpf_trace_tp_map_bcache_gc_copy_collision, !89, !"__bpf_trace_tp_map_bcache_gc_copy_collision", i1 false, i1 false}
!243 = !{ptr @__bpf_trace_tp_map_bcache_btree_insert_key, !93, !"__bpf_trace_tp_map_bcache_btree_insert_key", i1 false, i1 false}
!244 = !{ptr @__bpf_trace_tp_map_bcache_btree_node_split, !97, !"__bpf_trace_tp_map_bcache_btree_node_split", i1 false, i1 false}
!245 = !{ptr @__bpf_trace_tp_map_bcache_btree_node_compact, !101, !"__bpf_trace_tp_map_bcache_btree_node_compact", i1 false, i1 false}
!246 = !{ptr @__bpf_trace_tp_map_bcache_btree_set_root, !105, !"__bpf_trace_tp_map_bcache_btree_set_root", i1 false, i1 false}
!247 = !{ptr @__bpf_trace_tp_map_bcache_keyscan, !109, !"__bpf_trace_tp_map_bcache_keyscan", i1 false, i1 false}
!248 = !{ptr @__bpf_trace_tp_map_bcache_invalidate, !113, !"__bpf_trace_tp_map_bcache_invalidate", i1 false, i1 false}
!249 = !{ptr @__bpf_trace_tp_map_bcache_alloc, !117, !"__bpf_trace_tp_map_bcache_alloc", i1 false, i1 false}
!250 = !{ptr @__bpf_trace_tp_map_bcache_alloc_fail, !121, !"__bpf_trace_tp_map_bcache_alloc_fail", i1 false, i1 false}
!251 = !{ptr @__bpf_trace_tp_map_bcache_writeback, !125, !"__bpf_trace_tp_map_bcache_writeback", i1 false, i1 false}
!252 = !{ptr @__bpf_trace_tp_map_bcache_writeback_collision, !129, !"__bpf_trace_tp_map_bcache_writeback_collision", i1 false, i1 false}
!253 = !{ptr @__ksymtab___tracepoint_bcache_request_start, !254, !"__ksymtab___tracepoint_bcache_request_start", i1 false, i1 false}
!254 = !{!"../drivers/md/bcache/trace.c", i32 11, i32 1}
!255 = !{ptr @__ksymtab___traceiter_bcache_request_start, !254, !"__ksymtab___traceiter_bcache_request_start", i1 false, i1 false}
!256 = !{ptr @__ksymtab___SCK__tp_func_bcache_request_start, !254, !"__ksymtab___SCK__tp_func_bcache_request_start", i1 false, i1 false}
!257 = !{ptr @__ksymtab___tracepoint_bcache_request_end, !258, !"__ksymtab___tracepoint_bcache_request_end", i1 false, i1 false}
!258 = !{!"../drivers/md/bcache/trace.c", i32 12, i32 1}
!259 = !{ptr @__ksymtab___traceiter_bcache_request_end, !258, !"__ksymtab___traceiter_bcache_request_end", i1 false, i1 false}
!260 = !{ptr @__ksymtab___SCK__tp_func_bcache_request_end, !258, !"__ksymtab___SCK__tp_func_bcache_request_end", i1 false, i1 false}
!261 = !{ptr @__ksymtab___tracepoint_bcache_bypass_sequential, !262, !"__ksymtab___tracepoint_bcache_bypass_sequential", i1 false, i1 false}
!262 = !{!"../drivers/md/bcache/trace.c", i32 14, i32 1}
!263 = !{ptr @__ksymtab___traceiter_bcache_bypass_sequential, !262, !"__ksymtab___traceiter_bcache_bypass_sequential", i1 false, i1 false}
!264 = !{ptr @__ksymtab___SCK__tp_func_bcache_bypass_sequential, !262, !"__ksymtab___SCK__tp_func_bcache_bypass_sequential", i1 false, i1 false}
!265 = !{ptr @__ksymtab___tracepoint_bcache_bypass_congested, !266, !"__ksymtab___tracepoint_bcache_bypass_congested", i1 false, i1 false}
!266 = !{!"../drivers/md/bcache/trace.c", i32 15, i32 1}
!267 = !{ptr @__ksymtab___traceiter_bcache_bypass_congested, !266, !"__ksymtab___traceiter_bcache_bypass_congested", i1 false, i1 false}
!268 = !{ptr @__ksymtab___SCK__tp_func_bcache_bypass_congested, !266, !"__ksymtab___SCK__tp_func_bcache_bypass_congested", i1 false, i1 false}
!269 = !{ptr @__ksymtab___tracepoint_bcache_read, !270, !"__ksymtab___tracepoint_bcache_read", i1 false, i1 false}
!270 = !{!"../drivers/md/bcache/trace.c", i32 17, i32 1}
!271 = !{ptr @__ksymtab___traceiter_bcache_read, !270, !"__ksymtab___traceiter_bcache_read", i1 false, i1 false}
!272 = !{ptr @__ksymtab___SCK__tp_func_bcache_read, !270, !"__ksymtab___SCK__tp_func_bcache_read", i1 false, i1 false}
!273 = !{ptr @__ksymtab___tracepoint_bcache_write, !274, !"__ksymtab___tracepoint_bcache_write", i1 false, i1 false}
!274 = !{!"../drivers/md/bcache/trace.c", i32 18, i32 1}
!275 = !{ptr @__ksymtab___traceiter_bcache_write, !274, !"__ksymtab___traceiter_bcache_write", i1 false, i1 false}
!276 = !{ptr @__ksymtab___SCK__tp_func_bcache_write, !274, !"__ksymtab___SCK__tp_func_bcache_write", i1 false, i1 false}
!277 = !{ptr @__ksymtab___tracepoint_bcache_read_retry, !278, !"__ksymtab___tracepoint_bcache_read_retry", i1 false, i1 false}
!278 = !{!"../drivers/md/bcache/trace.c", i32 19, i32 1}
!279 = !{ptr @__ksymtab___traceiter_bcache_read_retry, !278, !"__ksymtab___traceiter_bcache_read_retry", i1 false, i1 false}
!280 = !{ptr @__ksymtab___SCK__tp_func_bcache_read_retry, !278, !"__ksymtab___SCK__tp_func_bcache_read_retry", i1 false, i1 false}
!281 = !{ptr @__ksymtab___tracepoint_bcache_cache_insert, !282, !"__ksymtab___tracepoint_bcache_cache_insert", i1 false, i1 false}
!282 = !{!"../drivers/md/bcache/trace.c", i32 21, i32 1}
!283 = !{ptr @__ksymtab___traceiter_bcache_cache_insert, !282, !"__ksymtab___traceiter_bcache_cache_insert", i1 false, i1 false}
!284 = !{ptr @__ksymtab___SCK__tp_func_bcache_cache_insert, !282, !"__ksymtab___SCK__tp_func_bcache_cache_insert", i1 false, i1 false}
!285 = !{ptr @__ksymtab___tracepoint_bcache_journal_replay_key, !286, !"__ksymtab___tracepoint_bcache_journal_replay_key", i1 false, i1 false}
!286 = !{!"../drivers/md/bcache/trace.c", i32 23, i32 1}
!287 = !{ptr @__ksymtab___traceiter_bcache_journal_replay_key, !286, !"__ksymtab___traceiter_bcache_journal_replay_key", i1 false, i1 false}
!288 = !{ptr @__ksymtab___SCK__tp_func_bcache_journal_replay_key, !286, !"__ksymtab___SCK__tp_func_bcache_journal_replay_key", i1 false, i1 false}
!289 = !{ptr @__ksymtab___tracepoint_bcache_journal_write, !290, !"__ksymtab___tracepoint_bcache_journal_write", i1 false, i1 false}
!290 = !{!"../drivers/md/bcache/trace.c", i32 24, i32 1}
!291 = !{ptr @__ksymtab___traceiter_bcache_journal_write, !290, !"__ksymtab___traceiter_bcache_journal_write", i1 false, i1 false}
!292 = !{ptr @__ksymtab___SCK__tp_func_bcache_journal_write, !290, !"__ksymtab___SCK__tp_func_bcache_journal_write", i1 false, i1 false}
!293 = !{ptr @__ksymtab___tracepoint_bcache_journal_full, !294, !"__ksymtab___tracepoint_bcache_journal_full", i1 false, i1 false}
!294 = !{!"../drivers/md/bcache/trace.c", i32 25, i32 1}
!295 = !{ptr @__ksymtab___traceiter_bcache_journal_full, !294, !"__ksymtab___traceiter_bcache_journal_full", i1 false, i1 false}
!296 = !{ptr @__ksymtab___SCK__tp_func_bcache_journal_full, !294, !"__ksymtab___SCK__tp_func_bcache_journal_full", i1 false, i1 false}
!297 = !{ptr @__ksymtab___tracepoint_bcache_journal_entry_full, !298, !"__ksymtab___tracepoint_bcache_journal_entry_full", i1 false, i1 false}
!298 = !{!"../drivers/md/bcache/trace.c", i32 26, i32 1}
!299 = !{ptr @__ksymtab___traceiter_bcache_journal_entry_full, !298, !"__ksymtab___traceiter_bcache_journal_entry_full", i1 false, i1 false}
!300 = !{ptr @__ksymtab___SCK__tp_func_bcache_journal_entry_full, !298, !"__ksymtab___SCK__tp_func_bcache_journal_entry_full", i1 false, i1 false}
!301 = !{ptr @__ksymtab___tracepoint_bcache_btree_cache_cannibalize, !302, !"__ksymtab___tracepoint_bcache_btree_cache_cannibalize", i1 false, i1 false}
!302 = !{!"../drivers/md/bcache/trace.c", i32 28, i32 1}
!303 = !{ptr @__ksymtab___traceiter_bcache_btree_cache_cannibalize, !302, !"__ksymtab___traceiter_bcache_btree_cache_cannibalize", i1 false, i1 false}
!304 = !{ptr @__ksymtab___SCK__tp_func_bcache_btree_cache_cannibalize, !302, !"__ksymtab___SCK__tp_func_bcache_btree_cache_cannibalize", i1 false, i1 false}
!305 = !{ptr @__ksymtab___tracepoint_bcache_btree_read, !306, !"__ksymtab___tracepoint_bcache_btree_read", i1 false, i1 false}
!306 = !{!"../drivers/md/bcache/trace.c", i32 30, i32 1}
!307 = !{ptr @__ksymtab___traceiter_bcache_btree_read, !306, !"__ksymtab___traceiter_bcache_btree_read", i1 false, i1 false}
!308 = !{ptr @__ksymtab___SCK__tp_func_bcache_btree_read, !306, !"__ksymtab___SCK__tp_func_bcache_btree_read", i1 false, i1 false}
!309 = !{ptr @__ksymtab___tracepoint_bcache_btree_write, !310, !"__ksymtab___tracepoint_bcache_btree_write", i1 false, i1 false}
!310 = !{!"../drivers/md/bcache/trace.c", i32 31, i32 1}
!311 = !{ptr @__ksymtab___traceiter_bcache_btree_write, !310, !"__ksymtab___traceiter_bcache_btree_write", i1 false, i1 false}
!312 = !{ptr @__ksymtab___SCK__tp_func_bcache_btree_write, !310, !"__ksymtab___SCK__tp_func_bcache_btree_write", i1 false, i1 false}
!313 = !{ptr @__ksymtab___tracepoint_bcache_btree_node_alloc, !314, !"__ksymtab___tracepoint_bcache_btree_node_alloc", i1 false, i1 false}
!314 = !{!"../drivers/md/bcache/trace.c", i32 33, i32 1}
!315 = !{ptr @__ksymtab___traceiter_bcache_btree_node_alloc, !314, !"__ksymtab___traceiter_bcache_btree_node_alloc", i1 false, i1 false}
!316 = !{ptr @__ksymtab___SCK__tp_func_bcache_btree_node_alloc, !314, !"__ksymtab___SCK__tp_func_bcache_btree_node_alloc", i1 false, i1 false}
!317 = !{ptr @__ksymtab___tracepoint_bcache_btree_node_alloc_fail, !318, !"__ksymtab___tracepoint_bcache_btree_node_alloc_fail", i1 false, i1 false}
!318 = !{!"../drivers/md/bcache/trace.c", i32 34, i32 1}
!319 = !{ptr @__ksymtab___traceiter_bcache_btree_node_alloc_fail, !318, !"__ksymtab___traceiter_bcache_btree_node_alloc_fail", i1 false, i1 false}
!320 = !{ptr @__ksymtab___SCK__tp_func_bcache_btree_node_alloc_fail, !318, !"__ksymtab___SCK__tp_func_bcache_btree_node_alloc_fail", i1 false, i1 false}
!321 = !{ptr @__ksymtab___tracepoint_bcache_btree_node_free, !322, !"__ksymtab___tracepoint_bcache_btree_node_free", i1 false, i1 false}
!322 = !{!"../drivers/md/bcache/trace.c", i32 35, i32 1}
!323 = !{ptr @__ksymtab___traceiter_bcache_btree_node_free, !322, !"__ksymtab___traceiter_bcache_btree_node_free", i1 false, i1 false}
!324 = !{ptr @__ksymtab___SCK__tp_func_bcache_btree_node_free, !322, !"__ksymtab___SCK__tp_func_bcache_btree_node_free", i1 false, i1 false}
!325 = !{ptr @__ksymtab___tracepoint_bcache_btree_gc_coalesce, !326, !"__ksymtab___tracepoint_bcache_btree_gc_coalesce", i1 false, i1 false}
!326 = !{!"../drivers/md/bcache/trace.c", i32 37, i32 1}
!327 = !{ptr @__ksymtab___traceiter_bcache_btree_gc_coalesce, !326, !"__ksymtab___traceiter_bcache_btree_gc_coalesce", i1 false, i1 false}
!328 = !{ptr @__ksymtab___SCK__tp_func_bcache_btree_gc_coalesce, !326, !"__ksymtab___SCK__tp_func_bcache_btree_gc_coalesce", i1 false, i1 false}
!329 = !{ptr @__ksymtab___tracepoint_bcache_gc_start, !330, !"__ksymtab___tracepoint_bcache_gc_start", i1 false, i1 false}
!330 = !{!"../drivers/md/bcache/trace.c", i32 38, i32 1}
!331 = !{ptr @__ksymtab___traceiter_bcache_gc_start, !330, !"__ksymtab___traceiter_bcache_gc_start", i1 false, i1 false}
!332 = !{ptr @__ksymtab___SCK__tp_func_bcache_gc_start, !330, !"__ksymtab___SCK__tp_func_bcache_gc_start", i1 false, i1 false}
!333 = !{ptr @__ksymtab___tracepoint_bcache_gc_end, !334, !"__ksymtab___tracepoint_bcache_gc_end", i1 false, i1 false}
!334 = !{!"../drivers/md/bcache/trace.c", i32 39, i32 1}
!335 = !{ptr @__ksymtab___traceiter_bcache_gc_end, !334, !"__ksymtab___traceiter_bcache_gc_end", i1 false, i1 false}
!336 = !{ptr @__ksymtab___SCK__tp_func_bcache_gc_end, !334, !"__ksymtab___SCK__tp_func_bcache_gc_end", i1 false, i1 false}
!337 = !{ptr @__ksymtab___tracepoint_bcache_gc_copy, !338, !"__ksymtab___tracepoint_bcache_gc_copy", i1 false, i1 false}
!338 = !{!"../drivers/md/bcache/trace.c", i32 40, i32 1}
!339 = !{ptr @__ksymtab___traceiter_bcache_gc_copy, !338, !"__ksymtab___traceiter_bcache_gc_copy", i1 false, i1 false}
!340 = !{ptr @__ksymtab___SCK__tp_func_bcache_gc_copy, !338, !"__ksymtab___SCK__tp_func_bcache_gc_copy", i1 false, i1 false}
!341 = !{ptr @__ksymtab___tracepoint_bcache_gc_copy_collision, !342, !"__ksymtab___tracepoint_bcache_gc_copy_collision", i1 false, i1 false}
!342 = !{!"../drivers/md/bcache/trace.c", i32 41, i32 1}
!343 = !{ptr @__ksymtab___traceiter_bcache_gc_copy_collision, !342, !"__ksymtab___traceiter_bcache_gc_copy_collision", i1 false, i1 false}
!344 = !{ptr @__ksymtab___SCK__tp_func_bcache_gc_copy_collision, !342, !"__ksymtab___SCK__tp_func_bcache_gc_copy_collision", i1 false, i1 false}
!345 = !{ptr @__ksymtab___tracepoint_bcache_btree_insert_key, !346, !"__ksymtab___tracepoint_bcache_btree_insert_key", i1 false, i1 false}
!346 = !{!"../drivers/md/bcache/trace.c", i32 43, i32 1}
!347 = !{ptr @__ksymtab___traceiter_bcache_btree_insert_key, !346, !"__ksymtab___traceiter_bcache_btree_insert_key", i1 false, i1 false}
!348 = !{ptr @__ksymtab___SCK__tp_func_bcache_btree_insert_key, !346, !"__ksymtab___SCK__tp_func_bcache_btree_insert_key", i1 false, i1 false}
!349 = !{ptr @__ksymtab___tracepoint_bcache_btree_node_split, !350, !"__ksymtab___tracepoint_bcache_btree_node_split", i1 false, i1 false}
!350 = !{!"../drivers/md/bcache/trace.c", i32 45, i32 1}
!351 = !{ptr @__ksymtab___traceiter_bcache_btree_node_split, !350, !"__ksymtab___traceiter_bcache_btree_node_split", i1 false, i1 false}
!352 = !{ptr @__ksymtab___SCK__tp_func_bcache_btree_node_split, !350, !"__ksymtab___SCK__tp_func_bcache_btree_node_split", i1 false, i1 false}
!353 = !{ptr @__ksymtab___tracepoint_bcache_btree_node_compact, !354, !"__ksymtab___tracepoint_bcache_btree_node_compact", i1 false, i1 false}
!354 = !{!"../drivers/md/bcache/trace.c", i32 46, i32 1}
!355 = !{ptr @__ksymtab___traceiter_bcache_btree_node_compact, !354, !"__ksymtab___traceiter_bcache_btree_node_compact", i1 false, i1 false}
!356 = !{ptr @__ksymtab___SCK__tp_func_bcache_btree_node_compact, !354, !"__ksymtab___SCK__tp_func_bcache_btree_node_compact", i1 false, i1 false}
!357 = !{ptr @__ksymtab___tracepoint_bcache_btree_set_root, !358, !"__ksymtab___tracepoint_bcache_btree_set_root", i1 false, i1 false}
!358 = !{!"../drivers/md/bcache/trace.c", i32 47, i32 1}
!359 = !{ptr @__ksymtab___traceiter_bcache_btree_set_root, !358, !"__ksymtab___traceiter_bcache_btree_set_root", i1 false, i1 false}
!360 = !{ptr @__ksymtab___SCK__tp_func_bcache_btree_set_root, !358, !"__ksymtab___SCK__tp_func_bcache_btree_set_root", i1 false, i1 false}
!361 = !{ptr @__ksymtab___tracepoint_bcache_invalidate, !362, !"__ksymtab___tracepoint_bcache_invalidate", i1 false, i1 false}
!362 = !{!"../drivers/md/bcache/trace.c", i32 49, i32 1}
!363 = !{ptr @__ksymtab___traceiter_bcache_invalidate, !362, !"__ksymtab___traceiter_bcache_invalidate", i1 false, i1 false}
!364 = !{ptr @__ksymtab___SCK__tp_func_bcache_invalidate, !362, !"__ksymtab___SCK__tp_func_bcache_invalidate", i1 false, i1 false}
!365 = !{ptr @__ksymtab___tracepoint_bcache_alloc_fail, !366, !"__ksymtab___tracepoint_bcache_alloc_fail", i1 false, i1 false}
!366 = !{!"../drivers/md/bcache/trace.c", i32 50, i32 1}
!367 = !{ptr @__ksymtab___traceiter_bcache_alloc_fail, !366, !"__ksymtab___traceiter_bcache_alloc_fail", i1 false, i1 false}
!368 = !{ptr @__ksymtab___SCK__tp_func_bcache_alloc_fail, !366, !"__ksymtab___SCK__tp_func_bcache_alloc_fail", i1 false, i1 false}
!369 = !{ptr @__ksymtab___tracepoint_bcache_writeback, !370, !"__ksymtab___tracepoint_bcache_writeback", i1 false, i1 false}
!370 = !{!"../drivers/md/bcache/trace.c", i32 52, i32 1}
!371 = !{ptr @__ksymtab___traceiter_bcache_writeback, !370, !"__ksymtab___traceiter_bcache_writeback", i1 false, i1 false}
!372 = !{ptr @__ksymtab___SCK__tp_func_bcache_writeback, !370, !"__ksymtab___SCK__tp_func_bcache_writeback", i1 false, i1 false}
!373 = !{ptr @__ksymtab___tracepoint_bcache_writeback_collision, !374, !"__ksymtab___tracepoint_bcache_writeback_collision", i1 false, i1 false}
!374 = !{!"../drivers/md/bcache/trace.c", i32 53, i32 1}
!375 = !{ptr @__ksymtab___traceiter_bcache_writeback_collision, !374, !"__ksymtab___traceiter_bcache_writeback_collision", i1 false, i1 false}
!376 = !{ptr @__ksymtab___SCK__tp_func_bcache_writeback_collision, !374, !"__ksymtab___SCK__tp_func_bcache_writeback_collision", i1 false, i1 false}
!377 = !{ptr @__tpstrtab_bcache_request_start, !1, !"__tpstrtab_bcache_request_start", i1 false, i1 false}
!378 = !{ptr @__tpstrtab_bcache_request_end, !5, !"__tpstrtab_bcache_request_end", i1 false, i1 false}
!379 = !{ptr @__tpstrtab_bcache_bypass_sequential, !9, !"__tpstrtab_bcache_bypass_sequential", i1 false, i1 false}
!380 = !{ptr @__tpstrtab_bcache_bypass_congested, !13, !"__tpstrtab_bcache_bypass_congested", i1 false, i1 false}
!381 = !{ptr @__tpstrtab_bcache_read, !17, !"__tpstrtab_bcache_read", i1 false, i1 false}
!382 = !{ptr @__tpstrtab_bcache_write, !21, !"__tpstrtab_bcache_write", i1 false, i1 false}
!383 = !{ptr @__tpstrtab_bcache_read_retry, !25, !"__tpstrtab_bcache_read_retry", i1 false, i1 false}
!384 = !{ptr @__tpstrtab_bcache_cache_insert, !29, !"__tpstrtab_bcache_cache_insert", i1 false, i1 false}
!385 = !{ptr @__tpstrtab_bcache_journal_replay_key, !33, !"__tpstrtab_bcache_journal_replay_key", i1 false, i1 false}
!386 = !{ptr @__tpstrtab_bcache_journal_full, !37, !"__tpstrtab_bcache_journal_full", i1 false, i1 false}
!387 = !{ptr @__tpstrtab_bcache_journal_entry_full, !41, !"__tpstrtab_bcache_journal_entry_full", i1 false, i1 false}
!388 = !{ptr @__tpstrtab_bcache_journal_write, !45, !"__tpstrtab_bcache_journal_write", i1 false, i1 false}
!389 = !{ptr @__tpstrtab_bcache_btree_cache_cannibalize, !49, !"__tpstrtab_bcache_btree_cache_cannibalize", i1 false, i1 false}
!390 = !{ptr @__tpstrtab_bcache_btree_read, !53, !"__tpstrtab_bcache_btree_read", i1 false, i1 false}
!391 = !{ptr @__tpstrtab_bcache_btree_write, !57, !"__tpstrtab_bcache_btree_write", i1 false, i1 false}
!392 = !{ptr @__tpstrtab_bcache_btree_node_alloc, !61, !"__tpstrtab_bcache_btree_node_alloc", i1 false, i1 false}
!393 = !{ptr @__tpstrtab_bcache_btree_node_alloc_fail, !65, !"__tpstrtab_bcache_btree_node_alloc_fail", i1 false, i1 false}
!394 = !{ptr @__tpstrtab_bcache_btree_node_free, !69, !"__tpstrtab_bcache_btree_node_free", i1 false, i1 false}
!395 = !{ptr @__tpstrtab_bcache_btree_gc_coalesce, !73, !"__tpstrtab_bcache_btree_gc_coalesce", i1 false, i1 false}
!396 = !{ptr @__tpstrtab_bcache_gc_start, !77, !"__tpstrtab_bcache_gc_start", i1 false, i1 false}
!397 = !{ptr @__tpstrtab_bcache_gc_end, !81, !"__tpstrtab_bcache_gc_end", i1 false, i1 false}
!398 = !{ptr @__tpstrtab_bcache_gc_copy, !85, !"__tpstrtab_bcache_gc_copy", i1 false, i1 false}
!399 = !{ptr @__tpstrtab_bcache_gc_copy_collision, !89, !"__tpstrtab_bcache_gc_copy_collision", i1 false, i1 false}
!400 = !{ptr @__tpstrtab_bcache_btree_insert_key, !93, !"__tpstrtab_bcache_btree_insert_key", i1 false, i1 false}
!401 = !{ptr @__tpstrtab_bcache_btree_node_split, !97, !"__tpstrtab_bcache_btree_node_split", i1 false, i1 false}
!402 = !{ptr @__tpstrtab_bcache_btree_node_compact, !101, !"__tpstrtab_bcache_btree_node_compact", i1 false, i1 false}
!403 = !{ptr @__tpstrtab_bcache_btree_set_root, !105, !"__tpstrtab_bcache_btree_set_root", i1 false, i1 false}
!404 = !{ptr @__tpstrtab_bcache_keyscan, !109, !"__tpstrtab_bcache_keyscan", i1 false, i1 false}
!405 = !{ptr @__tpstrtab_bcache_invalidate, !113, !"__tpstrtab_bcache_invalidate", i1 false, i1 false}
!406 = !{ptr @__tpstrtab_bcache_alloc, !117, !"__tpstrtab_bcache_alloc", i1 false, i1 false}
!407 = !{ptr @__tpstrtab_bcache_alloc_fail, !121, !"__tpstrtab_bcache_alloc_fail", i1 false, i1 false}
!408 = !{ptr @__tpstrtab_bcache_writeback, !125, !"__tpstrtab_bcache_writeback", i1 false, i1 false}
!409 = !{ptr @__tpstrtab_bcache_writeback_collision, !129, !"__tpstrtab_bcache_writeback_collision", i1 false, i1 false}
!410 = !{ptr @str__bcache__trace_system_name, !411, !"str__bcache__trace_system_name", i1 false, i1 false}
!411 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!412 = !{ptr @.str, !133, !"<string literal>", i1 false, i1 false}
!413 = !{ptr @.str.1, !133, !"<string literal>", i1 false, i1 false}
!414 = !{ptr @.str.2, !133, !"<string literal>", i1 false, i1 false}
!415 = !{ptr @.str.3, !133, !"<string literal>", i1 false, i1 false}
!416 = !{ptr @.str.4, !133, !"<string literal>", i1 false, i1 false}
!417 = !{ptr @.str.5, !133, !"<string literal>", i1 false, i1 false}
!418 = !{ptr @.str.6, !133, !"<string literal>", i1 false, i1 false}
!419 = !{ptr @.str.7, !133, !"<string literal>", i1 false, i1 false}
!420 = !{ptr @.str.8, !133, !"<string literal>", i1 false, i1 false}
!421 = !{ptr @.str.9, !133, !"<string literal>", i1 false, i1 false}
!422 = !{ptr @.str.10, !133, !"<string literal>", i1 false, i1 false}
!423 = !{ptr @trace_event_fields_bcache_request, !133, !"trace_event_fields_bcache_request", i1 false, i1 false}
!424 = !{ptr @.str.11, !135, !"<string literal>", i1 false, i1 false}
!425 = !{ptr @.str.12, !135, !"<string literal>", i1 false, i1 false}
!426 = !{ptr @.str.13, !135, !"<string literal>", i1 false, i1 false}
!427 = !{ptr @.str.14, !135, !"<string literal>", i1 false, i1 false}
!428 = !{ptr @.str.15, !135, !"<string literal>", i1 false, i1 false}
!429 = !{ptr @.str.16, !135, !"<string literal>", i1 false, i1 false}
!430 = !{ptr @.str.17, !135, !"<string literal>", i1 false, i1 false}
!431 = !{ptr @trace_event_fields_bkey, !135, !"trace_event_fields_bkey", i1 false, i1 false}
!432 = !{ptr @.str.18, !137, !"<string literal>", i1 false, i1 false}
!433 = !{ptr @.str.19, !137, !"<string literal>", i1 false, i1 false}
!434 = !{ptr @trace_event_fields_btree_node, !137, !"trace_event_fields_btree_node", i1 false, i1 false}
!435 = !{ptr @trace_event_type_funcs_bcache_request, !133, !"trace_event_type_funcs_bcache_request", i1 false, i1 false}
!436 = !{ptr @.str.20, !133, !"<string literal>", i1 false, i1 false}
!437 = !{ptr @print_fmt_bcache_request, !133, !"print_fmt_bcache_request", i1 false, i1 false}
!438 = !{ptr @trace_event_fields_bcache_bio, !143, !"trace_event_fields_bcache_bio", i1 false, i1 false}
!439 = !{ptr @trace_event_type_funcs_bcache_bio, !143, !"trace_event_type_funcs_bcache_bio", i1 false, i1 false}
!440 = !{ptr @.str.21, !143, !"<string literal>", i1 false, i1 false}
!441 = !{ptr @print_fmt_bcache_bio, !143, !"print_fmt_bcache_bio", i1 false, i1 false}
!442 = !{ptr @.str.22, !17, !"<string literal>", i1 false, i1 false}
!443 = !{ptr @.str.23, !17, !"<string literal>", i1 false, i1 false}
!444 = !{ptr @trace_event_fields_bcache_read, !17, !"trace_event_fields_bcache_read", i1 false, i1 false}
!445 = !{ptr @trace_event_type_funcs_bcache_read, !17, !"trace_event_type_funcs_bcache_read", i1 false, i1 false}
!446 = !{ptr @.str.24, !17, !"<string literal>", i1 false, i1 false}
!447 = !{ptr @print_fmt_bcache_read, !17, !"print_fmt_bcache_read", i1 false, i1 false}
!448 = !{ptr @.str.25, !21, !"<string literal>", i1 false, i1 false}
!449 = !{ptr @.str.26, !21, !"<string literal>", i1 false, i1 false}
!450 = !{ptr @.str.27, !21, !"<string literal>", i1 false, i1 false}
!451 = !{ptr @trace_event_fields_bcache_write, !21, !"trace_event_fields_bcache_write", i1 false, i1 false}
!452 = !{ptr @trace_event_type_funcs_bcache_write, !21, !"trace_event_type_funcs_bcache_write", i1 false, i1 false}
!453 = !{ptr @.str.28, !21, !"<string literal>", i1 false, i1 false}
!454 = !{ptr @print_fmt_bcache_write, !21, !"print_fmt_bcache_write", i1 false, i1 false}
!455 = !{ptr @trace_event_type_funcs_bkey, !135, !"trace_event_type_funcs_bkey", i1 false, i1 false}
!456 = !{ptr @.str.29, !135, !"<string literal>", i1 false, i1 false}
!457 = !{ptr @print_fmt_bkey, !135, !"print_fmt_bkey", i1 false, i1 false}
!458 = !{ptr @trace_event_fields_cache_set, !159, !"trace_event_fields_cache_set", i1 false, i1 false}
!459 = !{ptr @trace_event_type_funcs_cache_set, !159, !"trace_event_type_funcs_cache_set", i1 false, i1 false}
!460 = !{ptr @.str.30, !159, !"<string literal>", i1 false, i1 false}
!461 = !{ptr @print_fmt_cache_set, !159, !"print_fmt_cache_set", i1 false, i1 false}
!462 = !{ptr @.str.31, !45, !"<string literal>", i1 false, i1 false}
!463 = !{ptr @trace_event_fields_bcache_journal_write, !45, !"trace_event_fields_bcache_journal_write", i1 false, i1 false}
!464 = !{ptr @trace_event_type_funcs_bcache_journal_write, !45, !"trace_event_type_funcs_bcache_journal_write", i1 false, i1 false}
!465 = !{ptr @.str.32, !45, !"<string literal>", i1 false, i1 false}
!466 = !{ptr @print_fmt_bcache_journal_write, !45, !"print_fmt_bcache_journal_write", i1 false, i1 false}
!467 = !{ptr @trace_event_type_funcs_btree_node, !137, !"trace_event_type_funcs_btree_node", i1 false, i1 false}
!468 = !{ptr @.str.33, !137, !"<string literal>", i1 false, i1 false}
!469 = !{ptr @print_fmt_btree_node, !137, !"print_fmt_btree_node", i1 false, i1 false}
!470 = !{ptr @.str.34, !57, !"<string literal>", i1 false, i1 false}
!471 = !{ptr @.str.35, !57, !"<string literal>", i1 false, i1 false}
!472 = !{ptr @.str.36, !57, !"<string literal>", i1 false, i1 false}
!473 = !{ptr @trace_event_fields_bcache_btree_write, !57, !"trace_event_fields_bcache_btree_write", i1 false, i1 false}
!474 = !{ptr @trace_event_type_funcs_bcache_btree_write, !57, !"trace_event_type_funcs_bcache_btree_write", i1 false, i1 false}
!475 = !{ptr @.str.37, !57, !"<string literal>", i1 false, i1 false}
!476 = !{ptr @print_fmt_bcache_btree_write, !57, !"print_fmt_bcache_btree_write", i1 false, i1 false}
!477 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!478 = !{ptr @trace_event_fields_bcache_btree_gc_coalesce, !73, !"trace_event_fields_bcache_btree_gc_coalesce", i1 false, i1 false}
!479 = !{ptr @trace_event_type_funcs_bcache_btree_gc_coalesce, !73, !"trace_event_type_funcs_bcache_btree_gc_coalesce", i1 false, i1 false}
!480 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!481 = !{ptr @print_fmt_bcache_btree_gc_coalesce, !73, !"print_fmt_bcache_btree_gc_coalesce", i1 false, i1 false}
!482 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!483 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!484 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!485 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!486 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!487 = !{ptr @trace_event_fields_bcache_btree_insert_key, !93, !"trace_event_fields_bcache_btree_insert_key", i1 false, i1 false}
!488 = !{ptr @trace_event_type_funcs_bcache_btree_insert_key, !93, !"trace_event_type_funcs_bcache_btree_insert_key", i1 false, i1 false}
!489 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!490 = !{ptr @print_fmt_bcache_btree_insert_key, !93, !"print_fmt_bcache_btree_insert_key", i1 false, i1 false}
!491 = !{ptr @trace_event_fields_btree_split, !197, !"trace_event_fields_btree_split", i1 false, i1 false}
!492 = !{ptr @trace_event_type_funcs_btree_split, !197, !"trace_event_type_funcs_btree_split", i1 false, i1 false}
!493 = !{ptr @.str.46, !197, !"<string literal>", i1 false, i1 false}
!494 = !{ptr @print_fmt_btree_split, !197, !"print_fmt_btree_split", i1 false, i1 false}
!495 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!496 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!497 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!498 = !{ptr @.str.50, !109, !"<string literal>", i1 false, i1 false}
!499 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!500 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!501 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!502 = !{ptr @trace_event_fields_bcache_keyscan, !109, !"trace_event_fields_bcache_keyscan", i1 false, i1 false}
!503 = !{ptr @trace_event_type_funcs_bcache_keyscan, !109, !"trace_event_type_funcs_bcache_keyscan", i1 false, i1 false}
!504 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!505 = !{ptr @print_fmt_bcache_keyscan, !109, !"print_fmt_bcache_keyscan", i1 false, i1 false}
!506 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!507 = !{ptr @trace_event_fields_bcache_invalidate, !113, !"trace_event_fields_bcache_invalidate", i1 false, i1 false}
!508 = !{ptr @trace_event_type_funcs_bcache_invalidate, !113, !"trace_event_type_funcs_bcache_invalidate", i1 false, i1 false}
!509 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!510 = !{ptr @print_fmt_bcache_invalidate, !113, !"print_fmt_bcache_invalidate", i1 false, i1 false}
!511 = !{ptr @trace_event_fields_bcache_alloc, !117, !"trace_event_fields_bcache_alloc", i1 false, i1 false}
!512 = !{ptr @trace_event_type_funcs_bcache_alloc, !117, !"trace_event_type_funcs_bcache_alloc", i1 false, i1 false}
!513 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!514 = !{ptr @print_fmt_bcache_alloc, !117, !"print_fmt_bcache_alloc", i1 false, i1 false}
!515 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!516 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!517 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!518 = !{ptr @trace_event_fields_bcache_alloc_fail, !121, !"trace_event_fields_bcache_alloc_fail", i1 false, i1 false}
!519 = !{ptr @trace_event_type_funcs_bcache_alloc_fail, !121, !"trace_event_type_funcs_bcache_alloc_fail", i1 false, i1 false}
!520 = !{ptr @.str.61, !121, !"<string literal>", i1 false, i1 false}
!521 = !{ptr @print_fmt_bcache_alloc_fail, !121, !"print_fmt_bcache_alloc_fail", i1 false, i1 false}
!522 = !{!"sp"}
!523 = !{i32 1, !"wchar_size", i32 2}
!524 = !{i32 1, !"min_enum_size", i32 4}
!525 = !{i32 8, !"branch-target-enforcement", i32 0}
!526 = !{i32 8, !"sign-return-address", i32 0}
!527 = !{i32 8, !"sign-return-address-all", i32 0}
!528 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!529 = !{i32 7, !"uwtable", i32 1}
!530 = !{i32 7, !"frame-pointer", i32 2}
!531 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!532 = !{!"branch_weights", i32 2000, i32 1}
!533 = !{!"branch_weights", i32 1, i32 2000}
!534 = !{!"auto-init"}
!535 = !{i8 0, i8 2}
