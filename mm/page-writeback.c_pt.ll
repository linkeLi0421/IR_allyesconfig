; ModuleID = '/llk/IR_all_yes/mm/page-writeback.c_pt.bc'
source_filename = "../mm/page-writeback.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dirty_writeback_interval\22, \22a\22\09"
module asm "\09.weak\09__crc_dirty_writeback_interval\09\09\09\09"
module asm "\09.long\09__crc_dirty_writeback_interval\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dirty_writeback_interval:\09\09\09\09\09"
module asm "\09.asciz \09\22dirty_writeback_interval\22\09\09\09\09\09"
module asm "__kstrtabns_dirty_writeback_interval:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+laptop_mode\22, \22a\22\09"
module asm "\09.weak\09__crc_laptop_mode\09\09\09\09"
module asm "\09.long\09__crc_laptop_mode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_laptop_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22laptop_mode\22\09\09\09\09\09"
module asm "__kstrtabns_laptop_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+wb_writeout_inc\22, \22a\22\09"
module asm "\09.weak\09__crc_wb_writeout_inc\09\09\09\09"
module asm "\09.long\09__crc_wb_writeout_inc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wb_writeout_inc:\09\09\09\09\09"
module asm "\09.asciz \09\22wb_writeout_inc\22\09\09\09\09\09"
module asm "__kstrtabns_wb_writeout_inc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bdi_set_max_ratio\22, \22a\22\09"
module asm "\09.weak\09__crc_bdi_set_max_ratio\09\09\09\09"
module asm "\09.long\09__crc_bdi_set_max_ratio\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bdi_set_max_ratio:\09\09\09\09\09"
module asm "\09.asciz \09\22bdi_set_max_ratio\22\09\09\09\09\09"
module asm "__kstrtabns_bdi_set_max_ratio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+balance_dirty_pages_ratelimited\22, \22a\22\09"
module asm "\09.weak\09__crc_balance_dirty_pages_ratelimited\09\09\09\09"
module asm "\09.long\09__crc_balance_dirty_pages_ratelimited\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_balance_dirty_pages_ratelimited:\09\09\09\09\09"
module asm "\09.asciz \09\22balance_dirty_pages_ratelimited\22\09\09\09\09\09"
module asm "__kstrtabns_balance_dirty_pages_ratelimited:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tag_pages_for_writeback\22, \22a\22\09"
module asm "\09.weak\09__crc_tag_pages_for_writeback\09\09\09\09"
module asm "\09.long\09__crc_tag_pages_for_writeback\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tag_pages_for_writeback:\09\09\09\09\09"
module asm "\09.asciz \09\22tag_pages_for_writeback\22\09\09\09\09\09"
module asm "__kstrtabns_tag_pages_for_writeback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+write_cache_pages\22, \22a\22\09"
module asm "\09.weak\09__crc_write_cache_pages\09\09\09\09"
module asm "\09.long\09__crc_write_cache_pages\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_write_cache_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22write_cache_pages\22\09\09\09\09\09"
module asm "__kstrtabns_write_cache_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+generic_writepages\22, \22a\22\09"
module asm "\09.weak\09__crc_generic_writepages\09\09\09\09"
module asm "\09.long\09__crc_generic_writepages\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_writepages:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_writepages\22\09\09\09\09\09"
module asm "__kstrtabns_generic_writepages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+folio_write_one\22, \22a\22\09"
module asm "\09.weak\09__crc_folio_write_one\09\09\09\09"
module asm "\09.long\09__crc_folio_write_one\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_folio_write_one:\09\09\09\09\09"
module asm "\09.asciz \09\22folio_write_one\22\09\09\09\09\09"
module asm "__kstrtabns_folio_write_one:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__set_page_dirty_no_writeback\22, \22a\22\09"
module asm "\09.weak\09__crc___set_page_dirty_no_writeback\09\09\09\09"
module asm "\09.long\09__crc___set_page_dirty_no_writeback\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___set_page_dirty_no_writeback:\09\09\09\09\09"
module asm "\09.asciz \09\22__set_page_dirty_no_writeback\22\09\09\09\09\09"
module asm "__kstrtabns___set_page_dirty_no_writeback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+filemap_dirty_folio\22, \22a\22\09"
module asm "\09.weak\09__crc_filemap_dirty_folio\09\09\09\09"
module asm "\09.long\09__crc_filemap_dirty_folio\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_filemap_dirty_folio:\09\09\09\09\09"
module asm "\09.asciz \09\22filemap_dirty_folio\22\09\09\09\09\09"
module asm "__kstrtabns_filemap_dirty_folio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+folio_account_redirty\22, \22a\22\09"
module asm "\09.weak\09__crc_folio_account_redirty\09\09\09\09"
module asm "\09.long\09__crc_folio_account_redirty\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_folio_account_redirty:\09\09\09\09\09"
module asm "\09.asciz \09\22folio_account_redirty\22\09\09\09\09\09"
module asm "__kstrtabns_folio_account_redirty:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+folio_redirty_for_writepage\22, \22a\22\09"
module asm "\09.weak\09__crc_folio_redirty_for_writepage\09\09\09\09"
module asm "\09.long\09__crc_folio_redirty_for_writepage\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_folio_redirty_for_writepage:\09\09\09\09\09"
module asm "\09.asciz \09\22folio_redirty_for_writepage\22\09\09\09\09\09"
module asm "__kstrtabns_folio_redirty_for_writepage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+folio_mark_dirty\22, \22a\22\09"
module asm "\09.weak\09__crc_folio_mark_dirty\09\09\09\09"
module asm "\09.long\09__crc_folio_mark_dirty\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_folio_mark_dirty:\09\09\09\09\09"
module asm "\09.asciz \09\22folio_mark_dirty\22\09\09\09\09\09"
module asm "__kstrtabns_folio_mark_dirty:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+set_page_dirty_lock\22, \22a\22\09"
module asm "\09.weak\09__crc_set_page_dirty_lock\09\09\09\09"
module asm "\09.long\09__crc_set_page_dirty_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_page_dirty_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22set_page_dirty_lock\22\09\09\09\09\09"
module asm "__kstrtabns_set_page_dirty_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__folio_cancel_dirty\22, \22a\22\09"
module asm "\09.weak\09__crc___folio_cancel_dirty\09\09\09\09"
module asm "\09.long\09__crc___folio_cancel_dirty\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___folio_cancel_dirty:\09\09\09\09\09"
module asm "\09.asciz \09\22__folio_cancel_dirty\22\09\09\09\09\09"
module asm "__kstrtabns___folio_cancel_dirty:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+folio_clear_dirty_for_io\22, \22a\22\09"
module asm "\09.weak\09__crc_folio_clear_dirty_for_io\09\09\09\09"
module asm "\09.long\09__crc_folio_clear_dirty_for_io\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_folio_clear_dirty_for_io:\09\09\09\09\09"
module asm "\09.asciz \09\22folio_clear_dirty_for_io\22\09\09\09\09\09"
module asm "__kstrtabns_folio_clear_dirty_for_io:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__folio_start_writeback\22, \22a\22\09"
module asm "\09.weak\09__crc___folio_start_writeback\09\09\09\09"
module asm "\09.long\09__crc___folio_start_writeback\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___folio_start_writeback:\09\09\09\09\09"
module asm "\09.asciz \09\22__folio_start_writeback\22\09\09\09\09\09"
module asm "__kstrtabns___folio_start_writeback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+folio_wait_writeback\22, \22a\22\09"
module asm "\09.weak\09__crc_folio_wait_writeback\09\09\09\09"
module asm "\09.long\09__crc_folio_wait_writeback\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_folio_wait_writeback:\09\09\09\09\09"
module asm "\09.asciz \09\22folio_wait_writeback\22\09\09\09\09\09"
module asm "__kstrtabns_folio_wait_writeback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+folio_wait_writeback_killable\22, \22a\22\09"
module asm "\09.weak\09__crc_folio_wait_writeback_killable\09\09\09\09"
module asm "\09.long\09__crc_folio_wait_writeback_killable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_folio_wait_writeback_killable:\09\09\09\09\09"
module asm "\09.asciz \09\22folio_wait_writeback_killable\22\09\09\09\09\09"
module asm "__kstrtabns_folio_wait_writeback_killable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+folio_wait_stable\22, \22a\22\09"
module asm "\09.weak\09__crc_folio_wait_stable\09\09\09\09"
module asm "\09.long\09__crc_folio_wait_stable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_folio_wait_stable:\09\09\09\09\09"
module asm "\09.asciz \09\22folio_wait_stable\22\09\09\09\09\09"
module asm "__kstrtabns_folio_wait_stable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.wb_domain = type { %struct.spinlock, %struct.fprop_global, %struct.timer_list, i32, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fprop_global = type { %struct.percpu_counter, i32, %struct.seqcount }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dirty_throttle_control = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.75 }
%union.anon.75 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.static_key_true = type { %struct.static_key }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, [36 x i8], %struct.zone_padding, %struct.lruvec, i32, [12 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [92 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [96 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [90 x i8], %struct.zone_padding, [11 x %struct.atomic_t], [0 x %struct.atomic_t], [84 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32, ptr }
%struct.zone_padding = type { [0 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.80, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
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
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.80 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head, %struct.percpu_ref, %struct.fprop_local_percpu, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.105 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.percpu_ref = type { i32, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%union.anon.105 = type { %struct.work_struct }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.xarray, %struct.mutex, %struct.rw_semaphore, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.95, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.96, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.97, ptr, %struct.address_space, %struct.list_head, %union.anon.100, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.95 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.96 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.97 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.100 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.xa_state = type { ptr, i32, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.xa_node = type { i8, i8, i8, i8, ptr, ptr, %union.anon.108, [64 x ptr], %union.anon.109 }
%union.anon.108 = type { %struct.list_head }
%union.anon.109 = type { [3 x [2 x i32]] }
%struct.anon = type { [16 x i8], %struct.lockdep_map }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.17, %union.anon.86, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.86 = type { %struct.atomic_t }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.88 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }
%struct.obj_cgroup = type { %struct.percpu_ref, ptr, %struct.atomic_t, %union.anon.107 }
%union.anon.107 = type { %struct.list_head }

@dirty_background_ratio = dso_local global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@vm_dirty_ratio = dso_local global { i32, [28 x i8] } { i32 20, [28 x i8] zeroinitializer }, align 32
@dirty_writeback_interval = dso_local global { i32, [28 x i8] } { i32 500, [28 x i8] zeroinitializer }, align 32
@__kstrtab_dirty_writeback_interval = external dso_local constant [0 x i8], align 1
@__kstrtabns_dirty_writeback_interval = external dso_local constant [0 x i8], align 1
@__ksymtab_dirty_writeback_interval = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dirty_writeback_interval to i32), ptr @__kstrtab_dirty_writeback_interval, ptr @__kstrtabns_dirty_writeback_interval }, section "___ksymtab_gpl+dirty_writeback_interval", align 4
@dirty_expire_interval = dso_local global { i32, [28 x i8] } { i32 3000, [28 x i8] zeroinitializer }, align 32
@laptop_mode = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_laptop_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_laptop_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_laptop_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @laptop_mode to i32), ptr @__kstrtab_laptop_mode, ptr @__kstrtabns_laptop_mode }, section "___ksymtab+laptop_mode", align 4
@global_wb_domain = dso_local global { %struct.wb_domain, [32 x i8] } zeroinitializer, align 32
@__const.global_dirty_limits.gdtc = private unnamed_addr constant %struct.dirty_throttle_control { ptr @global_wb_domain, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, align 4
@dirty_background_bytes = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@vm_dirty_bytes = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_wb_writeout_inc = external dso_local constant [0 x i8], align 1
@__kstrtabns_wb_writeout_inc = external dso_local constant [0 x i8], align 1
@__ksymtab_wb_writeout_inc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wb_writeout_inc to i32), ptr @__kstrtab_wb_writeout_inc, ptr @__kstrtabns_wb_writeout_inc }, section "___ksymtab_gpl+wb_writeout_inc", align 4
@wb_domain_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dom->lock\00", [21 x i8] zeroinitializer }, align 32
@wb_domain_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(&dom->period_timer)\00", [43 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@bdi_lock = external dso_local global %struct.spinlock, align 4
@bdi_min_ratio = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_bdi_set_max_ratio = external dso_local constant [0 x i8], align 1
@__kstrtabns_bdi_set_max_ratio = external dso_local constant [0 x i8], align 1
@__ksymtab_bdi_set_max_ratio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bdi_set_max_ratio to i32), ptr @__kstrtab_bdi_set_max_ratio, ptr @__kstrtabns_bdi_set_max_ratio }, section "___ksymtab+bdi_set_max_ratio", align 4
@dirty_throttle_leaks = weak dso_local global i32 0, section ".data..percpu", align 4
@bdp_ratelimits = weak dso_local global i32 0, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@ratelimit_pages = internal global { i32, [28 x i8] } { i32 32, [28 x i8] zeroinitializer }, align 32
@__kstrtab_balance_dirty_pages_ratelimited = external dso_local constant [0 x i8], align 1
@__kstrtabns_balance_dirty_pages_ratelimited = external dso_local constant [0 x i8], align 1
@__ksymtab_balance_dirty_pages_ratelimited = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @balance_dirty_pages_ratelimited to i32), ptr @__kstrtab_balance_dirty_pages_ratelimited, ptr @__kstrtabns_balance_dirty_pages_ratelimited }, section "___ksymtab+balance_dirty_pages_ratelimited", align 4
@laptop_sync_completion.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mm/page-writeback.c\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@bdi_list = external dso_local global %struct.list_head, align 4
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mm/writeback:online\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mm/writeback:dead\00", [46 x i8] zeroinitializer }, align 32
@__kstrtab_tag_pages_for_writeback = external dso_local constant [0 x i8], align 1
@__kstrtabns_tag_pages_for_writeback = external dso_local constant [0 x i8], align 1
@__ksymtab_tag_pages_for_writeback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tag_pages_for_writeback to i32), ptr @__kstrtab_tag_pages_for_writeback, ptr @__kstrtabns_tag_pages_for_writeback }, section "___ksymtab+tag_pages_for_writeback", align 4
@__kstrtab_write_cache_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_write_cache_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_write_cache_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @write_cache_pages to i32), ptr @__kstrtab_write_cache_pages, ptr @__kstrtabns_write_cache_pages }, section "___ksymtab+write_cache_pages", align 4
@__kstrtab_generic_writepages = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_writepages = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_writepages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_writepages to i32), ptr @__kstrtab_generic_writepages, ptr @__kstrtabns_generic_writepages }, section "___ksymtab+generic_writepages", align 4
@__kstrtab_folio_write_one = external dso_local constant [0 x i8], align 1
@__kstrtabns_folio_write_one = external dso_local constant [0 x i8], align 1
@__ksymtab_folio_write_one = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @folio_write_one to i32), ptr @__kstrtab_folio_write_one, ptr @__kstrtabns_folio_write_one }, section "___ksymtab+folio_write_one", align 4
@__kstrtab___set_page_dirty_no_writeback = external dso_local constant [0 x i8], align 1
@__kstrtabns___set_page_dirty_no_writeback = external dso_local constant [0 x i8], align 1
@__ksymtab___set_page_dirty_no_writeback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__set_page_dirty_no_writeback to i32), ptr @__kstrtab___set_page_dirty_no_writeback, ptr @__kstrtabns___set_page_dirty_no_writeback }, section "___ksymtab+__set_page_dirty_no_writeback", align 4
@__folio_mark_dirty.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_filemap_dirty_folio = external dso_local constant [0 x i8], align 1
@__kstrtabns_filemap_dirty_folio = external dso_local constant [0 x i8], align 1
@__ksymtab_filemap_dirty_folio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @filemap_dirty_folio to i32), ptr @__kstrtab_filemap_dirty_folio, ptr @__kstrtabns_filemap_dirty_folio }, section "___ksymtab+filemap_dirty_folio", align 4
@__kstrtab_folio_account_redirty = external dso_local constant [0 x i8], align 1
@__kstrtabns_folio_account_redirty = external dso_local constant [0 x i8], align 1
@__ksymtab_folio_account_redirty = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @folio_account_redirty to i32), ptr @__kstrtab_folio_account_redirty, ptr @__kstrtabns_folio_account_redirty }, section "___ksymtab+folio_account_redirty", align 4
@__kstrtab_folio_redirty_for_writepage = external dso_local constant [0 x i8], align 1
@__kstrtabns_folio_redirty_for_writepage = external dso_local constant [0 x i8], align 1
@__ksymtab_folio_redirty_for_writepage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @folio_redirty_for_writepage to i32), ptr @__kstrtab_folio_redirty_for_writepage, ptr @__kstrtabns_folio_redirty_for_writepage }, section "___ksymtab+folio_redirty_for_writepage", align 4
@__kstrtab_folio_mark_dirty = external dso_local constant [0 x i8], align 1
@__kstrtabns_folio_mark_dirty = external dso_local constant [0 x i8], align 1
@__ksymtab_folio_mark_dirty = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @folio_mark_dirty to i32), ptr @__kstrtab_folio_mark_dirty, ptr @__kstrtabns_folio_mark_dirty }, section "___ksymtab+folio_mark_dirty", align 4
@__kstrtab_set_page_dirty_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_page_dirty_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_set_page_dirty_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_page_dirty_lock to i32), ptr @__kstrtab_set_page_dirty_lock, ptr @__kstrtabns_set_page_dirty_lock }, section "___ksymtab+set_page_dirty_lock", align 4
@__kstrtab___folio_cancel_dirty = external dso_local constant [0 x i8], align 1
@__kstrtabns___folio_cancel_dirty = external dso_local constant [0 x i8], align 1
@__ksymtab___folio_cancel_dirty = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__folio_cancel_dirty to i32), ptr @__kstrtab___folio_cancel_dirty, ptr @__kstrtabns___folio_cancel_dirty }, section "___ksymtab+__folio_cancel_dirty", align 4
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"VM_BUG_ON_FOLIO(!folio_test_locked(folio))\00", [53 x i8] zeroinitializer }, align 32
@__kstrtab_folio_clear_dirty_for_io = external dso_local constant [0 x i8], align 1
@__kstrtabns_folio_clear_dirty_for_io = external dso_local constant [0 x i8], align 1
@__ksymtab_folio_clear_dirty_for_io = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @folio_clear_dirty_for_io to i32), ptr @__kstrtab_folio_clear_dirty_for_io, ptr @__kstrtabns_folio_clear_dirty_for_io }, section "___ksymtab+folio_clear_dirty_for_io", align 4
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"VM_BUG_ON_FOLIO(access_ret != 0)\00", [63 x i8] zeroinitializer }, align 32
@__kstrtab___folio_start_writeback = external dso_local constant [0 x i8], align 1
@__kstrtabns___folio_start_writeback = external dso_local constant [0 x i8], align 1
@__ksymtab___folio_start_writeback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__folio_start_writeback to i32), ptr @__kstrtab___folio_start_writeback, ptr @__kstrtabns___folio_start_writeback }, section "___ksymtab+__folio_start_writeback", align 4
@__kstrtab_folio_wait_writeback = external dso_local constant [0 x i8], align 1
@__kstrtabns_folio_wait_writeback = external dso_local constant [0 x i8], align 1
@__ksymtab_folio_wait_writeback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @folio_wait_writeback to i32), ptr @__kstrtab_folio_wait_writeback, ptr @__kstrtabns_folio_wait_writeback }, section "___ksymtab_gpl+folio_wait_writeback", align 4
@__kstrtab_folio_wait_writeback_killable = external dso_local constant [0 x i8], align 1
@__kstrtabns_folio_wait_writeback_killable = external dso_local constant [0 x i8], align 1
@__ksymtab_folio_wait_writeback_killable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @folio_wait_writeback_killable to i32), ptr @__kstrtab_folio_wait_writeback_killable, ptr @__kstrtabns_folio_wait_writeback_killable }, section "___ksymtab_gpl+folio_wait_writeback_killable", align 4
@__kstrtab_folio_wait_stable = external dso_local constant [0 x i8], align 1
@__kstrtabns_folio_wait_stable = external dso_local constant [0 x i8], align 1
@__ksymtab_folio_wait_stable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @folio_wait_stable to i32), ptr @__kstrtab_folio_wait_stable, ptr @__kstrtabns_folio_wait_stable }, section "___ksymtab_gpl+folio_wait_stable", align 4
@vm_highmem_is_dirtyable = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__pcpu_unique_bdp_ratelimits = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_scope_dirty_throttle_leaks = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_dirty_throttle_leaks = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@totalreserve_pages = external dso_local local_unnamed_addr global i32, align 4
@vm_zone_stat = external dso_local global [11 x %struct.atomic_t], align 4
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_global_dirty_state = external dso_local global %struct.tracepoint, align 4
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"include/trace/events/writeback.h\00", [63 x i8] zeroinitializer }, align 32
@trace_global_dirty_state.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@vm_node_stat = external dso_local global [40 x %struct.atomic_t], align 4
@__tracepoint_bdi_dirty_ratelimit = external dso_local global %struct.tracepoint, align 4
@trace_bdi_dirty_ratelimit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@wb_update_write_bandwidth.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@memory_cgrp_subsys_on_dfl_key = external dso_local global %struct.static_key_true, align 4
@io_cgrp_subsys_on_dfl_key = external dso_local global %struct.static_key_true, align 4
@task_css.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cgroup_mutex = external dso_local global %struct.mutex, align 4
@css_set_lock = external dso_local global %struct.spinlock, align 4
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/cgroup.h\00", [41 x i8] zeroinitializer }, align 32
@__tracepoint_balance_dirty_pages = external dso_local global %struct.tracepoint, align 4
@trace_balance_dirty_pages.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@wb_put_many.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"include/linux/backing-dev-defs.h\00", [63 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@xa_entry.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/xarray.h\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@__tracepoint_wbc_writepage = external dso_local global %struct.tracepoint, align 4
@trace_wbc_writepage.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@contig_page_data = external dso_local global %struct.pglist_data, align 128
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(p))\00", [32 x i8] zeroinitializer }, align 32
@__tracepoint_writeback_dirty_folio = external dso_local global %struct.tracepoint, align 4
@trace_writeback_dirty_folio.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@memory_cgrp_subsys_enabled_key = external dso_local global %struct.static_key_true, align 4
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"VM_BUG_ON_PAGE(PageTail(&folio->page))\00", [57 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"VM_BUG_ON_FOLIO(folio->memcg_data & MEMCG_DATA_OBJCGS)\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"VM_BUG_ON_FOLIO(folio_test_slab(folio))\00", [56 x i8] zeroinitializer }, align 32
@inode_to_wb.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/backing-dev.h\00", [36 x i8] zeroinitializer }, align 32
@bdi_wq = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_folio_wait_writeback = external dso_local global %struct.tracepoint, align 4
@trace_folio_wait_writeback.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 524288]
@___asan_gen_.35 = private unnamed_addr constant [23 x i8] c"dirty_background_ratio\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 73, i32 5 }
@___asan_gen_.38 = private unnamed_addr constant [15 x i8] c"vm_dirty_ratio\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 90, i32 5 }
@___asan_gen_.41 = private unnamed_addr constant [25 x i8] c"dirty_writeback_interval\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 101, i32 14 }
@___asan_gen_.44 = private unnamed_addr constant [22 x i8] c"dirty_expire_interval\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 108, i32 14 }
@___asan_gen_.47 = private unnamed_addr constant [12 x i8] c"laptop_mode\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 114, i32 5 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"global_wb_domain\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 120, i32 18 }
@___asan_gen_.53 = private unnamed_addr constant [23 x i8] c"dirty_background_bytes\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 79, i32 15 }
@___asan_gen_.56 = private unnamed_addr constant [15 x i8] c"vm_dirty_bytes\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 96, i32 15 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 639, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 641, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [14 x i8] c"bdi_min_ratio\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 661, i32 21 }
@___asan_gen_.74 = private unnamed_addr constant [16 x i8] c"ratelimit_pages\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 66, i32 13 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 2050, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 2104, i32 41 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 2106, i32 45 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 2729, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 2907, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [24 x i8] c"vm_highmem_is_dirtyable\00", align 1
@___asan_gen_.96 = private constant [23 x i8] c"../mm/page-writeback.c\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 85, i32 5 }
@___asan_gen_.102 = private unnamed_addr constant [36 x i8] c"../include/trace/events/writeback.h\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 530, i32 1 }
@___asan_gen_.105 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 108, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [26 x i8] c"../include/linux/cgroup.h\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 494, i32 9 }
@___asan_gen_.111 = private unnamed_addr constant [36 x i8] c"../include/linux/backing-dev-defs.h\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 253, i32 6 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 695, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 723, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 1182, i32 9 }
@___asan_gen_.126 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 788, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 260, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 420, i32 1 }
@___asan_gen_.135 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 698, i32 1 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1160, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 717, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1368, i32 10 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 537, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 538, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant [30 x i8] c"../include/linux/memcontrol.h\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 417, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [31 x i8] c"../include/linux/backing-dev.h\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 269, i32 2 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__ksymtab___folio_cancel_dirty, ptr @__ksymtab___folio_start_writeback, ptr @__ksymtab___set_page_dirty_no_writeback, ptr @__ksymtab_balance_dirty_pages_ratelimited, ptr @__ksymtab_bdi_set_max_ratio, ptr @__ksymtab_dirty_writeback_interval, ptr @__ksymtab_filemap_dirty_folio, ptr @__ksymtab_folio_account_redirty, ptr @__ksymtab_folio_clear_dirty_for_io, ptr @__ksymtab_folio_mark_dirty, ptr @__ksymtab_folio_redirty_for_writepage, ptr @__ksymtab_folio_wait_stable, ptr @__ksymtab_folio_wait_writeback, ptr @__ksymtab_folio_wait_writeback_killable, ptr @__ksymtab_folio_write_one, ptr @__ksymtab_generic_writepages, ptr @__ksymtab_laptop_mode, ptr @__ksymtab_set_page_dirty_lock, ptr @__ksymtab_tag_pages_for_writeback, ptr @__ksymtab_wb_writeout_inc, ptr @__ksymtab_write_cache_pages, ptr @dirty_background_ratio, ptr @vm_dirty_ratio, ptr @dirty_writeback_interval, ptr @dirty_expire_interval, ptr @laptop_mode, ptr @global_wb_domain, ptr @dirty_background_bytes, ptr @vm_dirty_bytes, ptr @wb_domain_init.__key, ptr @.str, ptr @wb_domain_init.__key.1, ptr @.str.2, ptr @bdi_min_ratio, ptr @ratelimit_pages, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @vm_highmem_is_dirtyable, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.34], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dirty_background_ratio to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vm_dirty_ratio to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dirty_writeback_interval to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dirty_expire_interval to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @laptop_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @global_wb_domain to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dirty_background_bytes to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vm_dirty_bytes to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wb_domain_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wb_domain_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdi_min_ratio to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ratelimit_pages to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vm_highmem_is_dirtyable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @global_dirty_limits(ptr nocapture noundef writeonly %pbackground, ptr nocapture noundef writeonly %pdirty) local_unnamed_addr #0 align 64 {
entry:
  %gdtc = alloca %struct.dirty_throttle_control, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %gdtc) #8
  %0 = call ptr @memcpy(ptr %gdtc, ptr @__const.global_dirty_limits.gdtc, i32 48)
  %call = tail call fastcc i32 @global_dirtyable_memory()
  %avail = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc, i32 0, i32 4
  %1 = ptrtoint ptr %avail to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call, ptr %avail, align 4
  call fastcc void @domain_dirty_limits(ptr noundef nonnull %gdtc)
  %bg_thresh = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc, i32 0, i32 7
  %2 = ptrtoint ptr %bg_thresh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bg_thresh, align 4
  %4 = ptrtoint ptr %pbackground to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pbackground, align 4
  %thresh = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc, i32 0, i32 6
  %5 = ptrtoint ptr %thresh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %thresh, align 4
  %7 = ptrtoint ptr %pdirty to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %pdirty, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %gdtc) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @global_dirtyable_memory() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @vm_zone_stat, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_zone_stat to i32))
  %0 = load volatile i32, ptr @vm_zone_stat, align 4
  %1 = tail call i32 @llvm.smax.i32(i32 %0, i32 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @totalreserve_pages to i32))
  %2 = load i32, ptr @totalreserve_pages, align 4
  %3 = tail call i32 @llvm.usub.sat.i32(i32 %1, i32 %2)
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 2), i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 2) to i32))
  %4 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 2), align 4
  %5 = tail call i32 @llvm.smax.i32(i32 %4, i32 0) #8
  %add = add nuw i32 %5, %3
  %call.i.i.i.i15 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 3), i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 3) to i32))
  %6 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 3), align 4
  %7 = tail call i32 @llvm.smax.i32(i32 %6, i32 0) #8
  %add3 = add i32 %add, %7
  %8 = load i32, ptr @vm_highmem_is_dirtyable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2, i32 13) to i32))
  %9 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2, i32 13), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not.i = icmp eq i32 %9, 0
  br i1 %tobool.i.not.i, label %if.then.is_highmem_idx.exit.1.i_crit_edge, label %if.end7.i

if.then.is_highmem_idx.exit.1.i_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %is_highmem_idx.exit.1.i

if.end7.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i16 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2, i32 37, i32 0), i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2, i32 37, i32 0) to i32))
  %10 = load volatile i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2, i32 37, i32 0), align 128
  %11 = tail call i32 @llvm.smax.i32(i32 %10, i32 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2, i32 0, i32 2) to i32))
  %12 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2, i32 0, i32 2), align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2, i32 1) to i32))
  %13 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2, i32 1), align 4
  %add.i = add i32 %13, %12
  %14 = tail call i32 @llvm.usub.sat.i32(i32 %11, i32 %add.i) #8
  %call.i.i.i51.i = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2, i32 37, i32 3), i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2, i32 37, i32 3) to i32))
  %15 = load volatile i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2, i32 37, i32 3), align 4
  %16 = tail call i32 @llvm.smax.i32(i32 %15, i32 0) #8
  %call.i.i.i53.i = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2, i32 37, i32 4), i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2, i32 37, i32 4) to i32))
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2, i32 37, i32 4), align 16
  %18 = tail call i32 @llvm.smax.i32(i32 %17, i32 0) #8
  %add14.i = add nuw i32 %16, %14
  %add15.i = add i32 %add14.i, %18
  br label %is_highmem_idx.exit.1.i

is_highmem_idx.exit.1.i:                          ; preds = %if.end7.i, %if.then.is_highmem_idx.exit.1.i_crit_edge
  %x.2.i = phi i32 [ %add15.i, %if.end7.i ], [ 0, %if.then.is_highmem_idx.exit.1.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %19 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp2.i.not.1.i = icmp eq i32 %19, 2
  br i1 %cmp2.i.not.1.i, label %if.end.1.i, label %is_highmem_idx.exit.1.i.highmem_dirtyable_memory.exit_crit_edge

is_highmem_idx.exit.1.i.highmem_dirtyable_memory.exit_crit_edge: ; preds = %is_highmem_idx.exit.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %highmem_dirtyable_memory.exit

if.end.1.i:                                       ; preds = %is_highmem_idx.exit.1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3, i32 13) to i32))
  %20 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3, i32 13), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.not.1.i = icmp eq i32 %20, 0
  br i1 %tobool.i.not.1.i, label %if.end.1.i.highmem_dirtyable_memory.exit_crit_edge, label %if.end7.1.i

if.end.1.i.highmem_dirtyable_memory.exit_crit_edge: ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %highmem_dirtyable_memory.exit

if.end7.1.i:                                      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.1.i = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3, i32 37, i32 0), i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3, i32 37, i32 0) to i32))
  %21 = load volatile i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3, i32 37, i32 0), align 128
  %22 = tail call i32 @llvm.smax.i32(i32 %21, i32 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3, i32 0, i32 2) to i32))
  %23 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3, i32 0, i32 2), align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3, i32 1) to i32))
  %24 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3, i32 1), align 4
  %add.1.i = add i32 %24, %23
  %25 = tail call i32 @llvm.usub.sat.i32(i32 %22, i32 %add.1.i) #8
  %call.i.i.i51.1.i = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3, i32 37, i32 3), i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3, i32 37, i32 3) to i32))
  %26 = load volatile i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3, i32 37, i32 3), align 4
  %27 = tail call i32 @llvm.smax.i32(i32 %26, i32 0) #8
  %call.i.i.i53.1.i = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3, i32 37, i32 4), i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3, i32 37, i32 4) to i32))
  %28 = load volatile i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3, i32 37, i32 4), align 16
  %29 = tail call i32 @llvm.smax.i32(i32 %28, i32 0) #8
  %add12.1.i = add i32 %25, %x.2.i
  %add14.1.i = add i32 %add12.1.i, %27
  %add15.1.i = add i32 %add14.1.i, %29
  br label %highmem_dirtyable_memory.exit

highmem_dirtyable_memory.exit:                    ; preds = %if.end7.1.i, %if.end.1.i.highmem_dirtyable_memory.exit_crit_edge, %is_highmem_idx.exit.1.i.highmem_dirtyable_memory.exit_crit_edge
  %x.2.1.i = phi i32 [ %add15.1.i, %if.end7.1.i ], [ %x.2.i, %is_highmem_idx.exit.1.i.highmem_dirtyable_memory.exit_crit_edge ], [ %x.2.i, %if.end.1.i.highmem_dirtyable_memory.exit_crit_edge ]
  %30 = tail call i32 @llvm.smax.i32(i32 %x.2.1.i, i32 0) #8
  %31 = tail call i32 @llvm.usub.sat.i32(i32 %add3, i32 %30)
  br label %if.end

if.end:                                           ; preds = %highmem_dirtyable_memory.exit, %entry.if.end_crit_edge
  %x.0 = phi i32 [ %add3, %entry.if.end_crit_edge ], [ %31, %highmem_dirtyable_memory.exit ]
  %add6 = add i32 %x.0, 1
  ret i32 %add6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @domain_dirty_limits(ptr nocapture noundef %dtc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %avail = getelementptr inbounds %struct.dirty_throttle_control, ptr %dtc, i32 0, i32 4
  %0 = ptrtoint ptr %avail to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %avail, align 4
  %gdtc.i = getelementptr inbounds %struct.dirty_throttle_control, ptr %dtc, i32 0, i32 1
  %2 = ptrtoint ptr %gdtc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gdtc.i, align 4
  %4 = load i32, ptr @vm_dirty_bytes, align 4
  %5 = load i32, ptr @dirty_background_bytes, align 4
  %6 = load i32, ptr @vm_dirty_ratio, align 4
  %mul = shl i32 %6, 12
  %div = udiv i32 %mul, 100
  %7 = load i32, ptr @dirty_background_ratio, align 4
  %mul1 = shl i32 %7, 12
  %div2 = udiv i32 %mul1, 100
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end19, label %if.then

if.then:                                          ; preds = %entry
  %avail3 = getelementptr inbounds %struct.dirty_throttle_control, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %avail3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %avail3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4.not = icmp eq i32 %4, 0
  br i1 %tobool4.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %add = add i32 %9, -1
  %sub = add i32 %add, %4
  %div6 = udiv i32 %sub, %9
  %10 = tail call i32 @llvm.umin.i32(i32 %div6, i32 4096)
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %ratio.0 = phi i32 [ %10, %if.then5 ], [ %div, %if.then.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not = icmp eq i32 %5, 0
  br i1 %tobool7.not, label %if.end.if.end19.thread_crit_edge, label %if.then8

if.end.if.end19.thread_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.thread

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add9 = add i32 %9, -1
  %sub10 = add i32 %add9, %5
  %div11 = udiv i32 %sub10, %9
  %11 = tail call i32 @llvm.umin.i32(i32 %div11, i32 4096)
  br label %if.end19.thread

if.end19:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool20.not = icmp eq i32 %4, 0
  %sub23 = add i32 %4, 4095
  br i1 %tobool20.not, label %if.end19.if.end19.thread_crit_edge, label %if.end19._crit_edge

if.end19._crit_edge:                              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %12

if.end19.if.end19.thread_crit_edge:               ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.thread

if.end19.thread:                                  ; preds = %if.end19.if.end19.thread_crit_edge, %if.then8, %if.end.if.end19.thread_crit_edge
  %ratio.0.pn = phi i32 [ %div, %if.end19.if.end19.thread_crit_edge ], [ %ratio.0, %if.then8 ], [ %ratio.0, %if.end.if.end19.thread_crit_edge ]
  %bg_ratio.1106 = phi i32 [ %div2, %if.end19.if.end19.thread_crit_edge ], [ %11, %if.then8 ], [ %div2, %if.end.if.end19.thread_crit_edge ]
  %bg_bytes.0104 = phi i32 [ %5, %if.end19.if.end19.thread_crit_edge ], [ 0, %if.then8 ], [ 0, %if.end.if.end19.thread_crit_edge ]
  %mul25107 = mul i32 %ratio.0.pn, %1
  br label %12

12:                                               ; preds = %if.end19.thread, %if.end19._crit_edge
  %bg_ratio.1105 = phi i32 [ %bg_ratio.1106, %if.end19.thread ], [ %div2, %if.end19._crit_edge ]
  %bg_bytes.0103 = phi i32 [ %bg_bytes.0104, %if.end19.thread ], [ %5, %if.end19._crit_edge ]
  %13 = phi i32 [ %mul25107, %if.end19.thread ], [ %sub23, %if.end19._crit_edge ]
  %thresh.0 = lshr i32 %13, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bg_bytes.0103)
  %tobool28.not = icmp eq i32 %bg_bytes.0103, 0
  %sub31 = add i32 %bg_bytes.0103, 4095
  %mul34 = mul i32 %bg_ratio.1105, %1
  %bg_thresh.0.in = select i1 %tobool28.not, i32 %mul34, i32 %sub31
  %bg_thresh.0 = lshr i32 %bg_thresh.0.in, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %bg_thresh.0, i32 %thresh.0)
  %cmp37.not = icmp ult i32 %bg_thresh.0, %thresh.0
  %div3993 = lshr i32 %13, 13
  %bg_thresh.1 = select i1 %cmp37.not, i32 %bg_thresh.0, i32 %div3993
  %14 = tail call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %prio.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %prio.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %19)
  %cmp.i.i = icmp sgt i32 %19, 99
  br i1 %cmp.i.i, label %.if.end53_crit_edge, label %if.then44

.if.end53_crit_edge:                              ; preds = %12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then44:                                        ; preds = %12
  call void @__sanitizer_cov_trace_pc() #10
  %div4590 = lshr i32 %bg_thresh.1, 2
  %20 = load i32, ptr getelementptr inbounds (%struct.wb_domain, ptr @global_wb_domain, i32 0, i32 5), align 8
  %div4691 = lshr i32 %20, 5
  %add47 = add nuw nsw i32 %div4590, %bg_thresh.1
  %add48 = add nuw nsw i32 %add47, %div4691
  %div4992 = lshr i32 %13, 14
  %add51 = add nuw nsw i32 %thresh.0, %div4992
  %add52 = add nuw nsw i32 %add51, %div4691
  br label %if.end53

if.end53:                                         ; preds = %if.then44, %.if.end53_crit_edge
  %thresh.1 = phi i32 [ %add52, %if.then44 ], [ %thresh.0, %.if.end53_crit_edge ]
  %bg_thresh.2 = phi i32 [ %add48, %if.then44 ], [ %bg_thresh.1, %.if.end53_crit_edge ]
  %thresh54 = getelementptr inbounds %struct.dirty_throttle_control, ptr %dtc, i32 0, i32 6
  %21 = ptrtoint ptr %thresh54 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %thresh.1, ptr %thresh54, align 4
  %bg_thresh55 = getelementptr inbounds %struct.dirty_throttle_control, ptr %dtc, i32 0, i32 7
  %22 = ptrtoint ptr %bg_thresh55 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %bg_thresh.2, ptr %bg_thresh55, align 4
  br i1 %tobool.not, label %if.then57, label %if.end53.if.end58_crit_edge

if.end53.if.end58_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_global_dirty_state(i32 noundef %bg_thresh.2, i32 noundef %thresh.1)
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end53.if.end58_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @node_dirty_ok(ptr noundef %pgdat) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %present_pages.i.i.i = getelementptr %struct.zone, ptr %pgdat, i32 0, i32 13
  %0 = ptrtoint ptr %present_pages.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %present_pages.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i.i = icmp eq i32 %1, 0
  br i1 %tobool.i.not.i.i, label %entry.cleanup.i.i_crit_edge, label %if.end.i.i

entry.cleanup.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i.i = getelementptr %struct.zone, ptr %pgdat, i32 0, i32 37
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i.i, i32 noundef 4) #8
  %2 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %4 = tail call i32 @llvm.smax.i32(i32 %3, i32 0) #8
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end.i.i, %entry.cleanup.i.i_crit_edge
  %nr_pages.1.i.i = phi i32 [ %4, %if.end.i.i ], [ 0, %entry.cleanup.i.i_crit_edge ]
  %present_pages.i.1.i.i = getelementptr %struct.zone, ptr %pgdat, i32 1, i32 13
  %5 = ptrtoint ptr %present_pages.i.1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %present_pages.i.1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.1.i.i = icmp eq i32 %6, 0
  br i1 %tobool.i.not.1.i.i, label %cleanup.i.i.cleanup.1.i.i_crit_edge, label %if.end.1.i.i

cleanup.i.i.cleanup.1.i.i_crit_edge:              ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.1.i.i

if.end.1.i.i:                                     ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.1.i.i = getelementptr %struct.zone, ptr %pgdat, i32 1, i32 37
  %call.i.i.i.1.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.1.i.i, i32 noundef 4) #8
  %7 = ptrtoint ptr %arrayidx.i.1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %arrayidx.i.1.i.i, align 4
  %9 = tail call i32 @llvm.smax.i32(i32 %8, i32 0) #8
  %add.1.i.i = add nuw i32 %9, %nr_pages.1.i.i
  br label %cleanup.1.i.i

cleanup.1.i.i:                                    ; preds = %if.end.1.i.i, %cleanup.i.i.cleanup.1.i.i_crit_edge
  %nr_pages.1.1.i.i = phi i32 [ %add.1.i.i, %if.end.1.i.i ], [ %nr_pages.1.i.i, %cleanup.i.i.cleanup.1.i.i_crit_edge ]
  %present_pages.i.2.i.i = getelementptr %struct.zone, ptr %pgdat, i32 2, i32 13
  %10 = ptrtoint ptr %present_pages.i.2.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %present_pages.i.2.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.2.i.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.2.i.i, label %cleanup.1.i.i.cleanup.2.i.i_crit_edge, label %if.end.2.i.i

cleanup.1.i.i.cleanup.2.i.i_crit_edge:            ; preds = %cleanup.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.2.i.i

if.end.2.i.i:                                     ; preds = %cleanup.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.2.i.i = getelementptr %struct.zone, ptr %pgdat, i32 2, i32 37
  %call.i.i.i.2.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.2.i.i, i32 noundef 4) #8
  %12 = ptrtoint ptr %arrayidx.i.2.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.i.2.i.i, align 4
  %14 = tail call i32 @llvm.smax.i32(i32 %13, i32 0) #8
  %add.2.i.i = add i32 %14, %nr_pages.1.1.i.i
  br label %cleanup.2.i.i

cleanup.2.i.i:                                    ; preds = %if.end.2.i.i, %cleanup.1.i.i.cleanup.2.i.i_crit_edge
  %nr_pages.1.2.i.i = phi i32 [ %add.2.i.i, %if.end.2.i.i ], [ %nr_pages.1.1.i.i, %cleanup.1.i.i.cleanup.2.i.i_crit_edge ]
  %present_pages.i.3.i.i = getelementptr %struct.zone, ptr %pgdat, i32 3, i32 13
  %15 = ptrtoint ptr %present_pages.i.3.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %present_pages.i.3.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not.3.i.i = icmp eq i32 %16, 0
  br i1 %tobool.i.not.3.i.i, label %cleanup.2.i.i.node_dirtyable_memory.exit.i_crit_edge, label %if.end.3.i.i

cleanup.2.i.i.node_dirtyable_memory.exit.i_crit_edge: ; preds = %cleanup.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %node_dirtyable_memory.exit.i

if.end.3.i.i:                                     ; preds = %cleanup.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.3.i.i = getelementptr %struct.zone, ptr %pgdat, i32 3, i32 37
  %call.i.i.i.3.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.3.i.i, i32 noundef 4) #8
  %17 = ptrtoint ptr %arrayidx.i.3.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %arrayidx.i.3.i.i, align 4
  %19 = tail call i32 @llvm.smax.i32(i32 %18, i32 0) #8
  %add.3.i.i = add i32 %19, %nr_pages.1.2.i.i
  br label %node_dirtyable_memory.exit.i

node_dirtyable_memory.exit.i:                     ; preds = %if.end.3.i.i, %cleanup.2.i.i.node_dirtyable_memory.exit.i_crit_edge
  %nr_pages.1.3.i.i = phi i32 [ %add.3.i.i, %if.end.3.i.i ], [ %nr_pages.1.2.i.i, %cleanup.2.i.i.node_dirtyable_memory.exit.i_crit_edge ]
  %totalreserve_pages.i.i = getelementptr inbounds %struct.pglist_data, ptr %pgdat, i32 0, i32 23
  %20 = ptrtoint ptr %totalreserve_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %totalreserve_pages.i.i, align 8
  %22 = tail call i32 @llvm.usub.sat.i32(i32 %nr_pages.1.3.i.i, i32 %21) #8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 2), i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 2) to i32))
  %23 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 2), align 4
  %24 = tail call i32 @llvm.smax.i32(i32 %23, i32 0) #8
  %add4.i.i = add i32 %24, %22
  %call.i.i.i.i20.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 3), i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 3) to i32))
  %25 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 3), align 4
  %26 = tail call i32 @llvm.smax.i32(i32 %25, i32 0) #8
  %add6.i.i = add i32 %add4.i.i, %26
  %27 = tail call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task.i, align 8
  %31 = load i32, ptr @vm_dirty_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %node_dirtyable_memory.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = add i32 %31, 4095
  %div16.i = lshr i32 %sub.i, 12
  %mul.i = mul i32 %div16.i, %add6.i.i
  %call2.i = tail call fastcc i32 @global_dirtyable_memory() #8
  %div3.i = udiv i32 %mul.i, %call2.i
  br label %node_dirty_limit.exit

if.else.i:                                        ; preds = %node_dirtyable_memory.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %32 = load i32, ptr @vm_dirty_ratio, align 4
  %mul4.i = mul i32 %32, %add6.i.i
  %div5.i = udiv i32 %mul4.i, 100
  br label %node_dirty_limit.exit

node_dirty_limit.exit:                            ; preds = %if.else.i, %if.then.i
  %dirty.0.i = phi i32 [ %div3.i, %if.then.i ], [ %div5.i, %if.else.i ]
  %prio.i.i = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 13
  %33 = ptrtoint ptr %prio.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %prio.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %34)
  %cmp.i.i.i = icmp sgt i32 %34, 99
  %div915.i = lshr i32 %dirty.0.i, 2
  %add10.i = select i1 %cmp.i.i.i, i32 0, i32 %div915.i
  %dirty.1.i = add i32 %add10.i, %dirty.0.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 20), i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 20) to i32))
  %35 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 20), align 4
  %36 = tail call i32 @llvm.smax.i32(i32 %35, i32 0) #8
  %call.i.i.i.i6 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 21), i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 21) to i32))
  %37 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 21), align 4
  %38 = tail call i32 @llvm.smax.i32(i32 %37, i32 0) #8
  %add3 = add nuw i32 %38, %36
  call void @__sanitizer_cov_trace_cmp4(i32 %add3, i32 %dirty.1.i)
  %cmp = icmp ule i32 %add3, %dirty.1.i
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dirty_background_ratio_handler(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @proc_dointvec_minmax(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp ne i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp eq i32 %write, 0
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  store i32 0, ptr @dirty_background_bytes, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dirty_background_bytes_handler(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @proc_doulongvec_minmax(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp ne i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp eq i32 %write, 0
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  store i32 0, ptr @dirty_background_ratio, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dirty_ratio_handler(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) local_unnamed_addr #0 align 64 {
entry:
  %gdtc.i.i = alloca %struct.dirty_throttle_control, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @vm_dirty_ratio, align 4
  %call = tail call i32 @proc_dointvec_minmax(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp ne i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp eq i32 %write, 0
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.if.end_crit_edge, label %land.lhs.true1

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true1:                                   ; preds = %entry
  %1 = load i32, ptr @vm_dirty_ratio, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %0)
  %cmp2.not = icmp eq i32 %1, %0
  br i1 %cmp2.not, label %land.lhs.true1.if.end_crit_edge, label %if.then

land.lhs.true1.if.end_crit_edge:                  ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %gdtc.i.i) #8
  %2 = call ptr @memcpy(ptr %gdtc.i.i, ptr @__const.global_dirty_limits.gdtc, i32 48)
  %call.i.i = tail call fastcc i32 @global_dirtyable_memory() #8
  %avail.i.i = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %avail.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call.i.i, ptr %avail.i.i, align 4
  call fastcc void @domain_dirty_limits(ptr noundef nonnull %gdtc.i.i) #8
  %thresh.i.i = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %thresh.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %thresh.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %gdtc.i.i) #8
  store i32 %5, ptr getelementptr inbounds (%struct.wb_domain, ptr @global_wb_domain, i32 0, i32 5), align 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %6 = load volatile i32, ptr @__num_online_cpus, align 4
  %mul.i = shl i32 %6, 5
  %div.i = udiv i32 %5, %mul.i
  %7 = tail call i32 @llvm.smax.i32(i32 %div.i, i32 16) #8
  store i32 %7, ptr @ratelimit_pages, align 4
  store i32 0, ptr @vm_dirty_bytes, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true1.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @writeback_set_ratelimit() local_unnamed_addr #0 align 64 {
entry:
  %gdtc.i = alloca %struct.dirty_throttle_control, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %gdtc.i) #8
  %0 = call ptr @memcpy(ptr %gdtc.i, ptr @__const.global_dirty_limits.gdtc, i32 48)
  %call.i = tail call fastcc i32 @global_dirtyable_memory() #8
  %avail.i = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc.i, i32 0, i32 4
  %1 = ptrtoint ptr %avail.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call.i, ptr %avail.i, align 4
  call fastcc void @domain_dirty_limits(ptr noundef nonnull %gdtc.i) #8
  %thresh.i = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc.i, i32 0, i32 6
  %2 = ptrtoint ptr %thresh.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %thresh.i, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %gdtc.i) #8
  store i32 %3, ptr getelementptr inbounds (%struct.wb_domain, ptr @global_wb_domain, i32 0, i32 5), align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %4 = load volatile i32, ptr @__num_online_cpus, align 4
  %mul = shl i32 %4, 5
  %div = udiv i32 %3, %mul
  %5 = tail call i32 @llvm.smax.i32(i32 %div, i32 16)
  store i32 %5, ptr @ratelimit_pages, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dirty_bytes_handler(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) local_unnamed_addr #0 align 64 {
entry:
  %gdtc.i.i = alloca %struct.dirty_throttle_control, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @vm_dirty_bytes, align 4
  %call = tail call i32 @proc_doulongvec_minmax(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp ne i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp eq i32 %write, 0
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.if.end_crit_edge, label %land.lhs.true1

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true1:                                   ; preds = %entry
  %1 = load i32, ptr @vm_dirty_bytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %0)
  %cmp2.not = icmp eq i32 %1, %0
  br i1 %cmp2.not, label %land.lhs.true1.if.end_crit_edge, label %if.then

land.lhs.true1.if.end_crit_edge:                  ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %gdtc.i.i) #8
  %2 = call ptr @memcpy(ptr %gdtc.i.i, ptr @__const.global_dirty_limits.gdtc, i32 48)
  %call.i.i = tail call fastcc i32 @global_dirtyable_memory() #8
  %avail.i.i = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %avail.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call.i.i, ptr %avail.i.i, align 4
  call fastcc void @domain_dirty_limits(ptr noundef nonnull %gdtc.i.i) #8
  %thresh.i.i = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %thresh.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %thresh.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %gdtc.i.i) #8
  store i32 %5, ptr getelementptr inbounds (%struct.wb_domain, ptr @global_wb_domain, i32 0, i32 5), align 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %6 = load volatile i32, ptr @__num_online_cpus, align 4
  %mul.i = shl i32 %6, 5
  %div.i = udiv i32 %5, %mul.i
  %7 = tail call i32 @llvm.smax.i32(i32 %div.i, i32 16) #8
  store i32 %7, ptr @ratelimit_pages, align 4
  store i32 0, ptr @vm_dirty_ratio, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true1.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wb_writeout_inc(ptr noundef %wb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !180
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then21, label %do.end11

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @__wb_writeout_add(ptr noundef %wb, i32 noundef 1)
  br label %do.body23

if.then21:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  tail call fastcc void @__wb_writeout_add(ptr noundef %wb, i32 noundef 1)
  tail call void @trace_hardirqs_on() #8
  br label %do.body23

do.body23:                                        ; preds = %if.then21, %do.end11
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !181
  %and.i.i = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool32.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool32.not, label %if.then36, label %do.body23.do.end39_crit_edge, !prof !182

do.body23.do.end39_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39

if.then36:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body23.do.end39_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #8, !srcloc !183
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__wb_writeout_add(ptr noundef %wb, i32 noundef %nr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %conv = sext i32 %nr to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i.i.i = icmp eq i32 %0, 0
  %1 = tail call i32 @llvm.ctlz.i32(i32 %0, i1 true) #8, !range !184
  %arrayidx.i = getelementptr %struct.bdi_writeback, ptr %wb, i32 0, i32 9, i32 3
  %sub.i.op.i.i = shl nuw nsw i32 %1, 3
  %sub.i.op.i.i.op = xor i32 %sub.i.op.i.i, 248
  %sub.i.op.i.i.op.op = add nuw nsw i32 %sub.i.op.i.i.op, 8
  %mul.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.op.i.i.op.op
  tail call void @percpu_counter_add_batch(ptr noundef %arrayidx.i, i64 noundef %conv, i32 noundef %mul.i) #8
  %completions = getelementptr inbounds %struct.bdi_writeback, ptr %wb, i32 0, i32 18
  %2 = ptrtoint ptr %wb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wb, align 8
  %max_prop_frac = getelementptr inbounds %struct.backing_dev_info, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %max_prop_frac to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_prop_frac, align 4
  tail call void @__fprop_add_percpu_max(ptr noundef getelementptr inbounds (%struct.wb_domain, ptr @global_wb_domain, i32 0, i32 1), ptr noundef %completions, i32 noundef %5, i32 noundef %nr) #8
  %6 = load i32, ptr getelementptr inbounds (%struct.wb_domain, ptr @global_wb_domain, i32 0, i32 3), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.wb_domain_writeout_add.exit_crit_edge, !prof !182

entry.wb_domain_writeout_add.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %wb_domain_writeout_add.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %7, 300
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i)
  %tobool.not.i.i = icmp eq i32 %add.i.i, 0
  %.add.i.i = select i1 %tobool.not.i.i, i32 1, i32 %add.i.i
  store i32 %.add.i.i, ptr getelementptr inbounds (%struct.wb_domain, ptr @global_wb_domain, i32 0, i32 3), align 8
  %call7.i = tail call i32 @mod_timer(ptr noundef getelementptr inbounds (%struct.wb_domain, ptr @global_wb_domain, i32 0, i32 2), i32 noundef %.add.i.i) #8
  br label %wb_domain_writeout_add.exit

wb_domain_writeout_add.exit:                      ; preds = %if.then.i, %entry.wb_domain_writeout_add.exit_crit_edge
  %call = tail call ptr @mem_cgroup_wb_domain(ptr noundef %wb) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %wb_domain_writeout_add.exit.if.end_crit_edge, label %if.then

wb_domain_writeout_add.exit.if.end_crit_edge:     ; preds = %wb_domain_writeout_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %wb_domain_writeout_add.exit
  %memcg_completions.i = getelementptr inbounds %struct.bdi_writeback, ptr %wb, i32 0, i32 28
  %8 = ptrtoint ptr %wb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wb, align 8
  %max_prop_frac3 = getelementptr inbounds %struct.backing_dev_info, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %max_prop_frac3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_prop_frac3, align 4
  %completions1.i = getelementptr inbounds %struct.wb_domain, ptr %call, i32 0, i32 1
  tail call void @__fprop_add_percpu_max(ptr noundef %completions1.i, ptr noundef %memcg_completions.i, i32 noundef %11, i32 noundef %nr) #8
  %period_time.i = getelementptr inbounds %struct.wb_domain, ptr %call, i32 0, i32 3
  %12 = ptrtoint ptr %period_time.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %period_time.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i12 = icmp eq i32 %13, 0
  br i1 %tobool.not.i12, label %if.then.i17, label %if.then.if.end_crit_edge, !prof !182

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i17:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %add.i.i13 = add i32 %14, 300
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i13)
  %tobool.not.i.i14 = icmp eq i32 %add.i.i13, 0
  %.add.i.i15 = select i1 %tobool.not.i.i14, i32 1, i32 %add.i.i13
  %15 = ptrtoint ptr %period_time.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.add.i.i15, ptr %period_time.i, align 8
  %period_timer.i = getelementptr inbounds %struct.wb_domain, ptr %call, i32 0, i32 2
  %call7.i16 = tail call i32 @mod_timer(ptr noundef %period_timer.i, i32 noundef %.add.i.i15) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i17, %if.then.if.end_crit_edge, %wb_domain_writeout_add.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wb_domain_init(ptr noundef %dom, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %dom, i32 0, i32 224)
  tail call void @__raw_spin_lock_init(ptr noundef %dom, ptr noundef nonnull @.str, ptr noundef nonnull @wb_domain_init.__key, i16 noundef signext 3) #8
  %period_timer = getelementptr inbounds %struct.wb_domain, ptr %dom, i32 0, i32 2
  tail call void @init_timer_key(ptr noundef %period_timer, ptr noundef nonnull @writeout_period, i32 noundef 524288, ptr noundef nonnull @.str.2, ptr noundef nonnull @wb_domain_init.__key.1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %dirty_limit_tstamp = getelementptr inbounds %struct.wb_domain, ptr %dom, i32 0, i32 4
  %2 = ptrtoint ptr %dirty_limit_tstamp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %dirty_limit_tstamp, align 4
  %completions = getelementptr inbounds %struct.wb_domain, ptr %dom, i32 0, i32 1
  %call3 = tail call i32 @fprop_global_init(ptr noundef %completions, i32 noundef %gfp) #8
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @writeout_period(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %period_time = getelementptr i8, ptr %t, i32 48
  %1 = ptrtoint ptr %period_time to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %period_time, align 8
  %sub = sub i32 %0, %2
  %div = udiv i32 %sub, 300
  %completions = getelementptr i8, ptr %t, i32 -112
  %add = add nuw nsw i32 %div, 1
  %call = tail call zeroext i1 @fprop_new_period(ptr noundef %completions, i32 noundef %add) #8
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %period_time to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %period_time, align 8
  %mul = mul nuw i32 %div, 300
  %add2 = add i32 %mul, 300
  %add.i = add i32 %add2, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool.not.i = icmp eq i32 %add.i, 0
  %.add.i = select i1 %tobool.not.i, i32 1, i32 %add.i
  %5 = ptrtoint ptr %period_time to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.add.i, ptr %period_time, align 8
  %call6 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %.add.i) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %period_time to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %period_time, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fprop_global_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wb_domain_exit(ptr noundef %dom) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %period_timer = getelementptr inbounds %struct.wb_domain, ptr %dom, i32 0, i32 2
  %call = tail call i32 @del_timer_sync(ptr noundef %period_timer) #8
  %completions = getelementptr inbounds %struct.wb_domain, ptr %dom, i32 0, i32 1
  tail call void @fprop_global_destroy(ptr noundef %completions) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fprop_global_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bdi_set_min_ratio(ptr nocapture noundef %bdi, i32 noundef %min_ratio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @bdi_lock) #8
  %max_ratio = getelementptr inbounds %struct.backing_dev_info, ptr %bdi, i32 0, i32 8
  %0 = ptrtoint ptr %max_ratio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_ratio, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %min_ratio)
  %cmp = icmp ult i32 %1, %min_ratio
  br i1 %cmp, label %entry.if.end8_crit_edge, label %if.else

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.else:                                          ; preds = %entry
  %min_ratio1 = getelementptr inbounds %struct.backing_dev_info, ptr %bdi, i32 0, i32 7
  %2 = ptrtoint ptr %min_ratio1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %min_ratio1, align 4
  %sub = sub i32 %min_ratio, %3
  %4 = load i32, ptr @bdi_min_ratio, align 4
  %add = add i32 %4, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %add)
  %cmp2 = icmp ult i32 %add, 100
  br i1 %cmp2, label %if.then3, label %if.else.if.end8_crit_edge

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  store i32 %add, ptr @bdi_min_ratio, align 4
  %5 = ptrtoint ptr %min_ratio1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %min_ratio, ptr %min_ratio1, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.else.if.end8_crit_edge, %entry.if.end8_crit_edge
  %ret.0 = phi i32 [ 0, %if.then3 ], [ -22, %entry.if.end8_crit_edge ], [ -22, %if.else.if.end8_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @bdi_lock) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bdi_set_max_ratio(ptr nocapture noundef %bdi, i32 noundef %max_ratio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %max_ratio)
  %cmp = icmp ugt i32 %max_ratio, 100
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @bdi_lock) #8
  %min_ratio = getelementptr inbounds %struct.backing_dev_info, ptr %bdi, i32 0, i32 7
  %0 = ptrtoint ptr %min_ratio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %min_ratio, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %max_ratio)
  %cmp1 = icmp ugt i32 %1, %max_ratio
  br i1 %cmp1, label %if.end.if.end4_crit_edge, label %if.else

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %max_ratio3 = getelementptr inbounds %struct.backing_dev_info, ptr %bdi, i32 0, i32 8
  %2 = ptrtoint ptr %max_ratio3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %max_ratio, ptr %max_ratio3, align 8
  %mul = shl nuw nsw i32 %max_ratio, 10
  %div = udiv i32 %mul, 100
  %max_prop_frac = getelementptr inbounds %struct.backing_dev_info, ptr %bdi, i32 0, i32 9
  %3 = ptrtoint ptr %max_prop_frac to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %div, ptr %max_prop_frac, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.end.if.end4_crit_edge
  %ret.0 = phi i32 [ 0, %if.else ], [ -22, %if.end.if.end4_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @bdi_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end4 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wb_calc_thresh(ptr noundef %wb, i32 noundef %thresh) local_unnamed_addr #0 align 64 {
entry:
  %gdtc = alloca %struct.dirty_throttle_control, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %gdtc) #8
  %0 = ptrtoint ptr %gdtc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @global_wb_domain, ptr %gdtc, align 4
  %gdtc1 = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc, i32 0, i32 1
  %1 = ptrtoint ptr %gdtc1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %gdtc1, align 4
  %wb2 = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc, i32 0, i32 2
  %2 = ptrtoint ptr %wb2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %wb, ptr %wb2, align 4
  %wb_completions = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc, i32 0, i32 3
  %completions = getelementptr inbounds %struct.bdi_writeback, ptr %wb, i32 0, i32 18
  %3 = ptrtoint ptr %wb_completions to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %completions, ptr %wb_completions, align 4
  %avail = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc, i32 0, i32 4
  %4 = ptrtoint ptr %avail to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %avail, align 4
  %dirty = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc, i32 0, i32 5
  %5 = ptrtoint ptr %dirty to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %dirty, align 4
  %thresh3 = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc, i32 0, i32 6
  %6 = ptrtoint ptr %thresh3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %thresh, ptr %thresh3, align 4
  %bg_thresh = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc, i32 0, i32 7
  %7 = call ptr @memset(ptr %bg_thresh, i32 0, i32 20)
  %call = call fastcc i32 @__wb_calc_thresh(ptr noundef nonnull %gdtc)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %gdtc) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__wb_calc_thresh(ptr nocapture noundef readonly %dtc) unnamed_addr #0 align 64 {
entry:
  %numerator = alloca i32, align 4
  %denominator = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dtc, align 4
  %thresh1 = getelementptr inbounds %struct.dirty_throttle_control, ptr %dtc, i32 0, i32 6
  %2 = ptrtoint ptr %thresh1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %thresh1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %numerator) #8
  %4 = ptrtoint ptr %numerator to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %numerator, align 4, !annotation !185
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %denominator) #8
  %5 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %denominator, align 4, !annotation !185
  %completions = getelementptr inbounds %struct.wb_domain, ptr %1, i32 0, i32 1
  %wb_completions = getelementptr inbounds %struct.dirty_throttle_control, ptr %dtc, i32 0, i32 3
  %6 = ptrtoint ptr %wb_completions to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wb_completions, align 4
  call void @fprop_fraction_percpu(ptr noundef %completions, ptr noundef %7, ptr noundef nonnull %numerator, ptr noundef nonnull %denominator) #8
  %8 = load i32, ptr @bdi_min_ratio, align 4
  %sub = sub i32 100, %8
  %mul = mul i32 %sub, %3
  %div = udiv i32 %mul, 100
  %conv = zext i32 %div to i64
  %9 = ptrtoint ptr %numerator to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %numerator, align 4
  %conv2 = zext i32 %10 to i64
  %mul3 = mul nuw nsw i64 %conv, %conv2
  %11 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %denominator, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul3)
  %cmp164.i.i = icmp ult i64 %mul3, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !186

if.then168.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i = trunc i64 %mul3 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %12
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %13 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %12, i64 %mul3) #11, !srcloc !187
  %asmresult1.i.i.i = extractvalue { i64, i64 } %13, 1
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  %wb = getelementptr inbounds %struct.dirty_throttle_control, ptr %dtc, i32 0, i32 2
  %14 = ptrtoint ptr %wb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wb, align 4
  %avg_write_bandwidth.i = getelementptr inbounds %struct.bdi_writeback, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %avg_write_bandwidth.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %avg_write_bandwidth.i, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 8
  %tot_write_bandwidth.i = getelementptr inbounds %struct.backing_dev_info, ptr %19, i32 0, i32 10
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %tot_write_bandwidth.i, i32 noundef 4) #8
  %20 = ptrtoint ptr %tot_write_bandwidth.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %tot_write_bandwidth.i, align 4
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %15, align 8
  %min_ratio.i = getelementptr inbounds %struct.backing_dev_info, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %min_ratio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %min_ratio.i, align 4
  %conv.i = zext i32 %25 to i64
  %max_ratio.i = getelementptr inbounds %struct.backing_dev_info, ptr %23, i32 0, i32 8
  %26 = ptrtoint ptr %max_ratio.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_ratio.i, align 8
  %conv3.i = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %21)
  %cmp.i = icmp ult i32 %17, %21
  br i1 %cmp.i, label %if.then.i, label %div_u64.exit.wb_min_max_ratio.exit_crit_edge

div_u64.exit.wb_min_max_ratio.exit_crit_edge:     ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %wb_min_max_ratio.exit

if.then.i:                                        ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then5.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then5.i:                                       ; preds = %if.then.i
  %conv6.i = zext i32 %17 to i64
  %mul.i = mul nuw i64 %conv.i, %conv6.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp164.i.i.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !186

if.then168.i.i.i:                                 ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i.i = trunc i64 %mul.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %21
  br label %if.end.i

if.else174.i.i.i:                                 ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %21, i64 %mul.i) #11, !srcloc !187
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %28, 1
  %extract.t151.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %if.end.i

if.end.i:                                         ; preds = %if.else174.i.i.i, %if.then168.i.i.i, %if.then.i.if.end.i_crit_edge
  %min.0.i = phi i32 [ 0, %if.then.i.if.end.i_crit_edge ], [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t151.i, %if.else174.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %27)
  %cmp8.i = icmp ult i32 %27, 100
  br i1 %cmp8.i, label %if.then10.i, label %if.end.i.wb_min_max_ratio.exit_crit_edge

if.end.i.wb_min_max_ratio.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wb_min_max_ratio.exit

if.then10.i:                                      ; preds = %if.end.i
  %conv11.i = zext i32 %17 to i64
  %mul12.i = mul nuw i64 %conv3.i, %conv11.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul12.i)
  %cmp164.i.i139.i = icmp ult i64 %mul12.i, 4294967296
  br i1 %cmp164.i.i139.i, label %if.then168.i.i144.i, label %if.else174.i.i146.i, !prof !186

if.then168.i.i144.i:                              ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i141.i = trunc i64 %mul12.i to i32
  %div172.i.i142.i = udiv i32 %conv169.i.i141.i, %21
  br label %wb_min_max_ratio.exit

if.else174.i.i146.i:                              ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %21, i64 %mul12.i) #11, !srcloc !187
  %asmresult1.i.i.i145.i = extractvalue { i64, i64 } %29, 1
  %extract.t155.i = trunc i64 %asmresult1.i.i.i145.i to i32
  br label %wb_min_max_ratio.exit

wb_min_max_ratio.exit:                            ; preds = %if.else174.i.i146.i, %if.then168.i.i144.i, %if.end.i.wb_min_max_ratio.exit_crit_edge, %div_u64.exit.wb_min_max_ratio.exit_crit_edge
  %min.1.off0.i = phi i32 [ %min.0.i, %if.end.i.wb_min_max_ratio.exit_crit_edge ], [ %25, %div_u64.exit.wb_min_max_ratio.exit_crit_edge ], [ %min.0.i, %if.then168.i.i144.i ], [ %min.0.i, %if.else174.i.i146.i ]
  %max.0.off0.i = phi i32 [ %27, %if.end.i.wb_min_max_ratio.exit_crit_edge ], [ %27, %div_u64.exit.wb_min_max_ratio.exit_crit_edge ], [ %div172.i.i142.i, %if.then168.i.i144.i ], [ %extract.t155.i, %if.else174.i.i146.i ]
  %mul5 = mul i32 %min.1.off0.i, %3
  %div6 = udiv i32 %mul5, 100
  %conv7 = zext i32 %div6 to i64
  %add = add i64 %dividend.addr.0.i.i, %conv7
  %mul8 = mul i32 %max.0.off0.i, %3
  %div9 = udiv i32 %mul8, 100
  %conv10 = zext i32 %div9 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv10)
  %cmp = icmp ugt i64 %add, %conv10
  %extract.t26 = trunc i64 %add to i32
  %spec.select = select i1 %cmp, i32 %div9, i32 %extract.t26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %denominator) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %numerator) #8
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wb_update_bandwidth(ptr noundef %wb) local_unnamed_addr #0 align 64 {
entry:
  %gdtc = alloca %struct.dirty_throttle_control, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %gdtc) #8
  %0 = getelementptr inbounds i8, ptr %gdtc, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 44)
  %2 = ptrtoint ptr %gdtc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @global_wb_domain, ptr %gdtc, align 4
  %wb2 = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc, i32 0, i32 2
  %3 = ptrtoint ptr %wb2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %wb, ptr %wb2, align 4
  %wb_completions = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc, i32 0, i32 3
  %completions = getelementptr inbounds %struct.bdi_writeback, ptr %wb, i32 0, i32 18
  %4 = ptrtoint ptr %wb_completions to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %completions, ptr %wb_completions, align 4
  call fastcc void @__wb_update_bandwidth(ptr noundef nonnull %gdtc, ptr noundef null, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %gdtc) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__wb_update_bandwidth(ptr nocapture noundef readonly %gdtc, ptr noundef readonly %mdtc, i1 noundef zeroext %update_ratelimit) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wb1 = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc, i32 0, i32 2
  %0 = ptrtoint ptr %wb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wb1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %list_lock = getelementptr inbounds %struct.bdi_writeback, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %list_lock) #8
  %bw_time_stamp = getelementptr inbounds %struct.bdi_writeback, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %bw_time_stamp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bw_time_stamp, align 4
  %sub = sub i32 %2, %4
  %5 = tail call i32 @llvm.umax.i32(i32 %sub, i32 1)
  %count.i = getelementptr %struct.bdi_writeback, ptr %1, i32 0, i32 9, i32 2, i32 1
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %count.i, align 8
  %conv = trunc i64 %7 to i32
  %count.i39 = getelementptr %struct.bdi_writeback, ptr %1, i32 0, i32 9, i32 3, i32 1
  %8 = ptrtoint ptr %count.i39 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %count.i39, align 8
  br i1 %update_ratelimit, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %gdtc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gdtc, align 4
  %dirty_limit_tstamp.i = getelementptr inbounds %struct.wb_domain, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %dirty_limit_tstamp.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dirty_limit_tstamp.i, align 4
  %add.neg.i = add i32 %2, -20
  %sub.i = sub i32 %add.neg.i, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then.domain_update_dirty_limit.exit_crit_edge, label %if.end.i

if.then.domain_update_dirty_limit.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %domain_update_dirty_limit.exit

if.end.i:                                         ; preds = %if.then
  tail call void @_raw_spin_lock(ptr noundef %11) #8
  %14 = ptrtoint ptr %dirty_limit_tstamp.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dirty_limit_tstamp.i, align 4
  %sub3.i = sub i32 %add.neg.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub3.i)
  %cmp4.i = icmp sgt i32 %sub3.i, -1
  br i1 %cmp4.i, label %if.then5.i, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  %16 = ptrtoint ptr %gdtc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gdtc, align 4
  %thresh1.i.i = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc, i32 0, i32 6
  %18 = ptrtoint ptr %thresh1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %thresh1.i.i, align 4
  %dirty_limit.i.i = getelementptr inbounds %struct.wb_domain, ptr %17, i32 0, i32 5
  %20 = ptrtoint ptr %dirty_limit.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dirty_limit.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %19)
  %cmp.i.i = icmp ult i32 %21, %19
  br i1 %cmp.i.i, label %if.then5.i.update.i.i_crit_edge, label %if.end.i.i

if.then5.i.update.i.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %update.i.i

if.end.i.i:                                       ; preds = %if.then5.i
  %dirty.i.i = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc, i32 0, i32 5
  %22 = ptrtoint ptr %dirty.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dirty.i.i, align 4
  %24 = tail call i32 @llvm.umax.i32(i32 %19, i32 %23) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %24)
  %cmp3.i.i = icmp ugt i32 %21, %24
  br i1 %cmp3.i.i, label %if.then4.i.i, label %if.end.i.i.update_dirty_limit.exit.i_crit_edge

if.end.i.i.update_dirty_limit.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_dirty_limit.exit.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %21, %24
  %shr.i.i = lshr i32 %sub.i.i, 5
  %sub5.i.i = sub i32 %21, %shr.i.i
  br label %update.i.i

update.i.i:                                       ; preds = %if.then4.i.i, %if.then5.i.update.i.i_crit_edge
  %limit.0.i.i = phi i32 [ %sub5.i.i, %if.then4.i.i ], [ %19, %if.then5.i.update.i.i_crit_edge ]
  %25 = ptrtoint ptr %dirty_limit.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %limit.0.i.i, ptr %dirty_limit.i.i, align 8
  br label %update_dirty_limit.exit.i

update_dirty_limit.exit.i:                        ; preds = %update.i.i, %if.end.i.i.update_dirty_limit.exit.i_crit_edge
  %26 = ptrtoint ptr %dirty_limit_tstamp.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %2, ptr %dirty_limit_tstamp.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %update_dirty_limit.exit.i, %if.end.i.if.end7.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %11) #8
  br label %domain_update_dirty_limit.exit

domain_update_dirty_limit.exit:                   ; preds = %if.end7.i, %if.then.domain_update_dirty_limit.exit_crit_edge
  tail call fastcc void @wb_update_dirty_ratelimit(ptr noundef %gdtc, i32 noundef %conv, i32 noundef %5)
  %tobool6.not = icmp eq ptr %mdtc, null
  br i1 %tobool6.not, label %domain_update_dirty_limit.exit.if.end8_crit_edge, label %if.then7

domain_update_dirty_limit.exit.if.end8_crit_edge: ; preds = %domain_update_dirty_limit.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then7:                                         ; preds = %domain_update_dirty_limit.exit
  %27 = ptrtoint ptr %mdtc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mdtc, align 4
  %dirty_limit_tstamp.i40 = getelementptr inbounds %struct.wb_domain, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %dirty_limit_tstamp.i40 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dirty_limit_tstamp.i40, align 4
  %sub.i42 = sub i32 %add.neg.i, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i42)
  %cmp.i43 = icmp slt i32 %sub.i42, 0
  br i1 %cmp.i43, label %if.then7.domain_update_dirty_limit.exit62_crit_edge, label %if.end.i46

if.then7.domain_update_dirty_limit.exit62_crit_edge: ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %domain_update_dirty_limit.exit62

if.end.i46:                                       ; preds = %if.then7
  tail call void @_raw_spin_lock(ptr noundef %28) #8
  %31 = ptrtoint ptr %dirty_limit_tstamp.i40 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dirty_limit_tstamp.i40, align 4
  %sub3.i44 = sub i32 %add.neg.i, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub3.i44)
  %cmp4.i45 = icmp sgt i32 %sub3.i44, -1
  br i1 %cmp4.i45, label %if.then5.i50, label %if.end.i46.if.end7.i61_crit_edge

if.end.i46.if.end7.i61_crit_edge:                 ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i61

if.then5.i50:                                     ; preds = %if.end.i46
  %33 = ptrtoint ptr %mdtc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mdtc, align 4
  %thresh1.i.i47 = getelementptr inbounds %struct.dirty_throttle_control, ptr %mdtc, i32 0, i32 6
  %35 = ptrtoint ptr %thresh1.i.i47 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %thresh1.i.i47, align 4
  %dirty_limit.i.i48 = getelementptr inbounds %struct.wb_domain, ptr %34, i32 0, i32 5
  %37 = ptrtoint ptr %dirty_limit.i.i48 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dirty_limit.i.i48, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %36)
  %cmp.i.i49 = icmp ult i32 %38, %36
  br i1 %cmp.i.i49, label %if.then5.i50.update.i.i59_crit_edge, label %if.end.i.i53

if.then5.i50.update.i.i59_crit_edge:              ; preds = %if.then5.i50
  call void @__sanitizer_cov_trace_pc() #10
  br label %update.i.i59

if.end.i.i53:                                     ; preds = %if.then5.i50
  %dirty.i.i51 = getelementptr inbounds %struct.dirty_throttle_control, ptr %mdtc, i32 0, i32 5
  %39 = ptrtoint ptr %dirty.i.i51 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dirty.i.i51, align 4
  %41 = tail call i32 @llvm.umax.i32(i32 %36, i32 %40) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %41)
  %cmp3.i.i52 = icmp ugt i32 %38, %41
  br i1 %cmp3.i.i52, label %if.then4.i.i57, label %if.end.i.i53.update_dirty_limit.exit.i60_crit_edge

if.end.i.i53.update_dirty_limit.exit.i60_crit_edge: ; preds = %if.end.i.i53
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_dirty_limit.exit.i60

if.then4.i.i57:                                   ; preds = %if.end.i.i53
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i54 = sub i32 %38, %41
  %shr.i.i55 = lshr i32 %sub.i.i54, 5
  %sub5.i.i56 = sub i32 %38, %shr.i.i55
  br label %update.i.i59

update.i.i59:                                     ; preds = %if.then4.i.i57, %if.then5.i50.update.i.i59_crit_edge
  %limit.0.i.i58 = phi i32 [ %sub5.i.i56, %if.then4.i.i57 ], [ %36, %if.then5.i50.update.i.i59_crit_edge ]
  %42 = ptrtoint ptr %dirty_limit.i.i48 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %limit.0.i.i58, ptr %dirty_limit.i.i48, align 8
  br label %update_dirty_limit.exit.i60

update_dirty_limit.exit.i60:                      ; preds = %update.i.i59, %if.end.i.i53.update_dirty_limit.exit.i60_crit_edge
  %43 = ptrtoint ptr %dirty_limit_tstamp.i40 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %2, ptr %dirty_limit_tstamp.i40, align 4
  br label %if.end7.i61

if.end7.i61:                                      ; preds = %update_dirty_limit.exit.i60, %if.end.i46.if.end7.i61_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %28) #8
  br label %domain_update_dirty_limit.exit62

domain_update_dirty_limit.exit62:                 ; preds = %if.end7.i61, %if.then7.domain_update_dirty_limit.exit62_crit_edge
  tail call fastcc void @wb_update_dirty_ratelimit(ptr noundef nonnull %mdtc, i32 noundef %conv, i32 noundef %5)
  br label %if.end8

if.end8:                                          ; preds = %domain_update_dirty_limit.exit62, %domain_update_dirty_limit.exit.if.end8_crit_edge, %entry.if.end8_crit_edge
  %conv5 = trunc i64 %9 to i32
  %avg_write_bandwidth.i = getelementptr inbounds %struct.bdi_writeback, ptr %1, i32 0, i32 15
  %44 = ptrtoint ptr %avg_write_bandwidth.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %avg_write_bandwidth.i, align 4
  %write_bandwidth.i = getelementptr inbounds %struct.bdi_writeback, ptr %1, i32 0, i32 14
  %46 = ptrtoint ptr %write_bandwidth.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %write_bandwidth.i, align 8
  %written_stamp.i = getelementptr inbounds %struct.bdi_writeback, ptr %1, i32 0, i32 13
  %48 = ptrtoint ptr %written_stamp.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %written_stamp.i, align 4
  %50 = tail call i32 @llvm.usub.sat.i32(i32 %conv5, i32 %49) #8
  %conv.i = zext i32 %50 to i64
  %mul.i = mul nuw nsw i64 %conv.i, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %5)
  %cmp1.i = icmp ugt i32 %5, 512
  br i1 %cmp1.i, label %if.else162.i.i.i, label %if.end.i63, !prof !182

if.else162.i.i.i:                                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp164.i.i.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !186

if.then168.i.i.i:                                 ; preds = %if.else162.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i.i = trunc i64 %mul.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %5
  br label %out.i

if.else174.i.i.i:                                 ; preds = %if.else162.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %51 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %5, i64 %mul.i) #11, !srcloc !187
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %51, 1
  %extract.t149.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %out.i

if.end.i63:                                       ; preds = %if.end8
  %conv6.i = zext i32 %47 to i64
  %sub7.i = sub nuw nsw i32 512, %5
  %conv8.i = zext i32 %sub7.i to i64
  %mul9.i = mul nuw nsw i64 %conv6.i, %conv8.i
  %add.i = add nuw nsw i64 %mul.i, %mul9.i
  %shr.i = lshr i64 %add.i, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp10.i = icmp ule i32 %45, %47
  %conv12.i = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %conv12.i)
  %cmp13.not.i = icmp ult i32 %47, %conv12.i
  %or.cond.i = select i1 %cmp10.i, i1 true, i1 %cmp13.not.i
  %sub16.i = sub i32 %45, %47
  %shr17.i = lshr i32 %sub16.i, 3
  %sub18.i = select i1 %or.cond.i, i32 0, i32 %shr17.i
  %avg.0.i = sub i32 %45, %sub18.i
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %avg.0.i)
  %cmp20.i = icmp ule i32 %47, %avg.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %conv12.i)
  %cmp24.not.i = icmp ugt i32 %47, %conv12.i
  %or.cond147.i = select i1 %cmp20.i, i1 true, i1 %cmp24.not.i
  br i1 %or.cond147.i, label %if.end.i63.out.i_crit_edge, label %if.then26.i

if.end.i63.out.i_crit_edge:                       ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.then26.i:                                      ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #10
  %sub27.i = sub i32 %47, %avg.0.i
  %shr28.i = lshr i32 %sub27.i, 3
  %add29.i = add i32 %shr28.i, %avg.0.i
  br label %out.i

out.i:                                            ; preds = %if.then26.i, %if.end.i63.out.i_crit_edge, %if.else174.i.i.i, %if.then168.i.i.i
  %bw.0.off0.i = phi i32 [ %conv12.i, %if.then26.i ], [ %conv12.i, %if.end.i63.out.i_crit_edge ], [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t149.i, %if.else174.i.i.i ]
  %avg.1.i = phi i32 [ %add29.i, %if.then26.i ], [ %avg.0.i, %if.end.i63.out.i_crit_edge ], [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t149.i, %if.else174.i.i.i ]
  %52 = tail call i32 @llvm.umax.i32(i32 %avg.1.i, i32 1) #8
  %state.i.i = getelementptr inbounds %struct.bdi_writeback, ptr %1, i32 0, i32 1
  %53 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %state.i.i, align 4
  %55 = and i32 %54, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.i.not.i = icmp eq i32 %55, 0
  br i1 %tobool.i.not.i, label %out.i.wb_update_write_bandwidth.exit_crit_edge, label %if.then39.i

out.i.wb_update_write_bandwidth.exit_crit_edge:   ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wb_update_write_bandwidth.exit

if.then39.i:                                      ; preds = %out.i
  %sub41.i = sub i32 %52, %45
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 8
  %tot_write_bandwidth.i = getelementptr inbounds %struct.backing_dev_info, ptr %57, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tot_write_bandwidth.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @llvm.prefetch.p0(ptr %tot_write_bandwidth.i, i32 1, i32 3, i32 1) #8
  %58 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tot_write_bandwidth.i, ptr %tot_write_bandwidth.i, i32 %sub41.i, ptr elementtype(i32) %tot_write_bandwidth.i) #8, !srcloc !189
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %58, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !190
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i)
  %cmp43.i = icmp slt i32 %asmresult.i.i.i.i.i, 1
  br i1 %cmp43.i, label %land.rhs.i, label %if.then39.i.wb_update_write_bandwidth.exit_crit_edge

if.then39.i.wb_update_write_bandwidth.exit_crit_edge: ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wb_update_write_bandwidth.exit

land.rhs.i:                                       ; preds = %if.then39.i
  %.b146.i = load i1, ptr @wb_update_write_bandwidth.__already_done, align 1
  br i1 %.b146.i, label %land.rhs.i.wb_update_write_bandwidth.exit_crit_edge, label %if.then60.i, !prof !186

land.rhs.i.wb_update_write_bandwidth.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wb_update_write_bandwidth.exit

if.then60.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @wb_update_write_bandwidth.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1115, i32 noundef 9, ptr noundef null) #8
  br label %wb_update_write_bandwidth.exit

wb_update_write_bandwidth.exit:                   ; preds = %if.then60.i, %land.rhs.i.wb_update_write_bandwidth.exit_crit_edge, %if.then39.i.wb_update_write_bandwidth.exit_crit_edge, %out.i.wb_update_write_bandwidth.exit_crit_edge
  %59 = ptrtoint ptr %write_bandwidth.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %bw.0.off0.i, ptr %write_bandwidth.i, align 8
  %60 = ptrtoint ptr %avg_write_bandwidth.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile i32 %52, ptr %avg_write_bandwidth.i, align 4
  %dirtied_stamp = getelementptr inbounds %struct.bdi_writeback, ptr %1, i32 0, i32 12
  %61 = ptrtoint ptr %dirtied_stamp to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv, ptr %dirtied_stamp, align 8
  %62 = ptrtoint ptr %written_stamp.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %conv5, ptr %written_stamp.i, align 4
  %63 = ptrtoint ptr %bw_time_stamp to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile i32 %2, ptr %bw_time_stamp, align 4
  tail call void @_raw_spin_unlock(ptr noundef %list_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @balance_dirty_pages_ratelimited(ptr nocapture noundef readonly %mapping) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %call = tail call ptr @inode_to_bdi(ptr noundef %1) #8
  %capabilities = getelementptr inbounds %struct.backing_dev_info, ptr %call, i32 0, i32 6
  %2 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %capabilities, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @inode_to_bdi(ptr noundef %1) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_on_dfl_key, i32 1), ptr blockaddress(@balance_dirty_pages_ratelimited, %if.end4)) #8
          to label %land.lhs.true.i [label %if.end4], !srcloc !191

land.lhs.true.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @io_cgrp_subsys_on_dfl_key, i32 1), ptr blockaddress(@balance_dirty_pages_ratelimited, %if.end4)) #8
          to label %land.lhs.true18.i [label %if.end4], !srcloc !191

land.lhs.true18.i:                                ; preds = %land.lhs.true.i
  %capabilities.i = getelementptr inbounds %struct.backing_dev_info, ptr %call.i, i32 0, i32 6
  %4 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %capabilities.i, align 8
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool19.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool19.not.i, label %land.lhs.true18.i.if.end4_crit_edge, label %land.rhs.i

land.lhs.true18.i.if.end4_crit_edge:              ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

land.rhs.i:                                       ; preds = %land.lhs.true18.i
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i, align 4
  %s_iflags.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %s_iflags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_iflags.i, align 8
  %and20.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.i.not = icmp eq i32 %and20.i, 0
  br i1 %tobool21.i.not, label %land.rhs.i.if.end4_crit_edge, label %if.then2

land.rhs.i.if.end4_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then2:                                         ; preds = %land.rhs.i
  %10 = tail call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !192
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i, label %if.then2.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then2.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then2
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #8
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then2.rcu_read_lock.exit.i_crit_edge
  %14 = tail call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i.i.i114 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i114 to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task.i.i, align 8
  %cgroups.i.i.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 164
  %18 = ptrtoint ptr %cgroups.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %cgroups.i.i.i, align 16
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %rcu_read_lock.exit.i.task_css.exit.i.i_crit_edge

rcu_read_lock.exit.i.task_css.exit.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %task_css.exit.i.i

lor.lhs.false.i.i.i:                              ; preds = %rcu_read_lock.exit.i
  %call.i18.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call.i18.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %lor.lhs.false4.i.i.i, label %lor.lhs.false.i.i.i.task_css.exit.i.i_crit_edge

lor.lhs.false.i.i.i.task_css.exit.i.i_crit_edge:  ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %task_css.exit.i.i

lor.lhs.false4.i.i.i:                             ; preds = %lor.lhs.false.i.i.i
  %flags.i.i.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 3
  %20 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i.i.i, align 4
  %and.i17.i.i = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %and.i17.i.i, 0
  br i1 %tobool5.not.i.i.i, label %lor.lhs.false6.i.i.i, label %lor.lhs.false4.i.i.i.task_css.exit.i.i_crit_edge

lor.lhs.false4.i.i.i.task_css.exit.i.i_crit_edge: ; preds = %lor.lhs.false4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %task_css.exit.i.i

lor.lhs.false6.i.i.i:                             ; preds = %lor.lhs.false4.i.i.i
  %call7.i.i.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %call7.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false6.i.i.i.task_css.exit.i.i_crit_edge

lor.lhs.false6.i.i.i.task_css.exit.i.i_crit_edge: ; preds = %lor.lhs.false6.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %task_css.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false6.i.i.i
  %call9.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i.i)
  %tobool10.not.i.i.i = icmp eq i32 %call9.i.i.i, 0
  br i1 %tobool10.not.i.i.i, label %land.lhs.true.i.i.i.task_css.exit.i.i_crit_edge, label %land.lhs.true11.i.i.i

land.lhs.true.i.i.i.task_css.exit.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %task_css.exit.i.i

land.lhs.true11.i.i.i:                            ; preds = %land.lhs.true.i.i.i
  %.b17.i.i.i = load i1, ptr @task_css.__warned, align 1
  br i1 %.b17.i.i.i, label %land.lhs.true11.i.i.i.task_css.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true11.i.i.i.task_css.exit.i.i_crit_edge: ; preds = %land.lhs.true11.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %task_css.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true11.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @task_css.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 494, ptr noundef nonnull @.str.10) #8
  br label %task_css.exit.i.i

task_css.exit.i.i:                                ; preds = %if.then.i.i.i, %land.lhs.true11.i.i.i.task_css.exit.i.i_crit_edge, %land.lhs.true.i.i.i.task_css.exit.i.i_crit_edge, %lor.lhs.false6.i.i.i.task_css.exit.i.i_crit_edge, %lor.lhs.false4.i.i.i.task_css.exit.i.i_crit_edge, %lor.lhs.false.i.i.i.task_css.exit.i.i_crit_edge, %rcu_read_lock.exit.i.task_css.exit.i.i_crit_edge
  %arrayidx.i.i.i = getelementptr [14 x ptr], ptr %19, i32 0, i32 4
  %22 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i.i, align 4
  %parent.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parent.i.i, align 8
  %tobool.not.i1.i = icmp eq ptr %25, null
  br i1 %tobool.not.i1.i, label %wb_find_current.exit.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %task_css.exit.i.i
  %cgwb_tree.i.i = getelementptr inbounds %struct.backing_dev_info, ptr %call, i32 0, i32 13
  %id.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %23, i32 0, i32 6
  %26 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id.i.i, align 8
  %call3.i.i = tail call ptr @radix_tree_lookup(ptr noundef %cgwb_tree.i.i, i32 noundef %27) #8
  %tobool4.not.i.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end.i_crit_edge, label %land.rhs.i.i, !prof !182

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.rhs.i.i:                                     ; preds = %if.end.i.i
  %blkcg_css.i.i = getelementptr inbounds %struct.bdi_writeback, ptr %call3.i.i, i32 0, i32 30
  %28 = ptrtoint ptr %blkcg_css.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %blkcg_css.i.i, align 4
  %30 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task.i.i, align 8
  %cgroups.i18.i.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 164
  %32 = ptrtoint ptr %cgroups.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %cgroups.i18.i.i, align 16
  %call.i.i19.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i19.i.i)
  %tobool.not.i20.i.i = icmp eq i32 %call.i.i19.i.i, 0
  br i1 %tobool.not.i20.i.i, label %lor.lhs.false.i23.i.i, label %land.rhs.i.i.land.end.i.i_crit_edge

land.rhs.i.i.land.end.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end.i.i

lor.lhs.false.i23.i.i:                            ; preds = %land.rhs.i.i
  %call.i18.i21.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i21.i.i)
  %tobool3.not.i22.i.i = icmp eq i32 %call.i18.i21.i.i, 0
  br i1 %tobool3.not.i22.i.i, label %lor.lhs.false4.i27.i.i, label %lor.lhs.false.i23.i.i.land.end.i.i_crit_edge

lor.lhs.false.i23.i.i.land.end.i.i_crit_edge:     ; preds = %lor.lhs.false.i23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end.i.i

lor.lhs.false4.i27.i.i:                           ; preds = %lor.lhs.false.i23.i.i
  %flags.i24.i.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 3
  %34 = ptrtoint ptr %flags.i24.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i24.i.i, align 4
  %and.i25.i.i = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i25.i.i)
  %tobool5.not.i26.i.i = icmp eq i32 %and.i25.i.i, 0
  br i1 %tobool5.not.i26.i.i, label %lor.lhs.false6.i30.i.i, label %lor.lhs.false4.i27.i.i.land.end.i.i_crit_edge

lor.lhs.false4.i27.i.i.land.end.i.i_crit_edge:    ; preds = %lor.lhs.false4.i27.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end.i.i

lor.lhs.false6.i30.i.i:                           ; preds = %lor.lhs.false4.i27.i.i
  %call7.i28.i.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i28.i.i)
  %tobool8.not.i29.i.i = icmp eq i32 %call7.i28.i.i, 0
  br i1 %tobool8.not.i29.i.i, label %land.lhs.true.i33.i.i, label %lor.lhs.false6.i30.i.i.land.end.i.i_crit_edge

lor.lhs.false6.i30.i.i.land.end.i.i_crit_edge:    ; preds = %lor.lhs.false6.i30.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end.i.i

land.lhs.true.i33.i.i:                            ; preds = %lor.lhs.false6.i30.i.i
  %call9.i31.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i31.i.i)
  %tobool10.not.i32.i.i = icmp eq i32 %call9.i31.i.i, 0
  br i1 %tobool10.not.i32.i.i, label %land.lhs.true.i33.i.i.land.end.i.i_crit_edge, label %land.lhs.true11.i35.i.i

land.lhs.true.i33.i.i.land.end.i.i_crit_edge:     ; preds = %land.lhs.true.i33.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end.i.i

land.lhs.true11.i35.i.i:                          ; preds = %land.lhs.true.i33.i.i
  %.b17.i34.i.i = load i1, ptr @task_css.__warned, align 1
  br i1 %.b17.i34.i.i, label %land.lhs.true11.i35.i.i.land.end.i.i_crit_edge, label %if.then.i36.i.i

land.lhs.true11.i35.i.i.land.end.i.i_crit_edge:   ; preds = %land.lhs.true11.i35.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end.i.i

if.then.i36.i.i:                                  ; preds = %land.lhs.true11.i35.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @task_css.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 494, ptr noundef nonnull @.str.10) #8
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %if.then.i36.i.i, %land.lhs.true11.i35.i.i.land.end.i.i_crit_edge, %land.lhs.true.i33.i.i.land.end.i.i_crit_edge, %lor.lhs.false6.i30.i.i.land.end.i.i_crit_edge, %lor.lhs.false4.i27.i.i.land.end.i.i_crit_edge, %lor.lhs.false.i23.i.i.land.end.i.i_crit_edge, %land.rhs.i.i.land.end.i.i_crit_edge
  %arrayidx.i37.i.i = getelementptr [14 x ptr], ptr %33, i32 0, i32 3
  %36 = ptrtoint ptr %arrayidx.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i37.i.i, align 4
  %cmp.i.i = icmp eq ptr %29, %37
  br i1 %cmp.i.i, label %land.end.i.i.land.lhs.true.i115_crit_edge, label %land.end.i.i.if.end.i_crit_edge

land.end.i.i.if.end.i_crit_edge:                  ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.end.i.i.land.lhs.true.i115_crit_edge:        ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i115

wb_find_current.exit.i:                           ; preds = %task_css.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %wb2.i.i = getelementptr inbounds %struct.backing_dev_info, ptr %call, i32 0, i32 11
  br label %land.lhs.true.i115

land.lhs.true.i115:                               ; preds = %wb_find_current.exit.i, %land.end.i.i.land.lhs.true.i115_crit_edge
  %retval.0.i26.i = phi ptr [ %wb2.i.i, %wb_find_current.exit.i ], [ %call3.i.i, %land.end.i.i.land.lhs.true.i115_crit_edge ]
  %38 = ptrtoint ptr %retval.0.i26.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %retval.0.i26.i, align 8
  %wb1.i.i = getelementptr inbounds %struct.backing_dev_info, ptr %39, i32 0, i32 11
  %cmp.not.i.i = icmp eq ptr %wb1.i.i, %retval.0.i26.i
  br i1 %cmp.not.i.i, label %land.lhs.true.i115.if.end.i_crit_edge, label %wb_tryget.exit.i

land.lhs.true.i115.if.end.i_crit_edge:            ; preds = %land.lhs.true.i115
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

wb_tryget.exit.i:                                 ; preds = %land.lhs.true.i115
  %refcnt.i.i = getelementptr inbounds %struct.bdi_writeback, ptr %retval.0.i26.i, i32 0, i32 27
  %call.i3.i = tail call fastcc zeroext i1 @percpu_ref_tryget(ptr noundef %refcnt.i.i) #8
  br i1 %call.i3.i, label %wb_tryget.exit.i.if.end.i_crit_edge, label %if.then.i, !prof !186

wb_tryget.exit.i.if.end.i_crit_edge:              ; preds = %wb_tryget.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %wb_tryget.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %wb_tryget.exit.i.if.end.i_crit_edge, %land.lhs.true.i115.if.end.i_crit_edge, %land.end.i.i.if.end.i_crit_edge, %if.end.i.i.if.end.i_crit_edge
  %wb.0.i = phi ptr [ null, %if.then.i ], [ %retval.0.i26.i, %wb_tryget.exit.i.if.end.i_crit_edge ], [ null, %if.end.i.i.if.end.i_crit_edge ], [ null, %land.end.i.i.if.end.i_crit_edge ], [ %retval.0.i26.i, %land.lhs.true.i115.if.end.i_crit_edge ]
  %call.i6.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i6.i, label %if.end.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i9.i

if.end.i.rcu_read_unlock.exit.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

land.lhs.true.i9.i:                               ; preds = %if.end.i
  %call1.i7.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i)
  %tobool.not.i8.i = icmp eq i32 %call1.i7.i, 0
  br i1 %tobool.not.i8.i, label %land.lhs.true.i9.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i11.i

land.lhs.true.i9.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i11.i:                             ; preds = %land.lhs.true.i9.i
  %.b4.i10.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i10.i, label %land.lhs.true2.i11.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i12.i

land.lhs.true2.i11.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

if.then.i12.i:                                    ; preds = %land.lhs.true2.i11.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.17) #8
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i12.i, %land.lhs.true2.i11.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i9.i.rcu_read_unlock.exit.i_crit_edge, %if.end.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !193
  %40 = tail call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i.i.i.i.i13.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i13.i to ptr
  %preempt_count.i.i.i.i14.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i14.i, align 4
  %sub.i.i.i.i = add i32 %43, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i14.i, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %tobool5.not.i = icmp eq ptr %wb.0.i, null
  br i1 %tobool5.not.i, label %if.then14.i, label %rcu_read_unlock.exit.i.if.end4_crit_edge, !prof !182

rcu_read_unlock.exit.i.if.end4_crit_edge:         ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then14.i:                                      ; preds = %rcu_read_unlock.exit.i
  %44 = tail call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task.i, align 8
  %call16.i = tail call fastcc ptr @task_get_css(ptr noundef %47) #8
  %call17.i = tail call ptr @wb_get_create(ptr noundef %call, ptr noundef %call16.i, i32 noundef 3264) #8
  %flags.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %call16.i, i32 0, i32 7
  %48 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags.i.i, align 4
  %and.i15.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i15.i)
  %tobool.not.i16.i = icmp eq i32 %and.i15.i, 0
  br i1 %tobool.not.i16.i, label %if.then.i18.i, label %if.then14.i.if.end4_crit_edge

if.then14.i.if.end4_crit_edge:                    ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then.i18.i:                                    ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  %refcnt.i17.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %call16.i, i32 0, i32 2
  tail call fastcc void @percpu_ref_put_many(ptr noundef %refcnt.i17.i) #8
  br label %if.end4

if.end4:                                          ; preds = %if.then.i18.i, %if.then14.i.if.end4_crit_edge, %rcu_read_unlock.exit.i.if.end4_crit_edge, %land.rhs.i.if.end4_crit_edge, %land.lhs.true18.i.if.end4_crit_edge, %land.lhs.true.i, %if.end
  %wb.0 = phi ptr [ null, %land.rhs.i.if.end4_crit_edge ], [ null, %if.end ], [ null, %land.lhs.true.i ], [ %wb.0.i, %rcu_read_unlock.exit.i.if.end4_crit_edge ], [ %call17.i, %if.then14.i.if.end4_crit_edge ], [ %call17.i, %if.then.i18.i ], [ null, %land.lhs.true18.i.if.end4_crit_edge ]
  %tobool5.not = icmp eq ptr %wb.0, null
  %wb7 = getelementptr inbounds %struct.backing_dev_info, ptr %call, i32 0, i32 11
  %spec.select = select i1 %tobool5.not, ptr %wb7, ptr %wb.0
  %50 = tail call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i116 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i116 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task, align 8
  %nr_dirtied_pause = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 185
  %54 = ptrtoint ptr %nr_dirtied_pause to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nr_dirtied_pause, align 8
  %dirty_exceeded = getelementptr inbounds %struct.bdi_writeback, ptr %spec.select, i32 0, i32 19
  %56 = ptrtoint ptr %dirty_exceeded to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dirty_exceeded, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool10.not = icmp eq i32 %57, 0
  %58 = tail call i32 @llvm.smin.i32(i32 %55, i32 8)
  %ratelimit.0 = select i1 %tobool10.not, i32 %55, i32 %58
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %60, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !194
  %cpu = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 3
  %61 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %62
  %63 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx, align 4
  %add = add i32 %64, ptrtoint (ptr @bdp_ratelimits to i32)
  %65 = inttoptr i32 %add to ptr
  %66 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %task, align 8
  %nr_dirtied = getelementptr inbounds %struct.task_struct, ptr %67, i32 0, i32 184
  %68 = ptrtoint ptr %nr_dirtied to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %nr_dirtied, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %ratelimit.0)
  %cmp21.not = icmp slt i32 %69, %ratelimit.0
  br i1 %cmp21.not, label %if.else, label %if.end4.do.body35.sink.split_crit_edge, !prof !186

if.end4.do.body35.sink.split_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body35.sink.split

if.else:                                          ; preds = %if.end4
  %70 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %65, align 4
  %72 = load i32, ptr @ratelimit_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %72)
  %cmp25.not = icmp slt i32 %71, %72
  br i1 %cmp25.not, label %if.else.do.body35_crit_edge, label %if.else.do.body35.sink.split_crit_edge, !prof !186

if.else.do.body35.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body35.sink.split

if.else.do.body35_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body35

do.body35.sink.split:                             ; preds = %if.else.do.body35.sink.split_crit_edge, %if.end4.do.body35.sink.split_crit_edge
  %ratelimit.1.ph = phi i32 [ %ratelimit.0, %if.end4.do.body35.sink.split_crit_edge ], [ 0, %if.else.do.body35.sink.split_crit_edge ]
  %73 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %65, align 4
  br label %do.body35

do.body35:                                        ; preds = %do.body35.sink.split, %if.else.do.body35_crit_edge
  %ratelimit.1 = phi i32 [ %ratelimit.0, %if.else.do.body35_crit_edge ], [ %ratelimit.1.ph, %do.body35.sink.split ]
  %74 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cpu, align 4
  %arrayidx44 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %75
  %76 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx44, align 4
  %add45 = add i32 %77, ptrtoint (ptr @dirty_throttle_leaks to i32)
  %78 = inttoptr i32 %add45 to ptr
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp46 = icmp sgt i32 %80, 0
  br i1 %cmp46, label %land.lhs.true, label %do.body35.do.body67_crit_edge

do.body35.do.body67_crit_edge:                    ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body67

land.lhs.true:                                    ; preds = %do.body35
  %81 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %task, align 8
  %nr_dirtied49 = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 184
  %83 = ptrtoint ptr %nr_dirtied49 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %nr_dirtied49, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ratelimit.1, i32 %84)
  %cmp50 = icmp sgt i32 %ratelimit.1, %84
  br i1 %cmp50, label %if.then51, label %land.lhs.true.do.body67_crit_edge

land.lhs.true.do.body67_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body67

if.then51:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i32 %ratelimit.1, %84
  %85 = tail call i32 @llvm.smin.i32(i32 %80, i32 %sub)
  %sub61 = sub i32 %80, %85
  %86 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %sub61, ptr %78, align 4
  %87 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %task, align 8
  %nr_dirtied64 = getelementptr inbounds %struct.task_struct, ptr %88, i32 0, i32 184
  %89 = ptrtoint ptr %nr_dirtied64 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %nr_dirtied64, align 4
  %add65 = add i32 %90, %85
  store i32 %add65, ptr %nr_dirtied64, align 4
  br label %do.body67

do.body67:                                        ; preds = %if.then51, %land.lhs.true.do.body67_crit_edge, %do.body35.do.body67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !195
  %91 = tail call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i.i.i112 = and i32 %91, -16384
  %92 = inttoptr i32 %and.i.i.i112 to ptr
  %preempt_count.i.i113 = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %preempt_count.i.i113 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %preempt_count.i.i113, align 4
  %sub.i = add i32 %94, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i113, align 4
  %95 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %task, align 8
  %nr_dirtied72 = getelementptr inbounds %struct.task_struct, ptr %96, i32 0, i32 184
  %97 = ptrtoint ptr %nr_dirtied72 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %nr_dirtied72, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %ratelimit.1)
  %cmp73.not = icmp slt i32 %98, %ratelimit.1
  br i1 %cmp73.not, label %do.body67.if.end84_crit_edge, label %if.then80, !prof !186

do.body67.if.end84_crit_edge:                     ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.then80:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @balance_dirty_pages(ptr noundef %spec.select, i32 noundef %98)
  br label %if.end84

if.end84:                                         ; preds = %if.then80, %do.body67.if.end84_crit_edge
  %99 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %spec.select, align 8
  %tobool.not.i.i117 = icmp eq ptr %100, null
  br i1 %tobool.not.i.i117, label %land.rhs.i.i118, label %if.end39.critedge.i.i

land.rhs.i.i118:                                  ; preds = %if.end84
  %.b1.i.i = load i1, ptr @wb_put_many.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i118.cleanup_crit_edge, label %if.then.i.i119, !prof !186

land.rhs.i.i118.cleanup_crit_edge:                ; preds = %land.rhs.i.i118
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i.i119:                                   ; preds = %land.rhs.i.i118
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @wb_put_many.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 253, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end39.critedge.i.i:                            ; preds = %if.end84
  %wb41.i.i = getelementptr inbounds %struct.backing_dev_info, ptr %100, i32 0, i32 11
  %cmp.not.i.i120 = icmp eq ptr %wb41.i.i, %spec.select
  br i1 %cmp.not.i.i120, label %if.end39.critedge.i.i.cleanup_crit_edge, label %if.then42.i.i

if.end39.critedge.i.i.cleanup_crit_edge:          ; preds = %if.end39.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then42.i.i:                                    ; preds = %if.end39.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %refcnt.i.i121 = getelementptr inbounds %struct.bdi_writeback, ptr %spec.select, i32 0, i32 27
  tail call fastcc void @percpu_ref_put_many(ptr noundef %refcnt.i.i121) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then42.i.i, %if.end39.critedge.i.i.cleanup_crit_edge, %if.then.i.i119, %land.rhs.i.i118.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inode_to_bdi(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @balance_dirty_pages(ptr noundef %wb, i32 noundef %pages_dirtied) #0 align 64 {
entry:
  %gdtc_stor = alloca %struct.dirty_throttle_control, align 4
  %mdtc_stor = alloca %struct.dirty_throttle_control, align 4
  %filepages = alloca i32, align 4
  %headroom = alloca i32, align 4
  %writeback = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %gdtc_stor) #8
  %0 = getelementptr inbounds i8, ptr %gdtc_stor, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 44)
  %2 = ptrtoint ptr %gdtc_stor to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @global_wb_domain, ptr %gdtc_stor, align 4
  %wb1 = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc_stor, i32 0, i32 2
  %3 = ptrtoint ptr %wb1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %wb, ptr %wb1, align 4
  %wb_completions = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc_stor, i32 0, i32 3
  %completions = getelementptr inbounds %struct.bdi_writeback, ptr %wb, i32 0, i32 18
  %4 = ptrtoint ptr %wb_completions to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %completions, ptr %wb_completions, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %mdtc_stor) #8
  %call = tail call ptr @mem_cgroup_wb_domain(ptr noundef %wb) #8
  %5 = ptrtoint ptr %mdtc_stor to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %mdtc_stor, align 4
  %gdtc = getelementptr inbounds %struct.dirty_throttle_control, ptr %mdtc_stor, i32 0, i32 1
  %6 = ptrtoint ptr %gdtc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %gdtc_stor, ptr %gdtc, align 4
  %wb3 = getelementptr inbounds %struct.dirty_throttle_control, ptr %mdtc_stor, i32 0, i32 2
  %7 = ptrtoint ptr %wb3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %wb, ptr %wb3, align 4
  %wb_completions4 = getelementptr inbounds %struct.dirty_throttle_control, ptr %mdtc_stor, i32 0, i32 3
  %memcg_completions = getelementptr inbounds %struct.bdi_writeback, ptr %wb, i32 0, i32 28
  %8 = ptrtoint ptr %wb_completions4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %memcg_completions, ptr %wb_completions4, align 4
  %avail = getelementptr inbounds %struct.dirty_throttle_control, ptr %mdtc_stor, i32 0, i32 4
  %dirty = getelementptr inbounds %struct.dirty_throttle_control, ptr %mdtc_stor, i32 0, i32 5
  %thresh = getelementptr inbounds %struct.dirty_throttle_control, ptr %mdtc_stor, i32 0, i32 6
  %bg_thresh = getelementptr inbounds %struct.dirty_throttle_control, ptr %mdtc_stor, i32 0, i32 7
  %wb_dirty = getelementptr inbounds %struct.dirty_throttle_control, ptr %mdtc_stor, i32 0, i32 8
  %wb_thresh = getelementptr inbounds %struct.dirty_throttle_control, ptr %mdtc_stor, i32 0, i32 9
  %wb_bg_thresh = getelementptr inbounds %struct.dirty_throttle_control, ptr %mdtc_stor, i32 0, i32 10
  %pos_ratio = getelementptr inbounds %struct.dirty_throttle_control, ptr %mdtc_stor, i32 0, i32 11
  %tobool.i.not = icmp eq ptr %call, null
  %mdtc_stor. = select i1 %tobool.i.not, ptr null, ptr %mdtc_stor
  %9 = call ptr @memset(ptr %avail, i32 0, i32 32)
  %10 = ptrtoint ptr %wb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wb, align 8
  %capabilities = getelementptr inbounds %struct.backing_dev_info, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %capabilities, align 8
  %and = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %avail13 = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc_stor, i32 0, i32 4
  %dirty15 = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc_stor, i32 0, i32 5
  %thresh23 = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc_stor, i32 0, i32 6
  %bg_thresh24 = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc_stor, i32 0, i32 7
  %wb_dirty19 = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc_stor, i32 0, i32 8
  %wb_thresh20 = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc_stor, i32 0, i32 9
  %wb_bg_thresh21 = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc_stor, i32 0, i32 10
  %state.i = getelementptr inbounds %struct.bdi_writeback, ptr %wb, i32 0, i32 1
  %pos_ratio136 = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc_stor, i32 0, i32 11
  %dirty_exceeded145 = getelementptr inbounds %struct.bdi_writeback, ptr %wb, i32 0, i32 19
  %bw_time_stamp = getelementptr inbounds %struct.bdi_writeback, ptr %wb, i32 0, i32 11
  %dirty_ratelimit160 = getelementptr inbounds %struct.bdi_writeback, ptr %wb, i32 0, i32 16
  %avg_write_bandwidth.i = getelementptr inbounds %struct.bdi_writeback, ptr %wb, i32 0, i32 15
  %mul178 = mul i32 %pages_dirtied, 100
  %dirty_sleep = getelementptr inbounds %struct.bdi_writeback, ptr %wb, i32 0, i32 25
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %entry
  %dirty_exceeded.0.off0 = phi i1 [ false, %entry ], [ %dirty_exceeded.2.in823, %for.cond.backedge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 20), i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 20) to i32))
  %16 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 20), align 4
  %17 = call i32 @llvm.smax.i32(i32 %16, i32 0) #8
  %call12 = call fastcc i32 @global_dirtyable_memory()
  %18 = ptrtoint ptr %avail13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call12, ptr %avail13, align 4
  %call.i.i.i.i552 = call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 21), i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 21) to i32))
  %19 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 21), align 4
  %20 = call i32 @llvm.smax.i32(i32 %19, i32 0) #8
  %add = add nuw i32 %20, %17
  %21 = ptrtoint ptr %dirty15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add, ptr %dirty15, align 4
  call fastcc void @domain_dirty_limits(ptr noundef nonnull %gdtc_stor)
  br i1 %tobool, label %if.then, label %for.cond.if.end_crit_edge, !prof !182

for.cond.if.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @wb_dirty_limits(ptr noundef nonnull %gdtc_stor)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.cond.if.end_crit_edge
  %dirty15.sink = phi ptr [ %wb_dirty19, %if.then ], [ %dirty15, %for.cond.if.end_crit_edge ]
  %thresh23.sink = phi ptr [ %wb_thresh20, %if.then ], [ %thresh23, %for.cond.if.end_crit_edge ]
  %bg_thresh24.sink = phi ptr [ %wb_bg_thresh21, %if.then ], [ %bg_thresh24, %for.cond.if.end_crit_edge ]
  %22 = ptrtoint ptr %dirty15.sink to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dirty15.sink, align 4
  %24 = ptrtoint ptr %thresh23.sink to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %thresh23.sink, align 4
  %26 = ptrtoint ptr %bg_thresh24.sink to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bg_thresh24.sink, align 4
  br i1 %tobool.i.not, label %if.end46.thread, label %if.then26

if.then26:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %filepages) #8
  %28 = ptrtoint ptr %filepages to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %filepages, align 4, !annotation !185
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %headroom) #8
  %29 = ptrtoint ptr %headroom to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %headroom, align 4, !annotation !185
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %writeback) #8
  %30 = ptrtoint ptr %writeback to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %writeback, align 4, !annotation !185
  call void @mem_cgroup_wb_stats(ptr noundef %wb, ptr noundef nonnull %filepages, ptr noundef nonnull %headroom, ptr noundef %dirty, ptr noundef nonnull %writeback) #8
  %31 = ptrtoint ptr %writeback to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %writeback, align 4
  %33 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dirty, align 4
  %add29 = add i32 %34, %32
  store i32 %add29, ptr %dirty, align 4
  %35 = ptrtoint ptr %filepages to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %filepages, align 4
  %37 = ptrtoint ptr %headroom to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %headroom, align 4
  %39 = ptrtoint ptr %gdtc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %gdtc, align 4
  %41 = call i32 @llvm.usub.sat.i32(i32 %36, i32 %add29) #8
  %avail.i = getelementptr inbounds %struct.dirty_throttle_control, ptr %40, i32 0, i32 4
  %42 = ptrtoint ptr %avail.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %avail.i, align 4
  %dirty2.i = getelementptr inbounds %struct.dirty_throttle_control, ptr %40, i32 0, i32 5
  %44 = ptrtoint ptr %dirty2.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dirty2.i, align 4
  %46 = call i32 @llvm.usub.sat.i32(i32 %43, i32 %45) #8
  %47 = call i32 @llvm.usub.sat.i32(i32 %46, i32 %41) #8
  %48 = call i32 @llvm.umin.i32(i32 %47, i32 %38) #8
  %add.i = add i32 %48, %36
  %49 = ptrtoint ptr %avail to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add.i, ptr %avail, align 4
  call fastcc void @domain_dirty_limits(ptr noundef %mdtc_stor.)
  br i1 %tobool, label %if.then37, label %if.then26.if.end46_crit_edge, !prof !182

if.then26.if.end46_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then37:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @wb_dirty_limits(ptr noundef %mdtc_stor.)
  br label %if.end46

if.end46:                                         ; preds = %if.then37, %if.then26.if.end46_crit_edge
  %m_dirty.0.in = phi ptr [ %wb_dirty, %if.then37 ], [ %dirty, %if.then26.if.end46_crit_edge ]
  %m_thresh.0.in = phi ptr [ %wb_thresh, %if.then37 ], [ %thresh, %if.then26.if.end46_crit_edge ]
  %m_bg_thresh.0.in = phi ptr [ %wb_bg_thresh, %if.then37 ], [ %bg_thresh, %if.then26.if.end46_crit_edge ]
  %50 = ptrtoint ptr %m_bg_thresh.0.in to i32
  call void @__asan_load4_noabort(i32 %50)
  %m_bg_thresh.0 = load i32, ptr %m_bg_thresh.0.in, align 4
  %51 = ptrtoint ptr %m_thresh.0.in to i32
  call void @__asan_load4_noabort(i32 %51)
  %m_thresh.0 = load i32, ptr %m_thresh.0.in, align 4
  %52 = ptrtoint ptr %m_dirty.0.in to i32
  call void @__asan_load4_noabort(i32 %52)
  %m_dirty.0 = load i32, ptr %m_dirty.0.in, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %writeback) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %headroom) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %filepages) #8
  %add.i553 = add i32 %27, %25
  %div1.i = lshr i32 %add.i553, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %div1.i)
  %cmp.not = icmp ugt i32 %23, %div1.i
  %add.i554 = add i32 %m_thresh.0, %m_bg_thresh.0
  %div1.i555 = lshr i32 %add.i554, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %m_dirty.0, i32 %div1.i555)
  %cmp50.not = icmp ugt i32 %m_dirty.0, %div1.i555
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp50.not
  br i1 %or.cond, label %if.end46.if.end68_crit_edge, label %if.end46.free_running_crit_edge

if.end46.free_running_crit_edge:                  ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_running

if.end46.if.end68_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.end46.thread:                                  ; preds = %if.end
  %add.i553810 = add i32 %27, %25
  %div1.i811 = lshr i32 %add.i553810, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %div1.i811)
  %cmp.not812 = icmp ugt i32 %23, %div1.i811
  br i1 %cmp.not812, label %if.end46.thread.if.end68_crit_edge, label %if.end46.thread.free_running_crit_edge

if.end46.thread.free_running_crit_edge:           ; preds = %if.end46.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_running

if.end46.thread.if.end68_crit_edge:               ; preds = %if.end46.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

free_running:                                     ; preds = %land.lhs.true112.free_running_crit_edge, %land.lhs.true86.free_running_crit_edge, %if.end46.thread.free_running_crit_edge, %if.end46.free_running_crit_edge
  %m_thresh.1817 = phi i32 [ %m_thresh.1818, %land.lhs.true112.free_running_crit_edge ], [ %m_thresh.1818, %land.lhs.true86.free_running_crit_edge ], [ 0, %if.end46.thread.free_running_crit_edge ], [ %m_thresh.0, %if.end46.free_running_crit_edge ]
  %m_dirty.1814 = phi i32 [ %m_dirty.1815, %land.lhs.true112.free_running_crit_edge ], [ %m_dirty.1815, %land.lhs.true86.free_running_crit_edge ], [ 0, %if.end46.thread.free_running_crit_edge ], [ %m_dirty.0, %if.end46.free_running_crit_edge ]
  %dirty_exceeded.1.off0 = phi i1 [ %108, %land.lhs.true112.free_running_crit_edge ], [ %dirty_exceeded.0.off0, %land.lhs.true86.free_running_crit_edge ], [ %dirty_exceeded.0.off0, %if.end46.thread.free_running_crit_edge ], [ %dirty_exceeded.0.off0, %if.end46.free_running_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %23)
  %cmp.i = icmp ugt i32 %25, %23
  %sub.i = sub i32 %25, %23
  %53 = call i32 @llvm.ctlz.i32(i32 %sub.i, i1 true) #8, !range !184
  %sub.i.op.i.i = lshr i32 %53, 1
  %54 = xor i32 %sub.i.op.i.i, 15
  %.op908 = shl nuw i32 1, %54
  %retval.0.i = select i1 %cmp.i, i32 %.op908, i32 1
  %55 = call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %task, align 8
  %dirty_paused_when = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 186
  %59 = ptrtoint ptr %dirty_paused_when to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %15, ptr %dirty_paused_when, align 4
  %60 = load ptr, ptr %task, align 8
  %nr_dirtied = getelementptr inbounds %struct.task_struct, ptr %60, i32 0, i32 184
  %61 = ptrtoint ptr %nr_dirtied to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %nr_dirtied, align 4
  br i1 %tobool.i.not, label %free_running.if.end59_crit_edge, label %if.then57

free_running.if.end59_crit_edge:                  ; preds = %free_running
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then57:                                        ; preds = %free_running
  call void @__sanitizer_cov_trace_cmp4(i32 %m_thresh.1817, i32 %m_dirty.1814)
  %cmp.i556 = icmp ugt i32 %m_thresh.1817, %m_dirty.1814
  br i1 %cmp.i556, label %cond.end8.i570, label %if.then57.if.end59_crit_edge

if.then57.if.end59_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

cond.end8.i570:                                   ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i557 = sub i32 %m_thresh.1817, %m_dirty.1814
  %62 = call i32 @llvm.ctlz.i32(i32 %sub.i557, i1 true) #8, !range !184
  %sub.i.op.i.i564 = lshr i32 %62, 1
  %63 = xor i32 %sub.i.op.i.i564, 15
  %.op = shl nuw i32 1, %63
  br label %if.end59

if.end59:                                         ; preds = %cond.end8.i570, %if.then57.if.end59_crit_edge, %free_running.if.end59_crit_edge
  %m_intv.0 = phi i32 [ -1, %free_running.if.end59_crit_edge ], [ %.op, %cond.end8.i570 ], [ 1, %if.then57.if.end59_crit_edge ]
  %64 = call i32 @llvm.umin.i32(i32 %retval.0.i, i32 %m_intv.0)
  %65 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %task, align 8
  %nr_dirtied_pause67 = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 185
  %67 = ptrtoint ptr %nr_dirtied_pause67 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %64, ptr %nr_dirtied_pause67, align 8
  br i1 %dirty_exceeded.1.off0, label %if.end59.if.end370_crit_edge, label %if.end59.land.lhs.true365_crit_edge

if.end59.land.lhs.true365_crit_edge:              ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true365

if.end59.if.end370_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end370

if.end68:                                         ; preds = %if.end46.thread.if.end68_crit_edge, %if.end46.if.end68_crit_edge
  %m_thresh.1818 = phi i32 [ 0, %if.end46.thread.if.end68_crit_edge ], [ %m_thresh.0, %if.end46.if.end68_crit_edge ]
  %m_dirty.1815 = phi i32 [ 0, %if.end46.thread.if.end68_crit_edge ], [ %m_dirty.0, %if.end46.if.end68_crit_edge ]
  %68 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %state.i, align 4
  %70 = and i32 %69, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.i573.not = icmp eq i32 %70, 0
  br i1 %tobool.i573.not, label %if.then78, label %if.end68.if.end79_crit_edge, !prof !182

if.end68.if.end79_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.then78:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  call void @wb_start_background_writeback(ptr noundef %wb) #8
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %if.end68.if.end79_crit_edge
  call void @mem_cgroup_flush_foreign(ptr noundef %wb) #8
  br i1 %tobool, label %if.end79.if.end94_crit_edge, label %if.then81

if.end79.if.end94_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94

if.then81:                                        ; preds = %if.end79
  %71 = ptrtoint ptr %wb1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %wb1, align 4
  %call.i = call fastcc i32 @__wb_calc_thresh(ptr noundef nonnull %gdtc_stor) #8
  %73 = ptrtoint ptr %wb_thresh20 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %call.i, ptr %wb_thresh20, align 4
  %74 = ptrtoint ptr %thresh23 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %thresh23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i = icmp eq i32 %75, 0
  br i1 %tobool.not.i, label %if.then81.cond.end.i_crit_edge, label %cond.true.i574

if.then81.cond.end.i_crit_edge:                   ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.true.i574:                                   ; preds = %if.then81
  %conv.i = zext i32 %call.i to i64
  %76 = ptrtoint ptr %bg_thresh24 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %bg_thresh24, align 4
  %conv3.i = zext i32 %77 to i64
  %mul.i = mul nuw i64 %conv3.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp164.i.i.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !186

if.then168.i.i.i:                                 ; preds = %cond.true.i574
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i.i = trunc i64 %mul.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %75
  br label %cond.end.i

if.else174.i.i.i:                                 ; preds = %cond.true.i574
  call void @__sanitizer_cov_trace_pc() #10
  %78 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %75, i64 %mul.i) #11, !srcloc !187
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %78, 1
  %extract.t42.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %if.else174.i.i.i, %if.then168.i.i.i, %if.then81.cond.end.i_crit_edge
  %cond.off0.i = phi i32 [ 0, %if.then81.cond.end.i_crit_edge ], [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t42.i, %if.else174.i.i.i ]
  %79 = ptrtoint ptr %wb_bg_thresh21 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %cond.off0.i, ptr %wb_bg_thresh21, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %80 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i.i.i.i = icmp eq i32 %80, 0
  %81 = call i32 @llvm.ctlz.i32(i32 %80, i1 true) #8, !range !184
  %sub.i.op.i.i.i = shl nuw nsw i32 %81, 3
  %sub.i.op.i.i.i.op = xor i32 %sub.i.op.i.i.i, 248
  %sub.i.op.i.i.i.op.op = add nuw nsw i32 %sub.i.op.i.i.i.op, 8
  %mul.i.i = select i1 %tobool.not.i.i.i.i, i32 0, i32 %sub.i.op.i.i.i.op.op
  %mul5.i.i = shl i32 %80, 1
  %mul9.i = mul i32 %mul5.i.i, %mul.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %mul9.i)
  %cmp.i577 = icmp ult i32 %call.i, %mul9.i
  br i1 %cmp.i577, label %if.then.i578, label %if.else.i

if.then.i578:                                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i = getelementptr %struct.bdi_writeback, ptr %72, i32 0, i32 9, i32 0
  %call.i.i.i = call i64 @__percpu_counter_sum(ptr noundef %arrayidx.i.i) #8
  %82 = call i64 @llvm.smax.i64(i64 %call.i.i.i, i64 0) #8
  %arrayidx.i37.i = getelementptr %struct.bdi_writeback, ptr %72, i32 0, i32 9, i32 1
  %call.i.i38.i = call i64 @__percpu_counter_sum(ptr noundef %arrayidx.i37.i) #8
  br label %wb_dirty_limits.exit

if.else.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %count.i.i.i = getelementptr %struct.bdi_writeback, ptr %72, i32 0, i32 9, i32 0, i32 1
  %83 = ptrtoint ptr %count.i.i.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load volatile i64, ptr %count.i.i.i, align 8
  %85 = call i64 @llvm.smax.i64(i64 %84, i64 0) #8
  %count.i.i39.i = getelementptr %struct.bdi_writeback, ptr %72, i32 0, i32 9, i32 1, i32 1
  %86 = ptrtoint ptr %count.i.i39.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load volatile i64, ptr %count.i.i39.i, align 8
  br label %wb_dirty_limits.exit

wb_dirty_limits.exit:                             ; preds = %if.else.i, %if.then.i578
  %.sink45.i = phi i64 [ %87, %if.else.i ], [ %call.i.i38.i, %if.then.i578 ]
  %.sink44.i = phi i64 [ %85, %if.else.i ], [ %82, %if.then.i578 ]
  %88 = call i64 @llvm.smax.i64(i64 %.sink45.i, i64 0) #8
  %add20.i = add nuw i64 %88, %.sink44.i
  %conv21.i = trunc i64 %add20.i to i32
  %89 = ptrtoint ptr %wb_dirty19 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %conv21.i, ptr %wb_dirty19, align 4
  %90 = call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i579 = and i32 %90, -16384
  %91 = inttoptr i32 %and.i579 to ptr
  %task83 = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %task83 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %task83, align 8
  %flags = getelementptr inbounds %struct.task_struct, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %flags, align 4
  %and84 = and i32 %95, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %wb_dirty_limits.exit.if.end94_crit_edge, label %land.lhs.true86

wb_dirty_limits.exit.if.end94_crit_edge:          ; preds = %wb_dirty_limits.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94

land.lhs.true86:                                  ; preds = %wb_dirty_limits.exit
  %96 = ptrtoint ptr %wb_thresh20 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %wb_thresh20, align 4
  %98 = ptrtoint ptr %wb_bg_thresh21 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %wb_bg_thresh21, align 4
  %add.i580 = add i32 %99, %97
  %div1.i581 = lshr i32 %add.i580, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i581, i32 %conv21.i)
  %cmp91 = icmp ugt i32 %div1.i581, %conv21.i
  br i1 %cmp91, label %land.lhs.true86.free_running_crit_edge, label %land.lhs.true86.if.end94_crit_edge

land.lhs.true86.if.end94_crit_edge:               ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94

land.lhs.true86.free_running_crit_edge:           ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_running

if.end94:                                         ; preds = %land.lhs.true86.if.end94_crit_edge, %wb_dirty_limits.exit.if.end94_crit_edge, %if.end79.if.end94_crit_edge
  %100 = ptrtoint ptr %wb_dirty19 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %wb_dirty19, align 4
  %102 = ptrtoint ptr %wb_thresh20 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %wb_thresh20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %103)
  %cmp97 = icmp ugt i32 %101, %103
  br i1 %cmp97, label %land.end, label %land.end.thread

land.end:                                         ; preds = %if.end94
  %104 = ptrtoint ptr %dirty15 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %dirty15, align 4
  %106 = ptrtoint ptr %thresh23 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %thresh23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %107)
  %cmp100 = icmp ugt i32 %105, %107
  %spec.select = select i1 %cmp100, i1 true, i1 %tobool
  call fastcc void @wb_position_ratio(ptr noundef nonnull %gdtc_stor)
  br i1 %tobool.i.not, label %if.end141, label %land.end.if.then104_crit_edge

land.end.if.then104_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then104

land.end.thread:                                  ; preds = %if.end94
  call fastcc void @wb_position_ratio(ptr noundef nonnull %gdtc_stor)
  br i1 %tobool.i.not, label %land.end.thread.do.end_crit_edge, label %land.end.thread.if.then104_crit_edge

land.end.thread.if.then104_crit_edge:             ; preds = %land.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then104

land.end.thread.do.end_crit_edge:                 ; preds = %land.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then104:                                       ; preds = %land.end.thread.if.then104_crit_edge, %land.end.if.then104_crit_edge
  %108 = phi i1 [ false, %land.end.thread.if.then104_crit_edge ], [ %spec.select, %land.end.if.then104_crit_edge ]
  br i1 %tobool, label %if.then104.if.end120_crit_edge, label %if.then106

if.then104.if.end120_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end120

if.then106:                                       ; preds = %if.then104
  %109 = ptrtoint ptr %wb3 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %wb3, align 4
  %call.i583 = call fastcc i32 @__wb_calc_thresh(ptr noundef %mdtc_stor.) #8
  %111 = ptrtoint ptr %wb_thresh to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %call.i583, ptr %wb_thresh, align 4
  %112 = ptrtoint ptr %thresh to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %thresh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool.not.i586 = icmp eq i32 %113, 0
  br i1 %tobool.not.i586, label %if.then106.cond.end.i707_crit_edge, label %cond.true.i591

if.then106.cond.end.i707_crit_edge:               ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i707

cond.true.i591:                                   ; preds = %if.then106
  %conv.i587 = zext i32 %call.i583 to i64
  %114 = ptrtoint ptr %bg_thresh to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %bg_thresh, align 4
  %conv3.i589 = zext i32 %115 to i64
  %mul.i590 = mul nuw i64 %conv3.i589, %conv.i587
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i590)
  %cmp164.i.i.i697 = icmp ult i64 %mul.i590, 4294967296
  br i1 %cmp164.i.i.i697, label %if.then168.i.i.i701, label %if.else174.i.i.i704, !prof !186

if.then168.i.i.i701:                              ; preds = %cond.true.i591
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i.i699 = trunc i64 %mul.i590 to i32
  %div172.i.i.i700 = udiv i32 %conv169.i.i.i699, %113
  br label %cond.end.i707

if.else174.i.i.i704:                              ; preds = %cond.true.i591
  call void @__sanitizer_cov_trace_pc() #10
  %116 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %113, i64 %mul.i590) #11, !srcloc !187
  %asmresult1.i.i.i.i702 = extractvalue { i64, i64 } %116, 1
  %extract.t42.i703 = trunc i64 %asmresult1.i.i.i.i702 to i32
  br label %cond.end.i707

cond.end.i707:                                    ; preds = %if.else174.i.i.i704, %if.then168.i.i.i701, %if.then106.cond.end.i707_crit_edge
  %cond.off0.i705 = phi i32 [ 0, %if.then106.cond.end.i707_crit_edge ], [ %div172.i.i.i700, %if.then168.i.i.i701 ], [ %extract.t42.i703, %if.else174.i.i.i704 ]
  %117 = ptrtoint ptr %wb_bg_thresh to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %cond.off0.i705, ptr %wb_bg_thresh, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %118 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool.not.i.i.i.i712 = icmp eq i32 %118, 0
  %119 = call i32 @llvm.ctlz.i32(i32 %118, i1 true) #8, !range !184
  %sub.i.op.i.i.i713 = shl nuw nsw i32 %119, 3
  %sub.i.op.i.i.i713.op = xor i32 %sub.i.op.i.i.i713, 248
  %sub.i.op.i.i.i713.op.op = add nuw nsw i32 %sub.i.op.i.i.i713.op, 8
  %mul.i.i718 = select i1 %tobool.not.i.i.i.i712, i32 0, i32 %sub.i.op.i.i.i713.op.op
  %mul5.i.i719 = shl i32 %118, 1
  %mul9.i720 = mul i32 %mul5.i.i719, %mul.i.i718
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i583, i32 %mul9.i720)
  %cmp.i721 = icmp ult i32 %call.i583, %mul9.i720
  br i1 %cmp.i721, label %if.then.i727, label %if.else.i730

if.then.i727:                                     ; preds = %cond.end.i707
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i723 = getelementptr %struct.bdi_writeback, ptr %110, i32 0, i32 9, i32 0
  %call.i.i.i724 = call i64 @__percpu_counter_sum(ptr noundef %arrayidx.i.i723) #8
  %120 = call i64 @llvm.smax.i64(i64 %call.i.i.i724, i64 0) #8
  %arrayidx.i37.i725 = getelementptr %struct.bdi_writeback, ptr %110, i32 0, i32 9, i32 1
  %call.i.i38.i726 = call i64 @__percpu_counter_sum(ptr noundef %arrayidx.i37.i725) #8
  br label %wb_dirty_limits.exit735

if.else.i730:                                     ; preds = %cond.end.i707
  call void @__sanitizer_cov_trace_pc() #10
  %count.i.i.i728 = getelementptr %struct.bdi_writeback, ptr %110, i32 0, i32 9, i32 0, i32 1
  %121 = ptrtoint ptr %count.i.i.i728 to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load volatile i64, ptr %count.i.i.i728, align 8
  %123 = call i64 @llvm.smax.i64(i64 %122, i64 0) #8
  %count.i.i39.i729 = getelementptr %struct.bdi_writeback, ptr %110, i32 0, i32 9, i32 1, i32 1
  %124 = ptrtoint ptr %count.i.i39.i729 to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load volatile i64, ptr %count.i.i39.i729, align 8
  br label %wb_dirty_limits.exit735

wb_dirty_limits.exit735:                          ; preds = %if.else.i730, %if.then.i727
  %.sink45.i731 = phi i64 [ %125, %if.else.i730 ], [ %call.i.i38.i726, %if.then.i727 ]
  %.sink44.i732 = phi i64 [ %123, %if.else.i730 ], [ %120, %if.then.i727 ]
  %126 = call i64 @llvm.smax.i64(i64 %.sink45.i731, i64 0) #8
  %add20.i733 = add nuw i64 %126, %.sink44.i732
  %conv21.i734 = trunc i64 %add20.i733 to i32
  %127 = ptrtoint ptr %wb_dirty to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %conv21.i734, ptr %wb_dirty, align 4
  %128 = call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i736 = and i32 %128, -16384
  %129 = inttoptr i32 %and.i736 to ptr
  %task108 = getelementptr inbounds %struct.thread_info, ptr %129, i32 0, i32 2
  %130 = ptrtoint ptr %task108 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %task108, align 8
  %flags109 = getelementptr inbounds %struct.task_struct, ptr %131, i32 0, i32 3
  %132 = ptrtoint ptr %flags109 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %flags109, align 4
  %and110 = and i32 %133, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %wb_dirty_limits.exit735.if.end120_crit_edge, label %land.lhs.true112

wb_dirty_limits.exit735.if.end120_crit_edge:      ; preds = %wb_dirty_limits.exit735
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end120

land.lhs.true112:                                 ; preds = %wb_dirty_limits.exit735
  %134 = ptrtoint ptr %wb_thresh to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %wb_thresh, align 4
  %136 = ptrtoint ptr %wb_bg_thresh to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %wb_bg_thresh, align 4
  %add.i737 = add i32 %137, %135
  %div1.i738 = lshr i32 %add.i737, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i738, i32 %conv21.i734)
  %cmp117 = icmp ugt i32 %div1.i738, %conv21.i734
  br i1 %cmp117, label %land.lhs.true112.free_running_crit_edge, label %land.lhs.true112.if.end120_crit_edge

land.lhs.true112.if.end120_crit_edge:             ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end120

land.lhs.true112.free_running_crit_edge:          ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_running

if.end120:                                        ; preds = %land.lhs.true112.if.end120_crit_edge, %wb_dirty_limits.exit735.if.end120_crit_edge, %if.then104.if.end120_crit_edge
  %138 = ptrtoint ptr %wb_dirty to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %wb_dirty, align 4
  %140 = ptrtoint ptr %wb_thresh to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %wb_thresh, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %139, i32 %141)
  %cmp123 = icmp ugt i32 %139, %141
  br i1 %cmp123, label %land.rhs124, label %if.end120.land.end131_crit_edge

if.end120.land.end131_crit_edge:                  ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end131

land.rhs124:                                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  %142 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %dirty, align 4
  %144 = ptrtoint ptr %thresh to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %thresh, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %143, i32 %145)
  %cmp127 = icmp ugt i32 %143, %145
  %spec.select550 = select i1 %cmp127, i1 true, i1 %tobool
  br label %land.end131

land.end131:                                      ; preds = %land.rhs124, %if.end120.land.end131_crit_edge
  %146 = phi i1 [ false, %if.end120.land.end131_crit_edge ], [ %spec.select550, %land.rhs124 ]
  %or549 = or i1 %108, %146
  call fastcc void @wb_position_ratio(ptr noundef %mdtc_stor.)
  %147 = ptrtoint ptr %pos_ratio to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %pos_ratio, align 4
  %149 = ptrtoint ptr %pos_ratio136 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %pos_ratio136, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %148, i32 %150)
  %cmp137 = icmp ult i32 %148, %150
  %spec.select551 = select i1 %cmp137, ptr %mdtc_stor., ptr %gdtc_stor
  br i1 %or549, label %land.end131.land.lhs.true144_crit_edge, label %land.end131.do.end_crit_edge

land.end131.do.end_crit_edge:                     ; preds = %land.end131
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.end131.land.lhs.true144_crit_edge:           ; preds = %land.end131
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true144

if.end141:                                        ; preds = %land.end
  br i1 %spec.select, label %if.end141.land.lhs.true144_crit_edge, label %if.end141.do.end_crit_edge

if.end141.do.end_crit_edge:                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end141.land.lhs.true144_crit_edge:             ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true144

land.lhs.true144:                                 ; preds = %if.end141.land.lhs.true144_crit_edge, %land.end131.land.lhs.true144_crit_edge
  %sdtc.0827 = phi ptr [ %spec.select551, %land.end131.land.lhs.true144_crit_edge ], [ %gdtc_stor, %if.end141.land.lhs.true144_crit_edge ]
  %151 = ptrtoint ptr %dirty_exceeded145 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %dirty_exceeded145, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool146.not = icmp eq i32 %152, 0
  br i1 %tobool146.not, label %if.then147, label %land.lhs.true144.do.end_crit_edge

land.lhs.true144.do.end_crit_edge:                ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then147:                                       ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #10
  %153 = ptrtoint ptr %dirty_exceeded145 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 1, ptr %dirty_exceeded145, align 8
  br label %do.end

do.end:                                           ; preds = %if.then147, %land.lhs.true144.do.end_crit_edge, %if.end141.do.end_crit_edge, %land.end131.do.end_crit_edge, %land.end.thread.do.end_crit_edge
  %sdtc.0826 = phi ptr [ %spec.select551, %land.end131.do.end_crit_edge ], [ %gdtc_stor, %if.end141.do.end_crit_edge ], [ %sdtc.0827, %land.lhs.true144.do.end_crit_edge ], [ %sdtc.0827, %if.then147 ], [ %gdtc_stor, %land.end.thread.do.end_crit_edge ]
  %dirty_exceeded.2.in823 = phi i1 [ false, %land.end131.do.end_crit_edge ], [ false, %if.end141.do.end_crit_edge ], [ true, %land.lhs.true144.do.end_crit_edge ], [ true, %if.then147 ], [ false, %land.end.thread.do.end_crit_edge ]
  %154 = ptrtoint ptr %bw_time_stamp to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load volatile i32, ptr %bw_time_stamp, align 4
  %add151 = add i32 %155, 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %156 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add151, %156
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp152 = icmp slt i32 %sub, 0
  br i1 %cmp152, label %if.then154, label %do.end.do.end158_crit_edge

do.end.do.end158_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end158

if.then154:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @__wb_update_bandwidth(ptr noundef nonnull %gdtc_stor, ptr noundef %mdtc_stor., i1 noundef zeroext true)
  br label %do.end158

do.end158:                                        ; preds = %if.then154, %do.end.do.end158_crit_edge
  %157 = ptrtoint ptr %dirty_ratelimit160 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load volatile i32, ptr %dirty_ratelimit160, align 8
  %conv161 = zext i32 %158 to i64
  %pos_ratio162 = getelementptr inbounds %struct.dirty_throttle_control, ptr %sdtc.0826, i32 0, i32 11
  %159 = ptrtoint ptr %pos_ratio162 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %pos_ratio162, align 4
  %conv163 = zext i32 %160 to i64
  %mul = mul nuw i64 %conv163, %conv161
  %shr = lshr i64 %mul, 10
  %conv164 = trunc i64 %shr to i32
  %wb_dirty165 = getelementptr inbounds %struct.dirty_throttle_control, ptr %sdtc.0826, i32 0, i32 8
  %161 = ptrtoint ptr %wb_dirty165 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %wb_dirty165, align 4
  %163 = ptrtoint ptr %avg_write_bandwidth.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load volatile i32, ptr %avg_write_bandwidth.i, align 4
  %div6.i = lshr i32 %164, 4
  %add.i739 = add nuw nsw i32 %div6.i, 1
  %div1.i740 = udiv i32 %162, %add.i739
  %inc.i = add i32 %div1.i740, 1
  %165 = call i32 @llvm.umin.i32(i32 %inc.i, i32 20) #8
  %166 = ptrtoint ptr %avg_write_bandwidth.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load volatile i32, ptr %avg_write_bandwidth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %tobool.not.i.i.i742 = icmp eq i32 %167, 0
  %168 = call i32 @llvm.ctlz.i32(i32 %167, i1 true) #8, !range !184
  %sub.i.op.i.i743 = xor i32 %168, 31
  %sub.i.i744 = select i1 %tobool.not.i.i.i742, i32 -1, i32 %sub.i.op.i.i743
  %169 = ptrtoint ptr %dirty_ratelimit160 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load volatile i32, ptr %dirty_ratelimit160, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool.not.i.i61.i = icmp eq i32 %170, 0
  %171 = call i32 @llvm.ctlz.i32(i32 %170, i1 true) #8, !range !184
  %sub.i.op.i62.i = xor i32 %171, 31
  %sub.i63.i = select i1 %tobool.not.i.i61.i, i32 -1, i32 %sub.i.op.i62.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i744, i32 %sub.i63.i)
  %cmp.i745 = icmp sgt i32 %sub.i.i744, %sub.i63.i
  %sub.i746 = sub nsw i32 %sub.i.i744, %sub.i63.i
  %mul.i747 = mul nsw i32 %sub.i746, 1000
  %div.i = sdiv i32 %mul.i747, 1024
  %add.i748 = add nsw i32 %div.i, 1
  %t.0.i = select i1 %cmp.i745, i32 %add.i748, i32 1
  %div7.i833834835 = lshr i32 %165, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %t.0.i, i32 %div7.i833834835)
  %cmp10.not.i = icmp sgt i32 %t.0.i, %div7.i833834835
  %add8.i = add nuw nsw i32 %div7.i833834835, 1
  %cond.i = select i1 %cmp10.not.i, i32 %add8.i, i32 %t.0.i
  %mul11.i = mul i32 %cond.i, %158
  %div1258.i = lshr i32 %mul11.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %mul11.i)
  %cmp13.i = icmp ult i32 %mul11.i, 4096
  br i1 %cmp13.i, label %if.then14.i, label %do.end158.wb_min_pause.exit_crit_edge

do.end158.wb_min_pause.exit_crit_edge:            ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #10
  br label %wb_min_pause.exit

if.then14.i:                                      ; preds = %do.end158
  %mul15.i = mul i32 %165, %158
  %div1660.i = lshr i32 %mul15.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4223, i32 %mul15.i)
  %cmp17.i = icmp ugt i32 %mul15.i, 4223
  br i1 %cmp17.i, label %if.then18.i, label %if.then14.i.wb_min_pause.exit_crit_edge

if.then14.i.wb_min_pause.exit_crit_edge:          ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wb_min_pause.exit

if.then18.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  %div19.i = udiv i32 3200, %158
  br label %wb_min_pause.exit

wb_min_pause.exit:                                ; preds = %if.then18.i, %if.then14.i.wb_min_pause.exit_crit_edge, %do.end158.wb_min_pause.exit_crit_edge
  %t.1.i = phi i32 [ %div19.i, %if.then18.i ], [ %165, %if.then14.i.wb_min_pause.exit_crit_edge ], [ %cond.i, %do.end158.wb_min_pause.exit_crit_edge ]
  %pages.0.i = phi i32 [ 32, %if.then18.i ], [ %div1660.i, %if.then14.i.wb_min_pause.exit_crit_edge ], [ %div1258.i, %do.end158.wb_min_pause.exit_crit_edge ]
  %mul22.i = mul nuw i32 %pages.0.i, 100
  %add23.i = add i32 %conv164, 1
  %div24.i = udiv i32 %mul22.i, %add23.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div24.i, i32 %165)
  %cmp25.i = icmp sgt i32 %div24.i, %165
  %mul27.i = mul i32 %165, %conv164
  %div2859.i = lshr i32 %mul27.i, 7
  %pages.1.i = select i1 %cmp25.i, i32 %div2859.i, i32 %pages.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv164)
  %cmp168 = icmp eq i32 %conv164, 0
  br i1 %cmp168, label %wb_min_pause.exit.pause258_crit_edge, label %if.end177, !prof !182

wb_min_pause.exit.pause258_crit_edge:             ; preds = %wb_min_pause.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %pause258

if.end177:                                        ; preds = %wb_min_pause.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %pages.1.i)
  %cmp30.i = icmp ugt i32 %pages.1.i, 31
  %t.2.i = select i1 %cmp25.i, i32 %165, i32 %t.1.i
  %div32.i = sdiv i32 %t.2.i, 2
  %add33.i = add nsw i32 %div32.i, 1
  %cond36.i = select i1 %cmp30.i, i32 %add33.i, i32 %t.2.i
  %div = udiv i32 %mul178, %conv164
  %172 = call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i749 = and i32 %172, -16384
  %173 = inttoptr i32 %and.i749 to ptr
  %task180 = getelementptr inbounds %struct.thread_info, ptr %173, i32 0, i32 2
  %174 = ptrtoint ptr %task180 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %task180, align 8
  %dirty_paused_when181 = getelementptr inbounds %struct.task_struct, ptr %175, i32 0, i32 186
  %176 = ptrtoint ptr %dirty_paused_when181 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %dirty_paused_when181, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %tobool182.not = icmp eq i32 %177, 0
  %sub187.neg = sub i32 %177, %15
  %sub188 = select i1 %tobool182.not, i32 0, i32 %sub187.neg
  %pause.0 = add i32 %sub188, %div
  call void @__sanitizer_cov_trace_cmp4(i32 %pause.0, i32 %cond36.i)
  %cmp190 = icmp slt i32 %pause.0, %cond36.i
  br i1 %cmp190, label %if.then192, label %if.end238

if.then192:                                       ; preds = %if.end177
  %conv164.le = trunc i64 %shr to i32
  %178 = inttoptr i32 %and.i749 to ptr
  %task180.le = getelementptr inbounds %struct.thread_info, ptr %178, i32 0, i32 2
  %thresh193 = getelementptr inbounds %struct.dirty_throttle_control, ptr %sdtc.0826, i32 0, i32 6
  %179 = ptrtoint ptr %thresh193 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %thresh193, align 4
  %bg_thresh194 = getelementptr inbounds %struct.dirty_throttle_control, ptr %sdtc.0826, i32 0, i32 7
  %181 = ptrtoint ptr %bg_thresh194 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %bg_thresh194, align 4
  %dirty195 = getelementptr inbounds %struct.dirty_throttle_control, ptr %sdtc.0826, i32 0, i32 5
  %183 = ptrtoint ptr %dirty195 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %dirty195, align 4
  %wb_thresh196 = getelementptr inbounds %struct.dirty_throttle_control, ptr %sdtc.0826, i32 0, i32 9
  %185 = ptrtoint ptr %wb_thresh196 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %wb_thresh196, align 4
  %187 = call i32 @llvm.smin.i32(i32 %pause.0, i32 0)
  call fastcc void @trace_balance_dirty_pages(ptr noundef %wb, i32 noundef %180, i32 noundef %182, i32 noundef %184, i32 noundef %186, i32 noundef %162, i32 noundef %158, i32 noundef %conv164.le, i32 noundef %pages_dirtied, i32 noundef %div, i32 noundef %187, i32 noundef %14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -100, i32 %pause.0)
  %cmp205 = icmp slt i32 %pause.0, -100
  br i1 %cmp205, label %if.then207, label %if.else214

if.then207:                                       ; preds = %if.then192
  %188 = ptrtoint ptr %task180.le to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %task180.le, align 8
  %dirty_paused_when210 = getelementptr inbounds %struct.task_struct, ptr %189, i32 0, i32 186
  %190 = ptrtoint ptr %dirty_paused_when210 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %15, ptr %dirty_paused_when210, align 4
  %191 = load ptr, ptr %task180.le, align 8
  %nr_dirtied213 = getelementptr inbounds %struct.task_struct, ptr %191, i32 0, i32 184
  %192 = ptrtoint ptr %nr_dirtied213 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 0, ptr %nr_dirtied213, align 4
  br i1 %dirty_exceeded.2.in823, label %if.then207.if.end370_crit_edge, label %if.then207.land.lhs.true365_crit_edge

if.then207.land.lhs.true365_crit_edge:            ; preds = %if.then207
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true365

if.then207.if.end370_crit_edge:                   ; preds = %if.then207
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end370

if.else214:                                       ; preds = %if.then192
  call void @__sanitizer_cov_trace_cmp4(i32 %mul178, i32 %conv164.le)
  %tobool215.not = icmp ult i32 %mul178, %conv164.le
  %193 = ptrtoint ptr %task180.le to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %task180.le, align 8
  br i1 %tobool215.not, label %if.else224, label %if.then216

if.then216:                                       ; preds = %if.else214
  %dirty_paused_when219 = getelementptr inbounds %struct.task_struct, ptr %194, i32 0, i32 186
  %195 = ptrtoint ptr %dirty_paused_when219 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %dirty_paused_when219, align 4
  %add220 = add i32 %196, %div
  store i32 %add220, ptr %dirty_paused_when219, align 4
  %197 = ptrtoint ptr %task180.le to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %task180.le, align 8
  %nr_dirtied223 = getelementptr inbounds %struct.task_struct, ptr %198, i32 0, i32 184
  %199 = ptrtoint ptr %nr_dirtied223 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 0, ptr %nr_dirtied223, align 4
  br i1 %dirty_exceeded.2.in823, label %if.then216.if.end370_crit_edge, label %if.then216.land.lhs.true365_crit_edge

if.then216.land.lhs.true365_crit_edge:            ; preds = %if.then216
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true365

if.then216.if.end370_crit_edge:                   ; preds = %if.then216
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end370

if.else224:                                       ; preds = %if.else214
  %nr_dirtied_pause227 = getelementptr inbounds %struct.task_struct, ptr %194, i32 0, i32 185
  %200 = ptrtoint ptr %nr_dirtied_pause227 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %nr_dirtied_pause227, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %201, i32 %pages_dirtied)
  %cmp228.not = icmp ugt i32 %201, %pages_dirtied
  br i1 %cmp228.not, label %if.else224.for.end_crit_edge, label %if.then230

if.else224.for.end_crit_edge:                     ; preds = %if.else224
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then230:                                       ; preds = %if.else224
  %add234 = add i32 %201, %pages_dirtied
  %202 = ptrtoint ptr %nr_dirtied_pause227 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %add234, ptr %nr_dirtied_pause227, align 8
  br i1 %dirty_exceeded.2.in823, label %if.then230.if.end370_crit_edge, label %if.then230.land.lhs.true365_crit_edge

if.then230.land.lhs.true365_crit_edge:            ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true365

if.then230.if.end370_crit_edge:                   ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end370

if.end238:                                        ; preds = %if.end177
  call void @__sanitizer_cov_trace_cmp4(i32 %pause.0, i32 %165)
  %cmp239 = icmp sgt i32 %pause.0, %165
  br i1 %cmp239, label %if.then247, label %if.end238.pause258_crit_edge, !prof !182

if.end238.pause258_crit_edge:                     ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #10
  br label %pause258

if.then247:                                       ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #10
  %sub248 = sub i32 %pause.0, %165
  %203 = call i32 @llvm.smin.i32(i32 %sub248, i32 %165)
  %add256 = add i32 %203, %15
  br label %pause258

pause258:                                         ; preds = %if.then247, %if.end238.pause258_crit_edge, %wb_min_pause.exit.pause258_crit_edge
  %now.0 = phi i32 [ %add256, %if.then247 ], [ %15, %if.end238.pause258_crit_edge ], [ %15, %wb_min_pause.exit.pause258_crit_edge ]
  %pause.1 = phi i32 [ %165, %if.then247 ], [ %pause.0, %if.end238.pause258_crit_edge ], [ %165, %wb_min_pause.exit.pause258_crit_edge ]
  %period.0 = phi i32 [ %div, %if.then247 ], [ %div, %if.end238.pause258_crit_edge ], [ %165, %wb_min_pause.exit.pause258_crit_edge ]
  %thresh259 = getelementptr inbounds %struct.dirty_throttle_control, ptr %sdtc.0826, i32 0, i32 6
  %204 = ptrtoint ptr %thresh259 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %thresh259, align 4
  %bg_thresh260 = getelementptr inbounds %struct.dirty_throttle_control, ptr %sdtc.0826, i32 0, i32 7
  %206 = ptrtoint ptr %bg_thresh260 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %bg_thresh260, align 4
  %dirty261 = getelementptr inbounds %struct.dirty_throttle_control, ptr %sdtc.0826, i32 0, i32 5
  %208 = ptrtoint ptr %dirty261 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %dirty261, align 4
  %wb_thresh262 = getelementptr inbounds %struct.dirty_throttle_control, ptr %sdtc.0826, i32 0, i32 9
  %210 = ptrtoint ptr %wb_thresh262 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %wb_thresh262, align 4
  call fastcc void @trace_balance_dirty_pages(ptr noundef %wb, i32 noundef %205, i32 noundef %207, i32 noundef %209, i32 noundef %211, i32 noundef %162, i32 noundef %158, i32 noundef %conv164, i32 noundef %pages_dirtied, i32 noundef %period.0, i32 noundef %pause.1, i32 noundef %14)
  br label %__here

__here:                                           ; preds = %pause258
  %212 = call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i750 = and i32 %212, -16384
  %213 = inttoptr i32 %and.i750 to ptr
  %task316 = getelementptr inbounds %struct.thread_info, ptr %213, i32 0, i32 2
  %214 = ptrtoint ptr %task316 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %task316, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %215, i32 0, i32 212
  %216 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 ptrtoint (ptr blockaddress(@balance_dirty_pages, %__here) to i32), ptr %task_state_change, align 4
  %217 = load ptr, ptr %task316, align 8
  %218 = ptrtoint ptr %217 to i32
  call void @__asan_store4_noabort(i32 %218)
  store volatile i32 258, ptr %217, align 128
  %219 = ptrtoint ptr %dirty_sleep to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %now.0, ptr %dirty_sleep, align 4
  %call332 = call i32 @io_schedule_timeout(i32 noundef %pause.1) #8
  %add333 = add i32 %pause.1, %now.0
  %220 = ptrtoint ptr %task316 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %task316, align 8
  %dirty_paused_when336 = getelementptr inbounds %struct.task_struct, ptr %221, i32 0, i32 186
  %222 = ptrtoint ptr %dirty_paused_when336 to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %add333, ptr %dirty_paused_when336, align 4
  %223 = load ptr, ptr %task316, align 8
  %nr_dirtied339 = getelementptr inbounds %struct.task_struct, ptr %223, i32 0, i32 184
  %224 = ptrtoint ptr %nr_dirtied339 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 0, ptr %nr_dirtied339, align 4
  %225 = load ptr, ptr %task316, align 8
  %nr_dirtied_pause342 = getelementptr inbounds %struct.task_struct, ptr %225, i32 0, i32 185
  %226 = ptrtoint ptr %nr_dirtied_pause342 to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %pages.1.i, ptr %nr_dirtied_pause342, align 8
  br i1 %cmp168, label %if.end345, label %__here.for.end_crit_edge

__here.for.end_crit_edge:                         ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end345:                                        ; preds = %__here
  %227 = ptrtoint ptr %wb_dirty165 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %wb_dirty165, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %229 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %229)
  %tobool.not.i.i.i755 = icmp eq i32 %229, 0
  %230 = call i32 @llvm.ctlz.i32(i32 %229, i1 true) #8, !range !184
  %sub.i.op.i.i756 = shl nuw nsw i32 %230, 3
  %sub.i.op.i.i756.op = xor i32 %sub.i.op.i.i756, 248
  %sub.i.op.i.i756.op.op = add nuw nsw i32 %sub.i.op.i.i756.op, 8
  %mul.i759 = select i1 %tobool.not.i.i.i755, i32 0, i32 %sub.i.op.i.i756.op.op
  %mul5.i = mul i32 %mul.i759, %229
  call void @__sanitizer_cov_trace_cmp4(i32 %228, i32 %mul5.i)
  %cmp348.not = icmp ugt i32 %228, %mul5.i
  br i1 %cmp348.not, label %if.end351, label %if.end345.for.end_crit_edge

if.end345.for.end_crit_edge:                      ; preds = %if.end345
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end351:                                        ; preds = %if.end345
  %231 = ptrtoint ptr %task316 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %task316, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %232, i32 0, i32 1
  %233 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %stack.i.i.i, align 4
  %235 = ptrtoint ptr %234 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load volatile i32, ptr %234, align 4
  %and1.i.i.i.i.i = and i32 %236, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not.i760 = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not.i760, label %if.end351.for.cond.backedge_crit_edge, label %fatal_signal_pending.exit

if.end351.for.cond.backedge_crit_edge:            ; preds = %if.end351
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %fatal_signal_pending.exit.for.cond.backedge_crit_edge, %if.end351.for.cond.backedge_crit_edge
  br label %for.cond

fatal_signal_pending.exit:                        ; preds = %if.end351
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %232, i32 0, i32 116, i32 1
  %237 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %signal.i.i, align 4
  %239 = and i32 %238, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %tobool355.not = icmp eq i32 %239, 0
  br i1 %tobool355.not, label %fatal_signal_pending.exit.for.cond.backedge_crit_edge, label %fatal_signal_pending.exit.for.end_crit_edge

fatal_signal_pending.exit.for.end_crit_edge:      ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

fatal_signal_pending.exit.for.cond.backedge_crit_edge: ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

for.end:                                          ; preds = %fatal_signal_pending.exit.for.end_crit_edge, %if.end345.for.end_crit_edge, %__here.for.end_crit_edge, %if.else224.for.end_crit_edge
  br i1 %dirty_exceeded.2.in823, label %for.end.if.end370_crit_edge, label %for.end.land.lhs.true365_crit_edge

for.end.land.lhs.true365_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true365

for.end.if.end370_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end370

land.lhs.true365:                                 ; preds = %for.end.land.lhs.true365_crit_edge, %if.then230.land.lhs.true365_crit_edge, %if.then216.land.lhs.true365_crit_edge, %if.then207.land.lhs.true365_crit_edge, %if.end59.land.lhs.true365_crit_edge
  %240 = ptrtoint ptr %dirty_exceeded145 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %dirty_exceeded145, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %241)
  %tobool367.not = icmp eq i32 %241, 0
  br i1 %tobool367.not, label %land.lhs.true365.if.end370_crit_edge, label %if.then368

land.lhs.true365.if.end370_crit_edge:             ; preds = %land.lhs.true365
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end370

if.then368:                                       ; preds = %land.lhs.true365
  call void @__sanitizer_cov_trace_pc() #10
  %242 = ptrtoint ptr %dirty_exceeded145 to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 0, ptr %dirty_exceeded145, align 8
  br label %if.end370

if.end370:                                        ; preds = %if.then368, %land.lhs.true365.if.end370_crit_edge, %for.end.if.end370_crit_edge, %if.then230.if.end370_crit_edge, %if.then216.if.end370_crit_edge, %if.then207.if.end370_crit_edge, %if.end59.if.end370_crit_edge
  %243 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load volatile i32, ptr %state.i, align 4
  %245 = and i32 %244, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %245)
  %tobool.i762.not = icmp eq i32 %245, 0
  br i1 %tobool.i762.not, label %if.end373, label %if.end370.cleanup382_crit_edge

if.end370.cleanup382_crit_edge:                   ; preds = %if.end370
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup382

if.end373:                                        ; preds = %if.end370
  %246 = load i32, ptr @laptop_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %246)
  %tobool374.not = icmp eq i32 %246, 0
  br i1 %tobool374.not, label %if.end376, label %if.end373.cleanup382_crit_edge

if.end373.cleanup382_crit_edge:                   ; preds = %if.end373
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup382

if.end376:                                        ; preds = %if.end373
  %247 = ptrtoint ptr %bg_thresh24 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %bg_thresh24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %248)
  %cmp378 = icmp ugt i32 %17, %248
  br i1 %cmp378, label %if.then380, label %if.end376.cleanup382_crit_edge

if.end376.cleanup382_crit_edge:                   ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup382

if.then380:                                       ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #10
  call void @wb_start_background_writeback(ptr noundef %wb) #8
  br label %cleanup382

cleanup382:                                       ; preds = %if.then380, %if.end376.cleanup382_crit_edge, %if.end373.cleanup382_crit_edge, %if.end370.cleanup382_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %mdtc_stor) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %gdtc_stor) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @wb_over_bg_thresh(ptr noundef %wb) local_unnamed_addr #0 align 64 {
entry:
  %gdtc.i94 = alloca %struct.dirty_throttle_control, align 4
  %gdtc.i = alloca %struct.dirty_throttle_control, align 4
  %gdtc_stor = alloca %struct.dirty_throttle_control, align 4
  %mdtc_stor = alloca %struct.dirty_throttle_control, align 4
  %filepages = alloca i32, align 4
  %headroom = alloca i32, align 4
  %writeback = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %gdtc_stor) #8
  %0 = getelementptr inbounds i8, ptr %gdtc_stor, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 44)
  %2 = ptrtoint ptr %gdtc_stor to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @global_wb_domain, ptr %gdtc_stor, align 4
  %wb1 = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc_stor, i32 0, i32 2
  %3 = ptrtoint ptr %wb1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %wb, ptr %wb1, align 4
  %wb_completions = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc_stor, i32 0, i32 3
  %completions = getelementptr inbounds %struct.bdi_writeback, ptr %wb, i32 0, i32 18
  %4 = ptrtoint ptr %wb_completions to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %completions, ptr %wb_completions, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %mdtc_stor) #8
  %call = tail call ptr @mem_cgroup_wb_domain(ptr noundef %wb) #8
  %5 = ptrtoint ptr %mdtc_stor to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %mdtc_stor, align 4
  %gdtc = getelementptr inbounds %struct.dirty_throttle_control, ptr %mdtc_stor, i32 0, i32 1
  %6 = ptrtoint ptr %gdtc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %gdtc_stor, ptr %gdtc, align 4
  %wb3 = getelementptr inbounds %struct.dirty_throttle_control, ptr %mdtc_stor, i32 0, i32 2
  %7 = ptrtoint ptr %wb3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %wb, ptr %wb3, align 4
  %wb_completions4 = getelementptr inbounds %struct.dirty_throttle_control, ptr %mdtc_stor, i32 0, i32 3
  %memcg_completions = getelementptr inbounds %struct.bdi_writeback, ptr %wb, i32 0, i32 28
  %8 = ptrtoint ptr %wb_completions4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %memcg_completions, ptr %wb_completions4, align 4
  %avail = getelementptr inbounds %struct.dirty_throttle_control, ptr %mdtc_stor, i32 0, i32 4
  %dirty = getelementptr inbounds %struct.dirty_throttle_control, ptr %mdtc_stor, i32 0, i32 5
  %bg_thresh = getelementptr inbounds %struct.dirty_throttle_control, ptr %mdtc_stor, i32 0, i32 7
  %tobool.i.not = icmp eq ptr %call, null
  %mdtc_stor. = select i1 %tobool.i.not, ptr null, ptr %mdtc_stor
  %9 = call ptr @memset(ptr %avail, i32 0, i32 32)
  %call8 = call fastcc i32 @global_dirtyable_memory()
  %avail9 = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc_stor, i32 0, i32 4
  %10 = ptrtoint ptr %avail9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call8, ptr %avail9, align 4
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 20), i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 20) to i32))
  %11 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 20), align 4
  %12 = call i32 @llvm.smax.i32(i32 %11, i32 0) #8
  %dirty11 = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc_stor, i32 0, i32 5
  %13 = ptrtoint ptr %dirty11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %dirty11, align 4
  call fastcc void @domain_dirty_limits(ptr noundef nonnull %gdtc_stor)
  %14 = ptrtoint ptr %dirty11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dirty11, align 4
  %bg_thresh13 = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc_stor, i32 0, i32 7
  %16 = ptrtoint ptr %bg_thresh13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bg_thresh13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp = icmp ugt i32 %15, %17
  br i1 %cmp, label %entry.cleanup57_crit_edge, label %if.end

entry.cleanup57_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup57

if.end:                                           ; preds = %entry
  %18 = ptrtoint ptr %wb1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wb1, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %gdtc.i) #8
  %20 = ptrtoint ptr %gdtc.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @global_wb_domain, ptr %gdtc.i, align 4
  %gdtc1.i = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc.i, i32 0, i32 1
  %21 = ptrtoint ptr %gdtc1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %gdtc1.i, align 4
  %wb2.i = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc.i, i32 0, i32 2
  %22 = ptrtoint ptr %wb2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %wb2.i, align 4
  %wb_completions.i = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc.i, i32 0, i32 3
  %completions.i = getelementptr inbounds %struct.bdi_writeback, ptr %19, i32 0, i32 18
  %23 = ptrtoint ptr %wb_completions.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %completions.i, ptr %wb_completions.i, align 4
  %avail.i = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc.i, i32 0, i32 4
  %24 = ptrtoint ptr %avail.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %avail.i, align 4
  %dirty.i = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc.i, i32 0, i32 5
  %25 = ptrtoint ptr %dirty.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %dirty.i, align 4
  %thresh3.i = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc.i, i32 0, i32 6
  %26 = ptrtoint ptr %thresh3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %17, ptr %thresh3.i, align 4
  %bg_thresh.i = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc.i, i32 0, i32 7
  %27 = call ptr @memset(ptr %bg_thresh.i, i32 0, i32 20)
  %call.i = call fastcc i32 @__wb_calc_thresh(ptr noundef nonnull %gdtc.i) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %gdtc.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i.i = icmp eq i32 %28, 0
  %29 = call i32 @llvm.ctlz.i32(i32 %28, i1 true) #8, !range !184
  %sub.i.op.i.i = shl nuw nsw i32 %29, 3
  %sub.i.op.i.i.op = xor i32 %sub.i.op.i.i, 248
  %sub.i.op.i.i.op.op = add nuw nsw i32 %sub.i.op.i.i.op, 8
  %mul.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.op.i.i.op.op
  %mul5.i = shl i32 %28, 1
  %mul = mul i32 %mul5.i, %mul.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %mul)
  %cmp18 = icmp ult i32 %call.i, %mul
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.bdi_writeback, ptr %wb, i32 0, i32 9, i32 0
  %call.i.i = call i64 @__percpu_counter_sum(ptr noundef %arrayidx.i) #8
  br label %if.end23

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %count.i.i = getelementptr %struct.bdi_writeback, ptr %wb, i32 0, i32 9, i32 0, i32 1
  %30 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load volatile i64, ptr %count.i.i, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then19
  %.sink130 = phi i64 [ %31, %if.else ], [ %call.i.i, %if.then19 ]
  %32 = call i64 @llvm.smax.i64(i64 %.sink130, i64 0) #8
  %conv22 = trunc i64 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %conv22)
  %cmp24 = icmp ult i32 %call.i, %conv22
  br i1 %cmp24, label %if.end23.cleanup57_crit_edge, label %if.end27

if.end23.cleanup57_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup57

if.end27:                                         ; preds = %if.end23
  br i1 %tobool.i.not, label %if.end27.if.end56_crit_edge, label %if.then28

if.end27.if.end56_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then28:                                        ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %filepages) #8
  %33 = ptrtoint ptr %filepages to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %filepages, align 4, !annotation !185
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %headroom) #8
  %34 = ptrtoint ptr %headroom to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %headroom, align 4, !annotation !185
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %writeback) #8
  %35 = ptrtoint ptr %writeback to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %writeback, align 4, !annotation !185
  call void @mem_cgroup_wb_stats(ptr noundef %wb, ptr noundef nonnull %filepages, ptr noundef nonnull %headroom, ptr noundef %dirty, ptr noundef nonnull %writeback) #8
  %36 = ptrtoint ptr %filepages to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %filepages, align 4
  %38 = ptrtoint ptr %headroom to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %headroom, align 4
  %40 = ptrtoint ptr %gdtc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %gdtc, align 4
  %42 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dirty, align 4
  %44 = call i32 @llvm.usub.sat.i32(i32 %37, i32 %43) #8
  %avail.i92 = getelementptr inbounds %struct.dirty_throttle_control, ptr %41, i32 0, i32 4
  %45 = ptrtoint ptr %avail.i92 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %avail.i92, align 4
  %dirty2.i = getelementptr inbounds %struct.dirty_throttle_control, ptr %41, i32 0, i32 5
  %47 = ptrtoint ptr %dirty2.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dirty2.i, align 4
  %49 = call i32 @llvm.usub.sat.i32(i32 %46, i32 %48) #8
  %50 = call i32 @llvm.usub.sat.i32(i32 %49, i32 %44) #8
  %51 = call i32 @llvm.umin.i32(i32 %50, i32 %39) #8
  %add.i93 = add i32 %51, %37
  %52 = ptrtoint ptr %avail to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add.i93, ptr %avail, align 4
  call fastcc void @domain_dirty_limits(ptr noundef %mdtc_stor.)
  %53 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dirty, align 4
  %55 = ptrtoint ptr %bg_thresh to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bg_thresh, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %cmp32 = icmp ugt i32 %54, %56
  br i1 %cmp32, label %cleanup57.critedge, label %if.end35

if.end35:                                         ; preds = %if.then28
  %57 = ptrtoint ptr %wb3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %wb3, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %gdtc.i94) #8
  %59 = ptrtoint ptr %gdtc.i94 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @global_wb_domain, ptr %gdtc.i94, align 4
  %gdtc1.i95 = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc.i94, i32 0, i32 1
  %60 = ptrtoint ptr %gdtc1.i95 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %gdtc1.i95, align 4
  %wb2.i96 = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc.i94, i32 0, i32 2
  %61 = ptrtoint ptr %wb2.i96 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %wb2.i96, align 4
  %wb_completions.i97 = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc.i94, i32 0, i32 3
  %completions.i98 = getelementptr inbounds %struct.bdi_writeback, ptr %58, i32 0, i32 18
  %62 = ptrtoint ptr %wb_completions.i97 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %completions.i98, ptr %wb_completions.i97, align 4
  %avail.i99 = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc.i94, i32 0, i32 4
  %63 = ptrtoint ptr %avail.i99 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %avail.i99, align 4
  %dirty.i100 = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc.i94, i32 0, i32 5
  %64 = ptrtoint ptr %dirty.i100 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %dirty.i100, align 4
  %thresh3.i101 = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc.i94, i32 0, i32 6
  %65 = ptrtoint ptr %thresh3.i101 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %56, ptr %thresh3.i101, align 4
  %bg_thresh.i102 = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc.i94, i32 0, i32 7
  %66 = call ptr @memset(ptr %bg_thresh.i102, i32 0, i32 20)
  %call.i103 = call fastcc i32 @__wb_calc_thresh(ptr noundef nonnull %gdtc.i94) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %gdtc.i94) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %67 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i.i.i108 = icmp eq i32 %67, 0
  %68 = call i32 @llvm.ctlz.i32(i32 %67, i1 true) #8, !range !184
  %sub.i.op.i.i109 = shl nuw nsw i32 %68, 3
  %sub.i.op.i.i109.op = xor i32 %sub.i.op.i.i109, 248
  %sub.i.op.i.i109.op.op = add nuw nsw i32 %sub.i.op.i.i109.op, 8
  %mul.i114 = select i1 %tobool.not.i.i.i108, i32 0, i32 %sub.i.op.i.i109.op.op
  %mul5.i115 = shl i32 %67, 1
  %mul40 = mul i32 %mul5.i115, %mul.i114
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i103, i32 %mul40)
  %cmp41 = icmp ult i32 %call.i103, %mul40
  br i1 %cmp41, label %if.then43, label %if.else46

if.then43:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i117 = getelementptr %struct.bdi_writeback, ptr %wb, i32 0, i32 9, i32 0
  %call.i.i118 = call i64 @__percpu_counter_sum(ptr noundef %arrayidx.i117) #8
  br label %if.end49

if.else46:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %count.i.i119 = getelementptr %struct.bdi_writeback, ptr %wb, i32 0, i32 9, i32 0, i32 1
  %69 = ptrtoint ptr %count.i.i119 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load volatile i64, ptr %count.i.i119, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.else46, %if.then43
  %.sink131 = phi i64 [ %70, %if.else46 ], [ %call.i.i118, %if.then43 ]
  %71 = call i64 @llvm.smax.i64(i64 %.sink131, i64 0) #8
  %conv48 = trunc i64 %71 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i103, i32 %conv48)
  %cmp50.not = icmp ult i32 %call.i103, %conv48
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %writeback) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %headroom) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %filepages) #8
  br i1 %cmp50.not, label %if.end49.cleanup57_crit_edge, label %if.end49.if.end56_crit_edge

if.end49.if.end56_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.end49.cleanup57_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup57

if.end56:                                         ; preds = %if.end49.if.end56_crit_edge, %if.end27.if.end56_crit_edge
  br label %cleanup57

cleanup57.critedge:                               ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %writeback) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %headroom) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %filepages) #8
  br label %cleanup57

cleanup57:                                        ; preds = %cleanup57.critedge, %if.end56, %if.end49.cleanup57_crit_edge, %if.end23.cleanup57_crit_edge, %entry.cleanup57_crit_edge
  %retval.1 = phi i1 [ false, %if.end56 ], [ true, %if.end49.cleanup57_crit_edge ], [ true, %entry.cleanup57_crit_edge ], [ true, %if.end23.cleanup57_crit_edge ], [ true, %cleanup57.critedge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %mdtc_stor) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %gdtc_stor) #8
  ret i1 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mem_cgroup_wb_domain(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mem_cgroup_wb_stats(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dirty_writeback_centisecs_handler(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %length, ptr noundef %ppos) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dirty_writeback_interval, align 4
  %call = tail call i32 @proc_dointvec(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %length, ptr noundef %ppos) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool1.not = icmp eq i32 %write, 0
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %land.lhs.true2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true2:                                   ; preds = %entry
  %1 = load i32, ptr @dirty_writeback_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool3.not = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %0)
  %cmp.not = icmp eq i32 %1, %0
  %or.cond7 = select i1 %tobool3.not, i1 true, i1 %cmp.not
  br i1 %or.cond7, label %land.lhs.true2.if.end_crit_edge, label %if.then

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @wakeup_flusher_threads(i32 noundef 3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wakeup_flusher_threads(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @laptop_mode_timer_fn(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1460
  tail call void @wakeup_flusher_threads_bdi(ptr noundef %add.ptr, i32 noundef 4) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wakeup_flusher_threads_bdi(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @laptop_io_completion(ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %laptop_mode_wb_timer = getelementptr inbounds %struct.backing_dev_info, ptr %info, i32 0, i32 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %1 = load i32, ptr @laptop_mode, align 4
  %add = add i32 %1, %0
  %call = tail call i32 @mod_timer(ptr noundef %laptop_mode_wb_timer, i32 noundef %add) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @laptop_sync_completion() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !192
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b20 = load i1, ptr @laptop_sync_completion.__warned, align 1
  br i1 %.b20, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @laptop_sync_completion.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 2050, ptr noundef nonnull @.str.4) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bdi_list to i32))
  %.pn30 = load volatile ptr, ptr @bdi_list, align 4
  %cmp.not31 = icmp eq ptr %.pn30, @bdi_list
  br i1 %cmp.not31, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn32 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn30, %do.end.for.body_crit_edge ]
  %laptop_mode_wb_timer = getelementptr i8, ptr %.pn32, i32 1440
  %call9 = tail call i32 @del_timer(ptr noundef %laptop_mode_wb_timer) #8
  %4 = ptrtoint ptr %.pn32 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load volatile ptr, ptr %.pn32, align 4
  %cmp.not = icmp eq ptr %.pn, @bdi_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i21 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i21, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i24

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i24:                                ; preds = %for.end
  %call1.i22 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22)
  %tobool.not.i23 = icmp eq i32 %call1.i22, 0
  br i1 %tobool.not.i23, label %land.lhs.true.i24.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i26

land.lhs.true.i24.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i24
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i26:                               ; preds = %land.lhs.true.i24
  %.b4.i25 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i25, label %land.lhs.true2.i26.rcu_read_unlock.exit_crit_edge, label %if.then.i27

land.lhs.true2.i26.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i26
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i27:                                      ; preds = %land.lhs.true2.i26
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.17) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i27, %land.lhs.true2.i26.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i24.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !193
  %5 = tail call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i.i.i.i.i28 = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i28 to ptr
  %preempt_count.i.i.i.i29 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i29 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i29, align 4
  %sub.i.i.i = add i32 %8, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i29, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @page_writeback_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @wb_domain_init(ptr noundef nonnull @global_wb_domain, i32 noundef 3264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end6, label %do.body3, !prof !186

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/page-writeback.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2102, 0\0A.popsection", ""() #8, !srcloc !196
  unreachable

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @__cpuhp_setup_state(i32 noundef 194, ptr noundef nonnull @.str.5, i1 noundef zeroext true, ptr noundef nonnull @page_writeback_cpu_online, ptr noundef null, i1 noundef zeroext false) #8
  %call.i9 = tail call i32 @__cpuhp_setup_state(i32 noundef 13, ptr noundef nonnull @.str.6, i1 noundef zeroext true, ptr noundef null, ptr noundef nonnull @page_writeback_cpu_online, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @page_writeback_cpu_online(i32 noundef %cpu) #0 align 64 {
entry:
  %gdtc.i.i = alloca %struct.dirty_throttle_control, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %gdtc.i.i) #8
  %0 = call ptr @memcpy(ptr %gdtc.i.i, ptr @__const.global_dirty_limits.gdtc, i32 48)
  %call.i.i = tail call fastcc i32 @global_dirtyable_memory() #8
  %avail.i.i = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %avail.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call.i.i, ptr %avail.i.i, align 4
  call fastcc void @domain_dirty_limits(ptr noundef nonnull %gdtc.i.i) #8
  %thresh.i.i = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc.i.i, i32 0, i32 6
  %2 = ptrtoint ptr %thresh.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %thresh.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %gdtc.i.i) #8
  store i32 %3, ptr getelementptr inbounds (%struct.wb_domain, ptr @global_wb_domain, i32 0, i32 5), align 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %4 = load volatile i32, ptr @__num_online_cpus, align 4
  %mul.i = shl i32 %4, 5
  %div.i = udiv i32 %3, %mul.i
  %5 = tail call i32 @llvm.smax.i32(i32 %div.i, i32 16) #8
  store i32 %5, ptr @ratelimit_pages, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tag_pages_for_writeback(ptr noundef %mapping, i32 noundef %start, i32 noundef %end) #0 align 64 {
entry:
  %xas = alloca %struct.xa_state, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas) #8
  %0 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 2
  %2 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 4
  %3 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6
  %4 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 7
  %5 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 8
  %i_pages = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 1
  %6 = ptrtoint ptr %xas to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %i_pages, ptr %xas, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %start, ptr %0, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %1, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 3 to ptr), ptr %3, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %4, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %5, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %i_pages) #8
  %call = call ptr @xas_find_marked(ptr noundef nonnull %xas, i32 noundef %end, i32 noundef 0) #8
  %tobool.not12 = icmp eq ptr %call, null
  br i1 %tobool.not12, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %xas_next_marked.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %tagged.013 = phi i32 [ %inc, %xas_next_marked.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  call void @xas_set_mark(ptr noundef nonnull %xas, i32 noundef 2) #8
  %inc = add i32 %tagged.013, 1
  %rem = and i32 %inc, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool2.not = icmp eq i32 %rem, 0
  br i1 %tobool2.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @xas_pause(ptr noundef nonnull %xas) #8
  %12 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xas, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %13) #8
  call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 2139, i32 noundef 0) #8
  %call.i = call i32 @__cond_resched() #8
  %14 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xas, align 4
  call void @_raw_spin_lock_irq(ptr noundef %15) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %18 = ptrtoint ptr %17 to i32
  %and.i.i = and i32 %18, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp ne i32 %and.i.i, 0
  %tobool1.not.i.i = icmp eq ptr %17, null
  %spec.select.i.i = or i1 %tobool1.not.i.i, %tobool.not.i.i
  br i1 %spec.select.i.i, label %for.inc.cleanup.sink.split.i_crit_edge, label %lor.rhs.i, !prof !182

for.inc.cleanup.sink.split.i_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

lor.rhs.i:                                        ; preds = %for.inc
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %if.end.i, label %lor.rhs.i.cleanup.sink.split.i_crit_edge, !prof !186

lor.rhs.i.cleanup.sink.split.i_crit_edge:         ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %lor.rhs.i
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %2, align 2
  %conv.i.i = zext i8 %22 to i32
  %inc.i.i = add nuw nsw i32 %conv.i.i, 1
  %23 = getelementptr inbounds %struct.xa_node, ptr %17, i32 0, i32 8
  %call.i.i = call i32 @_find_next_bit_be(ptr noundef %23, i32 noundef 64, i32 noundef %inc.i.i) #8
  %conv6.i = trunc i32 %call.i.i to i8
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv6.i, ptr %2, align 2
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %0, align 4
  %and.i = and i32 %26, -64
  %add.i = add i32 %and.i, %call.i.i
  store i32 %add.i, ptr %0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %end)
  %cmp.i = icmp ugt i32 %add.i, %end
  br i1 %cmp.i, label %if.end.i.for.end_crit_edge, label %if.end11.i

if.end.i.for.end_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call.i.i)
  %cmp12.i = icmp eq i32 %call.i.i, 64
  br i1 %cmp12.i, label %if.end11.i.cleanup.sink.split.i_crit_edge, label %if.end16.i

if.end11.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end16.i:                                       ; preds = %if.end11.i
  %27 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %xas, align 4
  %arrayidx.i.i = getelementptr %struct.xa_node, ptr %17, i32 0, i32 7, i32 %call.i.i
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %dep_map.i.i = getelementptr inbounds %struct.anon, ptr %28, i32 0, i32 1
  %call.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i1.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i1.i, label %lor.lhs.false.i.i, label %if.end16.i.xa_entry.exit.i_crit_edge

if.end16.i.xa_entry.exit.i_crit_edge:             ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xa_entry.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end16.i
  %call4.i.i = call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.xa_entry.exit.i_crit_edge

lor.lhs.false.i.i.xa_entry.exit.i_crit_edge:      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xa_entry.exit.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call6.i.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %land.lhs.true.i.i.xa_entry.exit.i_crit_edge, label %land.lhs.true8.i.i

land.lhs.true.i.i.xa_entry.exit.i_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xa_entry.exit.i

land.lhs.true8.i.i:                               ; preds = %land.lhs.true.i.i
  %.b13.i.i = load i1, ptr @xa_entry.__warned, align 1
  br i1 %.b13.i.i, label %land.lhs.true8.i.i.xa_entry.exit.i_crit_edge, label %if.then.i.i

land.lhs.true8.i.i.xa_entry.exit.i_crit_edge:     ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xa_entry.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @xa_entry.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 1183, ptr noundef nonnull @.str.10) #8
  br label %xa_entry.exit.i

xa_entry.exit.i:                                  ; preds = %if.then.i.i, %land.lhs.true8.i.i.xa_entry.exit.i_crit_edge, %land.lhs.true.i.i.xa_entry.exit.i_crit_edge, %lor.lhs.false.i.i.xa_entry.exit.i_crit_edge, %if.end16.i.xa_entry.exit.i_crit_edge
  %tobool18.not.i = icmp eq ptr %30, null
  br i1 %tobool18.not.i, label %xa_entry.exit.i.cleanup.sink.split.i_crit_edge, label %xa_entry.exit.i.xas_next_marked.exit_crit_edge

xa_entry.exit.i.xas_next_marked.exit_crit_edge:   ; preds = %xa_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xas_next_marked.exit

xa_entry.exit.i.cleanup.sink.split.i_crit_edge:   ; preds = %xa_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %xa_entry.exit.i.cleanup.sink.split.i_crit_edge, %if.end11.i.cleanup.sink.split.i_crit_edge, %lor.rhs.i.cleanup.sink.split.i_crit_edge, %for.inc.cleanup.sink.split.i_crit_edge
  %call20.i = call ptr @xas_find_marked(ptr noundef nonnull %xas, i32 noundef %end, i32 noundef 0) #8
  br label %xas_next_marked.exit

xas_next_marked.exit:                             ; preds = %cleanup.sink.split.i, %xa_entry.exit.i.xas_next_marked.exit_crit_edge
  %retval.0.i = phi ptr [ %30, %xa_entry.exit.i.xas_next_marked.exit_crit_edge ], [ %call20.i, %cleanup.sink.split.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %xas_next_marked.exit.for.end_crit_edge, label %xas_next_marked.exit.for.body_crit_edge

xas_next_marked.exit.for.body_crit_edge:          ; preds = %xas_next_marked.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

xas_next_marked.exit.for.end_crit_edge:           ; preds = %xas_next_marked.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %xas_next_marked.exit.for.end_crit_edge, %if.end.i.for.end_crit_edge, %entry.for.end_crit_edge
  %31 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %xas, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %32) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_find_marked(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xas_set_mark(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xas_pause(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @write_cache_pages(ptr noundef %mapping, ptr noundef %wbc, ptr nocapture noundef readonly %writepage, ptr noundef %data) #0 align 64 {
entry:
  %pvec = alloca %struct.pagevec, align 4
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pvec) #8
  %0 = call ptr @memset(ptr %pvec, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #8
  %1 = ptrtoint ptr %pvec to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %pvec, align 4
  %percpu_pvec_drained.i = getelementptr inbounds %struct.pagevec, ptr %pvec, i32 0, i32 1
  %2 = ptrtoint ptr %percpu_pvec_drained.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %percpu_pvec_drained.i, align 1
  %range_cyclic = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 5
  %3 = ptrtoint ptr %range_cyclic to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load = load i16, ptr %range_cyclic, align 4
  %4 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %writeback_index = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 8
  %5 = ptrtoint ptr %writeback_index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %writeback_index, align 4
  %7 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %index, align 4
  br label %if.end9

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %range_start = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 2
  %8 = ptrtoint ptr %range_start to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %range_start, align 8
  %10 = lshr i64 %9, 12
  %conv = trunc i64 %10 to i32
  %11 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %index, align 4
  %range_end = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 3
  %12 = ptrtoint ptr %range_end to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %range_end, align 8
  %14 = lshr i64 %13, 12
  %conv2 = trunc i64 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp = icmp ne i64 %9, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372036854775807, i64 %13)
  %cmp6 = icmp ne i64 %13, 9223372036854775807
  %or.cond = select i1 %cmp, i1 true, i1 %cmp6
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then
  %end.0 = phi i32 [ -1, %if.then ], [ %conv2, %if.else ]
  %tobool124.not = phi i1 [ true, %if.then ], [ %or.cond, %if.else ]
  %sync_mode = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 4
  %15 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sync_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp10 = icmp ne i32 %16, 1
  %17 = and i16 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool16.not = icmp eq i16 %17, 0
  %or.cond242 = select i1 %cmp10, i1 %tobool16.not, i1 false
  br i1 %or.cond242, label %if.end9.if.end19_crit_edge, label %if.then17

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then17:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index, align 4
  tail call void @tag_pages_for_writeback(ptr noundef %mapping, i32 noundef %19, i32 noundef %end.0)
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end9.if.end19_crit_edge
  %tag.0 = phi i32 [ 2, %if.then17 ], [ 0, %if.end9.if.end19_crit_edge ]
  %20 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %index, align 4
  br label %land.rhs

land.rhs:                                         ; preds = %cleanup104.land.rhs_crit_edge, %if.end19
  %ret.0305 = phi i32 [ 0, %if.end19 ], [ %ret.4, %cleanup104.land.rhs_crit_edge ]
  %done_index.0304 = phi i32 [ %21, %if.end19 ], [ %done_index.3, %cleanup104.land.rhs_crit_edge ]
  %22 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %end.0)
  %cmp21.not = icmp ugt i32 %23, %end.0
  br i1 %cmp21.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %call = call i32 @pagevec_lookup_range_tag(ptr noundef nonnull %pvec, ptr noundef %mapping, ptr noundef nonnull %index, i32 noundef %end.0, i32 noundef %tag.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp23 = icmp eq i32 %call, 0
  br i1 %cmp23, label %while.body.while.end_crit_edge, label %for.cond.preheader

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

for.cond.preheader:                               ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp27295 = icmp sgt i32 %call, 0
  br i1 %cmp27295, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %ret.1297 = phi i32 [ %ret.3, %for.inc.for.body_crit_edge ], [ %ret.0305, %for.cond.preheader.for.body_crit_edge ]
  %i.0296 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pagevec, ptr %pvec, i32 0, i32 2, i32 %i.0296
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %index29 = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 1, i32 0, i32 2
  %26 = ptrtoint ptr %index29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index29, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.19, i32 noundef 788) #8
  %28 = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %28, align 4
  %and.i.i222 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i222)
  %tobool.not.i.i223 = icmp eq i32 %and.i.i222, 0
  br i1 %tobool.not.i.i223, label %if.end.i.i226, label %if.then.i.i225, !prof !186

if.then.i.i225:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i224 = add i32 %30, -1
  br label %_compound_head.exit.i228

if.end.i.i226:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %25 to i32
  br label %_compound_head.exit.i228

_compound_head.exit.i228:                         ; preds = %if.end.i.i226, %if.then.i.i225
  %retval.0.i.i227 = phi i32 [ %sub.i.i224, %if.then.i.i225 ], [ %31, %if.end.i.i226 ]
  %32 = inttoptr i32 %retval.0.i.i227 to ptr
  %33 = getelementptr inbounds %struct.page, ptr %32, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %33, align 4
  %and.i.i.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !186

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i228
  call void @__sanitizer_cov_trace_pc() #10
  %36 = inttoptr i32 %retval.0.i.i227 to ptr
  call void @dump_page(ptr noundef %36, ptr noundef nonnull @.str.20) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !197
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i228
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %32, i32 noundef 4) #8
  %37 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %32, align 4
  %and.i.i4.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i229_crit_edge

folio_flags.exit.i.i.if.then.i229_crit_edge:      ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i229

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  call void @llvm.prefetch.p0(ptr %32, i32 1, i32 3, i32 1) #8
  %39 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 1, ptr elementtype(i32) %32) #8, !srcloc !198
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %39, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !199
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i229_crit_edge

folio_trylock.exit.i.if.then.i229_crit_edge:      ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i229

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_page.exit

if.then.i229:                                     ; preds = %folio_trylock.exit.i.if.then.i229_crit_edge, %folio_flags.exit.i.i.if.then.i229_crit_edge
  call void @__folio_lock(ptr noundef %32) #8
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i229, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %mapping30 = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 1, i32 0, i32 1
  %40 = ptrtoint ptr %mapping30 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mapping30, align 4
  %cmp31.not = icmp eq ptr %41, %mapping
  br i1 %cmp31.not, label %if.end36, label %lock_page.exit.continue_unlock_crit_edge, !prof !186

lock_page.exit.continue_unlock_crit_edge:         ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %continue_unlock

continue_unlock:                                  ; preds = %do.end66.continue_unlock_crit_edge, %if.then43.continue_unlock_crit_edge, %PageDirty.exit.continue_unlock_crit_edge, %lock_page.exit.continue_unlock_crit_edge
  call void @unlock_page(ptr noundef %25) #8
  br label %for.inc

if.end36:                                         ; preds = %lock_page.exit
  %42 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %28, align 4
  %and.i.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !186

if.then.i.i:                                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %43, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %25 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %44, %if.end.i.i ]
  %45 = inttoptr i32 %retval.0.i.i to ptr
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %47)
  %cmp.i.not.i = icmp eq i32 %47, -1
  %48 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %28, align 4
  %and.i13.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !182

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %if.then.i16.i, !prof !186

if.then.i16.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i15.i = add i32 %49, -1
  br label %_compound_head.exit19.i

if.end.i17.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %25 to i32
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.end.i17.i, %if.then.i16.i
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %50, %if.end.i17.i ]
  %51 = inttoptr i32 %retval.0.i18.i to ptr
  call void @dump_page(ptr noundef %51, ptr noundef nonnull @.str.22) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #8, !srcloc !200
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i24.i, label %if.then.i23.i, !prof !186

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i22.i = add i32 %49, -1
  br label %PageDirty.exit

if.end.i24.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %25 to i32
  br label %PageDirty.exit

PageDirty.exit:                                   ; preds = %if.end.i24.i, %if.then.i23.i
  %retval.0.i25.i = phi i32 [ %sub.i22.i, %if.then.i23.i ], [ %52, %if.end.i24.i ]
  %53 = inttoptr i32 %retval.0.i25.i to ptr
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %53, align 4
  %56 = and i32 %55, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool38.not = icmp eq i32 %56, 0
  br i1 %tobool38.not, label %PageDirty.exit.continue_unlock_crit_edge, label %if.end40

PageDirty.exit.continue_unlock_crit_edge:         ; preds = %PageDirty.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %continue_unlock

if.end40:                                         ; preds = %PageDirty.exit
  %57 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %28, align 4
  %and.i.i187 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i187)
  %tobool.not.i.i188 = icmp eq i32 %and.i.i187, 0
  br i1 %tobool.not.i.i188, label %if.end.i.i191, label %if.then.i.i190, !prof !186

if.then.i.i190:                                   ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i189 = add i32 %58, -1
  br label %_compound_head.exit.i194

if.end.i.i191:                                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %25 to i32
  br label %_compound_head.exit.i194

_compound_head.exit.i194:                         ; preds = %if.end.i.i191, %if.then.i.i190
  %retval.0.i.i192 = phi i32 [ %sub.i.i189, %if.then.i.i190 ], [ %59, %if.end.i.i191 ]
  %60 = inttoptr i32 %retval.0.i.i192 to ptr
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %62)
  %cmp.i.not.i193 = icmp eq i32 %62, -1
  %63 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %28, align 4
  %and.i16.i = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i193, label %if.then.i195, label %do.end10.i, !prof !182

if.then.i195:                                     ; preds = %_compound_head.exit.i194
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !186

if.then.i19.i:                                    ; preds = %if.then.i195
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i18.i = add i32 %64, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i195
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %25 to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %65, %if.end.i20.i ]
  %66 = inttoptr i32 %retval.0.i21.i to ptr
  call void @dump_page(ptr noundef %66, ptr noundef nonnull @.str.22) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #8, !srcloc !201
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i194
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !186

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i25.i = add i32 %64, -1
  br label %PageWriteback.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %25 to i32
  br label %PageWriteback.exit

PageWriteback.exit:                               ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %67, %if.end.i27.i ]
  %68 = inttoptr i32 %retval.0.i28.i to ptr
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %68, align 4
  %71 = and i32 %70, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool42.not = icmp eq i32 %71, 0
  br i1 %tobool42.not, label %PageWriteback.exit.do.body_crit_edge, label %if.then43

PageWriteback.exit.do.body_crit_edge:             ; preds = %PageWriteback.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then43:                                        ; preds = %PageWriteback.exit
  %72 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %sync_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp45.not = icmp eq i32 %73, 0
  br i1 %cmp45.not, label %if.then43.continue_unlock_crit_edge, label %if.then47

if.then43.continue_unlock_crit_edge:              ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %continue_unlock

if.then47:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  call void @wait_on_page_writeback(ptr noundef %25) #8
  br label %do.body

do.body:                                          ; preds = %if.then47, %PageWriteback.exit.do.body_crit_edge
  %74 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %28, align 4
  %and.i.i198 = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i198)
  %tobool.not.i.i199 = icmp eq i32 %and.i.i198, 0
  br i1 %tobool.not.i.i199, label %if.end.i.i202, label %if.then.i.i201, !prof !186

if.then.i.i201:                                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i200 = add i32 %75, -1
  br label %_compound_head.exit.i207

if.end.i.i202:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %25 to i32
  br label %_compound_head.exit.i207

_compound_head.exit.i207:                         ; preds = %if.end.i.i202, %if.then.i.i201
  %retval.0.i.i203 = phi i32 [ %sub.i.i200, %if.then.i.i201 ], [ %76, %if.end.i.i202 ]
  %77 = inttoptr i32 %retval.0.i.i203 to ptr
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %79)
  %cmp.i.not.i204 = icmp eq i32 %79, -1
  %80 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %28, align 4
  %and.i16.i205 = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i205)
  %tobool.not.i17.i206 = icmp eq i32 %and.i16.i205, 0
  br i1 %cmp.i.not.i204, label %if.then.i208, label %do.end10.i214, !prof !182

if.then.i208:                                     ; preds = %_compound_head.exit.i207
  br i1 %tobool.not.i17.i206, label %if.end.i20.i211, label %if.then.i19.i210, !prof !186

if.then.i19.i210:                                 ; preds = %if.then.i208
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i18.i209 = add i32 %81, -1
  br label %_compound_head.exit22.i213

if.end.i20.i211:                                  ; preds = %if.then.i208
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %25 to i32
  br label %_compound_head.exit22.i213

_compound_head.exit22.i213:                       ; preds = %if.end.i20.i211, %if.then.i19.i210
  %retval.0.i21.i212 = phi i32 [ %sub.i18.i209, %if.then.i19.i210 ], [ %82, %if.end.i20.i211 ]
  %83 = inttoptr i32 %retval.0.i21.i212 to ptr
  call void @dump_page(ptr noundef %83, ptr noundef nonnull @.str.22) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #8, !srcloc !201
  unreachable

do.end10.i214:                                    ; preds = %_compound_head.exit.i207
  br i1 %tobool.not.i17.i206, label %if.end.i27.i217, label %if.then.i26.i216, !prof !186

if.then.i26.i216:                                 ; preds = %do.end10.i214
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i25.i215 = add i32 %81, -1
  br label %PageWriteback.exit221

if.end.i27.i217:                                  ; preds = %do.end10.i214
  call void @__sanitizer_cov_trace_pc() #10
  %84 = ptrtoint ptr %25 to i32
  br label %PageWriteback.exit221

PageWriteback.exit221:                            ; preds = %if.end.i27.i217, %if.then.i26.i216
  %retval.0.i28.i218 = phi i32 [ %sub.i25.i215, %if.then.i26.i216 ], [ %84, %if.end.i27.i217 ]
  %85 = inttoptr i32 %retval.0.i28.i218 to ptr
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %85, align 4
  %88 = and i32 %87, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool52.not = icmp eq i32 %88, 0
  br i1 %tobool52.not, label %do.end66, label %do.body60, !prof !186

do.body60:                                        ; preds = %PageWriteback.exit221
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/page-writeback.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2250, 0\0A.popsection", ""() #8, !srcloc !202
  unreachable

do.end66:                                         ; preds = %PageWriteback.exit221
  %call67 = call zeroext i1 @clear_page_dirty_for_io(ptr noundef %25) #8
  br i1 %call67, label %if.end69, label %do.end66.continue_unlock_crit_edge

do.end66.continue_unlock_crit_edge:               ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %continue_unlock

if.end69:                                         ; preds = %do.end66
  %89 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %mapping, align 4
  %call70 = call ptr @inode_to_bdi(ptr noundef %90) #8
  call fastcc void @trace_wbc_writepage(ptr noundef %wbc, ptr noundef %call70)
  %call71 = call i32 %writepage(ptr noundef %25, ptr noundef %wbc, ptr noundef %data) #8
  %91 = zext i32 %call71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call71, label %if.else83 [
    i32 0, label %if.end69.if.end94_crit_edge
    i32 524288, label %if.then82
  ], !prof !203

if.end69.if.end94_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94

if.then82:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  call void @unlock_page(ptr noundef %25) #8
  br label %if.end90

if.else83:                                        ; preds = %if.end69
  %92 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %sync_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %93)
  %cmp85.not = icmp eq i32 %93, 1
  br i1 %cmp85.not, label %if.else83.if.end90_crit_edge, label %if.then87

if.else83.if.end90_crit_edge:                     ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

if.then87:                                        ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #10
  %index29.le = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 1, i32 0, i32 2
  %94 = ptrtoint ptr %index29.le to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %index29.le, align 4
  %add = add i32 %95, 1
  br label %for.end

if.end90:                                         ; preds = %if.else83.if.end90_crit_edge, %if.then82
  %error.0 = phi i32 [ 0, %if.then82 ], [ %call71, %if.else83.if.end90_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1297)
  %tobool91.not = icmp eq i32 %ret.1297, 0
  %spec.select = select i1 %tobool91.not, i32 %error.0, i32 %ret.1297
  br label %if.end94

if.end94:                                         ; preds = %if.end90, %if.end69.if.end94_crit_edge
  %ret.2 = phi i32 [ %ret.1297, %if.end69.if.end94_crit_edge ], [ %spec.select, %if.end90 ]
  %96 = ptrtoint ptr %wbc to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %wbc, align 8
  %dec = add i32 %97, -1
  store i32 %dec, ptr %wbc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %cmp95 = icmp slt i32 %dec, 1
  br i1 %cmp95, label %land.lhs.true97, label %if.end94.for.inc_crit_edge

if.end94.for.inc_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true97:                                  ; preds = %if.end94
  %98 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %sync_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp99 = icmp eq i32 %99, 0
  br i1 %cmp99, label %land.lhs.true97.for.end_crit_edge, label %land.lhs.true97.for.inc_crit_edge

land.lhs.true97.for.inc_crit_edge:                ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true97.for.end_crit_edge:                ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true97.for.inc_crit_edge, %if.end94.for.inc_crit_edge, %continue_unlock
  %ret.3 = phi i32 [ %ret.1297, %continue_unlock ], [ %ret.2, %land.lhs.true97.for.inc_crit_edge ], [ %ret.2, %if.end94.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0296, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true97.for.end_crit_edge, %if.then87, %for.cond.preheader.for.end_crit_edge
  %tobool20.not = phi i1 [ true, %for.cond.preheader.for.end_crit_edge ], [ false, %if.then87 ], [ true, %for.inc.for.end_crit_edge ], [ false, %land.lhs.true97.for.end_crit_edge ]
  %done_index.3 = phi i32 [ %done_index.0304, %for.cond.preheader.for.end_crit_edge ], [ %add, %if.then87 ], [ %27, %land.lhs.true97.for.end_crit_edge ], [ %27, %for.inc.for.end_crit_edge ]
  %ret.4 = phi i32 [ %ret.0305, %for.cond.preheader.for.end_crit_edge ], [ %call71, %if.then87 ], [ %ret.3, %for.inc.for.end_crit_edge ], [ %ret.2, %land.lhs.true97.for.end_crit_edge ]
  %100 = ptrtoint ptr %pvec to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %pvec, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool.not.i = icmp eq i8 %101, 0
  br i1 %tobool.not.i, label %for.end.cleanup104_crit_edge, label %if.then.i230

for.end.cleanup104_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup104

if.then.i230:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__pagevec_release(ptr noundef nonnull %pvec) #8
  br label %cleanup104

cleanup104:                                       ; preds = %if.then.i230, %for.end.cleanup104_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 2295, i32 noundef 0) #8
  %call.i = call i32 @__cond_resched() #8
  br i1 %tobool20.not, label %cleanup104.land.rhs_crit_edge, label %cleanup104.while.end_crit_edge

cleanup104.while.end_crit_edge:                   ; preds = %cleanup104
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

cleanup104.land.rhs_crit_edge:                    ; preds = %cleanup104
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

while.end:                                        ; preds = %cleanup104.while.end_crit_edge, %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %done_index.0.lcssa = phi i32 [ %done_index.0304, %while.body.while.end_crit_edge ], [ %done_index.3, %cleanup104.while.end_crit_edge ], [ %done_index.0304, %land.rhs.while.end_crit_edge ]
  %ret.0.lcssa = phi i32 [ %ret.0305, %while.body.while.end_crit_edge ], [ %ret.4, %cleanup104.while.end_crit_edge ], [ %ret.0305, %land.rhs.while.end_crit_edge ]
  %tobool20.not.lcssa = phi i1 [ true, %while.body.while.end_crit_edge ], [ false, %cleanup104.while.end_crit_edge ], [ true, %land.rhs.while.end_crit_edge ]
  %102 = ptrtoint ptr %range_cyclic to i32
  call void @__asan_load2_noabort(i32 %102)
  %bf.load108 = load i16, ptr %range_cyclic, align 4
  %103 = and i16 %bf.load108, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %103)
  %tobool112.not = icmp ne i16 %103, 0
  %or.cond185 = and i1 %tobool20.not.lcssa, %tobool112.not
  %done_index.6 = select i1 %or.cond185, i32 0, i32 %done_index.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %103)
  %tobool122.not = icmp eq i16 %103, 0
  br i1 %tobool122.not, label %lor.lhs.false123, label %while.end.if.then129_crit_edge

while.end.if.then129_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then129

lor.lhs.false123:                                 ; preds = %while.end
  br i1 %tobool124.not, label %lor.lhs.false123.if.end131_crit_edge, label %land.lhs.true125

lor.lhs.false123.if.end131_crit_edge:             ; preds = %lor.lhs.false123
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end131

land.lhs.true125:                                 ; preds = %lor.lhs.false123
  %104 = ptrtoint ptr %wbc to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %wbc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp127 = icmp sgt i32 %105, 0
  br i1 %cmp127, label %land.lhs.true125.if.then129_crit_edge, label %land.lhs.true125.if.end131_crit_edge

land.lhs.true125.if.end131_crit_edge:             ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end131

land.lhs.true125.if.then129_crit_edge:            ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then129

if.then129:                                       ; preds = %land.lhs.true125.if.then129_crit_edge, %while.end.if.then129_crit_edge
  %writeback_index130 = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 8
  %106 = ptrtoint ptr %writeback_index130 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %done_index.6, ptr %writeback_index130, align 4
  br label %if.end131

if.end131:                                        ; preds = %if.then129, %land.lhs.true125.if.end131_crit_edge, %lor.lhs.false123.if.end131_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pvec) #8
  ret i32 %ret.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pagevec_lookup_range_tag(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_on_page_writeback(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clear_page_dirty_for_io(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_wbc_writepage(ptr noundef %wbc, ptr noundef %bdi) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wbc_writepage, i32 0, i32 1), ptr blockaddress(@trace_wbc_writepage, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !191

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !170) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !186

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !204
  %call42 = tail call i32 @__traceiter_wbc_writepage(ptr noundef null, ptr noundef %wbc, ptr noundef %bdi) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !205
  %13 = tail call i32 @llvm.read_register.i32(metadata !170) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !170) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !186

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !206
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wbc_writepage, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wbc_writepage, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_wbc_writepage.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_wbc_writepage.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 496, ptr noundef nonnull @.str.10) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !207
  %31 = tail call i32 @llvm.read_register.i32(metadata !170) #8
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
define dso_local i32 @generic_writepages(ptr noundef %mapping, ptr noundef %wbc) #0 align 64 {
entry:
  %plug = alloca %struct.blk_plug, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug) #8
  %0 = call ptr @memset(ptr %plug, i32 255, i32 24)
  %a_ops = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 9
  %1 = ptrtoint ptr %a_ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %a_ops, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @blk_start_plug(ptr noundef nonnull %plug) #8
  %call = call i32 @write_cache_pages(ptr noundef %mapping, ptr noundef %wbc, ptr noundef nonnull @__writepage, ptr noundef %mapping)
  call void @blk_finish_plug(ptr noundef nonnull %plug) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__writepage(ptr noundef %page, ptr noundef %wbc, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %a_ops = getelementptr inbounds %struct.address_space, ptr %data, i32 0, i32 9
  %0 = ptrtoint ptr %a_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %a_ops, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 %3(ptr noundef %page, ptr noundef %wbc) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not.i = icmp eq i32 %call, 0
  br i1 %tobool.not.i, label %entry.mapping_set_error.exit_crit_edge, label %if.end.i, !prof !186

entry.mapping_set_error.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mapping_set_error.exit

if.end.i:                                         ; preds = %entry
  tail call void @__filemap_set_wb_err(ptr noundef %data, i32 noundef %call) #8
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %tobool4.not.i = icmp eq ptr %5, null
  br i1 %tobool4.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then5.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i, align 4
  %s_wb_err.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 50
  %call.i = tail call i32 @errseq_set(ptr noundef %s_wb_err.i, i32 noundef %call) #8
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i.if.end7.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call)
  %cmp.i = icmp eq i32 %call, -28
  %flags.i = getelementptr inbounds %struct.address_space, ptr %data, i32 0, i32 10
  %..i = zext i1 %cmp.i to i32
  tail call void @_set_bit(i32 noundef %..i, ptr noundef %flags.i) #8
  br label %mapping_set_error.exit

mapping_set_error.exit:                           ; preds = %if.end7.i, %entry.mapping_set_error.exit_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @do_writepages(ptr noundef %mapping, ptr noundef %wbc) local_unnamed_addr #0 align 64 {
entry:
  %gdtc.i = alloca %struct.dirty_throttle_control, align 4
  %plug.i = alloca %struct.blk_plug, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wbc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wbc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %wb.i = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 6
  %2 = ptrtoint ptr %wb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wb.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %cond.false.i, label %if.end.inode_to_wb_wbc.exit_crit_edge

if.end.inode_to_wb_wbc.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %inode_to_wb_wbc.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mapping, align 4
  %call.i = tail call ptr @inode_to_bdi(ptr noundef %5) #8
  %wb2.i = getelementptr inbounds %struct.backing_dev_info, ptr %call.i, i32 0, i32 11
  br label %inode_to_wb_wbc.exit

inode_to_wb_wbc.exit:                             ; preds = %cond.false.i, %if.end.inode_to_wb_wbc.exit_crit_edge
  %cond.i = phi ptr [ %wb2.i, %cond.false.i ], [ %3, %if.end.inode_to_wb_wbc.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %bw_time_stamp.i = getelementptr inbounds %struct.bdi_writeback, ptr %cond.i, i32 0, i32 11
  %7 = ptrtoint ptr %bw_time_stamp.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %bw_time_stamp.i, align 4
  %sub.i = sub i32 %6, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %sub.i)
  %cmp.i = icmp ugt i32 %sub.i, 100
  br i1 %cmp.i, label %land.lhs.true.i, label %inode_to_wb_wbc.exit.wb_bandwidth_estimate_start.exit_crit_edge

inode_to_wb_wbc.exit.wb_bandwidth_estimate_start.exit_crit_edge: ; preds = %inode_to_wb_wbc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %wb_bandwidth_estimate_start.exit

land.lhs.true.i:                                  ; preds = %inode_to_wb_wbc.exit
  %writeback_inodes.i = getelementptr inbounds %struct.bdi_writeback, ptr %cond.i, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %writeback_inodes.i, i32 noundef 4) #8
  %9 = ptrtoint ptr %writeback_inodes.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %writeback_inodes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i28 = icmp eq i32 %10, 0
  br i1 %tobool.not.i28, label %if.then.i, label %land.lhs.true.i.wb_bandwidth_estimate_start.exit_crit_edge

land.lhs.true.i.wb_bandwidth_estimate_start.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wb_bandwidth_estimate_start.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %list_lock.i = getelementptr inbounds %struct.bdi_writeback, ptr %cond.i, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %list_lock.i) #8
  %count.i.i.i = getelementptr %struct.bdi_writeback, ptr %cond.i, i32 0, i32 9, i32 2, i32 1
  %11 = ptrtoint ptr %count.i.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load volatile i64, ptr %count.i.i.i, align 8
  %13 = tail call i64 @llvm.smax.i64(i64 %12, i64 0) #8
  %conv.i = trunc i64 %13 to i32
  %dirtied_stamp.i = getelementptr inbounds %struct.bdi_writeback, ptr %cond.i, i32 0, i32 12
  %14 = ptrtoint ptr %dirtied_stamp.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv.i, ptr %dirtied_stamp.i, align 8
  %count.i.i24.i = getelementptr %struct.bdi_writeback, ptr %cond.i, i32 0, i32 9, i32 3, i32 1
  %15 = ptrtoint ptr %count.i.i24.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load volatile i64, ptr %count.i.i24.i, align 8
  %17 = tail call i64 @llvm.smax.i64(i64 %16, i64 0) #8
  %conv3.i = trunc i64 %17 to i32
  %written_stamp.i = getelementptr inbounds %struct.bdi_writeback, ptr %cond.i, i32 0, i32 13
  %18 = ptrtoint ptr %written_stamp.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv3.i, ptr %written_stamp.i, align 4
  %19 = ptrtoint ptr %bw_time_stamp.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 %6, ptr %bw_time_stamp.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %list_lock.i) #8
  br label %wb_bandwidth_estimate_start.exit

wb_bandwidth_estimate_start.exit:                 ; preds = %if.then.i, %land.lhs.true.i.wb_bandwidth_estimate_start.exit_crit_edge, %inode_to_wb_wbc.exit.wb_bandwidth_estimate_start.exit_crit_edge
  %sync_mode = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 4
  %a_ops = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 9
  br label %while.cond

while.cond:                                       ; preds = %if.end10, %wb_bandwidth_estimate_start.exit
  %20 = ptrtoint ptr %a_ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %a_ops, align 4
  %writepages = getelementptr inbounds %struct.address_space_operations, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %writepages to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %writepages, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = call i32 %23(ptr noundef %mapping, ptr noundef %wbc) #8
  br label %if.end6

if.else:                                          ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug.i) #8
  %24 = call ptr @memset(ptr %plug.i, i32 255, i32 24)
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %21, align 4
  %tobool.not.i29 = icmp eq ptr %26, null
  br i1 %tobool.not.i29, label %if.else.generic_writepages.exit_crit_edge, label %if.end.i

if.else.generic_writepages.exit_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %generic_writepages.exit

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void @blk_start_plug(ptr noundef nonnull %plug.i) #8
  %call.i30 = call i32 @write_cache_pages(ptr noundef %mapping, ptr noundef %wbc, ptr noundef nonnull @__writepage, ptr noundef %mapping) #8
  call void @blk_finish_plug(ptr noundef nonnull %plug.i) #8
  br label %generic_writepages.exit

generic_writepages.exit:                          ; preds = %if.end.i, %if.else.generic_writepages.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i30, %if.end.i ], [ 0, %if.else.generic_writepages.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug.i) #8
  br label %if.end6

if.end6:                                          ; preds = %generic_writepages.exit, %if.then1
  %ret.0 = phi i32 [ %call4, %if.then1 ], [ %retval.0.i, %generic_writepages.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %ret.0)
  %cmp7.not = icmp eq i32 %ret.0, -12
  br i1 %cmp7.not, label %lor.lhs.false, label %if.end6.do.end_crit_edge

if.end6.do.end_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end6
  %27 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sync_mode, align 8
  %cmp8.not = icmp eq i32 %28, 1
  br i1 %cmp8.not, label %if.end10, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end10:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  call void @reclaim_throttle(ptr noundef nonnull @contig_page_data, i32 noundef 0) #8
  br label %while.cond

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end6.do.end_crit_edge
  %29 = ptrtoint ptr %bw_time_stamp.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %bw_time_stamp.i, align 4
  %add = add i32 %30, 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp13 = icmp slt i32 %sub, 0
  br i1 %cmp13, label %if.then14, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then14:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %gdtc.i) #8
  %32 = getelementptr inbounds i8, ptr %gdtc.i, i32 4
  %33 = call ptr @memset(ptr %32, i32 0, i32 44)
  %34 = ptrtoint ptr %gdtc.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @global_wb_domain, ptr %gdtc.i, align 4
  %wb2.i31 = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc.i, i32 0, i32 2
  %35 = ptrtoint ptr %wb2.i31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %cond.i, ptr %wb2.i31, align 4
  %wb_completions.i = getelementptr inbounds %struct.dirty_throttle_control, ptr %gdtc.i, i32 0, i32 3
  %completions.i = getelementptr inbounds %struct.bdi_writeback, ptr %cond.i, i32 0, i32 18
  %36 = ptrtoint ptr %wb_completions.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %completions.i, ptr %wb_completions.i, align 4
  call fastcc void @__wb_update_bandwidth(ptr noundef nonnull %gdtc.i, ptr noundef null, i1 noundef zeroext false) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %gdtc.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %ret.0, %if.then14 ], [ %ret.0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @reclaim_throttle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @folio_write_one(ptr noundef %folio) #0 align 64 {
entry:
  %wbc = alloca %struct.writeback_control, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping1 = getelementptr inbounds %struct.anon.88, ptr %folio, i32 0, i32 2
  %0 = ptrtoint ptr %mapping1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping1, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %wbc) #8
  %2 = call ptr @memset(ptr %wbc, i32 0, i32 64)
  %3 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp.i.not.i.i.i = icmp eq i32 %4, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %PageHead.exit.i.i, !prof !182

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.23) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #8, !srcloc !208
  unreachable

PageHead.exit.i.i:                                ; preds = %entry
  %5 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %folio, align 4
  %7 = and i32 %6, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i33 = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i33, label %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge, label %if.end.i.i

PageHead.exit.i.i.folio_nr_pages.exit_crit_edge:  ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %folio_nr_pages.exit

if.end.i.i:                                       ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %compound_nr.i.i = getelementptr %struct.page, ptr %folio, i32 1, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %compound_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %compound_nr.i.i, align 4
  br label %folio_nr_pages.exit

folio_nr_pages.exit:                              ; preds = %if.end.i.i, %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge
  %retval.0.i.i = phi i32 [ %9, %if.end.i.i ], [ 1, %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge ]
  %10 = ptrtoint ptr %wbc to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %retval.0.i.i, ptr %wbc, align 8
  %sync_mode = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 4
  %11 = ptrtoint ptr %sync_mode to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %sync_mode, align 8
  %12 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and.i.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_locked.exit, label %if.then.i.i, !prof !186

if.then.i.i:                                      ; preds = %folio_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !197
  unreachable

folio_test_locked.exit:                           ; preds = %folio_nr_pages.exit
  %15 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %folio, align 4
  %and1.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %do.body5, label %do.end10, !prof !182

do.body5:                                         ; preds = %folio_test_locked.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/page-writeback.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2410, 0\0A.popsection", ""() #8, !srcloc !209
  unreachable

do.end10:                                         ; preds = %folio_test_locked.exit
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %12, align 4
  %and.i.i.i5.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i5.i)
  %tobool.not.i.i6.i = icmp eq i32 %and.i.i.i5.i, 0
  br i1 %tobool.not.i.i6.i, label %do.end10.folio_test_writeback.exit.i_crit_edge, label %do.end10.if.then.i.i.i34_crit_edge, !prof !186

do.end10.if.then.i.i.i34_crit_edge:               ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i34

do.end10.folio_test_writeback.exit.i_crit_edge:   ; preds = %do.end10
  br label %folio_test_writeback.exit.i

if.then.i.i.i34:                                  ; preds = %while.body.i.if.then.i.i.i34_crit_edge, %do.end10.if.then.i.i.i34_crit_edge
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !197
  unreachable

folio_test_writeback.exit.i:                      ; preds = %while.body.i.folio_test_writeback.exit.i_crit_edge, %do.end10.folio_test_writeback.exit.i_crit_edge
  %19 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %folio, align 4
  %21 = and i32 %20, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i.not.i = icmp eq i32 %21, 0
  br i1 %tobool.i.not.i, label %folio_wait_writeback.exit, label %while.body.i

while.body.i:                                     ; preds = %folio_test_writeback.exit.i
  %call1.i = tail call ptr @folio_mapping(ptr noundef %folio) #8
  tail call fastcc void @trace_folio_wait_writeback(ptr noundef %folio, ptr noundef %call1.i) #8
  tail call void @folio_wait_bit(ptr noundef %folio, i32 noundef 15) #8
  %22 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %12, align 4
  %and.i.i.i.i = and i32 %23, 1
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %while.body.i.folio_test_writeback.exit.i_crit_edge, label %while.body.i.if.then.i.i.i34_crit_edge, !prof !186

while.body.i.if.then.i.i.i34_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i34

while.body.i.folio_test_writeback.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %folio_test_writeback.exit.i

folio_wait_writeback.exit:                        ; preds = %folio_test_writeback.exit.i
  %call11 = tail call zeroext i1 @folio_clear_dirty_for_io(ptr noundef %folio)
  br i1 %call11, label %if.then12, label %if.end16.thread

if.then12:                                        ; preds = %folio_wait_writeback.exit
  %_refcount.i.i.i = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i, i32 noundef 4) #8
  %24 = ptrtoint ptr %_refcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %_refcount.i.i.i, align 4
  %add.i = add i32 %25, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i)
  %cmp.i = icmp ult i32 %add.i, 128
  br i1 %cmp.i, label %if.then.i, label %do.end5.i, !prof !182

if.then.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.24) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #8, !srcloc !210
  unreachable

do.end5.i:                                        ; preds = %if.then12
  %call.i.i.i.i9.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i, i32 1, i32 3, i32 1) #8
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i, ptr %_refcount.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i) #8, !srcloc !211
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@folio_write_one, %if.then.i.i.i35)) #8
          to label %folio_get.exit [label %if.then.i.i.i35], !srcloc !191

if.then.i.i.i35:                                  ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__page_ref_mod(ptr noundef %folio, i32 noundef 1) #8
  br label %folio_get.exit

folio_get.exit:                                   ; preds = %if.then.i.i.i35, %do.end5.i
  %a_ops = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 9
  %27 = ptrtoint ptr %a_ops to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %a_ops, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %call13 = call i32 %30(ptr noundef %folio, ptr noundef nonnull %wbc) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp eq i32 %call13, 0
  br i1 %cmp, label %if.then14, label %folio_get.exit.if.end15_crit_edge

folio_get.exit.if.end15_crit_edge:                ; preds = %folio_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then14:                                        ; preds = %folio_get.exit
  %31 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %12, align 4
  %and.i.i.i5.i36 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i5.i36)
  %tobool.not.i.i6.i37 = icmp eq i32 %and.i.i.i5.i36, 0
  br i1 %tobool.not.i.i6.i37, label %if.then14.folio_test_writeback.exit.i40_crit_edge, label %if.then14.if.then.i.i.i38_crit_edge, !prof !186

if.then14.if.then.i.i.i38_crit_edge:              ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i38

if.then14.folio_test_writeback.exit.i40_crit_edge: ; preds = %if.then14
  br label %folio_test_writeback.exit.i40

if.then.i.i.i38:                                  ; preds = %while.body.i44.if.then.i.i.i38_crit_edge, %if.then14.if.then.i.i.i38_crit_edge
  call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.20) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !197
  unreachable

folio_test_writeback.exit.i40:                    ; preds = %while.body.i44.folio_test_writeback.exit.i40_crit_edge, %if.then14.folio_test_writeback.exit.i40_crit_edge
  %33 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %folio, align 4
  %35 = and i32 %34, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i.not.i39 = icmp eq i32 %35, 0
  br i1 %tobool.i.not.i39, label %folio_test_writeback.exit.i40.if.end15_crit_edge, label %while.body.i44

folio_test_writeback.exit.i40.if.end15_crit_edge: ; preds = %folio_test_writeback.exit.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

while.body.i44:                                   ; preds = %folio_test_writeback.exit.i40
  %call1.i41 = call ptr @folio_mapping(ptr noundef %folio) #8
  call fastcc void @trace_folio_wait_writeback(ptr noundef %folio, ptr noundef %call1.i41) #8
  call void @folio_wait_bit(ptr noundef %folio, i32 noundef 15) #8
  %36 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %12, align 4
  %and.i.i.i.i42 = and i32 %37, 1
  %tobool.not.i.i.i43 = icmp eq i32 %and.i.i.i.i42, 0
  br i1 %tobool.not.i.i.i43, label %while.body.i44.folio_test_writeback.exit.i40_crit_edge, label %while.body.i44.if.then.i.i.i38_crit_edge, !prof !186

while.body.i44.if.then.i.i.i38_crit_edge:         ; preds = %while.body.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i38

while.body.i44.folio_test_writeback.exit.i40_crit_edge: ; preds = %while.body.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %folio_test_writeback.exit.i40

if.end15:                                         ; preds = %folio_test_writeback.exit.i40.if.end15_crit_edge, %folio_get.exit.if.end15_crit_edge
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i, i32 noundef 4) #8
  %38 = ptrtoint ptr %_refcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %_refcount.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i.i.i = icmp eq i32 %39, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i46, label %do.end5.i.i.i, !prof !182

if.then.i.i.i46:                                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.25) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !212
  unreachable

do.end5.i.i.i:                                    ; preds = %if.end15
  %call.i.i.i10.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !213
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i, i32 1, i32 3, i32 1) #8
  %40 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i, ptr %_refcount.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i) #8, !srcloc !214
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %40, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@folio_write_one, %if.then.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !191

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %folio, i32 noundef -1, i32 noundef %conv.i.i.i.i) #8
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i47, label %folio_put_testzero.exit.i.if.end16_crit_edge

folio_put_testzero.exit.i.if.end16_crit_edge:     ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then.i47:                                      ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__put_page(ptr noundef %folio) #8
  br label %if.end16

if.end16.thread:                                  ; preds = %folio_wait_writeback.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @folio_unlock(ptr noundef %folio) #8
  br label %if.then18

if.end16:                                         ; preds = %if.then.i47, %folio_put_testzero.exit.i.if.end16_crit_edge
  br i1 %cmp, label %if.end16.if.then18_crit_edge, label %if.end16.if.end20_crit_edge

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end16.if.then18_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18

if.then18:                                        ; preds = %if.end16.if.then18_crit_edge, %if.end16.thread
  %call19 = call i32 @filemap_check_errors(ptr noundef %1) #8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16.if.end20_crit_edge
  %ret.1 = phi i32 [ %call13, %if.end16.if.end20_crit_edge ], [ %call19, %if.then18 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %wbc) #8
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @folio_wait_writeback(ptr noundef %folio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i.i5 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i5)
  %tobool.not.i.i6 = icmp eq i32 %and.i.i.i5, 0
  br i1 %tobool.not.i.i6, label %entry.folio_test_writeback.exit_crit_edge, label %entry.if.then.i.i_crit_edge, !prof !186

entry.if.then.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

entry.folio_test_writeback.exit_crit_edge:        ; preds = %entry
  br label %folio_test_writeback.exit

if.then.i.i:                                      ; preds = %while.body.if.then.i.i_crit_edge, %entry.if.then.i.i_crit_edge
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !197
  unreachable

folio_test_writeback.exit:                        ; preds = %while.body.folio_test_writeback.exit_crit_edge, %entry.folio_test_writeback.exit_crit_edge
  %3 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %folio, align 4
  %5 = and i32 %4, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %while.end, label %while.body

while.body:                                       ; preds = %folio_test_writeback.exit
  %call1 = tail call ptr @folio_mapping(ptr noundef %folio) #8
  tail call fastcc void @trace_folio_wait_writeback(ptr noundef %folio, ptr noundef %call1)
  tail call void @folio_wait_bit(ptr noundef %folio, i32 noundef 15) #8
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %0, align 4
  %and.i.i.i = and i32 %7, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.folio_test_writeback.exit_crit_edge, label %while.body.if.then.i.i_crit_edge, !prof !186

while.body.if.then.i.i_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

while.body.folio_test_writeback.exit_crit_edge:   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %folio_test_writeback.exit

while.end:                                        ; preds = %folio_test_writeback.exit
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @folio_clear_dirty_for_io(ptr noundef %folio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @folio_mapping(ptr noundef %folio) #8
  %0 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_locked.exit, label %if.then.i.i, !prof !186

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !197
  unreachable

folio_test_locked.exit:                           ; preds = %entry
  %3 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %folio, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then, label %do.end9, !prof !182

if.then:                                          ; preds = %folio_test_locked.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/page-writeback.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2729, 0\0A.popsection", ""() #8, !srcloc !216
  unreachable

do.end9:                                          ; preds = %folio_test_locked.exit
  %tobool10.not = icmp eq ptr %call, null
  br i1 %tobool10.not, label %do.end9.if.end26_crit_edge, label %land.lhs.true

do.end9.if.end26_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

land.lhs.true:                                    ; preds = %do.end9
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %call.i = tail call ptr @inode_to_bdi(ptr noundef %6) #8
  %capabilities.i = getelementptr inbounds %struct.backing_dev_info, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %capabilities.i, align 8
  %and.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i53.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i53.not, label %land.lhs.true.if.end26_crit_edge, label %if.then12

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then12:                                        ; preds = %land.lhs.true
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call, align 4
  %call13 = tail call i32 @folio_mkclean(ptr noundef %folio) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.if.end17_crit_edge, label %if.then15

if.then12.if.end17_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = tail call zeroext i1 @folio_mark_dirty(ptr noundef %folio)
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.then12.if.end17_crit_edge
  %11 = tail call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !192
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i, label %if.end17.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end17.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end17
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i54 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i54, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i55

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

if.then.i.i55:                                    ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #8
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i55, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end17.rcu_read_lock.exit.i_crit_edge
  %i_state.i = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 24
  %15 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %i_state.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !217
  %and.i56 = and i32 %16, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i56)
  %tobool.not.i = icmp eq i32 %and.i56, 0
  br i1 %tobool.not.i, label %rcu_read_lock.exit.i.unlocked_inode_to_wb_begin.exit_crit_edge, label %do.body10.i, !prof !186

rcu_read_lock.exit.i.unlocked_inode_to_wb_begin.exit_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlocked_inode_to_wb_begin.exit

do.body10.i:                                      ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 9
  %17 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_mapping.i, align 8
  %i_pages.i = getelementptr inbounds %struct.address_space, ptr %18, i32 0, i32 1
  %call12.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %i_pages.i) #8
  br label %unlocked_inode_to_wb_begin.exit

unlocked_inode_to_wb_begin.exit:                  ; preds = %do.body10.i, %rcu_read_lock.exit.i.unlocked_inode_to_wb_begin.exit_crit_edge
  %cookie.sroa.573.0 = phi i32 [ 0, %rcu_read_lock.exit.i.unlocked_inode_to_wb_begin.exit_crit_edge ], [ %call12.i, %do.body10.i ]
  %i_wb.i = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 30
  %19 = ptrtoint ptr %i_wb.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_wb.i, align 4
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %0, align 4
  %and.i.i.i43 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i43)
  %tobool.not.i.i44 = icmp eq i32 %and.i.i.i43, 0
  br i1 %tobool.not.i.i44, label %folio_test_clear_dirty.exit, label %if.then.i.i45, !prof !186

if.then.i.i45:                                    ; preds = %unlocked_inode_to_wb_begin.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !197
  unreachable

folio_test_clear_dirty.exit:                      ; preds = %unlocked_inode_to_wb_begin.exit
  %call1.i = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %folio) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.i46 = icmp ne i32 %call1.i, 0
  br i1 %tobool.i46, label %if.then20, label %folio_test_clear_dirty.exit.if.end24_crit_edge

folio_test_clear_dirty.exit.if.end24_crit_edge:   ; preds = %folio_test_clear_dirty.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then20:                                        ; preds = %folio_test_clear_dirty.exit
  %23 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp.i.not.i.i.i = icmp eq i32 %24, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %PageHead.exit.i.i, !prof !182

if.then.i.i.i:                                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.23) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #8, !srcloc !208
  unreachable

PageHead.exit.i.i:                                ; preds = %if.then20
  %25 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %folio, align 4
  %27 = and i32 %26, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i57 = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i57, label %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge, label %if.end.i.i

PageHead.exit.i.i.folio_nr_pages.exit_crit_edge:  ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %folio_nr_pages.exit

if.end.i.i:                                       ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %compound_nr.i.i = getelementptr %struct.page, ptr %folio, i32 1, i32 1, i32 0, i32 2
  %28 = ptrtoint ptr %compound_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %compound_nr.i.i, align 4
  br label %folio_nr_pages.exit

folio_nr_pages.exit:                              ; preds = %if.end.i.i, %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge
  %retval.0.i.i = phi i32 [ %29, %if.end.i.i ], [ 1, %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge ]
  %sub = sub i32 0, %retval.0.i.i
  %30 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !180
  %and.i.i.i58 = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i58)
  %tobool.not.i.i59 = icmp eq i32 %and.i.i.i58, 0
  br i1 %tobool.not.i.i59, label %if.then21.i.i, label %do.end11.i.i

do.end11.i.i:                                     ; preds = %folio_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__mod_lruvec_page_state(ptr noundef %folio, i32 noundef 20, i32 noundef %sub) #8
  br label %do.body23.i.i

if.then21.i.i:                                    ; preds = %folio_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  tail call void @__mod_lruvec_page_state(ptr noundef %folio, i32 noundef 20, i32 noundef %sub) #8
  tail call void @trace_hardirqs_on() #8
  br label %do.body23.i.i

do.body23.i.i:                                    ; preds = %if.then21.i.i, %do.end11.i.i
  %31 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !181
  %and.i.i.i.i = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body23.i.i.lruvec_stat_mod_folio.exit_crit_edge, !prof !182

do.body23.i.i.lruvec_stat_mod_folio.exit_crit_edge: ; preds = %do.body23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lruvec_stat_mod_folio.exit

if.then36.i.i:                                    ; preds = %do.body23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %lruvec_stat_mod_folio.exit

lruvec_stat_mod_folio.exit:                       ; preds = %if.then36.i.i, %do.body23.i.i.lruvec_stat_mod_folio.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %30) #8, !srcloc !183
  %32 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp.i.not.i.i.i.i = icmp eq i32 %33, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i, label %zone_stat_mod_folio.exit, !prof !182

if.then.i.i.i.i:                                  ; preds = %lruvec_stat_mod_folio.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.26) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #8, !srcloc !218
  unreachable

zone_stat_mod_folio.exit:                         ; preds = %lruvec_stat_mod_folio.exit
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i.i.i.i = lshr i32 %33, 30
  %arrayidx.i.i.i = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %shr.i.i.i.i
  tail call void @mod_zone_page_state(ptr noundef %arrayidx.i.i.i, i32 noundef 6, i32 noundef %sub) #8
  %conv = sext i32 %sub to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %34 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i.i.i = icmp eq i32 %34, 0
  %35 = tail call i32 @llvm.ctlz.i32(i32 %34, i1 true) #8, !range !184
  %arrayidx.i = getelementptr %struct.bdi_writeback, ptr %20, i32 0, i32 9, i32 0
  %sub.i.op.i.i = shl nuw nsw i32 %35, 3
  %sub.i.op.i.i.op = xor i32 %sub.i.op.i.i, 248
  %sub.i.op.i.i.op.op = add nuw nsw i32 %sub.i.op.i.i.op, 8
  %mul.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.op.i.i.op.op
  tail call void @percpu_counter_add_batch(ptr noundef %arrayidx.i, i64 noundef %conv, i32 noundef %mul.i) #8
  br label %if.end24

if.end24:                                         ; preds = %zone_stat_mod_folio.exit, %folio_test_clear_dirty.exit.if.end24_crit_edge
  br i1 %tobool.not.i, label %if.end24.if.end.i_crit_edge, label %if.then.i, !prof !186

if.end24.if.end.i_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %i_mapping.i61 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 9
  %36 = ptrtoint ptr %i_mapping.i61 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i_mapping.i61, align 8
  %i_pages.i62 = getelementptr inbounds %struct.address_space, ptr %37, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i_pages.i62, i32 noundef %cookie.sroa.573.0) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end24.if.end.i_crit_edge
  %call.i.i64 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i64, label %if.end.i.unlocked_inode_to_wb_end.exit_crit_edge, label %land.lhs.true.i.i67

if.end.i.unlocked_inode_to_wb_end.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlocked_inode_to_wb_end.exit

land.lhs.true.i.i67:                              ; preds = %if.end.i
  %call1.i.i65 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i65)
  %tobool.not.i.i66 = icmp eq i32 %call1.i.i65, 0
  br i1 %tobool.not.i.i66, label %land.lhs.true.i.i67.unlocked_inode_to_wb_end.exit_crit_edge, label %land.lhs.true2.i.i69

land.lhs.true.i.i67.unlocked_inode_to_wb_end.exit_crit_edge: ; preds = %land.lhs.true.i.i67
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlocked_inode_to_wb_end.exit

land.lhs.true2.i.i69:                             ; preds = %land.lhs.true.i.i67
  %.b4.i.i68 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i.i68, label %land.lhs.true2.i.i69.unlocked_inode_to_wb_end.exit_crit_edge, label %if.then.i.i70

land.lhs.true2.i.i69.unlocked_inode_to_wb_end.exit_crit_edge: ; preds = %land.lhs.true2.i.i69
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlocked_inode_to_wb_end.exit

if.then.i.i70:                                    ; preds = %land.lhs.true2.i.i69
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.17) #8
  br label %unlocked_inode_to_wb_end.exit

unlocked_inode_to_wb_end.exit:                    ; preds = %if.then.i.i70, %land.lhs.true2.i.i69.unlocked_inode_to_wb_end.exit_crit_edge, %land.lhs.true.i.i67.unlocked_inode_to_wb_end.exit_crit_edge, %if.end.i.unlocked_inode_to_wb_end.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !193
  %38 = tail call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i.i.i.i.i.i71 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i.i71 to ptr
  %preempt_count.i.i.i.i.i72 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i.i72 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i.i72, align 4
  %sub.i.i.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i72, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %cleanup

if.end26:                                         ; preds = %land.lhs.true.if.end26_crit_edge, %do.end9.if.end26_crit_edge
  %42 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %0, align 4
  %and.i.i.i47 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i47)
  %tobool.not.i.i48 = icmp eq i32 %and.i.i.i47, 0
  br i1 %tobool.not.i.i48, label %folio_test_clear_dirty.exit52, label %if.then.i.i49, !prof !186

if.then.i.i49:                                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !197
  unreachable

folio_test_clear_dirty.exit52:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i50 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %folio) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i50)
  %tobool.i51 = icmp ne i32 %call1.i50, 0
  br label %cleanup

cleanup:                                          ; preds = %folio_test_clear_dirty.exit52, %unlocked_inode_to_wb_end.exit
  %retval.0 = phi i1 [ %tobool.i46, %unlocked_inode_to_wb_end.exit ], [ %tobool.i51, %folio_test_clear_dirty.exit52 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_check_errors(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__set_page_dirty_no_writeback(ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !186

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.i.not.i = icmp eq i32 %6, -1
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %0, align 4
  %and.i13.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !182

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %if.then.i16.i, !prof !186

if.then.i16.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i15.i = add i32 %8, -1
  br label %_compound_head.exit19.i

if.end.i17.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %page to i32
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.end.i17.i, %if.then.i16.i
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %9, %if.end.i17.i ]
  %10 = inttoptr i32 %retval.0.i18.i to ptr
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.22) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #8, !srcloc !200
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i24.i, label %if.then.i23.i, !prof !186

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i22.i = add i32 %8, -1
  br label %PageDirty.exit

if.end.i24.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %page to i32
  br label %PageDirty.exit

PageDirty.exit:                                   ; preds = %if.end.i24.i, %if.then.i23.i
  %retval.0.i25.i = phi i32 [ %sub.i22.i, %if.then.i23.i ], [ %11, %if.end.i24.i ]
  %12 = inttoptr i32 %retval.0.i25.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %15 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %if.then, label %PageDirty.exit.return_crit_edge

PageDirty.exit.return_crit_edge:                  ; preds = %PageDirty.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then:                                          ; preds = %PageDirty.exit
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %0, align 4
  %and.i.i4 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4)
  %tobool.not.i.i5 = icmp eq i32 %and.i.i4, 0
  br i1 %tobool.not.i.i5, label %if.end.i.i8, label %if.then.i.i7, !prof !186

if.then.i.i7:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i6 = add i32 %17, -1
  br label %_compound_head.exit.i13

if.end.i.i8:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i13

_compound_head.exit.i13:                          ; preds = %if.end.i.i8, %if.then.i.i7
  %retval.0.i.i9 = phi i32 [ %sub.i.i6, %if.then.i.i7 ], [ %18, %if.end.i.i8 ]
  %19 = inttoptr i32 %retval.0.i.i9 to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp.i.not.i10 = icmp eq i32 %21, -1
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %0, align 4
  %and.i13.i11 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i11)
  %tobool.not.i14.i12 = icmp eq i32 %and.i13.i11, 0
  br i1 %cmp.i.not.i10, label %if.then.i14, label %do.end8.i20, !prof !182

if.then.i14:                                      ; preds = %_compound_head.exit.i13
  br i1 %tobool.not.i14.i12, label %if.end.i17.i17, label %if.then.i16.i16, !prof !186

if.then.i16.i16:                                  ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i15.i15 = add i32 %23, -1
  br label %_compound_head.exit19.i19

if.end.i17.i17:                                   ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %page to i32
  br label %_compound_head.exit19.i19

_compound_head.exit19.i19:                        ; preds = %if.end.i17.i17, %if.then.i16.i16
  %retval.0.i18.i18 = phi i32 [ %sub.i15.i15, %if.then.i16.i16 ], [ %24, %if.end.i17.i17 ]
  %25 = inttoptr i32 %retval.0.i18.i18 to ptr
  tail call void @dump_page(ptr noundef %25, ptr noundef nonnull @.str.22) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #8, !srcloc !219
  unreachable

do.end8.i20:                                      ; preds = %_compound_head.exit.i13
  br i1 %tobool.not.i14.i12, label %if.end.i24.i23, label %if.then.i23.i22, !prof !186

if.then.i23.i22:                                  ; preds = %do.end8.i20
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i22.i21 = add i32 %23, -1
  br label %TestSetPageDirty.exit

if.end.i24.i23:                                   ; preds = %do.end8.i20
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %page to i32
  br label %TestSetPageDirty.exit

TestSetPageDirty.exit:                            ; preds = %if.end.i24.i23, %if.then.i23.i22
  %retval.0.i25.i24 = phi i32 [ %sub.i22.i21, %if.then.i23.i22 ], [ %26, %if.end.i24.i23 ]
  %27 = inttoptr i32 %retval.0.i25.i24 to ptr
  %call10.i = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %27) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool2.not = icmp eq i32 %call10.i, 0
  %lnot.ext = zext i1 %tobool2.not to i32
  br label %return

return:                                           ; preds = %TestSetPageDirty.exit, %PageDirty.exit.return_crit_edge
  %retval.0 = phi i32 [ %lnot.ext, %TestSetPageDirty.exit ], [ 0, %PageDirty.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @folio_account_cleaned(ptr noundef %folio, ptr nocapture noundef readonly %mapping, ptr noundef %wb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %call.i = tail call ptr @inode_to_bdi(ptr noundef %1) #8
  %capabilities.i = getelementptr inbounds %struct.backing_dev_info, ptr %call.i, i32 0, i32 6
  %2 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %capabilities.i, align 8
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.i.not.i.i.i = icmp eq i32 %5, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %PageHead.exit.i.i, !prof !182

if.then.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.23) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #8, !srcloc !208
  unreachable

PageHead.exit.i.i:                                ; preds = %if.then
  %6 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %folio, align 4
  %8 = and i32 %7, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge, label %if.end.i.i

PageHead.exit.i.i.folio_nr_pages.exit_crit_edge:  ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %folio_nr_pages.exit

if.end.i.i:                                       ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %compound_nr.i.i = getelementptr %struct.page, ptr %folio, i32 1, i32 1, i32 0, i32 2
  %9 = ptrtoint ptr %compound_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %compound_nr.i.i, align 4
  br label %folio_nr_pages.exit

folio_nr_pages.exit:                              ; preds = %if.end.i.i, %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge
  %retval.0.i.i = phi i32 [ %10, %if.end.i.i ], [ 1, %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge ]
  %sub = sub i32 0, %retval.0.i.i
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !180
  %and.i.i.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i9 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i9, label %if.then21.i.i, label %do.end11.i.i

do.end11.i.i:                                     ; preds = %folio_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__mod_lruvec_page_state(ptr noundef %folio, i32 noundef 20, i32 noundef %sub) #8
  br label %do.body23.i.i

if.then21.i.i:                                    ; preds = %folio_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  tail call void @__mod_lruvec_page_state(ptr noundef %folio, i32 noundef 20, i32 noundef %sub) #8
  tail call void @trace_hardirqs_on() #8
  br label %do.body23.i.i

do.body23.i.i:                                    ; preds = %if.then21.i.i, %do.end11.i.i
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !181
  %and.i.i.i.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body23.i.i.lruvec_stat_mod_folio.exit_crit_edge, !prof !182

do.body23.i.i.lruvec_stat_mod_folio.exit_crit_edge: ; preds = %do.body23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lruvec_stat_mod_folio.exit

if.then36.i.i:                                    ; preds = %do.body23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %lruvec_stat_mod_folio.exit

lruvec_stat_mod_folio.exit:                       ; preds = %if.then36.i.i, %do.body23.i.i.lruvec_stat_mod_folio.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %11) #8, !srcloc !183
  %13 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.i.not.i.i.i.i = icmp eq i32 %14, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i, label %zone_stat_mod_folio.exit, !prof !182

if.then.i.i.i.i:                                  ; preds = %lruvec_stat_mod_folio.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.26) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #8, !srcloc !218
  unreachable

zone_stat_mod_folio.exit:                         ; preds = %lruvec_stat_mod_folio.exit
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i.i.i.i = lshr i32 %14, 30
  %arrayidx.i.i.i = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %shr.i.i.i.i
  tail call void @mod_zone_page_state(ptr noundef %arrayidx.i.i.i, i32 noundef 6, i32 noundef %sub) #8
  %conv = sext i32 %sub to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %15 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i.i = icmp eq i32 %15, 0
  %16 = tail call i32 @llvm.ctlz.i32(i32 %15, i1 true) #8, !range !184
  %arrayidx.i = getelementptr %struct.bdi_writeback, ptr %wb, i32 0, i32 9, i32 0
  %sub.i.op.i.i = shl nuw nsw i32 %16, 3
  %sub.i.op.i.i.op = xor i32 %sub.i.op.i.i, 248
  %sub.i.op.i.i.op.op = add nuw nsw i32 %sub.i.op.i.i.op, 8
  %mul.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.op.i.i.op.op
  tail call void @percpu_counter_add_batch(ptr noundef %arrayidx.i, i64 noundef %conv, i32 noundef %mul.i) #8
  %mul = shl i32 %retval.0.i.i, 12
  %conv.i = zext i32 %mul to i64
  %17 = tail call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task.i, align 8
  %cancelled_write_bytes.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 155, i32 6
  %21 = ptrtoint ptr %cancelled_write_bytes.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %cancelled_write_bytes.i, align 8
  %add.i10 = add i64 %22, %conv.i
  store i64 %add.i10, ptr %cancelled_write_bytes.i, align 8
  br label %if.end

if.end:                                           ; preds = %zone_stat_mod_folio.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__folio_mark_dirty(ptr noundef %folio, ptr noundef %mapping, i32 noundef %warn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_pages = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %i_pages) #8
  %mapping5 = getelementptr inbounds %struct.anon.88, ptr %folio, i32 0, i32 2
  %0 = ptrtoint ptr %mapping5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping5, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end54_crit_edge, label %if.then

entry.if.end54_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %warn)
  %tobool6.not = icmp eq i32 %warn, 0
  br i1 %tobool6.not, label %if.then.if.end44_crit_edge, label %land.rhs

if.then.if.end44_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

land.rhs:                                         ; preds = %if.then
  %2 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_flags.exit.i, label %if.then.i.i, !prof !186

if.then.i.i:                                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !197
  unreachable

folio_flags.exit.i:                               ; preds = %land.rhs
  %5 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %folio, align 4
  %7 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not = icmp eq i32 %7, 0
  br i1 %tobool.i.not, label %land.rhs12, label %folio_test_uptodate.exit

folio_test_uptodate.exit:                         ; preds = %folio_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !220
  br label %if.end44

land.rhs12:                                       ; preds = %folio_flags.exit.i
  %.b65 = load i1, ptr @__folio_mark_dirty.__already_done, align 1
  br i1 %.b65, label %land.rhs12.if.end44_crit_edge, label %if.then19, !prof !186

land.rhs12.if.end44_crit_edge:                    ; preds = %land.rhs12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then19:                                        ; preds = %land.rhs12
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__folio_mark_dirty.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2512, i32 noundef 9, ptr noundef null) #8
  br label %if.end44

if.end44:                                         ; preds = %if.then19, %land.rhs12.if.end44_crit_edge, %folio_test_uptodate.exit, %if.then.if.end44_crit_edge
  %8 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mapping, align 4
  tail call fastcc void @trace_writeback_dirty_folio(ptr noundef %folio, ptr noundef %mapping) #8
  %10 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mapping, align 4
  %call.i.i = tail call ptr @inode_to_bdi(ptr noundef %11) #8
  %capabilities.i.i = getelementptr inbounds %struct.backing_dev_info, ptr %call.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %capabilities.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %capabilities.i.i, align 8
  %and.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end44.folio_account_dirtied.exit_crit_edge, label %if.then.i

if.end44.folio_account_dirtied.exit_crit_edge:    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %folio_account_dirtied.exit

if.then.i:                                        ; preds = %if.end44
  %14 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.i.not.i.i.i.i = icmp eq i32 %15, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i, label %PageHead.exit.i.i.i, !prof !182

if.then.i.i.i.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.23) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #8, !srcloc !208
  unreachable

PageHead.exit.i.i.i:                              ; preds = %if.then.i
  %16 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %folio, align 4
  %18 = and i32 %17, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i.i, label %PageHead.exit.i.i.i.folio_nr_pages.exit.i_crit_edge, label %if.end.i.i.i

PageHead.exit.i.i.i.folio_nr_pages.exit.i_crit_edge: ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %folio_nr_pages.exit.i

if.end.i.i.i:                                     ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %compound_nr.i.i.i = getelementptr %struct.page, ptr %folio, i32 1, i32 1, i32 0, i32 2
  %19 = ptrtoint ptr %compound_nr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %compound_nr.i.i.i, align 4
  br label %folio_nr_pages.exit.i

folio_nr_pages.exit.i:                            ; preds = %if.end.i.i.i, %PageHead.exit.i.i.i.folio_nr_pages.exit.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %20, %if.end.i.i.i ], [ 1, %PageHead.exit.i.i.i.folio_nr_pages.exit.i_crit_edge ]
  %i_wb.i.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 30
  %21 = ptrtoint ptr %i_wb.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_wb.i.i, align 4
  %tobool.not.i.i67 = icmp eq ptr %22, null
  br i1 %tobool.not.i.i67, label %if.then.i.i68, label %folio_nr_pages.exit.i.inode_attach_wb.exit.i_crit_edge

folio_nr_pages.exit.i.inode_attach_wb.exit.i_crit_edge: ; preds = %folio_nr_pages.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %inode_attach_wb.exit.i

if.then.i.i68:                                    ; preds = %folio_nr_pages.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__inode_attach_wb(ptr noundef %9, ptr noundef %folio) #8
  br label %inode_attach_wb.exit.i

inode_attach_wb.exit.i:                           ; preds = %if.then.i.i68, %folio_nr_pages.exit.i.inode_attach_wb.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %23 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i37.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i37.i, label %inode_attach_wb.exit.i.inode_to_wb.exit.i_crit_edge, label %land.rhs.i.i

inode_attach_wb.exit.i.inode_to_wb.exit.i_crit_edge: ; preds = %inode_attach_wb.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %inode_to_wb.exit.i

land.rhs.i.i:                                     ; preds = %inode_attach_wb.exit.i
  %dep_map.i.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 18, i32 0, i32 0, i32 4
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i, label %land.rhs.i.i.inode_to_wb.exit.i_crit_edge

land.rhs.i.i.inode_to_wb.exit.i_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %inode_to_wb.exit.i

land.lhs.true.i.i:                                ; preds = %land.rhs.i.i
  %i_mapping.i.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 9
  %24 = ptrtoint ptr %i_mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_mapping.i.i, align 8
  %dep_map2.i.i = getelementptr inbounds %struct.address_space, ptr %25, i32 0, i32 1, i32 0, i32 0, i32 0, i32 4
  %call.i60.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i60.i.i, 0
  br i1 %tobool4.not.i.i, label %land.rhs5.i.i, label %land.lhs.true.i.i.inode_to_wb.exit.i_crit_edge

land.lhs.true.i.i.inode_to_wb.exit.i_crit_edge:   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %inode_to_wb.exit.i

land.rhs5.i.i:                                    ; preds = %land.lhs.true.i.i
  %26 = ptrtoint ptr %i_wb.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_wb.i.i, align 4
  %dep_map6.i.i = getelementptr inbounds %struct.bdi_writeback, ptr %27, i32 0, i32 7, i32 0, i32 0, i32 4
  %call.i61.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map6.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61.i.i)
  %tobool8.not.i.i = icmp eq i32 %call.i61.i.i, 0
  br i1 %tobool8.not.i.i, label %land.rhs13.i.i, label %land.rhs5.i.i.inode_to_wb.exit.i_crit_edge

land.rhs5.i.i.inode_to_wb.exit.i_crit_edge:       ; preds = %land.rhs5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %inode_to_wb.exit.i

land.rhs13.i.i:                                   ; preds = %land.rhs5.i.i
  %.b54.i.i = load i1, ptr @inode_to_wb.__already_done, align 1
  br i1 %.b54.i.i, label %land.rhs13.i.i.inode_to_wb.exit.i_crit_edge, label %if.then.i39.i, !prof !186

land.rhs13.i.i.inode_to_wb.exit.i_crit_edge:      ; preds = %land.rhs13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %inode_to_wb.exit.i

if.then.i39.i:                                    ; preds = %land.rhs13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @inode_to_wb.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 272, i32 noundef 9, ptr noundef null) #8
  br label %inode_to_wb.exit.i

inode_to_wb.exit.i:                               ; preds = %if.then.i39.i, %land.rhs13.i.i.inode_to_wb.exit.i_crit_edge, %land.rhs5.i.i.inode_to_wb.exit.i_crit_edge, %land.lhs.true.i.i.inode_to_wb.exit.i_crit_edge, %land.rhs.i.i.inode_to_wb.exit.i_crit_edge, %inode_attach_wb.exit.i.inode_to_wb.exit.i_crit_edge
  %28 = ptrtoint ptr %i_wb.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_wb.i.i, align 4
  tail call void @__mod_lruvec_page_state(ptr noundef %folio, i32 noundef 20, i32 noundef %retval.0.i.i.i) #8
  %30 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp.i.not.i.i.i.i.i = icmp eq i32 %31, -1
  br i1 %cmp.i.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %__zone_stat_mod_folio.exit.i, !prof !182

if.then.i.i.i.i.i:                                ; preds = %inode_to_wb.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.26) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #8, !srcloc !218
  unreachable

__zone_stat_mod_folio.exit.i:                     ; preds = %inode_to_wb.exit.i
  %shr.i.i.i.i.i = lshr i32 %31, 30
  %arrayidx.i.i.i.i = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %shr.i.i.i.i.i
  tail call void @__mod_zone_page_state(ptr noundef %arrayidx.i.i.i.i, i32 noundef 6, i32 noundef %retval.0.i.i.i) #8
  %32 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp.i.not.i.i.i.i40.i = icmp eq i32 %33, -1
  br i1 %cmp.i.not.i.i.i.i40.i, label %if.then.i.i.i.i41.i, label %__node_stat_mod_folio.exit.i, !prof !182

if.then.i.i.i.i41.i:                              ; preds = %__zone_stat_mod_folio.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.26) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #8, !srcloc !218
  unreachable

__node_stat_mod_folio.exit.i:                     ; preds = %__zone_stat_mod_folio.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 31, i32 noundef %retval.0.i.i.i) #8
  %conv.i = sext i32 %retval.0.i.i.i to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %34 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i.i.i.i = icmp eq i32 %34, 0
  %35 = tail call i32 @llvm.ctlz.i32(i32 %34, i1 true) #8, !range !184
  %arrayidx.i.i = getelementptr %struct.bdi_writeback, ptr %29, i32 0, i32 9, i32 0
  %sub.i.op.i.i.i = shl nuw nsw i32 %35, 3
  %sub.i.op.i.i.i.op = xor i32 %sub.i.op.i.i.i, 248
  %sub.i.op.i.i.i.op.op = add nuw nsw i32 %sub.i.op.i.i.i.op, 8
  %mul.i.i = select i1 %tobool.not.i.i.i.i, i32 0, i32 %sub.i.op.i.i.i.op.op
  tail call void @percpu_counter_add_batch(ptr noundef %arrayidx.i.i, i64 noundef %conv.i, i32 noundef %mul.i.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %36 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.i.i46.i = icmp eq i32 %36, 0
  %37 = tail call i32 @llvm.ctlz.i32(i32 %36, i1 true) #8, !range !184
  %arrayidx.i51.i = getelementptr %struct.bdi_writeback, ptr %29, i32 0, i32 9, i32 2
  %sub.i.op.i.i47.i = shl nuw nsw i32 %37, 3
  %sub.i.op.i.i47.i.op = xor i32 %sub.i.op.i.i47.i, 248
  %sub.i.op.i.i47.i.op.op = add nuw nsw i32 %sub.i.op.i.i47.i.op, 8
  %mul.i53.i = select i1 %tobool.not.i.i.i46.i, i32 0, i32 %sub.i.op.i.i47.i.op.op
  tail call void @percpu_counter_add_batch(ptr noundef %arrayidx.i51.i, i64 noundef %conv.i, i32 noundef %mul.i53.i) #8
  %mul.i = shl i32 %retval.0.i.i.i, 12
  %conv.i.i = zext i32 %mul.i to i64
  %38 = tail call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i.i.i69 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i69 to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task.i.i, align 8
  %write_bytes.i.i = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 155, i32 5
  %42 = ptrtoint ptr %write_bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %write_bytes.i.i, align 8
  %add.i55.i = add i64 %43, %conv.i.i
  store i64 %add.i55.i, ptr %write_bytes.i.i, align 8
  %44 = tail call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i56.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i56.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task.i, align 8
  %nr_dirtied.i = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 184
  %48 = ptrtoint ptr %nr_dirtied.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nr_dirtied.i, align 4
  %add.i = add i32 %49, %retval.0.i.i.i
  store i32 %add.i, ptr %nr_dirtied.i, align 4
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 3
  %50 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %51
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i, align 4
  %add13.i = add i32 %53, ptrtoint (ptr @bdp_ratelimits to i32)
  %54 = inttoptr i32 %add13.i to ptr
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  %add14.i = add i32 %56, %retval.0.i.i.i
  store i32 %add14.i, ptr %54, align 4
  tail call fastcc void @mem_cgroup_track_foreign_dirty(ptr noundef %folio, ptr noundef %29) #8
  br label %folio_account_dirtied.exit

folio_account_dirtied.exit:                       ; preds = %__node_stat_mod_folio.exit.i, %if.end44.folio_account_dirtied.exit_crit_edge
  %57 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %57, align 4
  %and.i.i.i.i.i = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i70 = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i70, label %folio_test_swapbacked.exit.i.i, label %if.then.i.i.i.i71, !prof !186

if.then.i.i.i.i71:                                ; preds = %folio_account_dirtied.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !197
  unreachable

folio_test_swapbacked.exit.i.i:                   ; preds = %folio_account_dirtied.exit
  %60 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %folio, align 4
  %62 = and i32 %61, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.i.not.i.i = icmp eq i32 %62, 0
  br i1 %tobool.i.not.i.i, label %folio_test_swapbacked.exit.i.i.if.end.i_crit_edge, label %land.rhs.i.i73

folio_test_swapbacked.exit.i.i.if.end.i_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.rhs.i.i73:                                   ; preds = %folio_test_swapbacked.exit.i.i
  %63 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %57, align 4
  %and.i.i.i.i = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i72 = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i72, label %folio_test_swapcache.exit.i, label %if.then.i.i.i, !prof !186

if.then.i.i.i:                                    ; preds = %land.rhs.i.i73
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !197
  unreachable

folio_test_swapcache.exit.i:                      ; preds = %land.rhs.i.i73
  %65 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %folio, align 4
  %67 = and i32 %66, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.i.not.i74 = icmp eq i32 %67, 0
  br i1 %tobool.i.not.i74, label %folio_test_swapcache.exit.i.if.end.i_crit_edge, label %if.then.i75, !prof !186

folio_test_swapcache.exit.i.if.end.i_crit_edge:   ; preds = %folio_test_swapcache.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i75:                                      ; preds = %folio_test_swapcache.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = tail call i32 @__page_file_index(ptr noundef %folio) #8
  br label %folio_index.exit

if.end.i:                                         ; preds = %folio_test_swapcache.exit.i.if.end.i_crit_edge, %folio_test_swapbacked.exit.i.i.if.end.i_crit_edge
  %index.i = getelementptr inbounds %struct.anon.88, ptr %folio, i32 0, i32 3
  %68 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %index.i, align 4
  br label %folio_index.exit

folio_index.exit:                                 ; preds = %if.end.i, %if.then.i75
  %retval.0.i = phi i32 [ %call2.i, %if.then.i75 ], [ %69, %if.end.i ]
  tail call void @__xa_set_mark(ptr noundef %i_pages, i32 noundef %retval.0.i, i32 noundef 0) #8
  br label %if.end54

if.end54:                                         ; preds = %folio_index.exit, %entry.if.end54_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i_pages, i32 noundef %call2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__xa_set_mark(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @filemap_dirty_folio(ptr noundef %mapping, ptr noundef %folio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @folio_memcg_lock(ptr noundef %folio) #8
  %0 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_set_dirty.exit, label %if.then.i.i, !prof !186

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !197
  unreachable

folio_test_set_dirty.exit:                        ; preds = %entry
  %call1.i = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %folio) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.i.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %folio_test_set_dirty.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @folio_memcg_unlock(ptr noundef %folio) #8
  br label %return

if.end:                                           ; preds = %folio_test_set_dirty.exit
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %0, align 4
  %and.i.i.i12 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i12)
  %tobool.not.i.i13 = icmp eq i32 %and.i.i.i12, 0
  br i1 %tobool.not.i.i13, label %folio_test_private.exit, label %if.then.i.i14, !prof !186

if.then.i.i14:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !197
  unreachable

folio_test_private.exit:                          ; preds = %if.end
  %5 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %folio, align 4
  %7 = lshr i32 %6, 13
  %.lobit = and i32 %7, 1
  %8 = xor i32 %.lobit, 1
  tail call void @__folio_mark_dirty(ptr noundef %folio, ptr noundef %mapping, i32 noundef %8)
  tail call void @folio_memcg_unlock(ptr noundef %folio) #8
  %9 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mapping, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %folio_test_private.exit.return_crit_edge, label %if.then2

folio_test_private.exit.return_crit_edge:         ; preds = %folio_test_private.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then2:                                         ; preds = %folio_test_private.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__mark_inode_dirty(ptr noundef nonnull %10, i32 noundef 4) #8
  br label %return

return:                                           ; preds = %if.then2, %folio_test_private.exit.return_crit_edge, %if.then
  ret i1 %tobool.i.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_memcg_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_memcg_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @folio_account_redirty(ptr noundef %folio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping1 = getelementptr inbounds %struct.anon.88, ptr %folio, i32 0, i32 2
  %0 = ptrtoint ptr %mapping1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call ptr @inode_to_bdi(ptr noundef %3) #8
  %capabilities.i = getelementptr inbounds %struct.backing_dev_info, ptr %call.i, i32 0, i32 6
  %4 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %capabilities.i, align 8
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.i.not.i.i.i = icmp eq i32 %9, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %PageHead.exit.i.i, !prof !182

if.then.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.23) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #8, !srcloc !208
  unreachable

PageHead.exit.i.i:                                ; preds = %if.then
  %10 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %folio, align 4
  %12 = and i32 %11, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i, label %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge, label %if.end.i.i

PageHead.exit.i.i.folio_nr_pages.exit_crit_edge:  ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %folio_nr_pages.exit

if.end.i.i:                                       ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %compound_nr.i.i = getelementptr %struct.page, ptr %folio, i32 1, i32 1, i32 0, i32 2
  %13 = ptrtoint ptr %compound_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %compound_nr.i.i, align 4
  br label %folio_nr_pages.exit

folio_nr_pages.exit:                              ; preds = %if.end.i.i, %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge
  %retval.0.i.i = phi i32 [ %14, %if.end.i.i ], [ 1, %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge ]
  %15 = tail call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %18, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !192
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i, label %folio_nr_pages.exit.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

folio_nr_pages.exit.rcu_read_lock.exit.i_crit_edge: ; preds = %folio_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %folio_nr_pages.exit
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i14 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i14, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #8
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %folio_nr_pages.exit.rcu_read_lock.exit.i_crit_edge
  %i_state.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 24
  %19 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %i_state.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !217
  %and.i15 = and i32 %20, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i15)
  %tobool.not.i = icmp eq i32 %and.i15, 0
  br i1 %tobool.not.i, label %rcu_read_lock.exit.i.unlocked_inode_to_wb_begin.exit_crit_edge, label %do.body10.i, !prof !186

rcu_read_lock.exit.i.unlocked_inode_to_wb_begin.exit_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlocked_inode_to_wb_begin.exit

do.body10.i:                                      ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 9
  %21 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_mapping.i, align 8
  %i_pages.i = getelementptr inbounds %struct.address_space, ptr %22, i32 0, i32 1
  %call12.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %i_pages.i) #8
  br label %unlocked_inode_to_wb_begin.exit

unlocked_inode_to_wb_begin.exit:                  ; preds = %do.body10.i, %rcu_read_lock.exit.i.unlocked_inode_to_wb_begin.exit_crit_edge
  %cookie.sroa.530.0 = phi i32 [ 0, %rcu_read_lock.exit.i.unlocked_inode_to_wb_begin.exit_crit_edge ], [ %call12.i, %do.body10.i ]
  %i_wb.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 30
  %23 = ptrtoint ptr %i_wb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_wb.i, align 4
  %25 = tail call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i16 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i16 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task, align 8
  %nr_dirtied = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 184
  %29 = ptrtoint ptr %nr_dirtied to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nr_dirtied, align 4
  %sub = sub i32 %30, %retval.0.i.i
  store i32 %sub, ptr %nr_dirtied, align 4
  %31 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp.i.not.i.i.i.i = icmp eq i32 %32, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i, label %node_stat_mod_folio.exit, !prof !182

if.then.i.i.i.i:                                  ; preds = %unlocked_inode_to_wb_begin.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.26) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #8, !srcloc !218
  unreachable

node_stat_mod_folio.exit:                         ; preds = %unlocked_inode_to_wb_begin.exit
  %sub5 = sub i32 0, %retval.0.i.i
  tail call void @mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 31, i32 noundef %sub5) #8
  %conv = sext i32 %sub5 to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %33 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i.i.i = icmp eq i32 %33, 0
  %34 = tail call i32 @llvm.ctlz.i32(i32 %33, i1 true) #8, !range !184
  %arrayidx.i = getelementptr %struct.bdi_writeback, ptr %24, i32 0, i32 9, i32 2
  %sub.i.op.i.i = shl nuw nsw i32 %34, 3
  %sub.i.op.i.i.op = xor i32 %sub.i.op.i.i, 248
  %sub.i.op.i.i.op.op = add nuw nsw i32 %sub.i.op.i.i.op, 8
  %mul.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.op.i.i.op.op
  tail call void @percpu_counter_add_batch(ptr noundef %arrayidx.i, i64 noundef %conv, i32 noundef %mul.i) #8
  br i1 %tobool.not.i, label %node_stat_mod_folio.exit.if.end.i_crit_edge, label %if.then.i, !prof !186

node_stat_mod_folio.exit.if.end.i_crit_edge:      ; preds = %node_stat_mod_folio.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %node_stat_mod_folio.exit
  call void @__sanitizer_cov_trace_pc() #10
  %i_mapping.i18 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 9
  %35 = ptrtoint ptr %i_mapping.i18 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_mapping.i18, align 8
  %i_pages.i19 = getelementptr inbounds %struct.address_space, ptr %36, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i_pages.i19, i32 noundef %cookie.sroa.530.0) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %node_stat_mod_folio.exit.if.end.i_crit_edge
  %call.i.i21 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i21, label %if.end.i.unlocked_inode_to_wb_end.exit_crit_edge, label %land.lhs.true.i.i24

if.end.i.unlocked_inode_to_wb_end.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlocked_inode_to_wb_end.exit

land.lhs.true.i.i24:                              ; preds = %if.end.i
  %call1.i.i22 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i22)
  %tobool.not.i.i23 = icmp eq i32 %call1.i.i22, 0
  br i1 %tobool.not.i.i23, label %land.lhs.true.i.i24.unlocked_inode_to_wb_end.exit_crit_edge, label %land.lhs.true2.i.i26

land.lhs.true.i.i24.unlocked_inode_to_wb_end.exit_crit_edge: ; preds = %land.lhs.true.i.i24
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlocked_inode_to_wb_end.exit

land.lhs.true2.i.i26:                             ; preds = %land.lhs.true.i.i24
  %.b4.i.i25 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i.i25, label %land.lhs.true2.i.i26.unlocked_inode_to_wb_end.exit_crit_edge, label %if.then.i.i27

land.lhs.true2.i.i26.unlocked_inode_to_wb_end.exit_crit_edge: ; preds = %land.lhs.true2.i.i26
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlocked_inode_to_wb_end.exit

if.then.i.i27:                                    ; preds = %land.lhs.true2.i.i26
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.17) #8
  br label %unlocked_inode_to_wb_end.exit

unlocked_inode_to_wb_end.exit:                    ; preds = %if.then.i.i27, %land.lhs.true2.i.i26.unlocked_inode_to_wb_end.exit_crit_edge, %land.lhs.true.i.i24.unlocked_inode_to_wb_end.exit_crit_edge, %if.end.i.unlocked_inode_to_wb_end.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !193
  %37 = tail call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i.i.i.i.i.i28 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i.i28 to ptr
  %preempt_count.i.i.i.i.i29 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i.i29 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i.i29, align 4
  %sub.i.i.i.i = add i32 %40, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i29, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %if.end

if.end:                                           ; preds = %unlocked_inode_to_wb_end.exit, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @folio_redirty_for_writepage(ptr nocapture noundef %wbc, ptr noundef %folio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i.not.i.i.i = icmp eq i32 %1, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %PageHead.exit.i.i, !prof !182

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.23) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #8, !srcloc !208
  unreachable

PageHead.exit.i.i:                                ; preds = %entry
  %2 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %folio, align 4
  %4 = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge, label %if.end.i.i

PageHead.exit.i.i.folio_nr_pages.exit_crit_edge:  ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %folio_nr_pages.exit

if.end.i.i:                                       ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %compound_nr.i.i = getelementptr %struct.page, ptr %folio, i32 1, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %compound_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %compound_nr.i.i, align 4
  br label %folio_nr_pages.exit

folio_nr_pages.exit:                              ; preds = %if.end.i.i, %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge
  %retval.0.i.i = phi i32 [ %6, %if.end.i.i ], [ 1, %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge ]
  %pages_skipped = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 1
  %7 = ptrtoint ptr %pages_skipped to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pages_skipped, align 4
  %add = add i32 %8, %retval.0.i.i
  store i32 %add, ptr %pages_skipped, align 4
  %mapping = getelementptr inbounds %struct.anon.88, ptr %folio, i32 0, i32 2
  %9 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mapping, align 4
  %call1 = tail call zeroext i1 @filemap_dirty_folio(ptr noundef %10, ptr noundef %folio)
  tail call void @folio_account_redirty(ptr noundef %folio)
  ret i1 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @folio_mark_dirty(ptr noundef %folio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @folio_mapping(ptr noundef %folio) #8
  %tobool.not = icmp eq ptr %call, null
  %0 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i.i23 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i23)
  %tobool.not.i.i24 = icmp eq i32 %and.i.i.i23, 0
  br i1 %tobool.not, label %if.end7, label %if.then, !prof !182

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i.i24, label %folio_test_reclaim.exit, label %if.then.i.i, !prof !186

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !197
  unreachable

folio_test_reclaim.exit:                          ; preds = %if.then
  %3 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %folio, align 4
  %5 = and i32 %4, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %folio_test_reclaim.exit.if.end_crit_edge, label %if.then4

folio_test_reclaim.exit.if.end_crit_edge:         ; preds = %folio_test_reclaim.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then4:                                         ; preds = %folio_test_reclaim.exit
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %0, align 4
  %and.i.i.i20 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i20)
  %tobool.not.i.i21 = icmp eq i32 %and.i.i.i20, 0
  br i1 %tobool.not.i.i21, label %folio_clear_reclaim.exit, label %if.then.i.i22, !prof !186

if.then.i.i22:                                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !197
  unreachable

folio_clear_reclaim.exit:                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 18, ptr noundef %folio) #8
  br label %if.end

if.end:                                           ; preds = %folio_clear_reclaim.exit, %folio_test_reclaim.exit.if.end_crit_edge
  %a_ops = getelementptr inbounds %struct.address_space, ptr %call, i32 0, i32 9
  %8 = ptrtoint ptr %a_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %a_ops, align 4
  %set_page_dirty = getelementptr inbounds %struct.address_space_operations, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %set_page_dirty to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_page_dirty, align 4
  %call5 = tail call i32 %11(ptr noundef %folio) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6 = icmp ne i32 %call5, 0
  br label %cleanup

if.end7:                                          ; preds = %entry
  br i1 %tobool.not.i.i24, label %folio_test_dirty.exit, label %if.then.i.i25, !prof !186

if.then.i.i25:                                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !197
  unreachable

folio_test_dirty.exit:                            ; preds = %if.end7
  %12 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %folio, align 4
  %14 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i26.not = icmp eq i32 %14, 0
  br i1 %tobool.i26.not, label %if.then9, label %folio_test_dirty.exit.if.end13_crit_edge

folio_test_dirty.exit.if.end13_crit_edge:         ; preds = %folio_test_dirty.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then9:                                         ; preds = %folio_test_dirty.exit
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %0, align 4
  %and.i.i.i27 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i27)
  %tobool.not.i.i28 = icmp eq i32 %and.i.i.i27, 0
  br i1 %tobool.not.i.i28, label %folio_test_set_dirty.exit, label %if.then.i.i29, !prof !186

if.then.i.i29:                                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !197
  unreachable

folio_test_set_dirty.exit:                        ; preds = %if.then9
  %call1.i = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %folio) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.i30.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.i30.not, label %folio_test_set_dirty.exit.cleanup_crit_edge, label %folio_test_set_dirty.exit.if.end13_crit_edge

folio_test_set_dirty.exit.if.end13_crit_edge:     ; preds = %folio_test_set_dirty.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

folio_test_set_dirty.exit.cleanup_crit_edge:      ; preds = %folio_test_set_dirty.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %folio_test_set_dirty.exit.if.end13_crit_edge, %folio_test_dirty.exit.if.end13_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %folio_test_set_dirty.exit.cleanup_crit_edge, %if.end
  %retval.0 = phi i1 [ %tobool6, %if.end ], [ false, %if.end13 ], [ true, %folio_test_set_dirty.exit.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @folio_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @set_page_dirty_lock(ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.19, i32 noundef 788) #8
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !186

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %5 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !186

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !197
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %4, i32 noundef 4) #8
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %4, align 4
  %and.i.i4.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i_crit_edge

folio_flags.exit.i.i.if.then.i_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %4, i32 1, i32 3, i32 1) #8
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #8, !srcloc !198
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !199
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_page.exit

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i.if.then.i_crit_edge
  tail call void @__folio_lock(ptr noundef %4) #8
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %call = tail call zeroext i1 @set_page_dirty(ptr noundef %page) #8
  %conv = zext i1 %call to i32
  tail call void @unlock_page(ptr noundef %page) #8
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__folio_cancel_dirty(ptr noundef %folio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @folio_mapping(ptr noundef %folio) #8
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %call.i = tail call ptr @inode_to_bdi(ptr noundef %1) #8
  %capabilities.i = getelementptr inbounds %struct.backing_dev_info, ptr %call.i, i32 0, i32 6
  %2 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %capabilities.i, align 8
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i17.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i17.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  tail call void @folio_memcg_lock(ptr noundef %folio) #8
  %6 = tail call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !192
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i, label %if.then.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.rcu_read_lock.exit.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i18 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i18, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i19

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

if.then.i.i19:                                    ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #8
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i19, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then.rcu_read_lock.exit.i_crit_edge
  %i_state.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 24
  %10 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %i_state.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !217
  %and.i20 = and i32 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20)
  %tobool.not.i = icmp eq i32 %and.i20, 0
  br i1 %tobool.not.i, label %rcu_read_lock.exit.i.unlocked_inode_to_wb_begin.exit_crit_edge, label %do.body10.i, !prof !186

rcu_read_lock.exit.i.unlocked_inode_to_wb_begin.exit_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlocked_inode_to_wb_begin.exit

do.body10.i:                                      ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 9
  %12 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_mapping.i, align 8
  %i_pages.i = getelementptr inbounds %struct.address_space, ptr %13, i32 0, i32 1
  %call12.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %i_pages.i) #8
  br label %unlocked_inode_to_wb_begin.exit

unlocked_inode_to_wb_begin.exit:                  ; preds = %do.body10.i, %rcu_read_lock.exit.i.unlocked_inode_to_wb_begin.exit_crit_edge
  %cookie.sroa.534.0 = phi i32 [ 0, %rcu_read_lock.exit.i.unlocked_inode_to_wb_begin.exit_crit_edge ], [ %call12.i, %do.body10.i ]
  %i_wb.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 30
  %14 = ptrtoint ptr %i_wb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_wb.i, align 4
  %16 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %and.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_clear_dirty.exit, label %if.then.i.i, !prof !186

if.then.i.i:                                      ; preds = %unlocked_inode_to_wb_begin.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !197
  unreachable

folio_test_clear_dirty.exit:                      ; preds = %unlocked_inode_to_wb_begin.exit
  %call1.i = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %folio) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.i.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.i.not, label %folio_test_clear_dirty.exit.if.end_crit_edge, label %if.then4

folio_test_clear_dirty.exit.if.end_crit_edge:     ; preds = %folio_test_clear_dirty.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then4:                                         ; preds = %folio_test_clear_dirty.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @folio_account_cleaned(ptr noundef %folio, ptr noundef %call, ptr noundef %15)
  br label %if.end

if.end:                                           ; preds = %if.then4, %folio_test_clear_dirty.exit.if.end_crit_edge
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i, !prof !186

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %i_mapping.i22 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 9
  %19 = ptrtoint ptr %i_mapping.i22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_mapping.i22, align 8
  %i_pages.i23 = getelementptr inbounds %struct.address_space, ptr %20, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i_pages.i23, i32 noundef %cookie.sroa.534.0) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %call.i.i25 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i25, label %if.end.i.unlocked_inode_to_wb_end.exit_crit_edge, label %land.lhs.true.i.i28

if.end.i.unlocked_inode_to_wb_end.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlocked_inode_to_wb_end.exit

land.lhs.true.i.i28:                              ; preds = %if.end.i
  %call1.i.i26 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i26)
  %tobool.not.i.i27 = icmp eq i32 %call1.i.i26, 0
  br i1 %tobool.not.i.i27, label %land.lhs.true.i.i28.unlocked_inode_to_wb_end.exit_crit_edge, label %land.lhs.true2.i.i30

land.lhs.true.i.i28.unlocked_inode_to_wb_end.exit_crit_edge: ; preds = %land.lhs.true.i.i28
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlocked_inode_to_wb_end.exit

land.lhs.true2.i.i30:                             ; preds = %land.lhs.true.i.i28
  %.b4.i.i29 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i.i29, label %land.lhs.true2.i.i30.unlocked_inode_to_wb_end.exit_crit_edge, label %if.then.i.i31

land.lhs.true2.i.i30.unlocked_inode_to_wb_end.exit_crit_edge: ; preds = %land.lhs.true2.i.i30
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlocked_inode_to_wb_end.exit

if.then.i.i31:                                    ; preds = %land.lhs.true2.i.i30
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.17) #8
  br label %unlocked_inode_to_wb_end.exit

unlocked_inode_to_wb_end.exit:                    ; preds = %if.then.i.i31, %land.lhs.true2.i.i30.unlocked_inode_to_wb_end.exit_crit_edge, %land.lhs.true.i.i28.unlocked_inode_to_wb_end.exit_crit_edge, %if.end.i.unlocked_inode_to_wb_end.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !193
  %21 = tail call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i.i.i.i.i.i32 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i.i32 to ptr
  %preempt_count.i.i.i.i.i33 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i.i33, align 4
  %sub.i.i.i.i = add i32 %24, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i33, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  tail call void @folio_memcg_unlock(ptr noundef %folio) #8
  br label %if.end5

if.else:                                          ; preds = %entry
  %25 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %and.i.i.i14 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i14)
  %tobool.not.i.i15 = icmp eq i32 %and.i.i.i14, 0
  br i1 %tobool.not.i.i15, label %folio_clear_dirty.exit, label %if.then.i.i16, !prof !186

if.then.i.i16:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !197
  unreachable

folio_clear_dirty.exit:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %folio) #8
  br label %if.end5

if.end5:                                          ; preds = %folio_clear_dirty.exit, %unlocked_inode_to_wb_end.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @folio_mkclean(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @__folio_end_writeback(ptr noundef %folio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i.not.i.i.i = icmp eq i32 %1, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %PageHead.exit.i.i, !prof !182

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.23) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #8, !srcloc !208
  unreachable

PageHead.exit.i.i:                                ; preds = %entry
  %2 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %folio, align 4
  %4 = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i74 = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i74, label %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge, label %if.end.i.i

PageHead.exit.i.i.folio_nr_pages.exit_crit_edge:  ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %folio_nr_pages.exit

if.end.i.i:                                       ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %compound_nr.i.i = getelementptr %struct.page, ptr %folio, i32 1, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %compound_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %compound_nr.i.i, align 4
  br label %folio_nr_pages.exit

folio_nr_pages.exit:                              ; preds = %if.end.i.i, %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge
  %retval.0.i.i = phi i32 [ %6, %if.end.i.i ], [ 1, %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge ]
  %call1 = tail call ptr @folio_mapping(ptr noundef %folio) #8
  tail call void @folio_memcg_lock(ptr noundef %folio) #8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %folio_nr_pages.exit.if.else_crit_edge, label %land.lhs.true

folio_nr_pages.exit.if.else_crit_edge:            ; preds = %folio_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %folio_nr_pages.exit
  %flags.i = getelementptr inbounds %struct.address_space, ptr %call1, i32 0, i32 10
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i, align 4
  %9 = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not.not = icmp eq i32 %9, 0
  br i1 %tobool3.not.not, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %10 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call1, align 4
  %call4 = tail call ptr @inode_to_bdi(ptr noundef %11) #8
  %i_pages = getelementptr inbounds %struct.address_space, ptr %call1, i32 0, i32 1
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %i_pages) #8
  %12 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and.i.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_clear_writeback.exit, label %if.then.i.i, !prof !186

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !197
  unreachable

folio_test_clear_writeback.exit:                  ; preds = %if.then
  %call1.i = tail call i32 @_test_and_clear_bit(i32 noundef 15, ptr noundef %folio) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.i.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.i.not, label %folio_test_clear_writeback.exit.if.end22_crit_edge, label %if.then12

folio_test_clear_writeback.exit.if.end22_crit_edge: ; preds = %folio_test_clear_writeback.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then12:                                        ; preds = %folio_test_clear_writeback.exit
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %12, align 4
  %and.i.i.i.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_swapbacked.exit.i.i, label %if.then.i.i.i.i, !prof !186

if.then.i.i.i.i:                                  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !197
  unreachable

folio_test_swapbacked.exit.i.i:                   ; preds = %if.then12
  %17 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %folio, align 4
  %19 = and i32 %18, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool.i.not.i.i, label %folio_test_swapbacked.exit.i.i.if.end.i_crit_edge, label %land.rhs.i.i

folio_test_swapbacked.exit.i.i.if.end.i_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.rhs.i.i:                                     ; preds = %folio_test_swapbacked.exit.i.i
  %20 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %12, align 4
  %and.i.i.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_test_swapcache.exit.i, label %if.then.i.i.i75, !prof !186

if.then.i.i.i75:                                  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !197
  unreachable

folio_test_swapcache.exit.i:                      ; preds = %land.rhs.i.i
  %22 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %folio, align 4
  %24 = and i32 %23, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i.not.i = icmp eq i32 %24, 0
  br i1 %tobool.i.not.i, label %folio_test_swapcache.exit.i.if.end.i_crit_edge, label %if.then.i, !prof !186

folio_test_swapcache.exit.i.if.end.i_crit_edge:   ; preds = %folio_test_swapcache.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %folio_test_swapcache.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = tail call i32 @__page_file_index(ptr noundef %folio) #8
  br label %folio_index.exit

if.end.i:                                         ; preds = %folio_test_swapcache.exit.i.if.end.i_crit_edge, %folio_test_swapbacked.exit.i.i.if.end.i_crit_edge
  %index.i = getelementptr inbounds %struct.anon.88, ptr %folio, i32 0, i32 3
  %25 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %index.i, align 4
  br label %folio_index.exit

folio_index.exit:                                 ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call2.i, %if.then.i ], [ %26, %if.end.i ]
  tail call void @__xa_clear_mark(ptr noundef %i_pages, i32 noundef %retval.0.i, i32 noundef 1) #8
  %capabilities = getelementptr inbounds %struct.backing_dev_info, ptr %call4, i32 0, i32 6
  %27 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %capabilities, align 8
  %and = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %folio_index.exit.if.end22_crit_edge, label %if.then16

folio_index.exit.if.end22_crit_edge:              ; preds = %folio_index.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then16:                                        ; preds = %folio_index.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %29 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i, label %if.then16.inode_to_wb.exit_crit_edge, label %land.rhs.i

if.then16.inode_to_wb.exit_crit_edge:             ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %inode_to_wb.exit

land.rhs.i:                                       ; preds = %if.then16
  %dep_map.i = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 18, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i, label %land.rhs.i.inode_to_wb.exit_crit_edge

land.rhs.i.inode_to_wb.exit_crit_edge:            ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %inode_to_wb.exit

land.lhs.true.i:                                  ; preds = %land.rhs.i
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 9
  %30 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_mapping.i, align 8
  %dep_map2.i = getelementptr inbounds %struct.address_space, ptr %31, i32 0, i32 1, i32 0, i32 0, i32 0, i32 4
  %call.i60.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60.i)
  %tobool4.not.i = icmp eq i32 %call.i60.i, 0
  br i1 %tobool4.not.i, label %land.rhs5.i, label %land.lhs.true.i.inode_to_wb.exit_crit_edge

land.lhs.true.i.inode_to_wb.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %inode_to_wb.exit

land.rhs5.i:                                      ; preds = %land.lhs.true.i
  %i_wb.i = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 30
  %32 = ptrtoint ptr %i_wb.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_wb.i, align 4
  %dep_map6.i = getelementptr inbounds %struct.bdi_writeback, ptr %33, i32 0, i32 7, i32 0, i32 0, i32 4
  %call.i61.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map6.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61.i)
  %tobool8.not.i = icmp eq i32 %call.i61.i, 0
  br i1 %tobool8.not.i, label %land.rhs13.i, label %land.rhs5.i.inode_to_wb.exit_crit_edge

land.rhs5.i.inode_to_wb.exit_crit_edge:           ; preds = %land.rhs5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %inode_to_wb.exit

land.rhs13.i:                                     ; preds = %land.rhs5.i
  %.b54.i = load i1, ptr @inode_to_wb.__already_done, align 1
  br i1 %.b54.i, label %land.rhs13.i.inode_to_wb.exit_crit_edge, label %if.then.i76, !prof !186

land.rhs13.i.inode_to_wb.exit_crit_edge:          ; preds = %land.rhs13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %inode_to_wb.exit

if.then.i76:                                      ; preds = %land.rhs13.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @inode_to_wb.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 272, i32 noundef 9, ptr noundef null) #8
  br label %inode_to_wb.exit

inode_to_wb.exit:                                 ; preds = %if.then.i76, %land.rhs13.i.inode_to_wb.exit_crit_edge, %land.rhs5.i.inode_to_wb.exit_crit_edge, %land.lhs.true.i.inode_to_wb.exit_crit_edge, %land.rhs.i.inode_to_wb.exit_crit_edge, %if.then16.inode_to_wb.exit_crit_edge
  %i_wb48.i = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 30
  %34 = ptrtoint ptr %i_wb48.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i_wb48.i, align 4
  %sub = sub i32 0, %retval.0.i.i
  %conv18 = sext i32 %sub to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %36 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.i.i77 = icmp eq i32 %36, 0
  %37 = tail call i32 @llvm.ctlz.i32(i32 %36, i1 true) #8, !range !184
  %arrayidx.i = getelementptr %struct.bdi_writeback, ptr %35, i32 0, i32 9, i32 1
  %sub.i.op.i.i = shl nuw nsw i32 %37, 3
  %sub.i.op.i.i.op = xor i32 %sub.i.op.i.i, 248
  %sub.i.op.i.i.op.op = add nuw nsw i32 %sub.i.op.i.i.op, 8
  %mul.i = select i1 %tobool.not.i.i.i77, i32 0, i32 %sub.i.op.i.i.op.op
  tail call void @percpu_counter_add_batch(ptr noundef %arrayidx.i, i64 noundef %conv18, i32 noundef %mul.i) #8
  tail call fastcc void @__wb_writeout_add(ptr noundef %35, i32 noundef %retval.0.i.i)
  %xa_flags.i.i = getelementptr inbounds %struct.address_space, ptr %call1, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %xa_flags.i.i, align 4
  %and.i.i = and i32 %39, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i.not, label %if.then20, label %inode_to_wb.exit.if.end22_crit_edge

inode_to_wb.exit.if.end22_crit_edge:              ; preds = %inode_to_wb.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then20:                                        ; preds = %inode_to_wb.exit
  call void @__sanitizer_cov_trace_pc() #10
  %writeback_inodes.i = getelementptr inbounds %struct.bdi_writeback, ptr %35, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %writeback_inodes.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %writeback_inodes.i, i32 1, i32 3, i32 1) #8
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %writeback_inodes.i, ptr %writeback_inodes.i, i32 1, ptr elementtype(i32) %writeback_inodes.i) #8, !srcloc !221
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bdi_wq to i32))
  %41 = load ptr, ptr @bdi_wq, align 4
  %bw_dwork.i = getelementptr inbounds %struct.bdi_writeback, ptr %35, i32 0, i32 24
  %call.i.i78 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %41, ptr noundef %bw_dwork.i, i32 noundef 20) #8
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %inode_to_wb.exit.if.end22_crit_edge, %folio_index.exit.if.end22_crit_edge, %folio_test_clear_writeback.exit.if.end22_crit_edge
  %42 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call1, align 4
  %tobool24.not = icmp eq ptr %43, null
  br i1 %tobool24.not, label %if.end22.if.end29_crit_edge, label %land.lhs.true25

if.end22.if.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

land.lhs.true25:                                  ; preds = %if.end22
  %xa_flags.i.i79 = getelementptr inbounds %struct.address_space, ptr %call1, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %xa_flags.i.i79 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %xa_flags.i.i79, align 4
  %and.i.i80 = and i32 %45, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i80)
  %tobool.i.i81.not = icmp eq i32 %and.i.i80, 0
  br i1 %tobool.i.i81.not, label %if.then27, label %land.lhs.true25.if.end29_crit_edge

land.lhs.true25.if.end29_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then27:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @sb_clear_inode_writeback(ptr noundef nonnull %43) #8
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %land.lhs.true25.if.end29_crit_edge, %if.end22.if.end29_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i_pages, i32 noundef %call7) #8
  br i1 %tobool.i.not, label %if.end29.if.end39_crit_edge, label %if.end29.if.then36_crit_edge

if.end29.if.then36_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36

if.end29.if.end39_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %folio_nr_pages.exit.if.else_crit_edge
  %46 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %46, align 4
  %and.i.i.i68 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i68)
  %tobool.not.i.i69 = icmp eq i32 %and.i.i.i68, 0
  br i1 %tobool.not.i.i69, label %if.end34, label %if.then.i.i70, !prof !186

if.then.i.i70:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !197
  unreachable

if.end34:                                         ; preds = %if.else
  %call1.i71 = tail call i32 @_test_and_clear_bit(i32 noundef 15, ptr noundef %folio) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i71)
  %tobool.i72.not = icmp eq i32 %call1.i71, 0
  br i1 %tobool.i72.not, label %if.end34.if.end39_crit_edge, label %if.end34.if.then36_crit_edge

if.end34.if.then36_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36

if.end34.if.end39_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then36:                                        ; preds = %if.end34.if.then36_crit_edge, %if.end29.if.then36_crit_edge
  %sub37 = sub i32 0, %retval.0.i.i
  %49 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !180
  %and.i.i.i82 = and i32 %49, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i82)
  %tobool.not.i.i83 = icmp eq i32 %and.i.i.i82, 0
  br i1 %tobool.not.i.i83, label %if.then21.i.i, label %do.end11.i.i

do.end11.i.i:                                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__mod_lruvec_page_state(ptr noundef %folio, i32 noundef 21, i32 noundef %sub37) #8
  br label %do.body23.i.i

if.then21.i.i:                                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  tail call void @__mod_lruvec_page_state(ptr noundef %folio, i32 noundef 21, i32 noundef %sub37) #8
  tail call void @trace_hardirqs_on() #8
  br label %do.body23.i.i

do.body23.i.i:                                    ; preds = %if.then21.i.i, %do.end11.i.i
  %50 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !181
  %and.i.i.i.i84 = and i32 %50, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i84)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i84, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body23.i.i.lruvec_stat_mod_folio.exit_crit_edge, !prof !182

do.body23.i.i.lruvec_stat_mod_folio.exit_crit_edge: ; preds = %do.body23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lruvec_stat_mod_folio.exit

if.then36.i.i:                                    ; preds = %do.body23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %lruvec_stat_mod_folio.exit

lruvec_stat_mod_folio.exit:                       ; preds = %if.then36.i.i, %do.body23.i.i.lruvec_stat_mod_folio.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %49) #8, !srcloc !183
  %51 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %52)
  %cmp.i.not.i.i.i.i = icmp eq i32 %52, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i85, label %zone_stat_mod_folio.exit, !prof !182

if.then.i.i.i.i85:                                ; preds = %lruvec_stat_mod_folio.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.26) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #8, !srcloc !218
  unreachable

zone_stat_mod_folio.exit:                         ; preds = %lruvec_stat_mod_folio.exit
  %shr.i.i.i.i = lshr i32 %52, 30
  %arrayidx.i.i.i = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %shr.i.i.i.i
  tail call void @mod_zone_page_state(ptr noundef %arrayidx.i.i.i, i32 noundef 6, i32 noundef %sub37) #8
  %53 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %54)
  %cmp.i.not.i.i.i.i86 = icmp eq i32 %54, -1
  br i1 %cmp.i.not.i.i.i.i86, label %if.then.i.i.i.i87, label %node_stat_mod_folio.exit, !prof !182

if.then.i.i.i.i87:                                ; preds = %zone_stat_mod_folio.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.26) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #8, !srcloc !218
  unreachable

node_stat_mod_folio.exit:                         ; preds = %zone_stat_mod_folio.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 32, i32 noundef %retval.0.i.i) #8
  br label %if.end39

if.end39:                                         ; preds = %node_stat_mod_folio.exit, %if.end34.if.end39_crit_edge, %if.end29.if.end39_crit_edge
  %ret.0.in88 = phi i1 [ false, %if.end29.if.end39_crit_edge ], [ true, %node_stat_mod_folio.exit ], [ false, %if.end34.if.end39_crit_edge ]
  tail call void @folio_memcg_unlock(ptr noundef %folio) #8
  ret i1 %ret.0.in88
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__xa_clear_mark(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sb_clear_inode_writeback(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @__folio_start_writeback(ptr noundef %folio, i1 noundef zeroext %keep_write) #0 align 64 {
entry:
  %xas = alloca %struct.xa_state, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i.not.i.i.i = icmp eq i32 %1, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %PageHead.exit.i.i, !prof !182

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.23) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #8, !srcloc !208
  unreachable

PageHead.exit.i.i:                                ; preds = %entry
  %2 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %folio, align 4
  %4 = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i99 = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i99, label %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge, label %if.end.i.i

PageHead.exit.i.i.folio_nr_pages.exit_crit_edge:  ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %folio_nr_pages.exit

if.end.i.i:                                       ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %compound_nr.i.i = getelementptr %struct.page, ptr %folio, i32 1, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %compound_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %compound_nr.i.i, align 4
  br label %folio_nr_pages.exit

folio_nr_pages.exit:                              ; preds = %if.end.i.i, %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge
  %retval.0.i.i = phi i32 [ %6, %if.end.i.i ], [ 1, %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge ]
  %call1 = tail call ptr @folio_mapping(ptr noundef %folio) #8
  tail call void @folio_memcg_lock(ptr noundef %folio) #8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %folio_nr_pages.exit.if.else_crit_edge, label %land.lhs.true

folio_nr_pages.exit.if.else_crit_edge:            ; preds = %folio_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %folio_nr_pages.exit
  %flags.i = getelementptr inbounds %struct.address_space, ptr %call1, i32 0, i32 10
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i, align 4
  %9 = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not.not = icmp eq i32 %9, 0
  br i1 %tobool3.not.not, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas) #8
  %10 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1
  %11 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 2
  %12 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6
  %13 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 7
  %14 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 8
  %i_pages = getelementptr inbounds %struct.address_space, ptr %call1, i32 0, i32 1
  %15 = ptrtoint ptr %xas to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %i_pages, ptr %xas, align 4
  %16 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %and.i.i.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_swapbacked.exit.i.i, label %if.then.i.i.i.i, !prof !186

if.then.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !197
  unreachable

folio_test_swapbacked.exit.i.i:                   ; preds = %if.then
  %19 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %folio, align 4
  %21 = and i32 %20, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool.i.not.i.i, label %folio_test_swapbacked.exit.i.i.if.end.i_crit_edge, label %land.rhs.i.i

folio_test_swapbacked.exit.i.i.if.end.i_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.rhs.i.i:                                     ; preds = %folio_test_swapbacked.exit.i.i
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %16, align 4
  %and.i.i.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_test_swapcache.exit.i, label %if.then.i.i.i100, !prof !186

if.then.i.i.i100:                                 ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !197
  unreachable

folio_test_swapcache.exit.i:                      ; preds = %land.rhs.i.i
  %24 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %folio, align 4
  %26 = and i32 %25, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.i.not.i = icmp eq i32 %26, 0
  br i1 %tobool.i.not.i, label %folio_test_swapcache.exit.i.if.end.i_crit_edge, label %if.then.i, !prof !186

folio_test_swapcache.exit.i.if.end.i_crit_edge:   ; preds = %folio_test_swapcache.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %folio_test_swapcache.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = tail call i32 @__page_file_index(ptr noundef %folio) #8
  br label %folio_index.exit

if.end.i:                                         ; preds = %folio_test_swapcache.exit.i.if.end.i_crit_edge, %folio_test_swapbacked.exit.i.i.if.end.i_crit_edge
  %index.i = getelementptr inbounds %struct.anon.88, ptr %folio, i32 0, i32 3
  %27 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %index.i, align 4
  br label %folio_index.exit

folio_index.exit:                                 ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call2.i, %if.then.i ], [ %28, %if.end.i ]
  %29 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %retval.0.i, ptr %10, align 4
  %30 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %11, align 4
  %31 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 3 to ptr), ptr %12, align 4
  %32 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %13, align 4
  %33 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %14, align 4
  %34 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call1, align 4
  %call5 = tail call ptr @inode_to_bdi(ptr noundef %35) #8
  %36 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %xas, align 4
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %37) #8
  %call12 = call ptr @xas_load(ptr noundef nonnull %xas) #8
  %38 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %16, align 4
  %and.i.i.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_set_writeback.exit, label %if.then.i.i, !prof !186

if.then.i.i:                                      ; preds = %folio_index.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.20) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !197
  unreachable

folio_test_set_writeback.exit:                    ; preds = %folio_index.exit
  %call1.i = call i32 @_test_and_set_bit(i32 noundef 15, ptr noundef %folio) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.i.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.i.not, label %if.then16, label %folio_test_set_writeback.exit.if.end33_crit_edge

folio_test_set_writeback.exit.if.end33_crit_edge: ; preds = %folio_test_set_writeback.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then16:                                        ; preds = %folio_test_set_writeback.exit
  %xa_flags.i.i = getelementptr inbounds %struct.address_space, ptr %call1, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %xa_flags.i.i, align 4
  %and.i.i = and i32 %41, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i = icmp ne i32 %and.i.i, 0
  call void @xas_set_mark(ptr noundef nonnull %xas, i32 noundef 1) #8
  %capabilities = getelementptr inbounds %struct.backing_dev_info, ptr %call5, i32 0, i32 6
  %42 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %capabilities, align 8
  %and = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.then16.if.end25_crit_edge, label %if.then20

if.then16.if.end25_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then20:                                        ; preds = %if.then16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %44 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i, label %if.then20.inode_to_wb.exit_crit_edge, label %land.rhs.i

if.then20.inode_to_wb.exit_crit_edge:             ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %inode_to_wb.exit

land.rhs.i:                                       ; preds = %if.then20
  %dep_map.i = getelementptr inbounds %struct.inode, ptr %35, i32 0, i32 18, i32 0, i32 0, i32 4
  %call.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i, label %land.rhs.i.inode_to_wb.exit_crit_edge

land.rhs.i.inode_to_wb.exit_crit_edge:            ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %inode_to_wb.exit

land.lhs.true.i:                                  ; preds = %land.rhs.i
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %35, i32 0, i32 9
  %45 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i_mapping.i, align 8
  %dep_map2.i = getelementptr inbounds %struct.address_space, ptr %46, i32 0, i32 1, i32 0, i32 0, i32 0, i32 4
  %call.i60.i = call i32 @lock_is_held_type(ptr noundef %dep_map2.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60.i)
  %tobool4.not.i = icmp eq i32 %call.i60.i, 0
  br i1 %tobool4.not.i, label %land.rhs5.i, label %land.lhs.true.i.inode_to_wb.exit_crit_edge

land.lhs.true.i.inode_to_wb.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %inode_to_wb.exit

land.rhs5.i:                                      ; preds = %land.lhs.true.i
  %i_wb.i = getelementptr inbounds %struct.inode, ptr %35, i32 0, i32 30
  %47 = ptrtoint ptr %i_wb.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i_wb.i, align 4
  %dep_map6.i = getelementptr inbounds %struct.bdi_writeback, ptr %48, i32 0, i32 7, i32 0, i32 0, i32 4
  %call.i61.i = call i32 @lock_is_held_type(ptr noundef %dep_map6.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61.i)
  %tobool8.not.i = icmp eq i32 %call.i61.i, 0
  br i1 %tobool8.not.i, label %land.rhs13.i, label %land.rhs5.i.inode_to_wb.exit_crit_edge

land.rhs5.i.inode_to_wb.exit_crit_edge:           ; preds = %land.rhs5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %inode_to_wb.exit

land.rhs13.i:                                     ; preds = %land.rhs5.i
  %.b54.i = load i1, ptr @inode_to_wb.__already_done, align 1
  br i1 %.b54.i, label %land.rhs13.i.inode_to_wb.exit_crit_edge, label %if.then.i101, !prof !186

land.rhs13.i.inode_to_wb.exit_crit_edge:          ; preds = %land.rhs13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %inode_to_wb.exit

if.then.i101:                                     ; preds = %land.rhs13.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @inode_to_wb.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 272, i32 noundef 9, ptr noundef null) #8
  br label %inode_to_wb.exit

inode_to_wb.exit:                                 ; preds = %if.then.i101, %land.rhs13.i.inode_to_wb.exit_crit_edge, %land.rhs5.i.inode_to_wb.exit_crit_edge, %land.lhs.true.i.inode_to_wb.exit_crit_edge, %land.rhs.i.inode_to_wb.exit_crit_edge, %if.then20.inode_to_wb.exit_crit_edge
  %i_wb48.i = getelementptr inbounds %struct.inode, ptr %35, i32 0, i32 30
  %49 = ptrtoint ptr %i_wb48.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i_wb48.i, align 4
  %conv22 = sext i32 %retval.0.i.i to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %51 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i.i.i102 = icmp eq i32 %51, 0
  %52 = call i32 @llvm.ctlz.i32(i32 %51, i1 true) #8, !range !184
  %arrayidx.i = getelementptr %struct.bdi_writeback, ptr %50, i32 0, i32 9, i32 1
  %sub.i.op.i.i = shl nuw nsw i32 %52, 3
  %sub.i.op.i.i.op = xor i32 %sub.i.op.i.i, 248
  %sub.i.op.i.i.op.op = add nuw nsw i32 %sub.i.op.i.i.op, 8
  %mul.i = select i1 %tobool.not.i.i.i102, i32 0, i32 %sub.i.op.i.i.op.op
  call void @percpu_counter_add_batch(ptr noundef %arrayidx.i, i64 noundef %conv22, i32 noundef %mul.i) #8
  br i1 %tobool.i.i, label %inode_to_wb.exit.if.end33_crit_edge, label %if.then24

inode_to_wb.exit.if.end33_crit_edge:              ; preds = %inode_to_wb.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then24:                                        ; preds = %inode_to_wb.exit
  call void @__sanitizer_cov_trace_pc() #10
  %writeback_inodes.i = getelementptr inbounds %struct.bdi_writeback, ptr %50, i32 0, i32 8
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %writeback_inodes.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %writeback_inodes.i, i32 1, i32 3, i32 1) #8
  %53 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %writeback_inodes.i, ptr %writeback_inodes.i, i32 1, ptr elementtype(i32) %writeback_inodes.i) #8, !srcloc !211
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.then16.if.end25_crit_edge
  %54 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call1, align 4
  %tobool27.not = icmp eq ptr %55, null
  %brmerge = select i1 %tobool27.not, i1 true, i1 %tobool.i.i
  br i1 %brmerge, label %if.end25.if.end33_crit_edge, label %if.then30

if.end25.if.end33_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  call void @sb_mark_inode_writeback(ptr noundef nonnull %55) #8
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end25.if.end33_crit_edge, %inode_to_wb.exit.if.end33_crit_edge, %folio_test_set_writeback.exit.if.end33_crit_edge
  %56 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %16, align 4
  %and.i.i.i89 = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i89)
  %tobool.not.i.i90 = icmp eq i32 %and.i.i.i89, 0
  br i1 %tobool.not.i.i90, label %folio_test_dirty.exit, label %if.then.i.i91, !prof !186

if.then.i.i91:                                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.20) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !197
  unreachable

folio_test_dirty.exit:                            ; preds = %if.end33
  %58 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %folio, align 4
  %60 = and i32 %59, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.i92.not = icmp eq i32 %60, 0
  br i1 %tobool.i92.not, label %if.then35, label %folio_test_dirty.exit.if.end36_crit_edge

folio_test_dirty.exit.if.end36_crit_edge:         ; preds = %folio_test_dirty.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then35:                                        ; preds = %folio_test_dirty.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @xas_clear_mark(ptr noundef nonnull %xas, i32 noundef 0) #8
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %folio_test_dirty.exit.if.end36_crit_edge
  br i1 %keep_write, label %if.end36.if.end39_crit_edge, label %if.then38

if.end36.if.end39_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  call void @xas_clear_mark(ptr noundef nonnull %xas, i32 noundef 2) #8
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end36.if.end39_crit_edge
  %61 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %xas, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %62, i32 noundef %call9) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas) #8
  br i1 %tobool.i.not, label %if.end39.if.then46_crit_edge, label %if.end39.if.end47_crit_edge

if.end39.if.end47_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.end39.if.then46_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then46

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %folio_nr_pages.exit.if.else_crit_edge
  %63 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %63, align 4
  %and.i.i.i93 = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i93)
  %tobool.not.i.i94 = icmp eq i32 %and.i.i.i93, 0
  br i1 %tobool.not.i.i94, label %if.end44, label %if.then.i.i95, !prof !186

if.then.i.i95:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !197
  unreachable

if.end44:                                         ; preds = %if.else
  %call1.i96 = tail call i32 @_test_and_set_bit(i32 noundef 15, ptr noundef %folio) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i96)
  %tobool.i97.not = icmp eq i32 %call1.i96, 0
  br i1 %tobool.i97.not, label %if.end44.if.then46_crit_edge, label %if.end44.if.end47_crit_edge

if.end44.if.end47_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.end44.if.then46_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then46

if.then46:                                        ; preds = %if.end44.if.then46_crit_edge, %if.end39.if.then46_crit_edge
  %66 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !180
  %and.i.i.i103 = and i32 %66, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i103)
  %tobool.not.i.i104 = icmp eq i32 %and.i.i.i103, 0
  br i1 %tobool.not.i.i104, label %if.then21.i.i, label %do.end11.i.i

do.end11.i.i:                                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  call void @__mod_lruvec_page_state(ptr noundef %folio, i32 noundef 21, i32 noundef %retval.0.i.i) #8
  br label %do.body23.i.i

if.then21.i.i:                                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  call void @trace_hardirqs_off() #8
  call void @__mod_lruvec_page_state(ptr noundef %folio, i32 noundef 21, i32 noundef %retval.0.i.i) #8
  call void @trace_hardirqs_on() #8
  br label %do.body23.i.i

do.body23.i.i:                                    ; preds = %if.then21.i.i, %do.end11.i.i
  %67 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !181
  %and.i.i.i.i105 = and i32 %67, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i105)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i105, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body23.i.i.lruvec_stat_mod_folio.exit_crit_edge, !prof !182

do.body23.i.i.lruvec_stat_mod_folio.exit_crit_edge: ; preds = %do.body23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lruvec_stat_mod_folio.exit

if.then36.i.i:                                    ; preds = %do.body23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @warn_bogus_irq_restore() #8
  br label %lruvec_stat_mod_folio.exit

lruvec_stat_mod_folio.exit:                       ; preds = %if.then36.i.i, %do.body23.i.i.lruvec_stat_mod_folio.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %66) #8, !srcloc !183
  %68 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %69)
  %cmp.i.not.i.i.i.i = icmp eq i32 %69, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i106, label %zone_stat_mod_folio.exit, !prof !182

if.then.i.i.i.i106:                               ; preds = %lruvec_stat_mod_folio.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.26) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #8, !srcloc !218
  unreachable

zone_stat_mod_folio.exit:                         ; preds = %lruvec_stat_mod_folio.exit
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i.i.i.i = lshr i32 %69, 30
  %arrayidx.i.i.i = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %shr.i.i.i.i
  call void @mod_zone_page_state(ptr noundef %arrayidx.i.i.i, i32 noundef 6, i32 noundef %retval.0.i.i) #8
  br label %if.end47

if.end47:                                         ; preds = %zone_stat_mod_folio.exit, %if.end44.if.end47_crit_edge, %if.end39.if.end47_crit_edge
  %ret.0.in113 = phi i1 [ true, %if.end39.if.end47_crit_edge ], [ false, %zone_stat_mod_folio.exit ], [ true, %if.end44.if.end47_crit_edge ]
  call void @folio_memcg_unlock(ptr noundef %folio) #8
  %70 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %71)
  %cmp.i.not.i.i.i.i107 = icmp eq i32 %71, -1
  br i1 %cmp.i.not.i.i.i.i107, label %if.then.i.i.i.i108, label %PageHead.exit.i.i.i, !prof !182

if.then.i.i.i.i108:                               ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.23) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #8, !srcloc !208
  unreachable

PageHead.exit.i.i.i:                              ; preds = %if.end47
  %72 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %folio, align 4
  %74 = and i32 %73, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.i.i.i109 = icmp eq i32 %74, 0
  br i1 %tobool.not.i.i.i109, label %PageHead.exit.i.i.i.for.cond.peel.next.i_crit_edge, label %folio_nr_pages.exit.i

PageHead.exit.i.i.i.for.cond.peel.next.i_crit_edge: ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.peel.next.i

folio_nr_pages.exit.i:                            ; preds = %PageHead.exit.i.i.i
  %compound_nr.i.i.i = getelementptr %struct.page, ptr %folio, i32 1, i32 1, i32 0, i32 2
  %75 = ptrtoint ptr %compound_nr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %compound_nr.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %76)
  %exitcond.peel.not.i = icmp slt i32 %76, 1
  br i1 %exitcond.peel.not.i, label %if.then54, label %folio_nr_pages.exit.i.for.cond.peel.next.i_crit_edge

folio_nr_pages.exit.i.for.cond.peel.next.i_crit_edge: ; preds = %folio_nr_pages.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.peel.next.i

for.cond.peel.next.i:                             ; preds = %folio_nr_pages.exit.i.for.cond.peel.next.i_crit_edge, %PageHead.exit.i.i.i.for.cond.peel.next.i_crit_edge
  ret i1 %ret.0.in113

if.then54:                                        ; preds = %folio_nr_pages.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.8) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/page-writeback.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2907, 0\0A.popsection", ""() #8, !srcloc !222
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_load(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sb_mark_inode_writeback(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xas_clear_mark(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_folio_wait_writeback(ptr noundef %folio, ptr noundef %mapping) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_folio_wait_writeback, i32 0, i32 1), ptr blockaddress(@trace_folio_wait_writeback, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !191

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !170) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !186

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !223
  %call42 = tail call i32 @__traceiter_folio_wait_writeback(ptr noundef null, ptr noundef %folio, ptr noundef %mapping) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !224
  %13 = tail call i32 @llvm.read_register.i32(metadata !170) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !170) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !186

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !206
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_folio_wait_writeback, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_folio_wait_writeback, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_folio_wait_writeback.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_folio_wait_writeback.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 94, ptr noundef nonnull @.str.10) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !207
  %31 = tail call i32 @llvm.read_register.i32(metadata !170) #8
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
declare dso_local void @folio_wait_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @folio_wait_writeback_killable(ptr noundef %folio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_writeback.exit, label %if.then.i.i, !prof !186

if.then.i.i:                                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !197
  unreachable

folio_test_writeback.exit:                        ; preds = %while.cond
  %3 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %folio, align 4
  %5 = and i32 %4, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %folio_test_writeback.exit.return_crit_edge, label %while.body

folio_test_writeback.exit.return_crit_edge:       ; preds = %folio_test_writeback.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

while.body:                                       ; preds = %folio_test_writeback.exit
  %call1 = tail call ptr @folio_mapping(ptr noundef %folio) #8
  tail call fastcc void @trace_folio_wait_writeback(ptr noundef %folio, ptr noundef %call1)
  %call2 = tail call i32 @folio_wait_bit_killable(ptr noundef %folio, i32 noundef 15) #8
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %while.body.while.cond_crit_edge, label %while.body.return_crit_edge

while.body.return_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

return:                                           ; preds = %while.body.return_crit_edge, %folio_test_writeback.exit.return_crit_edge
  %retval.0 = phi i32 [ -4, %while.body.return_crit_edge ], [ 0, %folio_test_writeback.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @folio_wait_bit_killable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @folio_wait_stable(ptr noundef %folio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping.i = getelementptr inbounds %struct.anon.88, ptr %folio, i32 0, i32 2
  %0 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_iflags = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %s_iflags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_iflags, align 8
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %8 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %and.i.i.i5.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i5.i)
  %tobool.not.i.i6.i = icmp eq i32 %and.i.i.i5.i, 0
  br i1 %tobool.not.i.i6.i, label %if.then.folio_test_writeback.exit.i_crit_edge, label %if.then.if.then.i.i.i_crit_edge, !prof !186

if.then.if.then.i.i.i_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

if.then.folio_test_writeback.exit.i_crit_edge:    ; preds = %if.then
  br label %folio_test_writeback.exit.i

if.then.i.i.i:                                    ; preds = %while.body.i.if.then.i.i.i_crit_edge, %if.then.if.then.i.i.i_crit_edge
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !197
  unreachable

folio_test_writeback.exit.i:                      ; preds = %while.body.i.folio_test_writeback.exit.i_crit_edge, %if.then.folio_test_writeback.exit.i_crit_edge
  %11 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %folio, align 4
  %13 = and i32 %12, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not.i = icmp eq i32 %13, 0
  br i1 %tobool.i.not.i, label %folio_test_writeback.exit.i.if.end_crit_edge, label %while.body.i

folio_test_writeback.exit.i.if.end_crit_edge:     ; preds = %folio_test_writeback.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

while.body.i:                                     ; preds = %folio_test_writeback.exit.i
  %call1.i = tail call ptr @folio_mapping(ptr noundef %folio) #8
  tail call fastcc void @trace_folio_wait_writeback(ptr noundef %folio, ptr noundef %call1.i) #8
  tail call void @folio_wait_bit(ptr noundef %folio, i32 noundef 15) #8
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %8, align 4
  %and.i.i.i.i = and i32 %15, 1
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %while.body.i.folio_test_writeback.exit.i_crit_edge, label %while.body.i.if.then.i.i.i_crit_edge, !prof !186

while.body.i.if.then.i.i.i_crit_edge:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

while.body.i.folio_test_writeback.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %folio_test_writeback.exit.i

if.end:                                           ; preds = %folio_test_writeback.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_global_dirty_state(i32 noundef %background_thresh, i32 noundef %dirty_thresh) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_global_dirty_state, i32 0, i32 1), ptr blockaddress(@trace_global_dirty_state, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !191

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !170) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !186

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !225
  %call42 = tail call i32 @__traceiter_global_dirty_state(ptr noundef null, i32 noundef %background_thresh, i32 noundef %dirty_thresh) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !226
  %13 = tail call i32 @llvm.read_register.i32(metadata !170) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !170) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !186

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !206
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_global_dirty_state, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_global_dirty_state, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_global_dirty_state.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_global_dirty_state.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 571, ptr noundef nonnull @.str.10) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !207
  %31 = tail call i32 @llvm.read_register.i32(metadata !170) #8
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
declare dso_local i32 @__traceiter_global_dirty_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fprop_add_percpu_max(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fprop_new_period(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @fprop_fraction_percpu(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wb_update_dirty_ratelimit(ptr nocapture noundef readonly %dtc, i32 noundef %dirtied, i32 noundef %elapsed) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wb1 = getelementptr inbounds %struct.dirty_throttle_control, ptr %dtc, i32 0, i32 2
  %0 = ptrtoint ptr %wb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wb1, align 4
  %dirty2 = getelementptr inbounds %struct.dirty_throttle_control, ptr %dtc, i32 0, i32 5
  %2 = ptrtoint ptr %dirty2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dirty2, align 4
  %thresh = getelementptr inbounds %struct.dirty_throttle_control, ptr %dtc, i32 0, i32 6
  %4 = ptrtoint ptr %thresh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %thresh, align 4
  %bg_thresh = getelementptr inbounds %struct.dirty_throttle_control, ptr %dtc, i32 0, i32 7
  %6 = ptrtoint ptr %bg_thresh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bg_thresh, align 4
  %add.i = add i32 %7, %5
  %div1.i = lshr i32 %add.i, 1
  %8 = ptrtoint ptr %dtc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dtc, align 4
  %dirty_limit.i = getelementptr inbounds %struct.wb_domain, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %dirty_limit.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dirty_limit.i, align 8
  %12 = tail call i32 @llvm.umax.i32(i32 %11, i32 %5) #8
  %add = add i32 %12, %div1.i
  %avg_write_bandwidth = getelementptr inbounds %struct.bdi_writeback, ptr %1, i32 0, i32 15
  %13 = ptrtoint ptr %avg_write_bandwidth to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %avg_write_bandwidth, align 4
  %dirty_ratelimit6 = getelementptr inbounds %struct.bdi_writeback, ptr %1, i32 0, i32 16
  %15 = ptrtoint ptr %dirty_ratelimit6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dirty_ratelimit6, align 8
  %dirtied_stamp = getelementptr inbounds %struct.bdi_writeback, ptr %1, i32 0, i32 12
  %17 = ptrtoint ptr %dirtied_stamp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dirtied_stamp, align 8
  %sub = sub i32 %dirtied, %18
  %mul = mul i32 %sub, 100
  %div7 = udiv i32 %mul, %elapsed
  %conv = zext i32 %16 to i64
  %pos_ratio = getelementptr inbounds %struct.dirty_throttle_control, ptr %dtc, i32 0, i32 11
  %19 = ptrtoint ptr %pos_ratio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pos_ratio, align 4
  %conv8 = zext i32 %20 to i64
  %mul9 = mul nuw i64 %conv8, %conv
  %shr = lshr i64 %mul9, 10
  %conv10 = trunc i64 %shr to i32
  %inc = add i32 %conv10, 1
  %conv11 = zext i32 %inc to i64
  %conv12 = zext i32 %14 to i64
  %mul13 = mul nuw i64 %conv11, %conv12
  %or = or i32 %div7, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul13)
  %cmp164.i.i = icmp ult i64 %mul13, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !186

if.then168.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i = trunc i64 %mul13 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %or
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %21 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %or, i64 %mul13) #11, !srcloc !187
  %asmresult1.i.i.i = extractvalue { i64, i64 } %21, 1
  %extract.t177 = trunc i64 %asmresult1.i.i.i to i32
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t177, %if.else174.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %dividend.addr.0.i.i.off0)
  %cmp = icmp ult i32 %14, %dividend.addr.0.i.i.off0
  br i1 %cmp, label %if.then, label %div_u64.exit.if.end_crit_edge, !prof !182

div_u64.exit.if.end_crit_edge:                    ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %if.then, %div_u64.exit.if.end_crit_edge
  %balanced_dirty_ratelimit.0 = phi i32 [ %14, %if.then ], [ %dividend.addr.0.i.i.off0, %div_u64.exit.if.end_crit_edge ]
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %capabilities = getelementptr inbounds %struct.backing_dev_info, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %capabilities, align 8
  %and = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.end.if.end35_crit_edge, label %if.then25, !prof !186

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then25:                                        ; preds = %if.end
  %wb_dirty = getelementptr inbounds %struct.dirty_throttle_control, ptr %dtc, i32 0, i32 8
  %26 = ptrtoint ptr %wb_dirty to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %wb_dirty, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %27)
  %cmp27 = icmp ult i32 %27, 8
  br i1 %cmp27, label %if.then25.if.then38_crit_edge, label %if.else

if.then25.if.then38_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then38

if.else:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  %wb_thresh = getelementptr inbounds %struct.dirty_throttle_control, ptr %dtc, i32 0, i32 9
  %28 = ptrtoint ptr %wb_thresh to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %wb_thresh, align 4
  %wb_bg_thresh = getelementptr inbounds %struct.dirty_throttle_control, ptr %dtc, i32 0, i32 10
  %30 = ptrtoint ptr %wb_bg_thresh to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %wb_bg_thresh, align 4
  %add32 = add i32 %31, %29
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.end.if.end35_crit_edge
  %setpoint.0.in = phi i32 [ %add32, %if.else ], [ %add, %if.end.if.end35_crit_edge ]
  %dirty.0 = phi i32 [ %27, %if.else ], [ %3, %if.end.if.end35_crit_edge ]
  %setpoint.0 = lshr i32 %setpoint.0.in, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %dirty.0, i32 %setpoint.0)
  %cmp36 = icmp ult i32 %dirty.0, %setpoint.0
  br i1 %cmp36, label %if.end35.if.then38_crit_edge, label %if.else54

if.end35.if.then38_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then38

if.then38:                                        ; preds = %if.end35.if.then38_crit_edge, %if.then25.if.then38_crit_edge
  %balanced_dirty_ratelimit39 = getelementptr inbounds %struct.bdi_writeback, ptr %1, i32 0, i32 17
  %32 = ptrtoint ptr %balanced_dirty_ratelimit39 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %balanced_dirty_ratelimit39, align 4
  %34 = tail call i32 @llvm.umin.i32(i32 %33, i32 %balanced_dirty_ratelimit.0)
  %35 = tail call i32 @llvm.umin.i32(i32 %34, i32 %inc)
  %36 = tail call i32 @llvm.usub.sat.i32(i32 %35, i32 %16)
  br label %if.end75

if.else54:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %balanced_dirty_ratelimit55 = getelementptr inbounds %struct.bdi_writeback, ptr %1, i32 0, i32 17
  %37 = ptrtoint ptr %balanced_dirty_ratelimit55 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %balanced_dirty_ratelimit55, align 4
  %39 = tail call i32 @llvm.umax.i32(i32 %38, i32 %balanced_dirty_ratelimit.0)
  %40 = tail call i32 @llvm.umax.i32(i32 %39, i32 %inc)
  %41 = tail call i32 @llvm.usub.sat.i32(i32 %16, i32 %40)
  br label %if.end75

if.end75:                                         ; preds = %if.else54, %if.then38
  %step.0 = phi i32 [ %36, %if.then38 ], [ %41, %if.else54 ]
  %mul76 = shl i32 %step.0, 1
  %add77 = or i32 %mul76, 1
  %div78 = udiv i32 %16, %add77
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %div78)
  %cmp79 = icmp ult i32 %div78, 32
  %shr82 = lshr i32 %step.0, %div78
  %sub84 = add i32 %shr82, 7
  %div85172 = lshr i32 %sub84, 3
  %step.1 = select i1 %cmp79, i32 %div85172, i32 0
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %balanced_dirty_ratelimit.0)
  %cmp88 = icmp ult i32 %16, %balanced_dirty_ratelimit.0
  %42 = sub nsw i32 0, %step.1
  %dirty_ratelimit.0.p = select i1 %cmp88, i32 %step.1, i32 %42
  %dirty_ratelimit.0 = add i32 %dirty_ratelimit.0.p, %16
  %43 = tail call i32 @llvm.umax.i32(i32 %dirty_ratelimit.0, i32 1)
  %44 = ptrtoint ptr %dirty_ratelimit6 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 %43, ptr %dirty_ratelimit6, align 8
  %balanced_dirty_ratelimit109 = getelementptr inbounds %struct.bdi_writeback, ptr %1, i32 0, i32 17
  %45 = ptrtoint ptr %balanced_dirty_ratelimit109 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %balanced_dirty_ratelimit.0, ptr %balanced_dirty_ratelimit109, align 4
  tail call fastcc void @trace_bdi_dirty_ratelimit(ptr noundef %1, i32 noundef %div7, i32 noundef %inc)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_bdi_dirty_ratelimit(ptr noundef %wb, i32 noundef %dirty_rate, i32 noundef %task_ratelimit) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bdi_dirty_ratelimit, i32 0, i32 1), ptr blockaddress(@trace_bdi_dirty_ratelimit, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !191

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !170) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !186

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !227
  %call42 = tail call i32 @__traceiter_bdi_dirty_ratelimit(ptr noundef null, ptr noundef %wb, i32 noundef %dirty_rate, i32 noundef %task_ratelimit) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !228
  %13 = tail call i32 @llvm.read_register.i32(metadata !170) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !170) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !186

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !206
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bdi_dirty_ratelimit, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bdi_dirty_ratelimit, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_bdi_dirty_ratelimit.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_bdi_dirty_ratelimit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 619, ptr noundef nonnull @.str.10) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !207
  %31 = tail call i32 @llvm.read_register.i32(metadata !170) #8
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
declare dso_local i32 @__traceiter_bdi_dirty_ratelimit(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @task_get_css(ptr noundef %task) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !192
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %cgroups.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 164
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 3
  br label %while.cond

while.cond:                                       ; preds = %do.end, %rcu_read_lock.exit
  %4 = ptrtoint ptr %cgroups.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %cgroups.i, align 16
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i1 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i1, label %lor.lhs.false.i, label %while.cond.task_css.exit_crit_edge

while.cond.task_css.exit_crit_edge:               ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %task_css.exit

lor.lhs.false.i:                                  ; preds = %while.cond
  %call.i18.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i)
  %tobool3.not.i = icmp eq i32 %call.i18.i, 0
  br i1 %tobool3.not.i, label %lor.lhs.false4.i, label %lor.lhs.false.i.task_css.exit_crit_edge

lor.lhs.false.i.task_css.exit_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %task_css.exit

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %lor.lhs.false6.i, label %lor.lhs.false4.i.task_css.exit_crit_edge

lor.lhs.false4.i.task_css.exit_crit_edge:         ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %task_css.exit

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false4.i
  %call7.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i2, label %lor.lhs.false6.i.task_css.exit_crit_edge

lor.lhs.false6.i.task_css.exit_crit_edge:         ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %task_css.exit

land.lhs.true.i2:                                 ; preds = %lor.lhs.false6.i
  %call9.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %land.lhs.true.i2.task_css.exit_crit_edge, label %land.lhs.true11.i

land.lhs.true.i2.task_css.exit_crit_edge:         ; preds = %land.lhs.true.i2
  call void @__sanitizer_cov_trace_pc() #10
  br label %task_css.exit

land.lhs.true11.i:                                ; preds = %land.lhs.true.i2
  %.b17.i = load i1, ptr @task_css.__warned, align 1
  br i1 %.b17.i, label %land.lhs.true11.i.task_css.exit_crit_edge, label %if.then.i3

land.lhs.true11.i.task_css.exit_crit_edge:        ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %task_css.exit

if.then.i3:                                       ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @task_css.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 494, ptr noundef nonnull @.str.10) #8
  br label %task_css.exit

task_css.exit:                                    ; preds = %if.then.i3, %land.lhs.true11.i.task_css.exit_crit_edge, %land.lhs.true.i2.task_css.exit_crit_edge, %lor.lhs.false6.i.task_css.exit_crit_edge, %lor.lhs.false4.i.task_css.exit_crit_edge, %lor.lhs.false.i.task_css.exit_crit_edge, %while.cond.task_css.exit_crit_edge
  %arrayidx.i = getelementptr [14 x ptr], ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %flags.i4 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %flags.i4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i4, align 4
  %and.i5 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i5)
  %tobool.not.i6 = icmp eq i32 %and.i5, 0
  br i1 %tobool.not.i6, label %css_tryget.exit, label %task_css.exit.while.end_crit_edge

task_css.exit.while.end_crit_edge:                ; preds = %task_css.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

css_tryget.exit:                                  ; preds = %task_css.exit
  %refcnt.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %9, i32 0, i32 2
  %call.i7 = tail call fastcc zeroext i1 @percpu_ref_tryget(ptr noundef %refcnt.i) #8
  br i1 %call.i7, label %css_tryget.exit.while.end_crit_edge, label %do.end, !prof !186

css_tryget.exit.while.end_crit_edge:              ; preds = %css_tryget.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.end:                                           ; preds = %css_tryget.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !230
  br label %while.cond

while.end:                                        ; preds = %css_tryget.exit.while.end_crit_edge, %task_css.exit.while.end_crit_edge
  %call.i9 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i9, label %while.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i12

while.end.rcu_read_unlock.exit_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i12:                                ; preds = %while.end
  %call1.i10 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i10)
  %tobool.not.i11 = icmp eq i32 %call1.i10, 0
  br i1 %tobool.not.i11, label %land.lhs.true.i12.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i14

land.lhs.true.i12.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i12
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i14:                               ; preds = %land.lhs.true.i12
  %.b4.i13 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i13, label %land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge, label %if.then.i15

land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i14
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i15:                                      ; preds = %land.lhs.true2.i14
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.17) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i15, %land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i12.rcu_read_unlock.exit_crit_edge, %while.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !193
  %12 = tail call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i.i.i.i.i16 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i16 to ptr
  %preempt_count.i.i.i.i17 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i17, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i17, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret ptr %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wb_get_create(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @percpu_ref_tryget(ptr noundef %ref) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !192
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #8
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %ref, align 4
  %and.i.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i1.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i1.i, label %do.body1.i, label %if.else.i, !prof !186

do.body1.i:                                       ; preds = %rcu_read_lock.exit.i
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !180
  %7 = tail call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i2.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i2.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %12, %5
  %13 = inttoptr i32 %add.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add15.i = add i32 %15, 1
  store i32 %add15.i, ptr %13, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !181
  %and.i.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then29.i, label %do.body1.i.do.end31.i_crit_edge, !prof !182

do.body1.i.do.end31.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end31.i

if.then29.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end31.i

do.end31.i:                                       ; preds = %if.then29.i, %do.body1.i.do.end31.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #8, !srcloc !183
  br label %if.end39.i

if.else.i:                                        ; preds = %rcu_read_lock.exit.i
  %data.i = getelementptr inbounds %struct.percpu_ref, ptr %ref, i32 0, i32 1
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %18, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !231
  tail call void @llvm.prefetch.p0(ptr %18, i32 1, i32 3, i32 1) #8
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 0, i32 1, ptr elementtype(i32) %18) #8, !srcloc !232
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.else.i.atomic_long_add_unless.exit.i_crit_edge, label %do.end11.i.i.i.i.i

if.else.i.atomic_long_add_unless.exit.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %atomic_long_add_unless.exit.i

do.end11.i.i.i.i.i:                               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !233
  br label %atomic_long_add_unless.exit.i

atomic_long_add_unless.exit.i:                    ; preds = %do.end11.i.i.i.i.i, %if.else.i.atomic_long_add_unless.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i.i.i = icmp ne i32 %asmresult.i.i.i.i.i, 0
  br label %if.end39.i

if.end39.i:                                       ; preds = %atomic_long_add_unless.exit.i, %do.end31.i
  %ret.0.off0.i = phi i1 [ true, %do.end31.i ], [ %cmp.i.i.i.i, %atomic_long_add_unless.exit.i ]
  %call.i3.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i3.i, label %if.end39.i.percpu_ref_tryget_many.exit_crit_edge, label %land.lhs.true.i6.i

if.end39.i.percpu_ref_tryget_many.exit_crit_edge: ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %percpu_ref_tryget_many.exit

land.lhs.true.i6.i:                               ; preds = %if.end39.i
  %call1.i4.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i)
  %tobool.not.i5.i = icmp eq i32 %call1.i4.i, 0
  br i1 %tobool.not.i5.i, label %land.lhs.true.i6.i.percpu_ref_tryget_many.exit_crit_edge, label %land.lhs.true2.i8.i

land.lhs.true.i6.i.percpu_ref_tryget_many.exit_crit_edge: ; preds = %land.lhs.true.i6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %percpu_ref_tryget_many.exit

land.lhs.true2.i8.i:                              ; preds = %land.lhs.true.i6.i
  %.b4.i7.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i, label %land.lhs.true2.i8.i.percpu_ref_tryget_many.exit_crit_edge, label %if.then.i9.i

land.lhs.true2.i8.i.percpu_ref_tryget_many.exit_crit_edge: ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %percpu_ref_tryget_many.exit

if.then.i9.i:                                     ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.17) #8
  br label %percpu_ref_tryget_many.exit

percpu_ref_tryget_many.exit:                      ; preds = %if.then.i9.i, %land.lhs.true2.i8.i.percpu_ref_tryget_many.exit_crit_edge, %land.lhs.true.i6.i.percpu_ref_tryget_many.exit_crit_edge, %if.end39.i.percpu_ref_tryget_many.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !193
  %20 = tail call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i.i.i.i.i10.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i10.i to ptr
  %preempt_count.i.i.i.i11.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i11.i, align 4
  %sub.i.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i11.i, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret i1 %ret.0.off0.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @percpu_ref_put_many(ptr noundef %ref) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !192
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %ref, align 4
  %and.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i1 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i1, label %do.body1, label %if.else, !prof !186

do.body1:                                         ; preds = %rcu_read_lock.exit
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !180
  %7 = tail call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i2 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i2 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %add = add i32 %12, %5
  %13 = inttoptr i32 %add to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add15 = add i32 %15, -1
  store i32 %add15, ptr %13, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !181
  %and.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.then29, label %do.body1.do.end31_crit_edge, !prof !182

do.body1.do.end31_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end31

if.then29:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end31

do.end31:                                         ; preds = %if.then29, %do.body1.do.end31_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #8, !srcloc !183
  br label %if.end48

if.else:                                          ; preds = %rcu_read_lock.exit
  %data = getelementptr inbounds %struct.percpu_ref, ptr %ref, i32 0, i32 1
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %18, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !213
  tail call void @llvm.prefetch.p0(ptr %18, i32 1, i32 3, i32 1) #8
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #8, !srcloc !214
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then45, label %if.else.if.end48_crit_edge, !prof !182

if.else.if.end48_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then45:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %release = getelementptr inbounds %struct.percpu_ref_data, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %release, align 4
  tail call void %23(ptr noundef %ref) #8
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.else.if.end48_crit_edge, %do.end31
  %call.i3 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i3, label %if.end48.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i6

if.end48.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i6:                                 ; preds = %if.end48
  %call1.i4 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4)
  %tobool.not.i5 = icmp eq i32 %call1.i4, 0
  br i1 %tobool.not.i5, label %land.lhs.true.i6.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i8

land.lhs.true.i6.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i6
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i8:                                ; preds = %land.lhs.true.i6
  %.b4.i7 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7, label %land.lhs.true2.i8.rcu_read_unlock.exit_crit_edge, label %if.then.i9

land.lhs.true2.i8.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i8
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i9:                                       ; preds = %land.lhs.true2.i8
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.17) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i9, %land.lhs.true2.i8.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i6.rcu_read_unlock.exit_crit_edge, %if.end48.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !193
  %24 = tail call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i.i.i.i.i10 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i10 to ptr
  %preempt_count.i.i.i.i11 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i11, align 4
  %sub.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i11, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wb_dirty_limits(ptr nocapture noundef %dtc) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %wb1 = getelementptr inbounds %struct.dirty_throttle_control, ptr %dtc, i32 0, i32 2
  %0 = ptrtoint ptr %wb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wb1, align 4
  %call = tail call fastcc i32 @__wb_calc_thresh(ptr noundef %dtc)
  %wb_thresh = getelementptr inbounds %struct.dirty_throttle_control, ptr %dtc, i32 0, i32 9
  %2 = ptrtoint ptr %wb_thresh to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %wb_thresh, align 4
  %thresh = getelementptr inbounds %struct.dirty_throttle_control, ptr %dtc, i32 0, i32 6
  %3 = ptrtoint ptr %thresh to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %thresh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %entry
  %conv = zext i32 %call to i64
  %bg_thresh = getelementptr inbounds %struct.dirty_throttle_control, ptr %dtc, i32 0, i32 7
  %5 = ptrtoint ptr %bg_thresh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bg_thresh, align 4
  %conv3 = zext i32 %6 to i64
  %mul = mul nuw i64 %conv3, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp164.i.i = icmp ult i64 %mul, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !186

if.then168.i.i:                                   ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i = trunc i64 %mul to i32
  %div172.i.i = udiv i32 %conv169.i.i, %4
  br label %cond.end

if.else174.i.i:                                   ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #10
  %7 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %4, i64 %mul) #11, !srcloc !187
  %asmresult1.i.i.i = extractvalue { i64, i64 } %7, 1
  %extract.t42 = trunc i64 %asmresult1.i.i.i to i32
  br label %cond.end

cond.end:                                         ; preds = %if.else174.i.i, %if.then168.i.i, %entry.cond.end_crit_edge
  %cond.off0 = phi i32 [ 0, %entry.cond.end_crit_edge ], [ %div172.i.i, %if.then168.i.i ], [ %extract.t42, %if.else174.i.i ]
  %wb_bg_thresh = getelementptr inbounds %struct.dirty_throttle_control, ptr %dtc, i32 0, i32 10
  %8 = ptrtoint ptr %wb_bg_thresh to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond.off0, ptr %wb_bg_thresh, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i.i = icmp eq i32 %9, 0
  %10 = tail call i32 @llvm.ctlz.i32(i32 %9, i1 true) #8, !range !184
  %sub.i.op.i.i = shl nuw nsw i32 %10, 3
  %sub.i.op.i.i.op = xor i32 %sub.i.op.i.i, 248
  %sub.i.op.i.i.op.op = add nuw nsw i32 %sub.i.op.i.i.op, 8
  %mul.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.op.i.i.op.op
  %mul5.i = shl i32 %9, 1
  %mul9 = mul i32 %mul5.i, %mul.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %mul9)
  %cmp = icmp ult i32 %call, %mul9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.bdi_writeback, ptr %1, i32 0, i32 9, i32 0
  %call.i.i = tail call i64 @__percpu_counter_sum(ptr noundef %arrayidx.i) #8
  %11 = tail call i64 @llvm.smax.i64(i64 %call.i.i, i64 0) #8
  %arrayidx.i37 = getelementptr %struct.bdi_writeback, ptr %1, i32 0, i32 9, i32 1
  %call.i.i38 = tail call i64 @__percpu_counter_sum(ptr noundef %arrayidx.i37) #8
  br label %if.end

if.else:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %count.i.i = getelementptr %struct.bdi_writeback, ptr %1, i32 0, i32 9, i32 0, i32 1
  %12 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load volatile i64, ptr %count.i.i, align 8
  %14 = tail call i64 @llvm.smax.i64(i64 %13, i64 0) #8
  %count.i.i39 = getelementptr %struct.bdi_writeback, ptr %1, i32 0, i32 9, i32 1, i32 1
  %15 = ptrtoint ptr %count.i.i39 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load volatile i64, ptr %count.i.i39, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink45 = phi i64 [ %16, %if.else ], [ %call.i.i38, %if.then ]
  %.sink44 = phi i64 [ %14, %if.else ], [ %11, %if.then ]
  %17 = tail call i64 @llvm.smax.i64(i64 %.sink45, i64 0) #8
  %add20 = add nuw i64 %17, %.sink44
  %conv21 = trunc i64 %add20 to i32
  %18 = getelementptr inbounds %struct.dirty_throttle_control, ptr %dtc, i32 0, i32 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv21, ptr %18, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wb_start_background_writeback(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mem_cgroup_flush_foreign(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wb_position_ratio(ptr nocapture noundef %dtc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wb1 = getelementptr inbounds %struct.dirty_throttle_control, ptr %dtc, i32 0, i32 2
  %0 = ptrtoint ptr %wb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wb1, align 4
  %avg_write_bandwidth = getelementptr inbounds %struct.bdi_writeback, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %avg_write_bandwidth to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %avg_write_bandwidth, align 4
  %thresh = getelementptr inbounds %struct.dirty_throttle_control, ptr %dtc, i32 0, i32 6
  %4 = ptrtoint ptr %thresh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %thresh, align 4
  %bg_thresh = getelementptr inbounds %struct.dirty_throttle_control, ptr %dtc, i32 0, i32 7
  %6 = ptrtoint ptr %bg_thresh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bg_thresh, align 4
  %8 = ptrtoint ptr %dtc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dtc, align 4
  %dirty_limit.i = getelementptr inbounds %struct.wb_domain, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %dirty_limit.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dirty_limit.i, align 8
  %12 = tail call i32 @llvm.umax.i32(i32 %11, i32 %5) #8
  %wb_thresh5 = getelementptr inbounds %struct.dirty_throttle_control, ptr %dtc, i32 0, i32 9
  %13 = ptrtoint ptr %wb_thresh5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wb_thresh5, align 4
  %pos_ratio6 = getelementptr inbounds %struct.dirty_throttle_control, ptr %dtc, i32 0, i32 11
  %15 = ptrtoint ptr %pos_ratio6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %pos_ratio6, align 4
  %dirty = getelementptr inbounds %struct.dirty_throttle_control, ptr %dtc, i32 0, i32 5
  %16 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dirty, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %12)
  %cmp.not = icmp ult i32 %17, %12
  br i1 %cmp.not, label %if.end, label %entry.cleanup123_crit_edge, !prof !186

entry.cleanup123_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup123

if.end:                                           ; preds = %entry
  %add.i = add i32 %7, %5
  %div1.i = lshr i32 %add.i, 1
  %add = add i32 %12, %div1.i
  %div200 = lshr i32 %add, 1
  %conv.i = zext i32 %div200 to i64
  %conv1.i = zext i32 %17 to i64
  %sub.i = sub nsw i64 %conv.i, %conv1.i
  %shl.i = shl nsw i64 %sub.i, 10
  %sub2.i = sub i32 %12, %div200
  %or.i = or i32 %sub2.i, 1
  %conv3.i = zext i32 %or.i to i64
  %call.i = tail call i64 @div64_s64(i64 noundef %shl.i, i64 noundef %conv3.i) #8
  %18 = shl i64 %call.i, 32
  %conv5.i = ashr exact i64 %18, 32
  %mul.i = mul nsw i64 %conv5.i, %conv5.i
  %19 = lshr i64 %mul.i, 10
  %mul8.i = mul i64 %19, %conv5.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1047553, i64 %mul8.i)
  %cmp.i = icmp sgt i64 %mul8.i, -1047553
  %shr9.i = ashr i64 %mul8.i, 10
  %20 = tail call i64 @llvm.smin.i64(i64 %shr9.i, i64 1024) #8
  %21 = add nsw i64 %20, 1024
  %22 = select i1 %cmp.i, i64 %21, i64 0
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  %capabilities = getelementptr inbounds %struct.backing_dev_info, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %capabilities, align 8
  %and = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end47, label %if.then17, !prof !186

if.then17:                                        ; preds = %if.end
  %wb_dirty = getelementptr inbounds %struct.dirty_throttle_control, ptr %dtc, i32 0, i32 8
  %27 = ptrtoint ptr %wb_dirty to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %wb_dirty, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %28)
  %cmp18 = icmp ult i32 %28, 8
  br i1 %cmp18, label %if.then19, label %if.end23

if.then19:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 1024, i64 %22)
  %cmp21 = icmp slt i64 %22, 1024
  %.tr = trunc i64 %22 to i32
  %extract.t209 = shl i32 %.tr, 1
  %cond.off0 = select i1 %cmp21, i32 %extract.t209, i32 2048
  br label %cleanup123.sink.split

if.end23:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %14)
  %cmp25.not = icmp ult i32 %28, %14
  br i1 %cmp25.not, label %if.end28, label %if.end23.cleanup123_crit_edge

if.end23.cleanup123_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup123

if.end28:                                         ; preds = %if.end23
  %wb_bg_thresh = getelementptr inbounds %struct.dirty_throttle_control, ptr %dtc, i32 0, i32 10
  %29 = ptrtoint ptr %wb_bg_thresh to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %wb_bg_thresh, align 4
  %add.i210 = add i32 %30, %14
  %div1.i211 = lshr i32 %add.i210, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add.i210)
  %cmp30 = icmp ult i32 %add.i210, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i211, i32 %14)
  %cmp32 = icmp eq i32 %div1.i211, %14
  %or.cond = or i1 %cmp30, %cmp32
  br i1 %or.cond, label %if.end28.cleanup123_crit_edge, label %if.end35

if.end28.cleanup123_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup123

if.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %call37 = tail call fastcc i64 @pos_ratio_polynom(i32 noundef %div1.i211, i32 noundef %28, i32 noundef %14)
  %31 = tail call i64 @llvm.smin.i64(i64 %22, i64 %call37)
  %cond44.off0 = trunc i64 %31 to i32
  br label %cleanup123.sink.split

if.end47:                                         ; preds = %if.end
  %32 = ptrtoint ptr %thresh to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %thresh, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %33)
  %cmp49 = icmp ugt i32 %14, %33
  br i1 %cmp49, label %if.then57, label %if.end47.if.end59_crit_edge, !prof !182

if.end47.if.end59_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then57:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.end47.if.end59_crit_edge
  %wb_thresh.0 = phi i32 [ %33, %if.then57 ], [ %14, %if.end47.if.end59_crit_edge ]
  %34 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dirty, align 4
  %sub = sub i32 %12, %35
  %div61201 = lshr i32 %sub, 3
  %36 = tail call i32 @llvm.umax.i32(i32 %wb_thresh.0, i32 %div61201)
  %conv69 = zext i32 %36 to i64
  %shl = shl nuw nsw i64 %conv69, 16
  %or = or i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %36)
  %cmp164.i.i = icmp ult i32 %36, 65536
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !186

if.then168.i.i:                                   ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i = trunc i64 %shl to i32
  %div172.i.i = udiv i32 %conv169.i.i, %or
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %37 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %or, i64 %shl) #11, !srcloc !187
  %asmresult1.i.i.i = extractvalue { i64, i64 } %37, 1
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  %38 = shl i64 %dividend.addr.0.i.i, 32
  %conv74 = ashr exact i64 %38, 32
  %mul75 = mul nsw i64 %conv74, %conv.i
  %shr = lshr i64 %mul75, 16
  %conv76 = trunc i64 %shr to i32
  %mul79 = shl i32 %3, 3
  %sub78 = add i32 %33, %mul79
  %add80 = sub i32 %sub78, %36
  %conv81 = zext i32 %add80 to i64
  %mul83 = mul nsw i64 %conv74, %conv81
  %shr84 = lshr i64 %mul83, 16
  %conv85 = trunc i64 %shr84 to i32
  %add86 = add i32 %conv76, %conv85
  %wb_dirty87 = getelementptr inbounds %struct.dirty_throttle_control, ptr %dtc, i32 0, i32 8
  %39 = ptrtoint ptr %wb_dirty87 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %wb_dirty87, align 4
  %div88202 = lshr i32 %conv85, 2
  %sub89 = sub i32 %add86, %div88202
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %sub89)
  %cmp90 = icmp ult i32 %40, %sub89
  br i1 %cmp90, label %if.then92, label %if.else

if.then92:                                        ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sub94 = sub i32 %add86, %40
  %conv95 = zext i32 %sub94 to i64
  %mul96 = mul i64 %22, %conv95
  %or98 = or i32 %conv85, 1
  %conv99 = zext i32 %or98 to i64
  %call100 = tail call i64 @div64_u64(i64 noundef %mul96, i64 noundef %conv99) #8
  br label %if.end102

if.else:                                          ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #10
  %div101 = sdiv i64 %22, 4
  br label %if.end102

if.end102:                                        ; preds = %if.else, %if.then92
  %pos_ratio.0 = phi i64 [ %call100, %if.then92 ], [ %div101, %if.else ]
  %div103203 = lshr i32 %36, 1
  %41 = ptrtoint ptr %wb_dirty87 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %wb_dirty87, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %div103203)
  %cmp105 = icmp ult i32 %42, %div103203
  %extract.t205 = trunc i64 %pos_ratio.0 to i32
  br i1 %cmp105, label %if.then107, label %if.end102.cleanup123.sink.split_crit_edge

if.end102.cleanup123.sink.split_crit_edge:        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup123.sink.split

if.then107:                                       ; preds = %if.end102
  %div109206 = lshr i32 %36, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %div109206)
  %cmp110 = icmp ugt i32 %42, %div109206
  br i1 %cmp110, label %if.then112, label %if.else117

if.then112:                                       ; preds = %if.then107
  %conv113 = zext i32 %div103203 to i64
  %mul114 = mul i64 %pos_ratio.0, %conv113
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul114)
  %cmp164.i.i315 = icmp ult i64 %mul114, 4294967296
  br i1 %cmp164.i.i315, label %if.then168.i.i320, label %if.else174.i.i322, !prof !186

if.then168.i.i320:                                ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i317 = trunc i64 %mul114 to i32
  %div172.i.i318 = udiv i32 %conv169.i.i317, %42
  br label %cleanup123.sink.split

if.else174.i.i322:                                ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #10
  %43 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %42, i64 %mul114) #11, !srcloc !187
  %asmresult1.i.i.i321 = extractvalue { i64, i64 } %43, 1
  %extract.t327 = trunc i64 %asmresult1.i.i.i321 to i32
  br label %cleanup123.sink.split

if.else117:                                       ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #10
  %extract.t204 = shl i32 %extract.t205, 3
  br label %cleanup123.sink.split

cleanup123.sink.split:                            ; preds = %if.else117, %if.else174.i.i322, %if.then168.i.i320, %if.end102.cleanup123.sink.split_crit_edge, %if.end35, %if.then19
  %cond.off0.sink = phi i32 [ %cond.off0, %if.then19 ], [ %cond44.off0, %if.end35 ], [ %extract.t204, %if.else117 ], [ %extract.t205, %if.end102.cleanup123.sink.split_crit_edge ], [ %div172.i.i318, %if.then168.i.i320 ], [ %extract.t327, %if.else174.i.i322 ]
  %44 = ptrtoint ptr %pos_ratio6 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %cond.off0.sink, ptr %pos_ratio6, align 4
  br label %cleanup123

cleanup123:                                       ; preds = %cleanup123.sink.split, %if.end28.cleanup123_crit_edge, %if.end23.cleanup123_crit_edge, %entry.cleanup123_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_balance_dirty_pages(ptr noundef %wb, i32 noundef %thresh, i32 noundef %bg_thresh, i32 noundef %dirty, i32 noundef %bdi_thresh, i32 noundef %bdi_dirty, i32 noundef %dirty_ratelimit, i32 noundef %task_ratelimit, i32 noundef %dirtied, i32 noundef %period, i32 noundef %pause, i32 noundef %start_time) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_balance_dirty_pages, i32 0, i32 1), ptr blockaddress(@trace_balance_dirty_pages, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !191

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !170) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !186

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !234
  %call42 = tail call i32 @__traceiter_balance_dirty_pages(ptr noundef null, ptr noundef %wb, i32 noundef %thresh, i32 noundef %bg_thresh, i32 noundef %dirty, i32 noundef %bdi_thresh, i32 noundef %bdi_dirty, i32 noundef %dirty_ratelimit, i32 noundef %task_ratelimit, i32 noundef %dirtied, i32 noundef %period, i32 noundef %pause, i32 noundef %start_time) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !235
  %13 = tail call i32 @llvm.read_register.i32(metadata !170) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !170) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !186

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !206
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_balance_dirty_pages, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_balance_dirty_pages, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_balance_dirty_pages.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_balance_dirty_pages.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 704, ptr noundef nonnull @.str.10) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !207
  %31 = tail call i32 @llvm.read_register.i32(metadata !170) #8
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
declare dso_local i32 @io_schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @pos_ratio_polynom(i32 noundef %setpoint, i32 noundef %dirty, i32 noundef %limit) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %setpoint to i64
  %conv1 = zext i32 %dirty to i64
  %sub = sub nsw i64 %conv, %conv1
  %shl = shl nsw i64 %sub, 10
  %sub2 = sub i32 %limit, %setpoint
  %or = or i32 %sub2, 1
  %conv3 = zext i32 %or to i64
  %call = tail call i64 @div64_s64(i64 noundef %shl, i64 noundef %conv3) #8
  %0 = shl i64 %call, 32
  %conv5 = ashr exact i64 %0, 32
  %mul = mul nsw i64 %conv5, %conv5
  %1 = lshr i64 %mul, 10
  %mul8 = mul i64 %1, %conv5
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1047553, i64 %mul8)
  %cmp = icmp sgt i64 %mul8, -1047553
  %shr9 = ashr i64 %mul8, 10
  %2 = tail call i64 @llvm.smin.i64(i64 %shr9, i64 1024)
  %3 = add nsw i64 %2, 1024
  %4 = select i1 %cmp, i64 %3, i64 0
  ret i64 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_balance_dirty_pages(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__percpu_counter_sum(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_wbc_writepage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pagevec_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__filemap_set_wb_err(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_lruvec_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mod_zone_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_writeback_dirty_folio(ptr noundef %folio, ptr noundef %mapping) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_dirty_folio, i32 0, i32 1), ptr blockaddress(@trace_writeback_dirty_folio, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !191

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !170) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !186

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !236
  %call42 = tail call i32 @__traceiter_writeback_dirty_folio(ptr noundef null, ptr noundef %folio, ptr noundef %mapping) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !237
  %13 = tail call i32 @llvm.read_register.i32(metadata !170) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !170) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !186

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !170) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !206
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_dirty_folio, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_dirty_folio, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_writeback_dirty_folio.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_writeback_dirty_folio.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 87, ptr noundef nonnull @.str.10) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !207
  %31 = tail call i32 @llvm.read_register.i32(metadata !170) #8
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mem_cgroup_track_foreign_dirty(ptr noundef %folio, ptr noundef %wb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@mem_cgroup_track_foreign_dirty, %if.end4)) #8
          to label %if.end [label %if.end4], !srcloc !191

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %do.body7.i.i, label %if.then.i.i, !prof !186

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.28) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/memcontrol.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 537, 0\0A.popsection", ""() #8, !srcloc !238
  unreachable

do.body7.i.i:                                     ; preds = %if.end
  %memcg_data.i.i = getelementptr inbounds %struct.anon.88, ptr %folio, i32 0, i32 7
  %3 = ptrtoint ptr %memcg_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %memcg_data.i.i, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool8.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool8.not.i.i, label %folio_memcg_kmem.exit.i, label %if.then15.i.i, !prof !186

if.then15.i.i:                                    ; preds = %do.body7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.29) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/memcontrol.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 538, 0\0A.popsection", ""() #8, !srcloc !239
  unreachable

folio_memcg_kmem.exit.i:                          ; preds = %do.body7.i.i
  %and23.i.i = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.i)
  %tobool24.i.not.i = icmp eq i32 %and23.i.i, 0
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %0, align 4
  %and.i.i.i.i9.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i9.i)
  %tobool.not.i.i.i10.i = icmp eq i32 %and.i.i.i.i9.i, 0
  br i1 %tobool24.i.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %folio_memcg_kmem.exit.i
  br i1 %tobool.not.i.i.i10.i, label %folio_test_slab.exit.i.i, label %if.then.i.i.i.i, !prof !186

if.then.i.i.i.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !197
  unreachable

folio_test_slab.exit.i.i:                         ; preds = %if.then.i
  %7 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %folio, align 4
  %9 = and i32 %8, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.i.not.i.i, label %__folio_objcg.exit.i, label %if.then.i6.i, !prof !186

if.then.i6.i:                                     ; preds = %folio_test_slab.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.30) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/memcontrol.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 417, 0\0A.popsection", ""() #8, !srcloc !240
  unreachable

__folio_objcg.exit.i:                             ; preds = %folio_test_slab.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %and48.i.i = and i32 %4, -4
  %10 = inttoptr i32 %and48.i.i to ptr
  %memcg.i.i = getelementptr inbounds %struct.obj_cgroup, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %memcg.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %memcg.i.i, align 4
  br label %folio_memcg.exit

if.end.i:                                         ; preds = %folio_memcg_kmem.exit.i
  br i1 %tobool.not.i.i.i10.i, label %folio_test_slab.exit.i13.i, label %if.then.i.i.i11.i, !prof !186

if.then.i.i.i11.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !197
  unreachable

folio_test_slab.exit.i13.i:                       ; preds = %if.end.i
  %13 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %folio, align 4
  %15 = and i32 %14, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not.i12.i = icmp eq i32 %15, 0
  br i1 %tobool.i.not.i12.i, label %__folio_memcg.exit.i, label %if.then.i14.i, !prof !186

if.then.i14.i:                                    ; preds = %folio_test_slab.exit.i13.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.30) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/memcontrol.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 396, 0\0A.popsection", ""() #8, !srcloc !241
  unreachable

__folio_memcg.exit.i:                             ; preds = %folio_test_slab.exit.i13.i
  call void @__sanitizer_cov_trace_pc() #10
  %and46.i.i = and i32 %4, -4
  %16 = inttoptr i32 %and46.i.i to ptr
  br label %folio_memcg.exit

folio_memcg.exit:                                 ; preds = %__folio_memcg.exit.i, %__folio_objcg.exit.i
  %retval.0.i = phi ptr [ %12, %__folio_objcg.exit.i ], [ %16, %__folio_memcg.exit.i ]
  %memcg_css = getelementptr inbounds %struct.bdi_writeback, ptr %wb, i32 0, i32 29
  %17 = ptrtoint ptr %memcg_css to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %memcg_css, align 8
  %cmp.not = icmp eq ptr %retval.0.i, %18
  br i1 %cmp.not, label %folio_memcg.exit.if.end4_crit_edge, label %if.then3, !prof !186

folio_memcg.exit.if.end4_crit_edge:               ; preds = %folio_memcg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %folio_memcg.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mem_cgroup_track_foreign_dirty_slowpath(ptr noundef %folio, ptr noundef %wb) #8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %folio_memcg.exit.if.end4_crit_edge, %entry
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_writeback_dirty_folio(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__inode_attach_wb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_zone_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_node_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mem_cgroup_track_foreign_dirty_slowpath(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_file_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mod_node_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_folio_wait_writeback(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !20, !22, !24, !26, !28, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !87, !88, !89, !91, !92, !93, !94, !96, !97, !99, !100, !102, !103, !105, !107, !108, !110, !112, !114, !115, !117, !118, !120, !121, !122, !124, !125, !127, !128, !130, !132, !134, !136, !138, !139, !141, !143, !145, !147, !149, !151, !152, !154, !156, !158, !160, !162, !164, !166, !167, !169}
!llvm.named.register.sp = !{!170}
!llvm.module.flags = !{!171, !172, !173, !174, !175, !176, !177, !178}
!llvm.ident = !{!179}

!0 = !{ptr @dirty_background_ratio, !1, !"dirty_background_ratio", i1 false, i1 false}
!1 = !{!"../mm/page-writeback.c", i32 73, i32 5}
!2 = !{ptr @vm_dirty_ratio, !3, !"vm_dirty_ratio", i1 false, i1 false}
!3 = !{!"../mm/page-writeback.c", i32 90, i32 5}
!4 = !{ptr @dirty_writeback_interval, !5, !"dirty_writeback_interval", i1 false, i1 false}
!5 = !{!"../mm/page-writeback.c", i32 101, i32 14}
!6 = !{ptr @__ksymtab_dirty_writeback_interval, !7, !"__ksymtab_dirty_writeback_interval", i1 false, i1 false}
!7 = !{!"../mm/page-writeback.c", i32 103, i32 1}
!8 = !{ptr @dirty_expire_interval, !9, !"dirty_expire_interval", i1 false, i1 false}
!9 = !{!"../mm/page-writeback.c", i32 108, i32 14}
!10 = !{ptr @__ksymtab_laptop_mode, !11, !"__ksymtab_laptop_mode", i1 false, i1 false}
!11 = !{!"../mm/page-writeback.c", i32 116, i32 1}
!12 = !{ptr @__ksymtab_wb_writeout_inc, !13, !"__ksymtab_wb_writeout_inc", i1 false, i1 false}
!13 = !{!"../mm/page-writeback.c", i32 610, i32 1}
!14 = !{ptr @wb_domain_init.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../mm/page-writeback.c", i32 639, i32 2}
!16 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @wb_domain_init.__key.1, !18, !"__key", i1 false, i1 false}
!18 = !{!"../mm/page-writeback.c", i32 641, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__ksymtab_bdi_set_max_ratio, !21, !"__ksymtab_bdi_set_max_ratio", i1 false, i1 false}
!21 = !{!"../mm/page-writeback.c", i32 702, i32 1}
!22 = !{ptr @dirty_throttle_leaks, !23, !"dirty_throttle_leaks", i1 false, i1 false}
!23 = !{!"../mm/page-writeback.c", i32 1864, i32 1}
!24 = !{ptr @__ksymtab_balance_dirty_pages_ratelimited, !25, !"__ksymtab_balance_dirty_pages_ratelimited", i1 false, i1 false}
!25 = !{!"../mm/page-writeback.c", i32 1931, i32 1}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../mm/page-writeback.c", i32 2050, i32 2}
!28 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../mm/page-writeback.c", i32 2104, i32 41}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../mm/page-writeback.c", i32 2106, i32 45}
!34 = !{ptr @__ksymtab_tag_pages_for_writeback, !35, !"__ksymtab_tag_pages_for_writeback", i1 false, i1 false}
!35 = !{!"../mm/page-writeback.c", i32 2144, i32 1}
!36 = !{ptr @__ksymtab_write_cache_pages, !37, !"__ksymtab_write_cache_pages", i1 false, i1 false}
!37 = !{!"../mm/page-writeback.c", i32 2310, i32 1}
!38 = !{ptr @__ksymtab_generic_writepages, !39, !"__ksymtab_generic_writepages", i1 false, i1 false}
!39 = !{!"../mm/page-writeback.c", i32 2351, i32 1}
!40 = !{ptr @__ksymtab_folio_write_one, !41, !"__ksymtab_folio_write_one", i1 false, i1 false}
!41 = !{!"../mm/page-writeback.c", i32 2428, i32 1}
!42 = !{ptr @__ksymtab___set_page_dirty_no_writeback, !43, !"__ksymtab___set_page_dirty_no_writeback", i1 false, i1 false}
!43 = !{!"../mm/page-writeback.c", i32 2439, i32 1}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../mm/page-writeback.c", i32 2512, i32 3}
!46 = !{ptr @__ksymtab_filemap_dirty_folio, !47, !"__ksymtab_filemap_dirty_folio", i1 false, i1 false}
!47 = !{!"../mm/page-writeback.c", i32 2556, i32 1}
!48 = !{ptr @__ksymtab_folio_account_redirty, !49, !"__ksymtab_folio_account_redirty", i1 false, i1 false}
!49 = !{!"../mm/page-writeback.c", i32 2587, i32 1}
!50 = !{ptr @__ksymtab_folio_redirty_for_writepage, !51, !"__ksymtab_folio_redirty_for_writepage", i1 false, i1 false}
!51 = !{!"../mm/page-writeback.c", i32 2613, i32 1}
!52 = !{ptr @__ksymtab_folio_mark_dirty, !53, !"__ksymtab_folio_mark_dirty", i1 false, i1 false}
!53 = !{!"../mm/page-writeback.c", i32 2651, i32 1}
!54 = !{ptr @__ksymtab_set_page_dirty_lock, !55, !"__ksymtab_set_page_dirty_lock", i1 false, i1 false}
!55 = !{!"../mm/page-writeback.c", i32 2672, i32 1}
!56 = !{ptr @__ksymtab___folio_cancel_dirty, !57, !"__ksymtab___folio_cancel_dirty", i1 false, i1 false}
!57 = !{!"../mm/page-writeback.c", i32 2708, i32 1}
!58 = !{ptr @.str.7, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../mm/page-writeback.c", i32 2729, i32 2}
!60 = !{ptr @__ksymtab_folio_clear_dirty_for_io, !61, !"__ksymtab_folio_clear_dirty_for_io", i1 false, i1 false}
!61 = !{!"../mm/page-writeback.c", i32 2784, i32 1}
!62 = !{ptr @.str.8, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../mm/page-writeback.c", i32 2907, i32 2}
!64 = !{ptr @__ksymtab___folio_start_writeback, !65, !"__ksymtab___folio_start_writeback", i1 false, i1 false}
!65 = !{!"../mm/page-writeback.c", i32 2911, i32 1}
!66 = !{ptr @__ksymtab_folio_wait_writeback, !67, !"__ksymtab_folio_wait_writeback", i1 false, i1 false}
!67 = !{!"../mm/page-writeback.c", i32 2932, i32 1}
!68 = !{ptr @__ksymtab_folio_wait_writeback_killable, !69, !"__ksymtab_folio_wait_writeback_killable", i1 false, i1 false}
!69 = !{!"../mm/page-writeback.c", i32 2957, i32 1}
!70 = !{ptr @__ksymtab_folio_wait_stable, !71, !"__ksymtab_folio_wait_stable", i1 false, i1 false}
!71 = !{!"../mm/page-writeback.c", i32 2977, i32 1}
!72 = !{ptr @dirty_background_bytes, !73, !"dirty_background_bytes", i1 false, i1 false}
!73 = !{!"../mm/page-writeback.c", i32 79, i32 15}
!74 = !{ptr @vm_highmem_is_dirtyable, !75, !"vm_highmem_is_dirtyable", i1 false, i1 false}
!75 = !{!"../mm/page-writeback.c", i32 85, i32 5}
!76 = !{ptr @vm_dirty_bytes, !77, !"vm_dirty_bytes", i1 false, i1 false}
!77 = !{!"../mm/page-writeback.c", i32 96, i32 15}
!78 = !{ptr @laptop_mode, !79, !"laptop_mode", i1 false, i1 false}
!79 = !{!"../mm/page-writeback.c", i32 114, i32 5}
!80 = !{ptr @global_wb_domain, !81, !"global_wb_domain", i1 false, i1 false}
!81 = !{!"../mm/page-writeback.c", i32 120, i32 18}
!82 = !{ptr @bdi_min_ratio, !83, !"bdi_min_ratio", i1 false, i1 false}
!83 = !{!"../mm/page-writeback.c", i32 661, i32 21}
!84 = !{ptr @__pcpu_unique_bdp_ratelimits, !85, !"__pcpu_unique_bdp_ratelimits", i1 false, i1 false}
!85 = !{!"../mm/page-writeback.c", i32 1848, i32 8}
!86 = !{ptr @bdp_ratelimits, !85, !"bdp_ratelimits", i1 false, i1 false}
!87 = !{ptr @__pcpu_scope_dirty_throttle_leaks, !23, !"__pcpu_scope_dirty_throttle_leaks", i1 false, i1 false}
!88 = !{ptr @__pcpu_unique_dirty_throttle_leaks, !23, !"__pcpu_unique_dirty_throttle_leaks", i1 false, i1 false}
!89 = distinct !{null, !90, !"__already_done", i1 false, i1 false}
!90 = !{!"../include/trace/events/writeback.h", i32 530, i32 1}
!91 = !{ptr @.str.9, !90, !"<string literal>", i1 false, i1 false}
!92 = distinct !{null, !90, !"__warned", i1 false, i1 false}
!93 = !{ptr @.str.10, !90, !"<string literal>", i1 false, i1 false}
!94 = distinct !{null, !95, !"__already_done", i1 false, i1 false}
!95 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!96 = !{ptr @.str.11, !95, !"<string literal>", i1 false, i1 false}
!97 = distinct !{null, !98, !"__already_done", i1 false, i1 false}
!98 = !{!"../include/linux/vmstat.h", i32 202, i32 2}
!99 = distinct !{null, !98, !"<string literal>", i1 false, i1 false}
!100 = distinct !{null, !101, !"__already_done", i1 false, i1 false}
!101 = !{!"../include/trace/events/writeback.h", i32 575, i32 1}
!102 = distinct !{null, !101, !"__warned", i1 false, i1 false}
!103 = distinct !{null, !104, !"__already_done", i1 false, i1 false}
!104 = !{!"../mm/page-writeback.c", i32 1114, i32 3}
!105 = distinct !{null, !106, !"__warned", i1 false, i1 false}
!106 = !{!"../include/linux/cgroup.h", i32 494, i32 9}
!107 = !{ptr @.str.13, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @ratelimit_pages, !109, !"ratelimit_pages", i1 false, i1 false}
!109 = !{!"../mm/page-writeback.c", i32 66, i32 13}
!110 = distinct !{null, !111, !"__already_done", i1 false, i1 false}
!111 = !{!"../mm/page-writeback.c", i32 1795, i32 3}
!112 = distinct !{null, !113, !"__already_done", i1 false, i1 false}
!113 = !{!"../include/trace/events/writeback.h", i32 621, i32 1}
!114 = distinct !{null, !113, !"__warned", i1 false, i1 false}
!115 = distinct !{null, !116, !"__already_done", i1 false, i1 false}
!116 = !{!"../include/linux/backing-dev-defs.h", i32 253, i32 6}
!117 = !{ptr @.str.14, !116, !"<string literal>", i1 false, i1 false}
!118 = distinct !{null, !119, !"__warned", i1 false, i1 false}
!119 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!120 = !{ptr @.str.15, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.16, !119, !"<string literal>", i1 false, i1 false}
!122 = distinct !{null, !123, !"__warned", i1 false, i1 false}
!123 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!124 = !{ptr @.str.17, !123, !"<string literal>", i1 false, i1 false}
!125 = distinct !{null, !126, !"__warned", i1 false, i1 false}
!126 = !{!"../include/linux/xarray.h", i32 1182, i32 9}
!127 = !{ptr @.str.18, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.19, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!130 = !{ptr @.str.20, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!132 = distinct !{null, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!134 = !{ptr @.str.22, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../include/linux/page-flags.h", i32 420, i32 1}
!136 = distinct !{null, !137, !"__already_done", i1 false, i1 false}
!137 = !{!"../include/trace/events/writeback.h", i32 496, i32 1}
!138 = distinct !{null, !137, !"__warned", i1 false, i1 false}
!139 = !{ptr @.str.23, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../include/linux/page-flags.h", i32 698, i32 1}
!141 = !{ptr @.str.24, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!143 = !{ptr @.str.25, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../include/linux/mm.h", i32 717, i32 2}
!145 = !{ptr @.str.26, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../include/linux/mm.h", i32 1368, i32 10}
!147 = distinct !{null, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../mm/page-writeback.c", i32 2469, i32 3}
!149 = distinct !{null, !150, !"__already_done", i1 false, i1 false}
!150 = !{!"../include/trace/events/writeback.h", i32 82, i32 1}
!151 = distinct !{null, !150, !"__warned", i1 false, i1 false}
!152 = !{ptr @.str.28, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../include/linux/memcontrol.h", i32 537, i32 2}
!154 = !{ptr @.str.29, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../include/linux/memcontrol.h", i32 538, i32 2}
!156 = !{ptr @.str.30, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../include/linux/memcontrol.h", i32 417, i32 2}
!158 = distinct !{null, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../include/linux/memcontrol.h", i32 418, i32 2}
!160 = distinct !{null, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../include/linux/memcontrol.h", i32 419, i32 2}
!162 = distinct !{null, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../include/linux/memcontrol.h", i32 398, i32 2}
!164 = distinct !{null, !165, !"__already_done", i1 false, i1 false}
!165 = !{!"../include/linux/backing-dev.h", i32 269, i32 2}
!166 = !{ptr @.str.34, !165, !"<string literal>", i1 false, i1 false}
!167 = distinct !{null, !168, !"__already_done", i1 false, i1 false}
!168 = !{!"../include/trace/events/writeback.h", i32 89, i32 1}
!169 = distinct !{null, !168, !"__warned", i1 false, i1 false}
!170 = !{!"sp"}
!171 = !{i32 1, !"wchar_size", i32 2}
!172 = !{i32 1, !"min_enum_size", i32 4}
!173 = !{i32 8, !"branch-target-enforcement", i32 0}
!174 = !{i32 8, !"sign-return-address", i32 0}
!175 = !{i32 8, !"sign-return-address-all", i32 0}
!176 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!177 = !{i32 7, !"uwtable", i32 1}
!178 = !{i32 7, !"frame-pointer", i32 2}
!179 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!180 = !{i64 692206, i64 692267}
!181 = !{i64 694938}
!182 = !{!"branch_weights", i32 1, i32 2000}
!183 = !{i64 695223}
!184 = !{i32 0, i32 33}
!185 = !{!"auto-init"}
!186 = !{!"branch_weights", i32 2000, i32 1}
!187 = !{i64 2148690259, i64 2148690539, i64 2148690873, i64 2148691207}
!188 = !{i64 2148385136}
!189 = !{i64 2148300445, i64 2148300477, i64 2148300506, i64 2148300540, i64 2148300571, i64 2148300594}
!190 = !{i64 2148385365}
!191 = !{i64 2148781540, i64 2148781545, i64 2148781558, i64 2148781602, i64 2148781636, i64 2148781657}
!192 = !{i64 2149554706}
!193 = !{i64 2149554972}
!194 = !{i64 2156559880}
!195 = !{i64 2156564093}
!196 = !{i64 2156604674, i64 2156605159, i64 2156604711, i64 2156604767, i64 2156604801, i64 2156604825, i64 2156604866, i64 2156604887, i64 2156604915, i64 2156604949}
!197 = !{i64 2150651005, i64 2150651496, i64 2150651042, i64 2150651098, i64 2150651132, i64 2150651156, i64 2150651197, i64 2150651218, i64 2150651246, i64 2150651280}
!198 = !{i64 2148308583, i64 2148308615, i64 2148308644, i64 2148308678, i64 2148308709, i64 2148308732}
!199 = !{i64 2148397664}
!200 = !{i64 2150760914, i64 2150761405, i64 2150760951, i64 2150761007, i64 2150761041, i64 2150761065, i64 2150761106, i64 2150761127, i64 2150761155, i64 2150761189}
!201 = !{i64 2151166859, i64 2151167350, i64 2151166896, i64 2151166952, i64 2151166986, i64 2151167010, i64 2151167051, i64 2151167072, i64 2151167100, i64 2151167134}
!202 = !{i64 2156613218, i64 2156613703, i64 2156613255, i64 2156613311, i64 2156613345, i64 2156613369, i64 2156613410, i64 2156613431, i64 2156613459, i64 2156613493}
!203 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!204 = !{i64 2156081240}
!205 = !{i64 2156081445}
!206 = !{i64 2149563265}
!207 = !{i64 2149564301}
!208 = !{i64 2151413730, i64 2151414221, i64 2151413767, i64 2151413823, i64 2151413857, i64 2151413881, i64 2151413922, i64 2151413943, i64 2151413971, i64 2151414005}
!209 = !{i64 2156628632, i64 2156629117, i64 2156628669, i64 2156628725, i64 2156628759, i64 2156628783, i64 2156628824, i64 2156628845, i64 2156628873, i64 2156628907}
!210 = !{i64 2153225269, i64 2153225753, i64 2153225306, i64 2153225362, i64 2153225396, i64 2153225420, i64 2153225461, i64 2153225482, i64 2153225510, i64 2153225544}
!211 = !{i64 2148299725, i64 2148299751, i64 2148299780, i64 2148299814, i64 2148299845, i64 2148299868}
!212 = !{i64 2153201296, i64 2153201779, i64 2153201333, i64 2153201389, i64 2153201423, i64 2153201447, i64 2153201488, i64 2153201509, i64 2153201537, i64 2153201571}
!213 = !{i64 2148388177}
!214 = !{i64 2148302910, i64 2148302942, i64 2148302971, i64 2148303005, i64 2148303036, i64 2148303059}
!215 = !{i64 2148388406}
!216 = !{i64 2156654025, i64 2156654510, i64 2156654062, i64 2156654118, i64 2156654152, i64 2156654176, i64 2156654217, i64 2156654238, i64 2156654266, i64 2156654300}
!217 = !{i64 2154899596}
!218 = !{i64 2153231051, i64 2153231535, i64 2153231088, i64 2153231144, i64 2153231178, i64 2153231202, i64 2153231243, i64 2153231264, i64 2153231292, i64 2153231326}
!219 = !{i64 2150777613, i64 2150777786, i64 2150777801, i64 2150777853, i64 2150777912, i64 2150777936, i64 2150777977, i64 2150777998, i64 2150778026, i64 2150778058}
!220 = !{i64 2151400897}
!221 = !{i64 2148302190, i64 2148302216, i64 2148302245, i64 2148302279, i64 2148302310, i64 2148302333}
!222 = !{i64 2156660526, i64 2156661011, i64 2156660563, i64 2156660619, i64 2156660653, i64 2156660677, i64 2156660718, i64 2156660739, i64 2156660767, i64 2156660801}
!223 = !{i64 2155753185}
!224 = !{i64 2155753416}
!225 = !{i64 2156120441}
!226 = !{i64 2156120706}
!227 = !{i64 2156138261}
!228 = !{i64 2156138522}
!229 = !{i64 2154070284}
!230 = !{i64 2154070126}
!231 = !{i64 2148299144}
!232 = !{i64 783967, i64 783992, i64 784014, i64 784030, i64 784042, i64 784062, i64 784086, i64 784102, i64 784114}
!233 = !{i64 2148299332}
!234 = !{i64 2156160281}
!235 = !{i64 2156160730}
!236 = !{i64 2155735992}
!237 = !{i64 2155736225}
!238 = !{i64 2154707893, i64 2154708384, i64 2154707930, i64 2154707986, i64 2154708020, i64 2154708044, i64 2154708085, i64 2154708106, i64 2154708134, i64 2154708168}
!239 = !{i64 2154709793, i64 2154710284, i64 2154709830, i64 2154709886, i64 2154709920, i64 2154709944, i64 2154709985, i64 2154710006, i64 2154710034, i64 2154710068}
!240 = !{i64 2154692393, i64 2154692884, i64 2154692430, i64 2154692486, i64 2154692520, i64 2154692544, i64 2154692585, i64 2154692606, i64 2154692634, i64 2154692668}
!241 = !{i64 2154686651, i64 2154687142, i64 2154686688, i64 2154686744, i64 2154686778, i64 2154686802, i64 2154686843, i64 2154686864, i64 2154686892, i64 2154686926}
