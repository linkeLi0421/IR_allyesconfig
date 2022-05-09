; ModuleID = '/llk/IR_all_yes/mm/gup.c_pt.bc'
source_filename = "../mm/gup.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+unpin_user_page\22, \22a\22\09"
module asm "\09.weak\09__crc_unpin_user_page\09\09\09\09"
module asm "\09.long\09__crc_unpin_user_page\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unpin_user_page:\09\09\09\09\09"
module asm "\09.asciz \09\22unpin_user_page\22\09\09\09\09\09"
module asm "__kstrtabns_unpin_user_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+unpin_user_pages_dirty_lock\22, \22a\22\09"
module asm "\09.weak\09__crc_unpin_user_pages_dirty_lock\09\09\09\09"
module asm "\09.long\09__crc_unpin_user_pages_dirty_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unpin_user_pages_dirty_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22unpin_user_pages_dirty_lock\22\09\09\09\09\09"
module asm "__kstrtabns_unpin_user_pages_dirty_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+unpin_user_page_range_dirty_lock\22, \22a\22\09"
module asm "\09.weak\09__crc_unpin_user_page_range_dirty_lock\09\09\09\09"
module asm "\09.long\09__crc_unpin_user_page_range_dirty_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unpin_user_page_range_dirty_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22unpin_user_page_range_dirty_lock\22\09\09\09\09\09"
module asm "__kstrtabns_unpin_user_page_range_dirty_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+unpin_user_pages\22, \22a\22\09"
module asm "\09.weak\09__crc_unpin_user_pages\09\09\09\09"
module asm "\09.long\09__crc_unpin_user_pages\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unpin_user_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22unpin_user_pages\22\09\09\09\09\09"
module asm "__kstrtabns_unpin_user_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fixup_user_fault\22, \22a\22\09"
module asm "\09.weak\09__crc_fixup_user_fault\09\09\09\09"
module asm "\09.long\09__crc_fixup_user_fault\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fixup_user_fault:\09\09\09\09\09"
module asm "\09.asciz \09\22fixup_user_fault\22\09\09\09\09\09"
module asm "__kstrtabns_fixup_user_fault:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fault_in_writeable\22, \22a\22\09"
module asm "\09.weak\09__crc_fault_in_writeable\09\09\09\09"
module asm "\09.long\09__crc_fault_in_writeable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fault_in_writeable:\09\09\09\09\09"
module asm "\09.asciz \09\22fault_in_writeable\22\09\09\09\09\09"
module asm "__kstrtabns_fault_in_writeable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fault_in_safe_writeable\22, \22a\22\09"
module asm "\09.weak\09__crc_fault_in_safe_writeable\09\09\09\09"
module asm "\09.long\09__crc_fault_in_safe_writeable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fault_in_safe_writeable:\09\09\09\09\09"
module asm "\09.asciz \09\22fault_in_safe_writeable\22\09\09\09\09\09"
module asm "__kstrtabns_fault_in_safe_writeable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fault_in_readable\22, \22a\22\09"
module asm "\09.weak\09__crc_fault_in_readable\09\09\09\09"
module asm "\09.long\09__crc_fault_in_readable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fault_in_readable:\09\09\09\09\09"
module asm "\09.asciz \09\22fault_in_readable\22\09\09\09\09\09"
module asm "__kstrtabns_fault_in_readable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+get_user_pages_remote\22, \22a\22\09"
module asm "\09.weak\09__crc_get_user_pages_remote\09\09\09\09"
module asm "\09.long\09__crc_get_user_pages_remote\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_user_pages_remote:\09\09\09\09\09"
module asm "\09.asciz \09\22get_user_pages_remote\22\09\09\09\09\09"
module asm "__kstrtabns_get_user_pages_remote:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+get_user_pages\22, \22a\22\09"
module asm "\09.weak\09__crc_get_user_pages\09\09\09\09"
module asm "\09.long\09__crc_get_user_pages\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_user_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22get_user_pages\22\09\09\09\09\09"
module asm "__kstrtabns_get_user_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+get_user_pages_locked\22, \22a\22\09"
module asm "\09.weak\09__crc_get_user_pages_locked\09\09\09\09"
module asm "\09.long\09__crc_get_user_pages_locked\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_user_pages_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22get_user_pages_locked\22\09\09\09\09\09"
module asm "__kstrtabns_get_user_pages_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+get_user_pages_unlocked\22, \22a\22\09"
module asm "\09.weak\09__crc_get_user_pages_unlocked\09\09\09\09"
module asm "\09.long\09__crc_get_user_pages_unlocked\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_user_pages_unlocked:\09\09\09\09\09"
module asm "\09.asciz \09\22get_user_pages_unlocked\22\09\09\09\09\09"
module asm "__kstrtabns_get_user_pages_unlocked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+get_user_pages_fast_only\22, \22a\22\09"
module asm "\09.weak\09__crc_get_user_pages_fast_only\09\09\09\09"
module asm "\09.long\09__crc_get_user_pages_fast_only\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_user_pages_fast_only:\09\09\09\09\09"
module asm "\09.asciz \09\22get_user_pages_fast_only\22\09\09\09\09\09"
module asm "__kstrtabns_get_user_pages_fast_only:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+get_user_pages_fast\22, \22a\22\09"
module asm "\09.weak\09__crc_get_user_pages_fast\09\09\09\09"
module asm "\09.long\09__crc_get_user_pages_fast\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_user_pages_fast:\09\09\09\09\09"
module asm "\09.asciz \09\22get_user_pages_fast\22\09\09\09\09\09"
module asm "__kstrtabns_get_user_pages_fast:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pin_user_pages_fast\22, \22a\22\09"
module asm "\09.weak\09__crc_pin_user_pages_fast\09\09\09\09"
module asm "\09.long\09__crc_pin_user_pages_fast\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pin_user_pages_fast:\09\09\09\09\09"
module asm "\09.asciz \09\22pin_user_pages_fast\22\09\09\09\09\09"
module asm "__kstrtabns_pin_user_pages_fast:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pin_user_pages_fast_only\22, \22a\22\09"
module asm "\09.weak\09__crc_pin_user_pages_fast_only\09\09\09\09"
module asm "\09.long\09__crc_pin_user_pages_fast_only\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pin_user_pages_fast_only:\09\09\09\09\09"
module asm "\09.asciz \09\22pin_user_pages_fast_only\22\09\09\09\09\09"
module asm "__kstrtabns_pin_user_pages_fast_only:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pin_user_pages_remote\22, \22a\22\09"
module asm "\09.weak\09__crc_pin_user_pages_remote\09\09\09\09"
module asm "\09.long\09__crc_pin_user_pages_remote\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pin_user_pages_remote:\09\09\09\09\09"
module asm "\09.asciz \09\22pin_user_pages_remote\22\09\09\09\09\09"
module asm "__kstrtabns_pin_user_pages_remote:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pin_user_pages\22, \22a\22\09"
module asm "\09.weak\09__crc_pin_user_pages\09\09\09\09"
module asm "\09.long\09__crc_pin_user_pages\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pin_user_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22pin_user_pages\22\09\09\09\09\09"
module asm "__kstrtabns_pin_user_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pin_user_pages_unlocked\22, \22a\22\09"
module asm "\09.weak\09__crc_pin_user_pages_unlocked\09\09\09\09"
module asm "\09.long\09__crc_pin_user_pages_unlocked\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pin_user_pages_unlocked:\09\09\09\09\09"
module asm "\09.asciz \09\22pin_user_pages_unlocked\22\09\09\09\09\09"
module asm "__kstrtabns_pin_user_pages_unlocked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pin_user_pages_locked\22, \22a\22\09"
module asm "\09.weak\09__crc_pin_user_pages_locked\09\09\09\09"
module asm "\09.long\09__crc_pin_user_pages_locked\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pin_user_pages_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22pin_user_pages_locked\22\09\09\09\09\09"
module asm "__kstrtabns_pin_user_pages_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.57 }
%struct.atomic_t = type { i32 }
%union.anon.57 = type { i32 }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, [36 x i8], %struct.zone_padding, %struct.lruvec, i32, [12 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [92 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [96 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [90 x i8], %struct.zone_padding, [11 x %struct.atomic_t], [0 x %struct.atomic_t], [84 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32, ptr }
%struct.zone_padding = type { [0 x i8] }
%struct.mm_struct = type { %struct.anon.9, [0 x i32] }
%struct.anon.9 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.migration_target_control = type { i32, ptr, i32 }
%struct.page = type { i32, %union.anon, %union.anon.75, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.anon.69 = type { i32, i8, i8, %struct.atomic_t, i32 }
%struct.follow_page_context = type { ptr, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.51, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.47, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.10 }
%struct.llist_node = type { ptr }
%union.anon.10 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.12 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.47 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.dev_pagemap = type { %struct.vmem_altmap, %struct.percpu_ref, %struct.completion, i32, i32, i32, ptr, ptr, i32, %union.anon.74 }
%struct.vmem_altmap = type { i32, i32, i32, i32, i32, i32 }
%struct.percpu_ref = type { i32, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%union.anon.74 = type { %struct.range }
%struct.range = type { i64, i64 }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }
%struct.anon.81 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }

@try_grab_compound_head.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mm/gup.c\00", [23 x i8] zeroinitializer }, align 32
@try_grab_page.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@try_grab_page.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_unpin_user_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_unpin_user_page = external dso_local constant [0 x i8], align 1
@__ksymtab_unpin_user_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unpin_user_page to i32), ptr @__kstrtab_unpin_user_page, ptr @__kstrtabns_unpin_user_page }, section "___ksymtab+unpin_user_page", align 4
@__kstrtab_unpin_user_pages_dirty_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_unpin_user_pages_dirty_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_unpin_user_pages_dirty_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unpin_user_pages_dirty_lock to i32), ptr @__kstrtab_unpin_user_pages_dirty_lock, ptr @__kstrtabns_unpin_user_pages_dirty_lock }, section "___ksymtab+unpin_user_pages_dirty_lock", align 4
@__kstrtab_unpin_user_page_range_dirty_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_unpin_user_page_range_dirty_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_unpin_user_page_range_dirty_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unpin_user_page_range_dirty_lock to i32), ptr @__kstrtab_unpin_user_page_range_dirty_lock, ptr @__kstrtabns_unpin_user_page_range_dirty_lock }, section "___ksymtab+unpin_user_page_range_dirty_lock", align 4
@__kstrtab_unpin_user_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_unpin_user_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_unpin_user_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unpin_user_pages to i32), ptr @__kstrtab_unpin_user_pages, ptr @__kstrtabns_unpin_user_pages }, section "___ksymtab+unpin_user_pages", align 4
@__kstrtab_fixup_user_fault = external dso_local constant [0 x i8], align 1
@__kstrtabns_fixup_user_fault = external dso_local constant [0 x i8], align 1
@__ksymtab_fixup_user_fault = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fixup_user_fault to i32), ptr @__kstrtab_fixup_user_fault, ptr @__kstrtabns_fixup_user_fault }, section "___ksymtab_gpl+fixup_user_fault", align 4
@__kstrtab_fault_in_writeable = external dso_local constant [0 x i8], align 1
@__kstrtabns_fault_in_writeable = external dso_local constant [0 x i8], align 1
@__ksymtab_fault_in_writeable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fault_in_writeable to i32), ptr @__kstrtab_fault_in_writeable, ptr @__kstrtabns_fault_in_writeable }, section "___ksymtab+fault_in_writeable", align 4
@__kstrtab_fault_in_safe_writeable = external dso_local constant [0 x i8], align 1
@__kstrtabns_fault_in_safe_writeable = external dso_local constant [0 x i8], align 1
@__ksymtab_fault_in_safe_writeable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fault_in_safe_writeable to i32), ptr @__kstrtab_fault_in_safe_writeable, ptr @__kstrtabns_fault_in_safe_writeable }, section "___ksymtab+fault_in_safe_writeable", align 4
@__kstrtab_fault_in_readable = external dso_local constant [0 x i8], align 1
@__kstrtabns_fault_in_readable = external dso_local constant [0 x i8], align 1
@__ksymtab_fault_in_readable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fault_in_readable to i32), ptr @__kstrtab_fault_in_readable, ptr @__kstrtabns_fault_in_readable }, section "___ksymtab+fault_in_readable", align 4
@__kstrtab_get_user_pages_remote = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_user_pages_remote = external dso_local constant [0 x i8], align 1
@__ksymtab_get_user_pages_remote = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_user_pages_remote to i32), ptr @__kstrtab_get_user_pages_remote, ptr @__kstrtabns_get_user_pages_remote }, section "___ksymtab+get_user_pages_remote", align 4
@__kstrtab_get_user_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_user_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_get_user_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_user_pages to i32), ptr @__kstrtab_get_user_pages, ptr @__kstrtabns_get_user_pages }, section "___ksymtab+get_user_pages", align 4
@get_user_pages_locked.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@get_user_pages_locked.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_get_user_pages_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_user_pages_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_get_user_pages_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_user_pages_locked to i32), ptr @__kstrtab_get_user_pages_locked, ptr @__kstrtabns_get_user_pages_locked }, section "___ksymtab+get_user_pages_locked", align 4
@get_user_pages_unlocked.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_get_user_pages_unlocked = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_user_pages_unlocked = external dso_local constant [0 x i8], align 1
@__ksymtab_get_user_pages_unlocked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_user_pages_unlocked to i32), ptr @__kstrtab_get_user_pages_unlocked, ptr @__kstrtabns_get_user_pages_unlocked }, section "___ksymtab+get_user_pages_unlocked", align 4
@__kstrtab_get_user_pages_fast_only = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_user_pages_fast_only = external dso_local constant [0 x i8], align 1
@__ksymtab_get_user_pages_fast_only = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_user_pages_fast_only to i32), ptr @__kstrtab_get_user_pages_fast_only, ptr @__kstrtabns_get_user_pages_fast_only }, section "___ksymtab_gpl+get_user_pages_fast_only", align 4
@__kstrtab_get_user_pages_fast = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_user_pages_fast = external dso_local constant [0 x i8], align 1
@__ksymtab_get_user_pages_fast = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_user_pages_fast to i32), ptr @__kstrtab_get_user_pages_fast, ptr @__kstrtabns_get_user_pages_fast }, section "___ksymtab_gpl+get_user_pages_fast", align 4
@pin_user_pages_fast.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_pin_user_pages_fast = external dso_local constant [0 x i8], align 1
@__kstrtabns_pin_user_pages_fast = external dso_local constant [0 x i8], align 1
@__ksymtab_pin_user_pages_fast = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pin_user_pages_fast to i32), ptr @__kstrtab_pin_user_pages_fast, ptr @__kstrtabns_pin_user_pages_fast }, section "___ksymtab_gpl+pin_user_pages_fast", align 4
@pin_user_pages_fast_only.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_pin_user_pages_fast_only = external dso_local constant [0 x i8], align 1
@__kstrtabns_pin_user_pages_fast_only = external dso_local constant [0 x i8], align 1
@__ksymtab_pin_user_pages_fast_only = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pin_user_pages_fast_only to i32), ptr @__kstrtab_pin_user_pages_fast_only, ptr @__kstrtabns_pin_user_pages_fast_only }, section "___ksymtab_gpl+pin_user_pages_fast_only", align 4
@pin_user_pages_remote.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_pin_user_pages_remote = external dso_local constant [0 x i8], align 1
@__kstrtabns_pin_user_pages_remote = external dso_local constant [0 x i8], align 1
@__ksymtab_pin_user_pages_remote = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pin_user_pages_remote to i32), ptr @__kstrtab_pin_user_pages_remote, ptr @__kstrtabns_pin_user_pages_remote }, section "___ksymtab+pin_user_pages_remote", align 4
@pin_user_pages.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_pin_user_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_pin_user_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_pin_user_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pin_user_pages to i32), ptr @__kstrtab_pin_user_pages, ptr @__kstrtabns_pin_user_pages }, section "___ksymtab+pin_user_pages", align 4
@pin_user_pages_unlocked.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_pin_user_pages_unlocked = external dso_local constant [0 x i8], align 1
@__kstrtabns_pin_user_pages_unlocked = external dso_local constant [0 x i8], align 1
@__ksymtab_pin_user_pages_unlocked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pin_user_pages_unlocked to i32), ptr @__kstrtab_pin_user_pages_unlocked, ptr @__kstrtabns_pin_user_pages_unlocked }, section "___ksymtab+pin_user_pages_unlocked", align 4
@pin_user_pages_locked.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pin_user_pages_locked.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_pin_user_pages_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_pin_user_pages_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_pin_user_pages_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pin_user_pages_locked to i32), ptr @__kstrtab_pin_user_pages_locked, ptr @__kstrtabns_pin_user_pages_locked }, section "___ksymtab+pin_user_pages_locked", align 4
@try_get_compound_head.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_page_ref_mod_unless = external dso_local global %struct.tracepoint, align 4
@put_page_refs.__warned = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"VM_WARN_ON_ONCE_PAGE(page_ref_count(page) < refs)\00", [46 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@zero_pfn = external dso_local local_unnamed_addr global i32, align 4
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"VM_BUG_ON_PAGE(!hpage_pincount_available(page))\00", [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"VM_BUG_ON_PAGE(page != ((typeof(page))_compound_head(page)))\00", [35 x i8] zeroinitializer }, align 32
@contig_page_data = external dso_local global %struct.pglist_data, align 128
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(p))\00", [32 x i8] zeroinitializer }, align 32
@try_get_page.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/linux/mm.h\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@follow_page_pte.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/mmap_lock.h\00", [38 x i8] zeroinitializer }, align 32
@init_mm = external dso_local local_unnamed_addr global %struct.mm_struct, align 8
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@is_valid_gup_flags.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@is_valid_gup_flags.__already_done.18 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__get_user_pages_remote.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__const.check_and_migrate_movable_pages.mtc = private unnamed_addr constant %struct.migration_target_control { i32 -1, ptr null, i32 1060032 }, align 4
@internal_get_user_pages_fast.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 171, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 52, i32 6 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 717, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 698, i32 1 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 34, i32 2 }
@___asan_gen_.35 = private constant [12 x i8] c"../mm/gup.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 35, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 1368, i32 10 }
@___asan_gen_.41 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 1177, i32 6 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 420, i32 1 }
@___asan_gen_.47 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 260, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 695, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 723, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [29 x i8] c"../include/linux/mmap_lock.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 155, i32 2 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__ksymtab_fault_in_readable, ptr @__ksymtab_fault_in_safe_writeable, ptr @__ksymtab_fault_in_writeable, ptr @__ksymtab_fixup_user_fault, ptr @__ksymtab_get_user_pages, ptr @__ksymtab_get_user_pages_fast, ptr @__ksymtab_get_user_pages_fast_only, ptr @__ksymtab_get_user_pages_locked, ptr @__ksymtab_get_user_pages_remote, ptr @__ksymtab_get_user_pages_unlocked, ptr @__ksymtab_pin_user_pages, ptr @__ksymtab_pin_user_pages_fast, ptr @__ksymtab_pin_user_pages_fast_only, ptr @__ksymtab_pin_user_pages_locked, ptr @__ksymtab_pin_user_pages_remote, ptr @__ksymtab_pin_user_pages_unlocked, ptr @__ksymtab_unpin_user_page, ptr @__ksymtab_unpin_user_page_range_dirty_lock, ptr @__ksymtab_unpin_user_pages, ptr @__ksymtab_unpin_user_pages_dirty_lock, ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @try_grab_compound_head(ptr noundef %page, i32 noundef %refs, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call fastcc ptr @try_get_compound_head(ptr noundef %page, i32 noundef %refs)
  br label %return

if.else:                                          ; preds = %entry
  %and1 = and i32 %flags, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %land.end27, label %if.then3

if.then3:                                         ; preds = %if.else
  %and4 = and i32 %flags, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.then3.if.end_crit_edge, label %land.rhs

if.then3.if.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs:                                         ; preds = %if.then3
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741825, i32 %1)
  %cmp.i.i = icmp ugt i32 %1, -1073741825
  br i1 %cmp.i.i, label %entry.lor.rhs_crit_edge.i, label %lor.lhs.false.i

entry.lor.rhs_crit_edge.i:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %.pre.i = ptrtoint ptr %page to i32
  br label %is_pinnable_page.exit

lor.lhs.false.i:                                  ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %2 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %page to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %2 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %3 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %sub.ptr.div.i, %3
  %call1.i = tail call i32 @get_pfnblock_flags_mask(ptr noundef %page, i32 noundef %add.i, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, 4
  br i1 %cmp.i, label %lor.lhs.false.i.is_pinnable_page.exit_crit_edge, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false.i.is_pinnable_page.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_pinnable_page.exit

is_pinnable_page.exit:                            ; preds = %lor.lhs.false.i.is_pinnable_page.exit_crit_edge, %entry.lor.rhs_crit_edge.i
  %sub.ptr.lhs.cast2.pre-phi.i = phi i32 [ %.pre.i, %entry.lor.rhs_crit_edge.i ], [ %sub.ptr.lhs.cast.i, %lor.lhs.false.i.is_pinnable_page.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %4 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast3.i = ptrtoint ptr %4 to i32
  %sub.ptr.sub4.i = sub i32 %sub.ptr.lhs.cast2.pre-phi.i, %sub.ptr.rhs.cast3.i
  %sub.ptr.div5.i = sdiv exact i32 %sub.ptr.sub4.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %5 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add6.i = add i32 %sub.ptr.div5.i, %5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @zero_pfn to i32))
  %6 = load i32, ptr @zero_pfn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %add6.i)
  %cmp.i11.i.not = icmp eq i32 %6, %add6.i
  br i1 %cmp.i11.i.not, label %is_pinnable_page.exit.if.end_crit_edge, label %is_pinnable_page.exit.return_crit_edge, !prof !122

is_pinnable_page.exit.return_crit_edge:           ; preds = %is_pinnable_page.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

is_pinnable_page.exit.if.end_crit_edge:           ; preds = %is_pinnable_page.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %is_pinnable_page.exit.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %if.then3.if.end_crit_edge
  %call11 = tail call fastcc ptr @try_get_compound_head(ptr noundef %page, i32 noundef %refs)
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end.return_crit_edge, label %if.end14

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end14:                                         ; preds = %if.end
  %7 = getelementptr inbounds %struct.page, ptr %call11, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i5.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i5.i, label %if.end.i.i, label %if.then.i.i, !prof !122

if.then.i.i:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %9, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %call11 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %10, %if.end.i.i ]
  %11 = inttoptr i32 %retval.0.i.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %14 = and i32 %13, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i, label %PageCompound.exit.i, label %_compound_head.exit.i.land.rhs.i_crit_edge

_compound_head.exit.i.land.rhs.i_crit_edge:       ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

PageCompound.exit.i:                              ; preds = %_compound_head.exit.i
  %15 = getelementptr inbounds %struct.page, ptr %11, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %and.i.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %PageCompound.exit.i.if.else17_crit_edge, label %PageCompound.exit.i.land.rhs.i_crit_edge

PageCompound.exit.i.land.rhs.i_crit_edge:         ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

PageCompound.exit.i.if.else17_crit_edge:          ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else17

land.rhs.i:                                       ; preds = %PageCompound.exit.i.land.rhs.i_crit_edge, %_compound_head.exit.i.land.rhs.i_crit_edge
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp.i.not.i.i.i = icmp eq i32 %19, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %PageHead.exit.i.i, !prof !123

if.then.i.i.i:                                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %11, ptr noundef nonnull @.str.6) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #7, !srcloc !124
  unreachable

PageHead.exit.i.i:                                ; preds = %land.rhs.i
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %11, align 4
  %22 = and i32 %21, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i6.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i6.i, label %PageHead.exit.i.i.if.else17_crit_edge, label %hpage_pincount_available.exit

PageHead.exit.i.i.if.else17_crit_edge:            ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else17

hpage_pincount_available.exit:                    ; preds = %PageHead.exit.i.i
  %23 = getelementptr %struct.page, ptr %11, i32 1, i32 1
  %compound_order.i.i = getelementptr inbounds %struct.anon.69, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %compound_order.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %compound_order.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %25)
  %phi.cmp.i = icmp ugt i8 %25, 1
  br i1 %phi.cmp.i, label %if.then16, label %hpage_pincount_available.exit.if.else17_crit_edge

hpage_pincount_available.exit.if.else17_crit_edge: ; preds = %hpage_pincount_available.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else17

if.then16:                                        ; preds = %hpage_pincount_available.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @hpage_pincount_add(ptr noundef nonnull %call11, i32 noundef %refs)
  br label %if.end18

if.else17:                                        ; preds = %hpage_pincount_available.exit.if.else17_crit_edge, %PageHead.exit.i.i.if.else17_crit_edge, %PageCompound.exit.i.if.else17_crit_edge
  %mul = mul i32 %refs, 1023
  %_refcount.i = getelementptr inbounds %struct.page, ptr %call11, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %_refcount.i, i32 1, i32 3, i32 1) #7
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i, ptr %_refcount.i, i32 %mul, ptr elementtype(i32) %_refcount.i) #7, !srcloc !125
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@try_grab_compound_head, %if.then.i)) #7
          to label %if.end18 [label %if.then.i], !srcloc !126

if.then.i:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__page_ref_mod(ptr noundef nonnull %call11, i32 noundef %mul) #7
  br label %if.end18

if.end18:                                         ; preds = %if.then.i, %if.else17, %if.then16
  %27 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %call11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %cmp.i.not.i.i = icmp eq i32 %28, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i81, label %page_pgdat.exit, !prof !123

if.then.i.i81:                                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef nonnull %call11, ptr noundef nonnull @.str.9) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #7, !srcloc !127
  unreachable

page_pgdat.exit:                                  ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 35, i32 noundef %refs) #7
  br label %return

land.end27:                                       ; preds = %if.else
  %.b80 = load i1, ptr @try_grab_compound_head.__already_done, align 1
  br i1 %.b80, label %land.end27.return_crit_edge, label %if.then34, !prof !122

land.end27.return_crit_edge:                      ; preds = %land.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then34:                                        ; preds = %land.end27
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @try_grab_compound_head.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 171, i32 noundef 9, ptr noundef null) #7
  br label %return

return:                                           ; preds = %if.then34, %land.end27.return_crit_edge, %page_pgdat.exit, %if.end.return_crit_edge, %is_pinnable_page.exit.return_crit_edge, %if.then
  %retval.0 = phi ptr [ %call, %if.then ], [ %call11, %page_pgdat.exit ], [ null, %is_pinnable_page.exit.return_crit_edge ], [ null, %if.end.return_crit_edge ], [ null, %if.then34 ], [ null, %land.end27.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @try_get_compound_head(ptr noundef %page, i32 noundef %refs) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !122

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %_refcount.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i, i32 noundef 4) #7
  %5 = ptrtoint ptr %_refcount.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %land.rhs, label %if.end38

land.rhs:                                         ; preds = %_compound_head.exit
  %.b68 = load i1, ptr @try_get_compound_head.__already_done, align 1
  br i1 %.b68, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !122

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @try_get_compound_head.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 73, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end38:                                         ; preds = %_compound_head.exit
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @llvm.prefetch.p0(ptr %_refcount.i, i32 1, i32 3, i32 1) #7
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i, ptr %_refcount.i, i32 0, i32 %refs, ptr elementtype(i32) %_refcount.i) #7, !srcloc !129
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i, label %if.end38.atomic_add_unless.exit.i.i.i.i_crit_edge, label %do.end11.i.i.i.i.i.i.i

if.end38.atomic_add_unless.exit.i.i.i.i_crit_edge: ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %atomic_add_unless.exit.i.i.i.i

do.end11.i.i.i.i.i.i.i:                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !130
  br label %atomic_add_unless.exit.i.i.i.i

atomic_add_unless.exit.i.i.i.i:                   ; preds = %do.end11.i.i.i.i.i.i.i, %if.end38.atomic_add_unless.exit.i.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp ne i32 %asmresult.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_unless, i32 0, i32 1), ptr blockaddress(@try_get_compound_head, %if.then.i.i.i.i)) #7
          to label %page_cache_add_speculative.exit [label %if.then.i.i.i.i], !srcloc !126

if.then.i.i.i.i:                                  ; preds = %atomic_add_unless.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_unless(ptr noundef %4, i32 noundef %refs, i32 noundef %conv.i.i.i.i) #7
  br label %page_cache_add_speculative.exit

page_cache_add_speculative.exit:                  ; preds = %if.then.i.i.i.i, %atomic_add_unless.exit.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.end49, label %page_cache_add_speculative.exit.cleanup_crit_edge, !prof !122

page_cache_add_speculative.exit.cleanup_crit_edge: ; preds = %page_cache_add_speculative.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end49:                                         ; preds = %page_cache_add_speculative.exit
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %0, align 4
  %and.i70 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i70)
  %tobool.not.i71 = icmp eq i32 %and.i70, 0
  br i1 %tobool.not.i71, label %if.end.i74, label %if.then.i73, !prof !122

if.then.i73:                                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i72 = add i32 %9, -1
  br label %_compound_head.exit76

if.end.i74:                                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %page to i32
  br label %_compound_head.exit76

_compound_head.exit76:                            ; preds = %if.end.i74, %if.then.i73
  %retval.0.i75 = phi i32 [ %sub.i72, %if.then.i73 ], [ %10, %if.end.i74 ]
  %11 = inttoptr i32 %retval.0.i75 to ptr
  %cmp51.not = icmp eq ptr %11, %4
  br i1 %cmp51.not, label %_compound_head.exit76.cleanup_crit_edge, label %if.then58, !prof !122

_compound_head.exit76.cleanup_crit_edge:          ; preds = %_compound_head.exit76
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then58:                                        ; preds = %_compound_head.exit76
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @put_page_refs(ptr noundef %4, i32 noundef %refs)
  br label %cleanup

cleanup:                                          ; preds = %if.then58, %_compound_head.exit76.cleanup_crit_edge, %page_cache_add_speculative.exit.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then58 ], [ null, %if.then ], [ null, %page_cache_add_speculative.exit.cleanup_crit_edge ], [ %4, %_compound_head.exit76.cleanup_crit_edge ], [ null, %land.rhs.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hpage_pincount_add(ptr noundef %page, i32 noundef %refs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i5.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i5.i, label %if.end.i.i, label %if.then.i.i, !prof !122

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %7 = and i32 %6, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %PageCompound.exit.i, label %_compound_head.exit.i.land.rhs.i_crit_edge

_compound_head.exit.i.land.rhs.i_crit_edge:       ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

PageCompound.exit.i:                              ; preds = %_compound_head.exit.i
  %8 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %and.i.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %PageCompound.exit.i.if.then_crit_edge, label %PageCompound.exit.i.land.rhs.i_crit_edge, !prof !131

PageCompound.exit.i.land.rhs.i_crit_edge:         ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

PageCompound.exit.i.if.then_crit_edge:            ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.rhs.i:                                       ; preds = %PageCompound.exit.i.land.rhs.i_crit_edge, %_compound_head.exit.i.land.rhs.i_crit_edge
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp.i.not.i.i.i = icmp eq i32 %12, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %PageHead.exit.i.i, !prof !123

if.then.i.i.i:                                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.6) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #7, !srcloc !124
  unreachable

PageHead.exit.i.i:                                ; preds = %land.rhs.i
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %4, align 4
  %15 = and i32 %14, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i6.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i6.i, label %PageHead.exit.i.i.if.then_crit_edge, label %hpage_pincount_available.exit, !prof !131

PageHead.exit.i.i.if.then_crit_edge:              ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

hpage_pincount_available.exit:                    ; preds = %PageHead.exit.i.i
  %16 = getelementptr %struct.page, ptr %4, i32 1, i32 1
  %compound_order.i.i = getelementptr inbounds %struct.anon.69, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %compound_order.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %compound_order.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %phi.cmp.i = icmp ugt i8 %18, 1
  br i1 %phi.cmp.i, label %do.body7, label %hpage_pincount_available.exit.if.then_crit_edge, !prof !122

hpage_pincount_available.exit.if.then_crit_edge:  ; preds = %hpage_pincount_available.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %hpage_pincount_available.exit.if.then_crit_edge, %PageHead.exit.i.i.if.then_crit_edge, %PageCompound.exit.i.if.then_crit_edge
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.7) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 34, 0\0A.popsection", ""() #7, !srcloc !132
  unreachable

do.body7:                                         ; preds = %hpage_pincount_available.exit
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i28 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i28, label %if.end.i, label %if.then.i, !prof !122

if.then.i:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add i32 %20, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %21, %if.end.i ]
  %22 = inttoptr i32 %retval.0.i to ptr
  %cmp.not = icmp eq ptr %22, %page
  br i1 %cmp.not, label %do.end21, label %if.then15, !prof !122

if.then15:                                        ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.8) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 35, 0\0A.popsection", ""() #7, !srcloc !133
  unreachable

do.end21:                                         ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #9
  %hpage_pinned_refcount.i = getelementptr %struct.page, ptr %page, i32 2, i32 1, i32 0, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hpage_pinned_refcount.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %hpage_pinned_refcount.i, i32 1, i32 3, i32 1) #7
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hpage_pinned_refcount.i, ptr %hpage_pinned_refcount.i, i32 %refs, ptr elementtype(i32) %hpage_pinned_refcount.i) #7, !srcloc !125
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mod_node_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @try_grab_page(ptr noundef %page, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 262148
  call void @__sanitizer_cov_trace_const_cmp4(i32 262148, i32 %and)
  %cmp = icmp eq i32 %and, 262148
  br i1 %cmp, label %land.rhs, label %entry.if.end27_crit_edge

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

land.rhs:                                         ; preds = %entry
  %.b121 = load i1, ptr @try_grab_page.__already_done, align 1
  br i1 %.b121, label %land.rhs.if.end27_crit_edge, label %if.then, !prof !122

land.rhs.if.end27_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @try_grab_page.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 211, i32 noundef 9, ptr noundef null) #7
  br label %if.end27

if.end27:                                         ; preds = %if.then, %land.rhs.if.end27_crit_edge, %entry.if.end27_crit_edge
  %and35 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.else, label %if.then37

if.then37:                                        ; preds = %if.end27
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !122

if.then.i.i:                                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i, i32 noundef 4) #7
  %5 = ptrtoint ptr %_refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i = icmp slt i32 %6, 1
  br i1 %cmp.i, label %land.rhs.i, label %if.end38.i

land.rhs.i:                                       ; preds = %_compound_head.exit.i
  %.b43.i = load i1, ptr @try_get_page.__already_done, align 1
  br i1 %.b43.i, label %land.rhs.i.try_get_page.exit_crit_edge, label %if.then.i, !prof !122

land.rhs.i.try_get_page.exit_crit_edge:           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %try_get_page.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @try_get_page.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1177, i32 noundef 9, ptr noundef null) #7
  br label %try_get_page.exit

if.end38.i:                                       ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i46.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i, i32 1, i32 3, i32 1) #7
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i, ptr %_refcount.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i) #7, !srcloc !125
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@try_grab_page, %if.then.i47.i)) #7
          to label %try_get_page.exit [label %if.then.i47.i], !srcloc !126

if.then.i47.i:                                    ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__page_ref_mod(ptr noundef %4, i32 noundef 1) #7
  br label %try_get_page.exit

try_get_page.exit:                                ; preds = %if.then.i47.i, %if.end38.i, %if.then.i, %land.rhs.i.try_get_page.exit_crit_edge
  %8 = xor i1 %cmp.i, true
  br label %return

if.else:                                          ; preds = %if.end27
  %and38 = and i32 %flags, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.else.return_crit_edge, label %if.then40

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then40:                                        ; preds = %if.else
  %9 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i123, !prof !122

if.then.i123:                                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add i32 %11, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i123
  %retval.0.i = phi i32 [ %sub.i, %if.then.i123 ], [ %12, %if.end.i ]
  %13 = inttoptr i32 %retval.0.i to ptr
  %_refcount.i = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i, i32 noundef 4) #7
  %14 = ptrtoint ptr %_refcount.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %_refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp44 = icmp slt i32 %15, 1
  br i1 %cmp44, label %land.rhs51, label %if.end99

land.rhs51:                                       ; preds = %_compound_head.exit
  %.b119120 = load i1, ptr @try_grab_page.__already_done.1, align 1
  br i1 %.b119120, label %land.rhs51.return_crit_edge, label %if.then62, !prof !122

land.rhs51.return_crit_edge:                      ; preds = %land.rhs51
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then62:                                        ; preds = %land.rhs51
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @try_grab_page.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 220, i32 noundef 9, ptr noundef null) #7
  br label %return

if.end99:                                         ; preds = %_compound_head.exit
  %16 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %and.i.i124 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i124)
  %tobool.not.i5.i = icmp eq i32 %and.i.i124, 0
  br i1 %tobool.not.i5.i, label %if.end99._compound_head.exit.i130_crit_edge, label %if.then.i.i126, !prof !122

if.end99._compound_head.exit.i130_crit_edge:      ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %_compound_head.exit.i130

if.then.i.i126:                                   ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i125 = add i32 %18, -1
  %.pre = inttoptr i32 %sub.i.i125 to ptr
  br label %_compound_head.exit.i130

_compound_head.exit.i130:                         ; preds = %if.then.i.i126, %if.end99._compound_head.exit.i130_crit_edge
  %.pre-phi = phi ptr [ %13, %if.end99._compound_head.exit.i130_crit_edge ], [ %.pre, %if.then.i.i126 ]
  %19 = ptrtoint ptr %.pre-phi to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %.pre-phi, align 4
  %21 = and i32 %20, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i129 = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i129, label %PageCompound.exit.i, label %_compound_head.exit.i130.land.rhs.i132_crit_edge

_compound_head.exit.i130.land.rhs.i132_crit_edge: ; preds = %_compound_head.exit.i130
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i132

PageCompound.exit.i:                              ; preds = %_compound_head.exit.i130
  %22 = getelementptr inbounds %struct.page, ptr %.pre-phi, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %and.i.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i131 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i131, label %PageCompound.exit.i.if.end103_crit_edge, label %PageCompound.exit.i.land.rhs.i132_crit_edge

PageCompound.exit.i.land.rhs.i132_crit_edge:      ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i132

PageCompound.exit.i.if.end103_crit_edge:          ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

land.rhs.i132:                                    ; preds = %PageCompound.exit.i.land.rhs.i132_crit_edge, %_compound_head.exit.i130.land.rhs.i132_crit_edge
  %25 = ptrtoint ptr %.pre-phi to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %.pre-phi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp.i.not.i.i.i = icmp eq i32 %26, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %PageHead.exit.i.i, !prof !123

if.then.i.i.i:                                    ; preds = %land.rhs.i132
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %.pre-phi, ptr noundef nonnull @.str.6) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #7, !srcloc !124
  unreachable

PageHead.exit.i.i:                                ; preds = %land.rhs.i132
  %27 = ptrtoint ptr %.pre-phi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %.pre-phi, align 4
  %29 = and i32 %28, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i6.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i6.i, label %PageHead.exit.i.i.if.end103_crit_edge, label %hpage_pincount_available.exit

PageHead.exit.i.i.if.end103_crit_edge:            ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

hpage_pincount_available.exit:                    ; preds = %PageHead.exit.i.i
  %30 = getelementptr %struct.page, ptr %.pre-phi, i32 1, i32 1
  %compound_order.i.i = getelementptr inbounds %struct.anon.69, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %compound_order.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %compound_order.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %phi.cmp.i = icmp ugt i8 %32, 1
  br i1 %phi.cmp.i, label %if.then101, label %hpage_pincount_available.exit.if.end103_crit_edge

hpage_pincount_available.exit.if.end103_crit_edge: ; preds = %hpage_pincount_available.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

if.then101:                                       ; preds = %hpage_pincount_available.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @hpage_pincount_add(ptr noundef %13, i32 noundef 1)
  br label %if.end103

if.end103:                                        ; preds = %if.then101, %hpage_pincount_available.exit.if.end103_crit_edge, %PageHead.exit.i.i.if.end103_crit_edge, %PageCompound.exit.i.if.end103_crit_edge
  %refs.0 = phi i32 [ 1, %if.then101 ], [ 1024, %hpage_pincount_available.exit.if.end103_crit_edge ], [ 1024, %PageCompound.exit.i.if.end103_crit_edge ], [ 1024, %PageHead.exit.i.i.if.end103_crit_edge ]
  %call.i.i.i134 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %_refcount.i, i32 1, i32 3, i32 1) #7
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i, ptr %_refcount.i, i32 %refs.0, ptr elementtype(i32) %_refcount.i) #7, !srcloc !125
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@try_grab_page, %if.then.i135)) #7
          to label %page_ref_add.exit [label %if.then.i135], !srcloc !126

if.then.i135:                                     ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__page_ref_mod(ptr noundef %13, i32 noundef %refs.0) #7
  br label %page_ref_add.exit

page_ref_add.exit:                                ; preds = %if.then.i135, %if.end103
  %34 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %cmp.i.not.i.i = icmp eq i32 %35, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i137, label %cleanup, !prof !123

if.then.i.i137:                                   ; preds = %page_ref_add.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %13, ptr noundef nonnull @.str.9) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #7, !srcloc !127
  unreachable

cleanup:                                          ; preds = %page_ref_add.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 35, i32 noundef 1) #7
  br label %return

return:                                           ; preds = %cleanup, %if.then62, %land.rhs51.return_crit_edge, %if.else.return_crit_edge, %try_get_page.exit
  %retval.1 = phi i1 [ %8, %try_get_page.exit ], [ true, %cleanup ], [ true, %if.else.return_crit_edge ], [ false, %land.rhs51.return_crit_edge ], [ false, %if.then62 ]
  ret i1 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unpin_user_page(ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !122

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  tail call fastcc void @put_compound_head(ptr noundef %4, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_compound_head(ptr noundef %page, i32 noundef %refs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i.not.i.i = icmp eq i32 %1, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %page_pgdat.exit, !prof !123

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.9) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #7, !srcloc !127
  unreachable

page_pgdat.exit:                                  ; preds = %entry
  tail call void @mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 36, i32 noundef %refs) #7
  %2 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i5.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i5.i, label %if.end.i.i, label %if.then.i.i1, !prof !122

if.then.i.i1:                                     ; preds = %page_pgdat.exit
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %4, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %page_pgdat.exit
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i1
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i1 ], [ %5, %if.end.i.i ]
  %6 = inttoptr i32 %retval.0.i.i to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %9 = and i32 %8, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %PageCompound.exit.i, label %_compound_head.exit.i.land.rhs.i_crit_edge

_compound_head.exit.i.land.rhs.i_crit_edge:       ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

PageCompound.exit.i:                              ; preds = %_compound_head.exit.i
  %10 = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %PageCompound.exit.i.if.else_crit_edge, label %PageCompound.exit.i.land.rhs.i_crit_edge

PageCompound.exit.i.land.rhs.i_crit_edge:         ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

PageCompound.exit.i.if.else_crit_edge:            ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.rhs.i:                                       ; preds = %PageCompound.exit.i.land.rhs.i_crit_edge, %_compound_head.exit.i.land.rhs.i_crit_edge
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.i.not.i.i.i = icmp eq i32 %14, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %PageHead.exit.i.i, !prof !123

if.then.i.i.i:                                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.6) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #7, !srcloc !124
  unreachable

PageHead.exit.i.i:                                ; preds = %land.rhs.i
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %6, align 4
  %17 = and i32 %16, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i6.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i6.i, label %PageHead.exit.i.i.if.else_crit_edge, label %hpage_pincount_available.exit

PageHead.exit.i.i.if.else_crit_edge:              ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

hpage_pincount_available.exit:                    ; preds = %PageHead.exit.i.i
  %18 = getelementptr %struct.page, ptr %6, i32 1, i32 1
  %compound_order.i.i = getelementptr inbounds %struct.anon.69, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %compound_order.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %compound_order.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %phi.cmp.i = icmp ugt i8 %20, 1
  br i1 %phi.cmp.i, label %if.then2, label %hpage_pincount_available.exit.if.else_crit_edge

hpage_pincount_available.exit.if.else_crit_edge:  ; preds = %hpage_pincount_available.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then2:                                         ; preds = %hpage_pincount_available.exit
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %2, align 4
  %and.i.i.i2 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i2)
  %tobool.not.i5.i.i = icmp eq i32 %and.i.i.i2, 0
  br i1 %tobool.not.i5.i.i, label %if.end.i.i.i, label %if.then.i.i.i3, !prof !122

if.then.i.i.i3:                                   ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i = add i32 %22, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i3
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i3 ], [ %23, %if.end.i.i.i ]
  %24 = inttoptr i32 %retval.0.i.i.i to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %24, align 4
  %27 = and i32 %26, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i.i, label %PageCompound.exit.i.i, label %_compound_head.exit.i.i.land.rhs.i.i_crit_edge

_compound_head.exit.i.i.land.rhs.i.i_crit_edge:   ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i.i

PageCompound.exit.i.i:                            ; preds = %_compound_head.exit.i.i
  %28 = getelementptr inbounds %struct.page, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %28, align 4
  %and.i.i.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i4 = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i4, label %PageCompound.exit.i.i.if.then.i_crit_edge, label %PageCompound.exit.i.i.land.rhs.i.i_crit_edge, !prof !131

PageCompound.exit.i.i.land.rhs.i.i_crit_edge:     ; preds = %PageCompound.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i.i

PageCompound.exit.i.i.if.then.i_crit_edge:        ; preds = %PageCompound.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

land.rhs.i.i:                                     ; preds = %PageCompound.exit.i.i.land.rhs.i.i_crit_edge, %_compound_head.exit.i.i.land.rhs.i.i_crit_edge
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp.i.not.i.i.i.i = icmp eq i32 %32, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i, label %PageHead.exit.i.i.i, !prof !123

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %24, ptr noundef nonnull @.str.6) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #7, !srcloc !124
  unreachable

PageHead.exit.i.i.i:                              ; preds = %land.rhs.i.i
  %33 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %24, align 4
  %35 = and i32 %34, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i6.i.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i6.i.i, label %PageHead.exit.i.i.i.if.then.i_crit_edge, label %hpage_pincount_available.exit.i, !prof !131

PageHead.exit.i.i.i.if.then.i_crit_edge:          ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

hpage_pincount_available.exit.i:                  ; preds = %PageHead.exit.i.i.i
  %36 = getelementptr %struct.page, ptr %24, i32 1, i32 1
  %compound_order.i.i.i = getelementptr inbounds %struct.anon.69, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %compound_order.i.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %compound_order.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %38)
  %phi.cmp.i.i = icmp ugt i8 %38, 1
  br i1 %phi.cmp.i.i, label %do.body7.i, label %hpage_pincount_available.exit.i.if.then.i_crit_edge, !prof !122

hpage_pincount_available.exit.i.if.then.i_crit_edge: ; preds = %hpage_pincount_available.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %hpage_pincount_available.exit.i.if.then.i_crit_edge, %PageHead.exit.i.i.i.if.then.i_crit_edge, %PageCompound.exit.i.i.if.then.i_crit_edge
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.7) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 42, 0\0A.popsection", ""() #7, !srcloc !134
  unreachable

do.body7.i:                                       ; preds = %hpage_pincount_available.exit.i
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %2, align 4
  %and.i.i5 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i5)
  %tobool.not.i28.i = icmp eq i32 %and.i.i5, 0
  br i1 %tobool.not.i28.i, label %if.end.i.i8, label %if.then.i.i7, !prof !122

if.then.i.i7:                                     ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i6 = add i32 %40, -1
  br label %_compound_head.exit.i10

if.end.i.i8:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i10

_compound_head.exit.i10:                          ; preds = %if.end.i.i8, %if.then.i.i7
  %retval.0.i.i9 = phi i32 [ %sub.i.i6, %if.then.i.i7 ], [ %41, %if.end.i.i8 ]
  %42 = inttoptr i32 %retval.0.i.i9 to ptr
  %cmp.not.i = icmp eq ptr %42, %page
  br i1 %cmp.not.i, label %hpage_pincount_sub.exit, label %if.then15.i, !prof !122

if.then15.i:                                      ; preds = %_compound_head.exit.i10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.8) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 43, 0\0A.popsection", ""() #7, !srcloc !135
  unreachable

hpage_pincount_sub.exit:                          ; preds = %_compound_head.exit.i10
  call void @__sanitizer_cov_trace_pc() #9
  %hpage_pinned_refcount.i.i = getelementptr %struct.page, ptr %page, i32 2, i32 1, i32 0, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hpage_pinned_refcount.i.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %hpage_pinned_refcount.i.i, i32 1, i32 3, i32 1) #7
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hpage_pinned_refcount.i.i, ptr %hpage_pinned_refcount.i.i, i32 %refs, ptr elementtype(i32) %hpage_pinned_refcount.i.i) #7, !srcloc !136
  br label %if.end3

if.else:                                          ; preds = %hpage_pincount_available.exit.if.else_crit_edge, %PageHead.exit.i.i.if.else_crit_edge, %PageCompound.exit.i.if.else_crit_edge
  %mul = shl i32 %refs, 10
  br label %if.end3

if.end3:                                          ; preds = %if.else, %hpage_pincount_sub.exit
  %refs.addr.0 = phi i32 [ %refs, %hpage_pincount_sub.exit ], [ %mul, %if.else ]
  tail call fastcc void @put_page_refs(ptr noundef %page, i32 noundef %refs.addr.0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unpin_user_pages_dirty_lock(ptr nocapture noundef readonly %pages, i32 noundef %npages, i1 noundef zeroext %make_dirty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %make_dirty, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @unpin_user_pages(ptr noundef %pages, i32 noundef %npages)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %npages)
  %cmp.not.i.not = icmp eq i32 %npages, 0
  br i1 %cmp.not.i.not, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %0 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pages, align 4
  %2 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i15 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i15)
  %tobool.not.i.i16 = icmp eq i32 %and.i.i15, 0
  br i1 %tobool.not.i.i16, label %if.end.i.i19, label %if.then.i.i18, !prof !122

if.then.i.i18:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i17 = add i32 %4, -1
  br label %_compound_head.exit.i21

if.end.i.i19:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i21

_compound_head.exit.i21:                          ; preds = %if.end.i.i19, %if.then.i.i18
  %retval.0.i.i20 = phi i32 [ %sub.i.i17, %if.then.i.i18 ], [ %5, %if.end.i.i19 ]
  %6 = inttoptr i32 %retval.0.i.i20 to ptr
  %7 = add i32 %npages, -1
  br label %for.cond.i

for.cond.i:                                       ; preds = %_compound_head.exit23.i.for.cond.i_crit_edge, %_compound_head.exit.i21
  %nr.0.in.i = phi i32 [ 0, %_compound_head.exit.i21 ], [ %nr.0.i, %_compound_head.exit23.i.for.cond.i_crit_edge ]
  %nr.0.i = add nuw i32 %nr.0.in.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %nr.0.in.i, i32 %7)
  %exitcond.not = icmp eq i32 %nr.0.in.i, %7
  br i1 %exitcond.not, label %for.cond.i.compound_next.exit_crit_edge, label %for.body.i

for.cond.i.compound_next.exit_crit_edge:          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %compound_next.exit

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx2.i = getelementptr ptr, ptr %pages, i32 %nr.0.i
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2.i, align 4
  %10 = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and.i17.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17.i)
  %tobool.not.i18.i = icmp eq i32 %and.i17.i, 0
  br i1 %tobool.not.i18.i, label %if.end.i21.i, label %if.then.i20.i, !prof !122

if.then.i20.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i19.i = add i32 %12, -1
  br label %_compound_head.exit23.i

if.end.i21.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %9 to i32
  br label %_compound_head.exit23.i

_compound_head.exit23.i:                          ; preds = %if.end.i21.i, %if.then.i20.i
  %retval.0.i22.i = phi i32 [ %sub.i19.i, %if.then.i20.i ], [ %13, %if.end.i21.i ]
  %14 = inttoptr i32 %retval.0.i22.i to ptr
  %cmp4.not.i = icmp eq ptr %14, %6
  br i1 %cmp4.not.i, label %_compound_head.exit23.i.for.cond.i_crit_edge, label %_compound_head.exit23.i.compound_next.exit_crit_edge

_compound_head.exit23.i.compound_next.exit_crit_edge: ; preds = %_compound_head.exit23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %compound_next.exit

_compound_head.exit23.i.for.cond.i_crit_edge:     ; preds = %_compound_head.exit23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

compound_next.exit:                               ; preds = %_compound_head.exit23.i.compound_next.exit_crit_edge, %for.cond.i.compound_next.exit_crit_edge
  br i1 %cmp.not.i.not, label %compound_next.exit.cleanup_crit_edge, label %compound_next.exit.for.body_crit_edge

compound_next.exit.for.body_crit_edge:            ; preds = %compound_next.exit
  br label %for.body

compound_next.exit.cleanup_crit_edge:             ; preds = %compound_next.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %compound_next.exit46.for.body_crit_edge, %compound_next.exit.for.body_crit_edge
  %index.054 = phi i32 [ %add, %compound_next.exit46.for.body_crit_edge ], [ 0, %compound_next.exit.for.body_crit_edge ]
  %ntails.153 = phi i32 [ %sub.i, %compound_next.exit46.for.body_crit_edge ], [ %nr.0.i, %compound_next.exit.for.body_crit_edge ]
  %head.152 = phi ptr [ %37, %compound_next.exit46.for.body_crit_edge ], [ %6, %compound_next.exit.for.body_crit_edge ]
  %15 = getelementptr inbounds %struct.page, ptr %head.152, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %and.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !122

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %17, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %head.152 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %18, %if.end.i.i ]
  %19 = inttoptr i32 %retval.0.i.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp.i.not.i = icmp eq i32 %21, -1
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %15, align 4
  %and.i13.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !123

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %if.then.i16.i, !prof !122

if.then.i16.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i15.i = add i32 %23, -1
  br label %_compound_head.exit19.i

if.end.i17.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %head.152 to i32
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.end.i17.i, %if.then.i16.i
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %24, %if.end.i17.i ]
  %25 = inttoptr i32 %retval.0.i18.i to ptr
  tail call void @dump_page(ptr noundef %25, ptr noundef nonnull @.str.11) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #7, !srcloc !137
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i24.i, label %if.then.i23.i, !prof !122

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i22.i = add i32 %23, -1
  br label %PageDirty.exit

if.end.i24.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %head.152 to i32
  br label %PageDirty.exit

PageDirty.exit:                                   ; preds = %if.end.i24.i, %if.then.i23.i
  %retval.0.i25.i = phi i32 [ %sub.i22.i, %if.then.i23.i ], [ %26, %if.end.i24.i ]
  %27 = inttoptr i32 %retval.0.i25.i to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  %30 = and i32 %29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool1.not = icmp eq i32 %30, 0
  br i1 %tobool1.not, label %if.then2, label %PageDirty.exit.if.end4_crit_edge

PageDirty.exit.if.end4_crit_edge:                 ; preds = %PageDirty.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then2:                                         ; preds = %PageDirty.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 @set_page_dirty_lock(ptr noundef %head.152) #7
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %PageDirty.exit.if.end4_crit_edge
  tail call fastcc void @put_compound_head(ptr noundef %head.152, i32 noundef %ntails.153)
  %add = add i32 %index.054, %ntails.153
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %npages)
  %cmp.not.i22 = icmp ult i32 %add, %npages
  br i1 %cmp.not.i22, label %if.end.i25, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i25:                                       ; preds = %if.end4
  %arrayidx.i = getelementptr ptr, ptr %pages, i32 %add
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 4
  %33 = getelementptr inbounds %struct.page, ptr %32, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %33, align 4
  %and.i.i23 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i23)
  %tobool.not.i.i24 = icmp eq i32 %and.i.i23, 0
  br i1 %tobool.not.i.i24, label %if.end.i.i28, label %if.then.i.i27, !prof !122

if.then.i.i27:                                    ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i26 = add i32 %35, -1
  br label %_compound_head.exit.i30

if.end.i.i28:                                     ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %32 to i32
  br label %_compound_head.exit.i30

_compound_head.exit.i30:                          ; preds = %if.end.i.i28, %if.then.i.i27
  %retval.0.i.i29 = phi i32 [ %sub.i.i26, %if.then.i.i27 ], [ %36, %if.end.i.i28 ]
  %37 = inttoptr i32 %retval.0.i.i29 to ptr
  br label %for.cond.i34

for.cond.i34:                                     ; preds = %_compound_head.exit23.i44.for.cond.i34_crit_edge, %_compound_head.exit.i30
  %nr.0.in.i31 = phi i32 [ %add, %_compound_head.exit.i30 ], [ %nr.0.i32, %_compound_head.exit23.i44.for.cond.i34_crit_edge ]
  %nr.0.i32 = add nuw i32 %nr.0.in.i31, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %nr.0.i32, i32 %npages)
  %cmp1.i33 = icmp ult i32 %nr.0.i32, %npages
  br i1 %cmp1.i33, label %for.body.i38, label %for.cond.i34.compound_next.exit46_crit_edge

for.cond.i34.compound_next.exit46_crit_edge:      ; preds = %for.cond.i34
  call void @__sanitizer_cov_trace_pc() #9
  br label %compound_next.exit46

for.body.i38:                                     ; preds = %for.cond.i34
  %arrayidx2.i35 = getelementptr ptr, ptr %pages, i32 %nr.0.i32
  %38 = ptrtoint ptr %arrayidx2.i35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx2.i35, align 4
  %40 = getelementptr inbounds %struct.page, ptr %39, i32 0, i32 1
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %40, align 4
  %and.i17.i36 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17.i36)
  %tobool.not.i18.i37 = icmp eq i32 %and.i17.i36, 0
  br i1 %tobool.not.i18.i37, label %if.end.i21.i41, label %if.then.i20.i40, !prof !122

if.then.i20.i40:                                  ; preds = %for.body.i38
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i19.i39 = add i32 %42, -1
  br label %_compound_head.exit23.i44

if.end.i21.i41:                                   ; preds = %for.body.i38
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %39 to i32
  br label %_compound_head.exit23.i44

_compound_head.exit23.i44:                        ; preds = %if.end.i21.i41, %if.then.i20.i40
  %retval.0.i22.i42 = phi i32 [ %sub.i19.i39, %if.then.i20.i40 ], [ %43, %if.end.i21.i41 ]
  %44 = inttoptr i32 %retval.0.i22.i42 to ptr
  %cmp4.not.i43 = icmp eq ptr %44, %37
  br i1 %cmp4.not.i43, label %_compound_head.exit23.i44.for.cond.i34_crit_edge, label %_compound_head.exit23.i44.compound_next.exit46_crit_edge

_compound_head.exit23.i44.compound_next.exit46_crit_edge: ; preds = %_compound_head.exit23.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %compound_next.exit46

_compound_head.exit23.i44.for.cond.i34_crit_edge: ; preds = %_compound_head.exit23.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i34

compound_next.exit46:                             ; preds = %_compound_head.exit23.i44.compound_next.exit46_crit_edge, %for.cond.i34.compound_next.exit46_crit_edge
  %sub.i = sub i32 %nr.0.i32, %add
  br i1 %cmp.not.i22, label %compound_next.exit46.for.body_crit_edge, label %compound_next.exit46.cleanup_crit_edge

compound_next.exit46.cleanup_crit_edge:           ; preds = %compound_next.exit46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

compound_next.exit46.for.body_crit_edge:          ; preds = %compound_next.exit46
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %compound_next.exit46.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %compound_next.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unpin_user_pages(ptr nocapture noundef readonly %pages, i32 noundef %npages) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %npages)
  %cmp = icmp ugt i32 %npages, -4096
  br i1 %cmp, label %do.end, label %if.end27, !prof !123

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 427, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end27:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %npages)
  %cmp.not.i.not = icmp eq i32 %npages, 0
  br i1 %cmp.not.i.not, label %if.end27.cleanup_crit_edge, label %if.end.i

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end27
  %0 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pages, align 4
  %2 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !122

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %4, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %5, %if.end.i.i ]
  %6 = inttoptr i32 %retval.0.i.i to ptr
  %7 = add i32 %npages, -1
  br label %for.cond.i

for.cond.i:                                       ; preds = %_compound_head.exit23.i.for.cond.i_crit_edge, %_compound_head.exit.i
  %nr.0.in.i = phi i32 [ 0, %_compound_head.exit.i ], [ %nr.0.i, %_compound_head.exit23.i.for.cond.i_crit_edge ]
  %nr.0.i = add nuw i32 %nr.0.in.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %nr.0.in.i, i32 %7)
  %exitcond.not = icmp eq i32 %nr.0.in.i, %7
  br i1 %exitcond.not, label %for.cond.i.compound_next.exit_crit_edge, label %for.body.i

for.cond.i.compound_next.exit_crit_edge:          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %compound_next.exit

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx2.i = getelementptr ptr, ptr %pages, i32 %nr.0.i
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2.i, align 4
  %10 = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and.i17.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17.i)
  %tobool.not.i18.i = icmp eq i32 %and.i17.i, 0
  br i1 %tobool.not.i18.i, label %if.end.i21.i, label %if.then.i20.i, !prof !122

if.then.i20.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i19.i = add i32 %12, -1
  br label %_compound_head.exit23.i

if.end.i21.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %9 to i32
  br label %_compound_head.exit23.i

_compound_head.exit23.i:                          ; preds = %if.end.i21.i, %if.then.i20.i
  %retval.0.i22.i = phi i32 [ %sub.i19.i, %if.then.i20.i ], [ %13, %if.end.i21.i ]
  %14 = inttoptr i32 %retval.0.i22.i to ptr
  %cmp4.not.i = icmp eq ptr %14, %6
  br i1 %cmp4.not.i, label %_compound_head.exit23.i.for.cond.i_crit_edge, label %_compound_head.exit23.i.compound_next.exit_crit_edge

_compound_head.exit23.i.compound_next.exit_crit_edge: ; preds = %_compound_head.exit23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %compound_next.exit

_compound_head.exit23.i.for.cond.i_crit_edge:     ; preds = %_compound_head.exit23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

compound_next.exit:                               ; preds = %_compound_head.exit23.i.compound_next.exit_crit_edge, %for.cond.i.compound_next.exit_crit_edge
  br i1 %cmp.not.i.not, label %compound_next.exit.cleanup_crit_edge, label %compound_next.exit.for.body_crit_edge

compound_next.exit.for.body_crit_edge:            ; preds = %compound_next.exit
  br label %for.body

compound_next.exit.cleanup_crit_edge:             ; preds = %compound_next.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %compound_next.exit63.for.body_crit_edge, %compound_next.exit.for.body_crit_edge
  %index.068 = phi i32 [ %add, %compound_next.exit63.for.body_crit_edge ], [ 0, %compound_next.exit.for.body_crit_edge ]
  %ntails.167 = phi i32 [ %sub.i, %compound_next.exit63.for.body_crit_edge ], [ %nr.0.i, %compound_next.exit.for.body_crit_edge ]
  %head.166 = phi ptr [ %21, %compound_next.exit63.for.body_crit_edge ], [ %6, %compound_next.exit.for.body_crit_edge ]
  tail call fastcc void @put_compound_head(ptr noundef %head.166, i32 noundef %ntails.167)
  %add = add i32 %index.068, %ntails.167
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %npages)
  %cmp.not.i39 = icmp ult i32 %add, %npages
  br i1 %cmp.not.i39, label %if.end.i42, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i42:                                       ; preds = %for.body
  %arrayidx.i = getelementptr ptr, ptr %pages, i32 %add
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %17 = getelementptr inbounds %struct.page, ptr %16, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %and.i.i40 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i40)
  %tobool.not.i.i41 = icmp eq i32 %and.i.i40, 0
  br i1 %tobool.not.i.i41, label %if.end.i.i45, label %if.then.i.i44, !prof !122

if.then.i.i44:                                    ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i43 = add i32 %19, -1
  br label %_compound_head.exit.i47

if.end.i.i45:                                     ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %16 to i32
  br label %_compound_head.exit.i47

_compound_head.exit.i47:                          ; preds = %if.end.i.i45, %if.then.i.i44
  %retval.0.i.i46 = phi i32 [ %sub.i.i43, %if.then.i.i44 ], [ %20, %if.end.i.i45 ]
  %21 = inttoptr i32 %retval.0.i.i46 to ptr
  br label %for.cond.i51

for.cond.i51:                                     ; preds = %_compound_head.exit23.i61.for.cond.i51_crit_edge, %_compound_head.exit.i47
  %nr.0.in.i48 = phi i32 [ %add, %_compound_head.exit.i47 ], [ %nr.0.i49, %_compound_head.exit23.i61.for.cond.i51_crit_edge ]
  %nr.0.i49 = add nuw i32 %nr.0.in.i48, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %nr.0.i49, i32 %npages)
  %cmp1.i50 = icmp ult i32 %nr.0.i49, %npages
  br i1 %cmp1.i50, label %for.body.i55, label %for.cond.i51.compound_next.exit63_crit_edge

for.cond.i51.compound_next.exit63_crit_edge:      ; preds = %for.cond.i51
  call void @__sanitizer_cov_trace_pc() #9
  br label %compound_next.exit63

for.body.i55:                                     ; preds = %for.cond.i51
  %arrayidx2.i52 = getelementptr ptr, ptr %pages, i32 %nr.0.i49
  %22 = ptrtoint ptr %arrayidx2.i52 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx2.i52, align 4
  %24 = getelementptr inbounds %struct.page, ptr %23, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %24, align 4
  %and.i17.i53 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17.i53)
  %tobool.not.i18.i54 = icmp eq i32 %and.i17.i53, 0
  br i1 %tobool.not.i18.i54, label %if.end.i21.i58, label %if.then.i20.i57, !prof !122

if.then.i20.i57:                                  ; preds = %for.body.i55
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i19.i56 = add i32 %26, -1
  br label %_compound_head.exit23.i61

if.end.i21.i58:                                   ; preds = %for.body.i55
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %23 to i32
  br label %_compound_head.exit23.i61

_compound_head.exit23.i61:                        ; preds = %if.end.i21.i58, %if.then.i20.i57
  %retval.0.i22.i59 = phi i32 [ %sub.i19.i56, %if.then.i20.i57 ], [ %27, %if.end.i21.i58 ]
  %28 = inttoptr i32 %retval.0.i22.i59 to ptr
  %cmp4.not.i60 = icmp eq ptr %28, %21
  br i1 %cmp4.not.i60, label %_compound_head.exit23.i61.for.cond.i51_crit_edge, label %_compound_head.exit23.i61.compound_next.exit63_crit_edge

_compound_head.exit23.i61.compound_next.exit63_crit_edge: ; preds = %_compound_head.exit23.i61
  call void @__sanitizer_cov_trace_pc() #9
  br label %compound_next.exit63

_compound_head.exit23.i61.for.cond.i51_crit_edge: ; preds = %_compound_head.exit23.i61
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i51

compound_next.exit63:                             ; preds = %_compound_head.exit23.i61.compound_next.exit63_crit_edge, %for.cond.i51.compound_next.exit63_crit_edge
  %sub.i = sub i32 %nr.0.i49, %add
  br i1 %cmp.not.i39, label %compound_next.exit63.for.body_crit_edge, label %compound_next.exit63.cleanup_crit_edge

compound_next.exit63.cleanup_crit_edge:           ; preds = %compound_next.exit63
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

compound_next.exit63.for.body_crit_edge:          ; preds = %compound_next.exit63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %compound_next.exit63.cleanup_crit_edge, %for.body.cleanup_crit_edge, %compound_next.exit.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_page_dirty_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unpin_user_page_range_dirty_lock(ptr noundef %page, i32 noundef %npages, i1 noundef zeroext %make_dirty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %npages)
  %cmp.not.i.not = icmp eq i32 %npages, 0
  br i1 %cmp.not.i.not, label %entry.for.end_crit_edge, label %if.end.i

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.i:                                         ; preds = %entry
  %0 = getelementptr %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i8 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i8)
  %tobool.not.i21.i = icmp eq i32 %and.i.i8, 0
  br i1 %tobool.not.i21.i, label %if.end.i.i11, label %if.then.i.i10, !prof !122

if.then.i.i10:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i9 = add i32 %2, -1
  br label %_compound_head.exit.i14

if.end.i.i11:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i14

_compound_head.exit.i14:                          ; preds = %if.end.i.i11, %if.then.i.i10
  %retval.0.i.i12 = phi i32 [ %sub.i.i9, %if.then.i.i10 ], [ %3, %if.end.i.i11 ]
  %4 = inttoptr i32 %retval.0.i.i12 to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %7 = and i32 %6, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i13 = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i13, label %PageCompound.exit.i, label %_compound_head.exit.i14.land.lhs.true.i_crit_edge

_compound_head.exit.i14.land.lhs.true.i_crit_edge: ; preds = %_compound_head.exit.i14
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

PageCompound.exit.i:                              ; preds = %_compound_head.exit.i14
  %8 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %and.i.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %PageCompound.exit.i.for.body.preheader_crit_edge, label %PageCompound.exit.i.land.lhs.true.i_crit_edge

PageCompound.exit.i.land.lhs.true.i_crit_edge:    ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

PageCompound.exit.i.for.body.preheader_crit_edge: ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

land.lhs.true.i:                                  ; preds = %PageCompound.exit.i.land.lhs.true.i_crit_edge, %_compound_head.exit.i14.land.lhs.true.i_crit_edge
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp.i.not.i.i.i = icmp eq i32 %12, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %PageHead.exit.i.i, !prof !123

if.then.i.i.i:                                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.6) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #7, !srcloc !124
  unreachable

PageHead.exit.i.i:                                ; preds = %land.lhs.true.i
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %4, align 4
  %15 = and i32 %14, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i22.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i22.i, label %PageHead.exit.i.i.for.body.preheader_crit_edge, label %compound_order.exit.i

PageHead.exit.i.i.for.body.preheader_crit_edge:   ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

compound_order.exit.i:                            ; preds = %PageHead.exit.i.i
  %16 = getelementptr %struct.page, ptr %4, i32 1, i32 1
  %compound_order.i.i = getelementptr inbounds %struct.anon.69, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %compound_order.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %compound_order.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp3.not.i = icmp eq i8 %18, 0
  br i1 %cmp3.not.i, label %compound_order.exit.i.for.body.preheader_crit_edge, label %if.then4.i

compound_order.exit.i.for.body.preheader_crit_edge: ; preds = %compound_order.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

if.then4.i:                                       ; preds = %compound_order.exit.i
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp.i.not.i.i25.i = icmp eq i32 %20, -1
  br i1 %cmp.i.not.i.i25.i, label %if.then.i.i26.i, label %PageHead.exit.i28.i, !prof !123

if.then.i.i26.i:                                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.6) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #7, !srcloc !124
  unreachable

PageHead.exit.i28.i:                              ; preds = %if.then4.i
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %4, align 4
  %23 = and i32 %22, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i27.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i27.i, label %PageHead.exit.i28.i.compound_nr.exit.i_crit_edge, label %if.end.i29.i

PageHead.exit.i28.i.compound_nr.exit.i_crit_edge: ; preds = %PageHead.exit.i28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %compound_nr.exit.i

if.end.i29.i:                                     ; preds = %PageHead.exit.i28.i
  call void @__sanitizer_cov_trace_pc() #9
  %compound_nr.i.i = getelementptr %struct.page, ptr %4, i32 1, i32 1, i32 0, i32 2
  %24 = ptrtoint ptr %compound_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %compound_nr.i.i, align 4
  br label %compound_nr.exit.i

compound_nr.exit.i:                               ; preds = %if.end.i29.i, %PageHead.exit.i28.i.compound_nr.exit.i_crit_edge
  %retval.0.i30.i = phi i32 [ %25, %if.end.i29.i ], [ 1, %PageHead.exit.i28.i.compound_nr.exit.i_crit_edge ]
  %add.ptr6.i = getelementptr %struct.page, ptr %4, i32 %retval.0.i30.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr6.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %page to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  %26 = tail call i32 @llvm.umin.i32(i32 %sub.ptr.div.i, i32 %npages) #7
  br label %for.body.preheader

for.body.preheader:                               ; preds = %compound_nr.exit.i, %compound_order.exit.i.for.body.preheader_crit_edge, %PageHead.exit.i.i.for.body.preheader_crit_edge, %PageCompound.exit.i.for.body.preheader_crit_edge
  %ntails.166.ph = phi i32 [ %26, %compound_nr.exit.i ], [ 1, %compound_order.exit.i.for.body.preheader_crit_edge ], [ 1, %PageHead.exit.i.i.for.body.preheader_crit_edge ], [ 1, %PageCompound.exit.i.for.body.preheader_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.body.backedge, %for.body.preheader
  %index.067 = phi i32 [ 0, %for.body.preheader ], [ %add, %for.body.backedge ]
  %ntails.166 = phi i32 [ %ntails.166.ph, %for.body.preheader ], [ %ntails.166.be, %for.body.backedge ]
  %head.164 = phi ptr [ %4, %for.body.preheader ], [ %47, %for.body.backedge ]
  br i1 %make_dirty, label %land.lhs.true, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %27 = getelementptr inbounds %struct.page, ptr %head.164, i32 0, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  %and.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !122

if.then.i.i:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %29, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %head.164 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %30, %if.end.i.i ]
  %31 = inttoptr i32 %retval.0.i.i to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp.i.not.i = icmp eq i32 %33, -1
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %27, align 4
  %and.i13.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !123

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %if.then.i16.i, !prof !122

if.then.i16.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i15.i = add i32 %35, -1
  br label %_compound_head.exit19.i

if.end.i17.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %head.164 to i32
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.end.i17.i, %if.then.i16.i
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %36, %if.end.i17.i ]
  %37 = inttoptr i32 %retval.0.i18.i to ptr
  tail call void @dump_page(ptr noundef %37, ptr noundef nonnull @.str.11) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #7, !srcloc !137
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i24.i, label %if.then.i23.i, !prof !122

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i22.i = add i32 %35, -1
  br label %PageDirty.exit

if.end.i24.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %head.164 to i32
  br label %PageDirty.exit

PageDirty.exit:                                   ; preds = %if.end.i24.i, %if.then.i23.i
  %retval.0.i25.i = phi i32 [ %sub.i22.i, %if.then.i23.i ], [ %38, %if.end.i24.i ]
  %39 = inttoptr i32 %retval.0.i25.i to ptr
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %39, align 4
  %42 = and i32 %41, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool1.not = icmp eq i32 %42, 0
  br i1 %tobool1.not, label %if.then, label %PageDirty.exit.if.end_crit_edge

PageDirty.exit.if.end_crit_edge:                  ; preds = %PageDirty.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %PageDirty.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 @set_page_dirty_lock(ptr noundef %head.164) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %PageDirty.exit.if.end_crit_edge, %for.body.if.end_crit_edge
  tail call fastcc void @put_compound_head(ptr noundef %head.164, i32 noundef %ntails.166)
  %add = add i32 %index.067, %ntails.166
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %npages)
  %cmp.not.i15 = icmp ult i32 %add, %npages
  br i1 %cmp.not.i15, label %if.end.i18, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.i18:                                       ; preds = %if.end
  %add.ptr.i = getelementptr %struct.page, ptr %page, i32 %add
  %43 = getelementptr %struct.page, ptr %page, i32 %add, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %43, align 4
  %and.i.i16 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i16)
  %tobool.not.i21.i17 = icmp eq i32 %and.i.i16, 0
  br i1 %tobool.not.i21.i17, label %if.end.i.i21, label %if.then.i.i20, !prof !122

if.then.i.i20:                                    ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i19 = add i32 %45, -1
  br label %_compound_head.exit.i24

if.end.i.i21:                                     ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %add.ptr.i to i32
  br label %_compound_head.exit.i24

_compound_head.exit.i24:                          ; preds = %if.end.i.i21, %if.then.i.i20
  %retval.0.i.i22 = phi i32 [ %sub.i.i19, %if.then.i.i20 ], [ %46, %if.end.i.i21 ]
  %47 = inttoptr i32 %retval.0.i.i22 to ptr
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %47, align 4
  %50 = and i32 %49, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i.i23 = icmp eq i32 %50, 0
  br i1 %tobool.not.i.i23, label %PageCompound.exit.i27, label %_compound_head.exit.i24.land.lhs.true.i29_crit_edge

_compound_head.exit.i24.land.lhs.true.i29_crit_edge: ; preds = %_compound_head.exit.i24
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i29

PageCompound.exit.i27:                            ; preds = %_compound_head.exit.i24
  %51 = getelementptr inbounds %struct.page, ptr %47, i32 0, i32 1
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %51, align 4
  %and.i.i.i25 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i25)
  %tobool.not.i26 = icmp eq i32 %and.i.i.i25, 0
  br i1 %tobool.not.i26, label %PageCompound.exit.i27.for.body.backedge_crit_edge, label %PageCompound.exit.i27.land.lhs.true.i29_crit_edge

PageCompound.exit.i27.land.lhs.true.i29_crit_edge: ; preds = %PageCompound.exit.i27
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i29

PageCompound.exit.i27.for.body.backedge_crit_edge: ; preds = %PageCompound.exit.i27
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.backedge

for.body.backedge:                                ; preds = %compound_nr.exit.i49, %compound_order.exit.i35.for.body.backedge_crit_edge, %PageHead.exit.i.i32.for.body.backedge_crit_edge, %PageCompound.exit.i27.for.body.backedge_crit_edge
  %ntails.166.be = phi i32 [ 1, %PageCompound.exit.i27.for.body.backedge_crit_edge ], [ 1, %PageHead.exit.i.i32.for.body.backedge_crit_edge ], [ 1, %compound_order.exit.i35.for.body.backedge_crit_edge ], [ %71, %compound_nr.exit.i49 ]
  br label %for.body

land.lhs.true.i29:                                ; preds = %PageCompound.exit.i27.land.lhs.true.i29_crit_edge, %_compound_head.exit.i24.land.lhs.true.i29_crit_edge
  %54 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %55)
  %cmp.i.not.i.i.i28 = icmp eq i32 %55, -1
  br i1 %cmp.i.not.i.i.i28, label %if.then.i.i.i30, label %PageHead.exit.i.i32, !prof !123

if.then.i.i.i30:                                  ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #9
  %56 = inttoptr i32 %retval.0.i.i22 to ptr
  tail call void @dump_page(ptr noundef %56, ptr noundef nonnull @.str.6) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #7, !srcloc !124
  unreachable

PageHead.exit.i.i32:                              ; preds = %land.lhs.true.i29
  %57 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %47, align 4
  %59 = and i32 %58, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i22.i31 = icmp eq i32 %59, 0
  br i1 %tobool.not.i22.i31, label %PageHead.exit.i.i32.for.body.backedge_crit_edge, label %compound_order.exit.i35

PageHead.exit.i.i32.for.body.backedge_crit_edge:  ; preds = %PageHead.exit.i.i32
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.backedge

compound_order.exit.i35:                          ; preds = %PageHead.exit.i.i32
  %60 = getelementptr %struct.page, ptr %47, i32 1, i32 1
  %compound_order.i.i33 = getelementptr inbounds %struct.anon.69, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %compound_order.i.i33 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %compound_order.i.i33, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %cmp3.not.i34 = icmp eq i8 %62, 0
  br i1 %cmp3.not.i34, label %compound_order.exit.i35.for.body.backedge_crit_edge, label %if.then4.i37

compound_order.exit.i35.for.body.backedge_crit_edge: ; preds = %compound_order.exit.i35
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.backedge

if.then4.i37:                                     ; preds = %compound_order.exit.i35
  %63 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %64)
  %cmp.i.not.i.i25.i36 = icmp eq i32 %64, -1
  br i1 %cmp.i.not.i.i25.i36, label %if.then.i.i26.i38, label %PageHead.exit.i28.i40, !prof !123

if.then.i.i26.i38:                                ; preds = %if.then4.i37
  call void @__sanitizer_cov_trace_pc() #9
  %65 = inttoptr i32 %retval.0.i.i22 to ptr
  tail call void @dump_page(ptr noundef %65, ptr noundef nonnull @.str.6) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #7, !srcloc !124
  unreachable

PageHead.exit.i28.i40:                            ; preds = %if.then4.i37
  %66 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %47, align 4
  %68 = and i32 %67, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.i27.i39 = icmp eq i32 %68, 0
  br i1 %tobool.not.i27.i39, label %PageHead.exit.i28.i40.compound_nr.exit.i49_crit_edge, label %if.end.i29.i42

PageHead.exit.i28.i40.compound_nr.exit.i49_crit_edge: ; preds = %PageHead.exit.i28.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %compound_nr.exit.i49

if.end.i29.i42:                                   ; preds = %PageHead.exit.i28.i40
  call void @__sanitizer_cov_trace_pc() #9
  %compound_nr.i.i41 = getelementptr %struct.page, ptr %47, i32 1, i32 1, i32 0, i32 2
  %69 = ptrtoint ptr %compound_nr.i.i41 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %compound_nr.i.i41, align 4
  br label %compound_nr.exit.i49

compound_nr.exit.i49:                             ; preds = %if.end.i29.i42, %PageHead.exit.i28.i40.compound_nr.exit.i49_crit_edge
  %retval.0.i30.i43 = phi i32 [ %70, %if.end.i29.i42 ], [ 1, %PageHead.exit.i28.i40.compound_nr.exit.i49_crit_edge ]
  %add.ptr6.i44 = getelementptr %struct.page, ptr %47, i32 %retval.0.i30.i43
  %sub.ptr.lhs.cast.i45 = ptrtoint ptr %add.ptr6.i44 to i32
  %sub.ptr.rhs.cast.i46 = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.sub.i47 = sub i32 %sub.ptr.lhs.cast.i45, %sub.ptr.rhs.cast.i46
  %sub.ptr.div.i48 = sdiv exact i32 %sub.ptr.sub.i47, 36
  %sub.i = sub i32 %npages, %add
  %71 = tail call i32 @llvm.umin.i32(i32 %sub.ptr.div.i48, i32 %sub.i) #7
  br label %for.body.backedge

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @follow_page(ptr noundef %vma, i32 noundef %address, i32 noundef %foll_flags) local_unnamed_addr #0 align 64 {
entry:
  %ctx = alloca %struct.follow_page_context, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ctx) #7
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %ctx, align 8
  %call1 = call fastcc ptr @follow_page_mask(ptr noundef %vma, i32 noundef %address, i32 noundef %foll_flags, ptr noundef nonnull %ctx)
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @put_dev_pagemap(ptr noundef nonnull %2)
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ctx) #7
  ret ptr %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @follow_page_mask(ptr noundef %vma, i32 noundef %address, i32 noundef %flags, ptr nocapture noundef writeonly %ctx) unnamed_addr #0 align 64 {
if.end39:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  %0 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_mm, align 4
  %page_mask = getelementptr inbounds %struct.follow_page_context, ptr %ctx, i32 0, i32 1
  %2 = ptrtoint ptr %page_mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %page_mask, align 4
  %pgd40 = getelementptr inbounds %struct.anon.9, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %pgd40 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pgd40, align 4
  %shr.i = lshr i32 %address, 21
  %add.ptr.i = getelementptr [2 x i32], ptr %4, i32 %shr.i
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.end39
  %and.i.i.i.i = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.cleanup_crit_edge, label %land.lhs.true.i.i.i.i

if.then.i.i.i.cleanup_crit_edge:                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i.i.i.i:                            ; preds = %if.then.i.i.i
  %vm_ops.i.i.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %7 = ptrtoint ptr %vm_ops.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vm_ops.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then.i.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i

land.lhs.true.i.i.i.i.if.then.i.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %land.lhs.true.i.i.i.i
  %fault.i.i.i.i = getelementptr inbounds %struct.vm_operations_struct, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %fault.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fault.i.i.i.i, align 4
  %tobool1.not.i.i.i.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i.i.i.i, label %lor.lhs.false.i.i.i.i.if.then.i.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.cleanup_crit_edge

lor.lhs.false.i.i.i.i.cleanup_crit_edge:          ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i.i.i.i.if.then.i.i.i.i_crit_edge:  ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lor.lhs.false.i.i.i.i.if.then.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then.i.i.i.i_crit_edge
  br label %cleanup

if.end.i.i.i:                                     ; preds = %if.end39
  %11 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vm_mm, align 4
  %and.i1.i.i.i = and i32 %flags, 262148
  call void @__sanitizer_cov_trace_const_cmp4(i32 262148, i32 %and.i1.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %and.i1.i.i.i, 262148
  br i1 %cmp.i.i.i.i, label %land.rhs.i.i.i.i, label %retry.preheader.i.i.i.i

retry.preheader.i.i.i.i:                          ; preds = %if.end.i.i.i
  %and3858.i.i.i.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3858.i.i.i.i)
  %tobool39.not59.i.i.i.i = icmp eq i32 %and3858.i.i.i.i, 0
  br i1 %tobool39.not59.i.i.i.i, label %if.end48.lr.ph.i.i.i.i, label %retry.preheader.i.i.i.i.if.then46.i.i.i.i_crit_edge, !prof !122

retry.preheader.i.i.i.i.if.then46.i.i.i.i_crit_edge: ; preds = %retry.preheader.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then46.i.i.i.i

if.end48.lr.ph.i.i.i.i:                           ; preds = %retry.preheader.i.i.i.i
  %shr.i6.i.i.i.i = lshr i32 %address, 12
  %and.i7.i.i.i.i = and i32 %shr.i6.i.i.i.i, 511
  %and65.i.i.i.i = and i32 %flags, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.i.i.i.i)
  %tobool66.not.i.i.i.i = icmp eq i32 %and65.i.i.i.i, 0
  br label %if.end48.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %if.end.i.i.i
  %.b1.i.i.i.i = load i1, ptr @follow_page_pte.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs.i.i.i.i.cleanup_crit_edge, label %if.then.i2.i.i.i, !prof !122

land.rhs.i.i.i.i.cleanup_crit_edge:               ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i2.i.i.i:                                 ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @follow_page_pte.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 510, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.then46.i.i.i.i:                                ; preds = %cleanup.i.i.i.i.if.then46.i.i.i.i_crit_edge, %retry.preheader.i.i.i.i.if.then46.i.i.i.i_crit_edge
  %and.i.i.i.i.i = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i3.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i3.i.i.i, label %if.then46.i.i.i.i.cleanup_crit_edge, label %land.lhs.true.i.i.i.i.i

if.then46.i.i.i.i.cleanup_crit_edge:              ; preds = %if.then46.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i.i.i.i.i:                          ; preds = %if.then46.i.i.i.i
  %vm_ops.i.i.i.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %13 = ptrtoint ptr %vm_ops.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vm_ops.i.i.i.i.i.i, align 4
  %tobool.not.i.i4.i.i.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i4.i.i.i.i, label %land.lhs.true.i.i.i.i.i.if.then.i5.i.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i

land.lhs.true.i.i.i.i.i.if.then.i5.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i5.i.i.i.i

lor.lhs.false.i.i.i.i.i:                          ; preds = %land.lhs.true.i.i.i.i.i
  %fault.i.i.i.i.i = getelementptr inbounds %struct.vm_operations_struct, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %fault.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fault.i.i.i.i.i, align 4
  %tobool1.not.i.i.i.i.i = icmp eq ptr %16, null
  br i1 %tobool1.not.i.i.i.i.i, label %lor.lhs.false.i.i.i.i.i.if.then.i5.i.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i.cleanup_crit_edge

lor.lhs.false.i.i.i.i.i.cleanup_crit_edge:        ; preds = %lor.lhs.false.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i.i.i.i.i.if.then.i5.i.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i5.i.i.i.i

if.then.i5.i.i.i.i:                               ; preds = %lor.lhs.false.i.i.i.i.i.if.then.i5.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.if.then.i5.i.i.i.i_crit_edge
  br label %cleanup

if.end48.i.i.i.i:                                 ; preds = %cleanup.i.i.i.i.if.end48.i.i.i.i_crit_edge, %if.end48.lr.ph.i.i.i.i
  %17 = phi i32 [ %6, %if.end48.lr.ph.i.i.i.i ], [ %47, %cleanup.i.i.i.i.if.end48.i.i.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %18 = load ptr, ptr @mem_map, align 4
  %shr.i.i.i.i.i = lshr i32 %17, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %19 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i.i.i.i.i = sub i32 %shr.i.i.i.i.i, %19
  %ptl.i.i.i.i.i.i = getelementptr %struct.page, ptr %18, i32 %sub.i.i.i.i.i, i32 1, i32 0, i32 3
  %20 = ptrtoint ptr %ptl.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ptl.i.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr %struct.page, ptr %18, i32 %sub.i.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %22 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i.i.i.i = or i32 %22, 512
  %23 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i.i.i.i.i.i.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i.i = add i32 %26, 1
  store volatile i32 %add.i.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !138
  %27 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i.i.i1.i.i.i.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i1.i.i.i.i.i.i to ptr
  %task.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task.i.i.i.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 213
  %31 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pagefault_disabled.i.i.i.i.i.i.i.i, align 8
  %inc.i.i.i.i.i.i.i.i = add i32 %32, 1
  store i32 %inc.i.i.i.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !139
  %call.i.i.i.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr.i.i.i.i, i32 noundef %or.i.i.i.i.i) #7
  %add.ptr53.i.i.i.i = getelementptr i32, ptr %call.i.i.i.i.i.i, i32 %and.i7.i.i.i.i
  tail call void @_raw_spin_lock(ptr noundef %21) #7
  %33 = ptrtoint ptr %add.ptr53.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr53.i.i.i.i, align 4
  %and55.i.i.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i.i.i.i)
  %tobool56.not.i.i.i.i = icmp eq i32 %and55.i.i.i.i, 0
  br i1 %tobool56.not.i.i.i.i, label %if.then63.i.i.i.i, label %if.end102.i.i.i.i

if.then63.i.i.i.i:                                ; preds = %if.end48.i.i.i.i
  br i1 %tobool66.not.i.i.i.i, label %if.then63.i.i.i.i.do.body238.i.i.i.i_crit_edge, label %if.end76.i.i.i.i, !prof !122

if.then63.i.i.i.i.do.body238.i.i.i.i_crit_edge:   ; preds = %if.then63.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body238.i.i.i.i

if.end76.i.i.i.i:                                 ; preds = %if.then63.i.i.i.i
  %35 = and i32 %34, 120
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %35)
  %.not.i.i.i.i = icmp eq i32 %35, 120
  br i1 %.not.i.i.i.i, label %cleanup.i.i.i.i, label %if.end76.i.i.i.i.do.body238.i.i.i.i_crit_edge

if.end76.i.i.i.i.do.body238.i.i.i.i_crit_edge:    ; preds = %if.end76.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body238.i.i.i.i

cleanup.i.i.i.i:                                  ; preds = %if.end76.i.i.i.i
  tail call void @_raw_spin_unlock(ptr noundef %21) #7
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr53.i.i.i.i) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !140
  %36 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i.i.i1.i.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i1.i.i.i.i to ptr
  %task.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task.i.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 213
  %40 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  %dec.i.i.i.i.i.i = add i32 %41, -1
  store i32 %dec.i.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !141
  %42 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i.i.i.i.i.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %sub.i.i10.i.i.i = add i32 %45, -1
  store volatile i32 %sub.i.i10.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void @migration_entry_wait(ptr noundef %12, ptr noundef %add.ptr.i, i32 noundef %address) #7
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr.i, align 4
  %and38.i.i.i.i = and i32 %47, 2
  %tobool39.not.i.i.i.i = icmp eq i32 %and38.i.i.i.i, 0
  br i1 %tobool39.not.i.i.i.i, label %cleanup.i.i.i.i.if.end48.i.i.i.i_crit_edge, label %cleanup.i.i.i.i.if.then46.i.i.i.i_crit_edge, !prof !122

cleanup.i.i.i.i.if.then46.i.i.i.i_crit_edge:      ; preds = %cleanup.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then46.i.i.i.i

cleanup.i.i.i.i.if.end48.i.i.i.i_crit_edge:       ; preds = %cleanup.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i.i.i.i

if.end102.i.i.i.i:                                ; preds = %if.end48.i.i.i.i
  %and103.i.i.i.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103.i.i.i.i)
  %tobool104.not.i.i.i.i = icmp eq i32 %and103.i.i.i.i, 0
  %and.i8.i.i.i.i = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i.i.i.i)
  %tobool.not.i9.i.i.i.i = icmp eq i32 %and.i8.i.i.i.i, 0
  %or.cond50.i.i.i.i = select i1 %tobool104.not.i.i.i.i, i1 true, i1 %tobool.not.i9.i.i.i.i
  br i1 %or.cond50.i.i.i.i, label %if.end102.i.i.i.i.if.end117.i.i.i.i_crit_edge, label %lor.rhs.i.i.i.i.i

if.end102.i.i.i.i.if.end117.i.i.i.i_crit_edge:    ; preds = %if.end102.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117.i.i.i.i

lor.rhs.i.i.i.i.i:                                ; preds = %if.end102.i.i.i.i
  %48 = and i32 %flags, 16400
  call void @__sanitizer_cov_trace_const_cmp4(i32 16400, i32 %48)
  %.not.i.i.i.i.i = icmp eq i32 %48, 16400
  %and5.i.i.i.i.i = and i32 %34, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i.i.i.i)
  %tobool6.i.i.i.i.i = icmp ne i32 %and5.i.i.i.i.i, 0
  %or.cond51.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 %tobool6.i.i.i.i.i, i1 false
  br i1 %or.cond51.i.i.i.i, label %lor.rhs.i.i.i.i.i.if.end117.i.i.i.i_crit_edge, label %do.body108.i.i.i.i

lor.rhs.i.i.i.i.i.if.end117.i.i.i.i_crit_edge:    ; preds = %lor.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117.i.i.i.i

do.body108.i.i.i.i:                               ; preds = %lor.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock(ptr noundef %21) #7
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr53.i.i.i.i) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !140
  %49 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i.i.i1.i.i.i.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i1.i.i.i.i.i to ptr
  %task.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %task.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task.i.i.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 213
  %53 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pagefault_disabled.i.i.i.i.i.i.i, align 8
  %dec.i.i.i.i.i.i.i = add i32 %54, -1
  store i32 %dec.i.i.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !141
  %55 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i.i.i.i.i.i.i.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %sub.i.i10.i.i.i.i = add i32 %58, -1
  store volatile i32 %sub.i.i10.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  br label %cleanup

if.end117.i.i.i.i:                                ; preds = %lor.rhs.i.i.i.i.i.if.end117.i.i.i.i_crit_edge, %if.end102.i.i.i.i.if.end117.i.i.i.i_crit_edge
  %call118.i.i.i.i = tail call ptr @vm_normal_page(ptr noundef %vma, i32 noundef %address, i32 noundef %34) #7
  %tobool119.not.i.i.i.i = icmp eq ptr %call118.i.i.i.i, null
  br i1 %tobool119.not.i.i.i.i, label %land.lhs.true120.i.i.i.i, label %if.end117.i.i.i.i.if.end167.i.i.i.i_crit_edge

if.end117.i.i.i.i.if.end167.i.i.i.i_crit_edge:    ; preds = %if.end117.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end167.i.i.i.i

land.lhs.true120.i.i.i.i:                         ; preds = %if.end117.i.i.i.i
  %and148.i.i.i.i = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148.i.i.i.i)
  %tobool149.not.i.i.i.i = icmp eq i32 %and148.i.i.i.i, 0
  br i1 %tobool149.not.i.i.i.i, label %if.end152.i.i.i.i, label %land.lhs.true120.i.i.i.i.do.body229.i.i.i.i_crit_edge

land.lhs.true120.i.i.i.i.do.body229.i.i.i.i_crit_edge: ; preds = %land.lhs.true120.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body229.i.i.i.i

if.end152.i.i.i.i:                                ; preds = %land.lhs.true120.i.i.i.i
  %shr154.i.i.i.i = lshr i32 %34, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @zero_pfn to i32))
  %59 = load i32, ptr @zero_pfn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %shr154.i.i.i.i)
  %cmp.i.not.i.i.i.i = icmp eq i32 %59, %shr154.i.i.i.i
  br i1 %cmp.i.not.i.i.i.i, label %if.then157.i.i.i.i, label %if.else162.i.i.i.i

if.then157.i.i.i.i:                               ; preds = %if.end152.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %60 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %61 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub160.i.i.i.i = sub i32 %shr154.i.i.i.i, %61
  %add.ptr161.i.i.i.i = getelementptr %struct.page, ptr %60, i32 %sub160.i.i.i.i
  br label %if.end167.i.i.i.i

if.else162.i.i.i.i:                               ; preds = %if.end152.i.i.i.i
  %and.i5.i.i.i = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i5.i.i.i)
  %tobool.not.i6.i.i.i = icmp eq i32 %and.i5.i.i.i, 0
  br i1 %tobool.not.i6.i.i.i, label %if.end.i.i.i.i, label %if.else162.i.i.i.i.do.body229.i.i.i.i_crit_edge

if.else162.i.i.i.i.do.body229.i.i.i.i_crit_edge:  ; preds = %if.else162.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body229.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.else162.i.i.i.i
  %and1.i.i.i.i = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %if.end.i.i.i.i.do.body229.i.i.i.i_crit_edge, label %if.then3.i.i.i.i

if.end.i.i.i.i.do.body229.i.i.i.i_crit_edge:      ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body229.i.i.i.i

if.then3.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  %62 = ptrtoint ptr %add.ptr53.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %add.ptr53.i.i.i.i, align 4
  %and5.i.i.i.i = shl i32 %flags, 6
  %64 = and i32 %and5.i.i.i.i, 64
  %65 = or i32 %64, %63
  %or.i.i25.i.i.i.i = or i32 %65, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %or.i.i25.i.i.i.i)
  %cmp.i.not.i7.i.i.i = icmp eq i32 %63, %or.i.i25.i.i.i.i
  br i1 %cmp.i.not.i7.i.i.i, label %if.then3.i.i.i.i.do.body229.i.i.i.i_crit_edge, label %if.then12.i.i.i.i

if.then3.i.i.i.i.do.body229.i.i.i.i_crit_edge:    ; preds = %if.then3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body229.i.i.i.i

if.then12.i.i.i.i:                                ; preds = %if.then3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %vm_mm, align 4
  tail call void @set_pte_at(ptr noundef %67, i32 noundef %address, ptr noundef %add.ptr53.i.i.i.i, i32 noundef %or.i.i25.i.i.i.i) #7
  br label %do.body229.i.i.i.i

if.end167.i.i.i.i:                                ; preds = %if.then157.i.i.i.i, %if.end117.i.i.i.i.if.end167.i.i.i.i_crit_edge
  %page.0.i.i.i.i = phi ptr [ %add.ptr161.i.i.i.i, %if.then157.i.i.i.i ], [ %call118.i.i.i.i, %if.end117.i.i.i.i.if.end167.i.i.i.i_crit_edge ]
  %call168.i.i.i.i = tail call zeroext i1 @try_grab_page(ptr noundef %page.0.i.i.i.i, i32 noundef %flags) #7
  br i1 %call168.i.i.i.i, label %if.end188.i.i.i.i, label %if.end167.i.i.i.i.do.body229.i.i.i.i_crit_edge, !prof !122

if.end167.i.i.i.i.do.body229.i.i.i.i_crit_edge:   ; preds = %if.end167.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body229.i.i.i.i

if.end188.i.i.i.i:                                ; preds = %if.end167.i.i.i.i
  %and189.i.i.i.i = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and189.i.i.i.i)
  %tobool190.not.i.i.i.i = icmp eq i32 %and189.i.i.i.i, 0
  br i1 %tobool190.not.i.i.i.i, label %if.end188.i.i.i.i.if.end211.i.i.i.i_crit_edge, label %if.then191.i.i.i.i

if.end188.i.i.i.i.if.end211.i.i.i.i_crit_edge:    ; preds = %if.end188.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end211.i.i.i.i

if.then191.i.i.i.i:                               ; preds = %if.end188.i.i.i.i
  %tobool104.not.not.i.i.i.i = xor i1 %tobool104.not.i.i.i.i, true
  %and196.i.i.i.i = and i32 %34, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and196.i.i.i.i)
  %tobool197.not.i.i.i.i = icmp eq i32 %and196.i.i.i.i, 0
  %or.cond.i.i.i.i = select i1 %tobool104.not.not.i.i.i.i, i1 %tobool197.not.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i, label %land.lhs.true205.i.i.i.i, label %if.then191.i.i.i.i.if.end210.i.i.i.i_crit_edge

if.then191.i.i.i.i.if.end210.i.i.i.i_crit_edge:   ; preds = %if.then191.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end210.i.i.i.i

land.lhs.true205.i.i.i.i:                         ; preds = %if.then191.i.i.i.i
  %68 = getelementptr inbounds %struct.page, ptr %page.0.i.i.i.i, i32 0, i32 1
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %68, align 4
  %and.i.i.i.i.i.i = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, !prof !122

if.then.i.i.i.i.i.i:                              ; preds = %land.lhs.true205.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i.i.i.i = add i32 %70, -1
  br label %_compound_head.exit.i.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %land.lhs.true205.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %page.0.i.i.i.i to i32
  br label %_compound_head.exit.i.i.i.i.i

_compound_head.exit.i.i.i.i.i:                    ; preds = %if.end.i.i.i.i.i.i, %if.then.i.i.i.i.i.i
  %retval.0.i.i.i.i.i.i = phi i32 [ %sub.i.i.i.i.i.i, %if.then.i.i.i.i.i.i ], [ %71, %if.end.i.i.i.i.i.i ]
  %72 = inttoptr i32 %retval.0.i.i.i.i.i.i to ptr
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %74)
  %cmp.i.not.i.i.i.i.i = icmp eq i32 %74, -1
  %75 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %68, align 4
  %and.i13.i.i.i.i.i = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i.i.i.i.i)
  %tobool.not.i14.i.i.i.i.i = icmp eq i32 %and.i13.i.i.i.i.i, 0
  br i1 %cmp.i.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end8.i.i.i.i.i, !prof !123

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i.i.i.i
  br i1 %tobool.not.i14.i.i.i.i.i, label %if.end.i17.i.i.i.i.i, label %if.then.i16.i.i.i.i.i, !prof !122

if.then.i16.i.i.i.i.i:                            ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i15.i.i.i.i.i = add i32 %76, -1
  br label %_compound_head.exit19.i.i.i.i.i

if.end.i17.i.i.i.i.i:                             ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %page.0.i.i.i.i to i32
  br label %_compound_head.exit19.i.i.i.i.i

_compound_head.exit19.i.i.i.i.i:                  ; preds = %if.end.i17.i.i.i.i.i, %if.then.i16.i.i.i.i.i
  %retval.0.i18.i.i.i.i.i = phi i32 [ %sub.i15.i.i.i.i.i, %if.then.i16.i.i.i.i.i ], [ %77, %if.end.i17.i.i.i.i.i ]
  %78 = inttoptr i32 %retval.0.i18.i.i.i.i.i to ptr
  tail call void @dump_page(ptr noundef %78, ptr noundef nonnull @.str.11) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #7, !srcloc !137
  unreachable

do.end8.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i.i.i.i
  br i1 %tobool.not.i14.i.i.i.i.i, label %if.end.i24.i.i.i.i.i, label %if.then.i23.i.i.i.i.i, !prof !122

if.then.i23.i.i.i.i.i:                            ; preds = %do.end8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i22.i.i.i.i.i = add i32 %76, -1
  br label %PageDirty.exit.i.i.i.i

if.end.i24.i.i.i.i.i:                             ; preds = %do.end8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %page.0.i.i.i.i to i32
  br label %PageDirty.exit.i.i.i.i

PageDirty.exit.i.i.i.i:                           ; preds = %if.end.i24.i.i.i.i.i, %if.then.i23.i.i.i.i.i
  %retval.0.i25.i.i.i.i.i = phi i32 [ %sub.i22.i.i.i.i.i, %if.then.i23.i.i.i.i.i ], [ %79, %if.end.i24.i.i.i.i.i ]
  %80 = inttoptr i32 %retval.0.i25.i.i.i.i.i to ptr
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %80, align 4
  %83 = and i32 %82, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool207.not.i.i.i.i = icmp eq i32 %83, 0
  br i1 %tobool207.not.i.i.i.i, label %if.then208.i.i.i.i, label %PageDirty.exit.i.i.i.i.if.end210.i.i.i.i_crit_edge

PageDirty.exit.i.i.i.i.if.end210.i.i.i.i_crit_edge: ; preds = %PageDirty.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end210.i.i.i.i

if.then208.i.i.i.i:                               ; preds = %PageDirty.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call209.i.i.i.i = tail call zeroext i1 @set_page_dirty(ptr noundef %page.0.i.i.i.i) #7
  br label %if.end210.i.i.i.i

if.end210.i.i.i.i:                                ; preds = %if.then208.i.i.i.i, %PageDirty.exit.i.i.i.i.if.end210.i.i.i.i_crit_edge, %if.then191.i.i.i.i.if.end210.i.i.i.i_crit_edge
  tail call void @mark_page_accessed(ptr noundef %page.0.i.i.i.i) #7
  br label %if.end211.i.i.i.i

if.end211.i.i.i.i:                                ; preds = %if.end210.i.i.i.i, %if.end188.i.i.i.i.if.end211.i.i.i.i_crit_edge
  %and212.i.i.i.i = and i32 %flags, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and212.i.i.i.i)
  %tobool213.not.i.i.i.i = icmp eq i32 %and212.i.i.i.i, 0
  br i1 %tobool213.not.i.i.i.i, label %if.end211.i.i.i.i.do.body229.i.i.i.i_crit_edge, label %land.lhs.true214.i.i.i.i

if.end211.i.i.i.i.do.body229.i.i.i.i_crit_edge:   ; preds = %if.end211.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body229.i.i.i.i

land.lhs.true214.i.i.i.i:                         ; preds = %if.end211.i.i.i.i
  %vm_flags.i.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %84 = ptrtoint ptr %vm_flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %vm_flags.i.i.i.i, align 4
  %and215.i.i.i.i = and i32 %85, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and215.i.i.i.i)
  %tobool216.not.i.i.i.i = icmp eq i32 %and215.i.i.i.i, 0
  br i1 %tobool216.not.i.i.i.i, label %land.lhs.true214.i.i.i.i.do.body229.i.i.i.i_crit_edge, label %if.then217.i.i.i.i

land.lhs.true214.i.i.i.i.do.body229.i.i.i.i_crit_edge: ; preds = %land.lhs.true214.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body229.i.i.i.i

if.then217.i.i.i.i:                               ; preds = %land.lhs.true214.i.i.i.i
  %mapping.i.i.i.i = getelementptr inbounds %struct.page, ptr %page.0.i.i.i.i, i32 0, i32 1, i32 0, i32 1
  %86 = ptrtoint ptr %mapping.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mapping.i.i.i.i, align 4
  %tobool222.not.i.i.i.i = icmp eq ptr %87, null
  br i1 %tobool222.not.i.i.i.i, label %if.then217.i.i.i.i.do.body229.i.i.i.i_crit_edge, label %land.lhs.true223.i.i.i.i

if.then217.i.i.i.i.do.body229.i.i.i.i_crit_edge:  ; preds = %if.then217.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body229.i.i.i.i

land.lhs.true223.i.i.i.i:                         ; preds = %if.then217.i.i.i.i
  %88 = getelementptr inbounds %struct.page, ptr %page.0.i.i.i.i, i32 0, i32 1
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %88, align 4
  %and.i.i11.i.i.i.i = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i11.i.i.i.i)
  %tobool.not.i.i12.i.i.i.i = icmp eq i32 %and.i.i11.i.i.i.i, 0
  br i1 %tobool.not.i.i12.i.i.i.i, label %if.end.i.i15.i.i.i.i, label %if.then.i.i14.i.i.i.i, !prof !122

if.then.i.i14.i.i.i.i:                            ; preds = %land.lhs.true223.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i13.i.i.i.i = add i32 %90, -1
  br label %_compound_head.exit.i18.i.i.i.i

if.end.i.i15.i.i.i.i:                             ; preds = %land.lhs.true223.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %91 = ptrtoint ptr %page.0.i.i.i.i to i32
  br label %_compound_head.exit.i18.i.i.i.i

_compound_head.exit.i18.i.i.i.i:                  ; preds = %if.end.i.i15.i.i.i.i, %if.then.i.i14.i.i.i.i
  %retval.0.i.i16.i.i.i.i = phi i32 [ %sub.i.i13.i.i.i.i, %if.then.i.i14.i.i.i.i ], [ %91, %if.end.i.i15.i.i.i.i ]
  %92 = inttoptr i32 %retval.0.i.i16.i.i.i.i to ptr
  %93 = getelementptr inbounds %struct.page, ptr %92, i32 0, i32 1
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %93, align 4
  %and.i.i.i.i17.i.i.i.i = and i32 %95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i17.i.i.i.i)
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i17.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %folio_flags.exit.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i.i, !prof !122

if.then.i.i.i.i.i.i.i:                            ; preds = %_compound_head.exit.i18.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %92, ptr noundef nonnull @.str.12) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #7, !srcloc !142
  unreachable

folio_flags.exit.i.i.i.i.i.i:                     ; preds = %_compound_head.exit.i18.i.i.i.i
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %92, i32 noundef 4) #7
  %96 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %92, align 4
  %and.i.i4.i.i.i.i.i.i = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %and.i.i4.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %trylock_page.exit.i.i.i.i, label %folio_flags.exit.i.i.i.i.i.i.do.body229.i.i.i.i_crit_edge

folio_flags.exit.i.i.i.i.i.i.do.body229.i.i.i.i_crit_edge: ; preds = %folio_flags.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body229.i.i.i.i

trylock_page.exit.i.i.i.i:                        ; preds = %folio_flags.exit.i.i.i.i.i.i
  tail call void @llvm.prefetch.p0(ptr %92, i32 1, i32 3, i32 1) #7
  %98 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %92, ptr %92, i32 1, ptr elementtype(i32) %92) #7, !srcloc !143
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %98, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !144
  %and1.i.i.i.i.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i.i.i)
  %tobool225.not.not.i.i.i.i = icmp eq i32 %and1.i.i.i.i.i.i.i.i, 0
  br i1 %tobool225.not.not.i.i.i.i, label %if.then226.i.i.i.i, label %trylock_page.exit.i.i.i.i.do.body229.i.i.i.i_crit_edge

trylock_page.exit.i.i.i.i.do.body229.i.i.i.i_crit_edge: ; preds = %trylock_page.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body229.i.i.i.i

if.then226.i.i.i.i:                               ; preds = %trylock_page.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lru_add_drain() #7
  tail call void @mlock_vma_page(ptr noundef %page.0.i.i.i.i) #7
  tail call void @unlock_page(ptr noundef %page.0.i.i.i.i) #7
  br label %do.body229.i.i.i.i

do.body229.i.i.i.i:                               ; preds = %if.then226.i.i.i.i, %trylock_page.exit.i.i.i.i.do.body229.i.i.i.i_crit_edge, %folio_flags.exit.i.i.i.i.i.i.do.body229.i.i.i.i_crit_edge, %if.then217.i.i.i.i.do.body229.i.i.i.i_crit_edge, %land.lhs.true214.i.i.i.i.do.body229.i.i.i.i_crit_edge, %if.end211.i.i.i.i.do.body229.i.i.i.i_crit_edge, %if.end167.i.i.i.i.do.body229.i.i.i.i_crit_edge, %if.then12.i.i.i.i, %if.then3.i.i.i.i.do.body229.i.i.i.i_crit_edge, %if.end.i.i.i.i.do.body229.i.i.i.i_crit_edge, %if.else162.i.i.i.i.do.body229.i.i.i.i_crit_edge, %land.lhs.true120.i.i.i.i.do.body229.i.i.i.i_crit_edge
  %page.1.i.i.i.i = phi ptr [ %page.0.i.i.i.i, %if.then226.i.i.i.i ], [ %page.0.i.i.i.i, %trylock_page.exit.i.i.i.i.do.body229.i.i.i.i_crit_edge ], [ %page.0.i.i.i.i, %if.then217.i.i.i.i.do.body229.i.i.i.i_crit_edge ], [ %page.0.i.i.i.i, %land.lhs.true214.i.i.i.i.do.body229.i.i.i.i_crit_edge ], [ %page.0.i.i.i.i, %if.end211.i.i.i.i.do.body229.i.i.i.i_crit_edge ], [ inttoptr (i32 -14 to ptr), %land.lhs.true120.i.i.i.i.do.body229.i.i.i.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end167.i.i.i.i.do.body229.i.i.i.i_crit_edge ], [ %page.0.i.i.i.i, %folio_flags.exit.i.i.i.i.i.i.do.body229.i.i.i.i_crit_edge ], [ inttoptr (i32 -14 to ptr), %if.else162.i.i.i.i.do.body229.i.i.i.i_crit_edge ], [ inttoptr (i32 -17 to ptr), %if.then3.i.i.i.i.do.body229.i.i.i.i_crit_edge ], [ inttoptr (i32 -17 to ptr), %if.then12.i.i.i.i ], [ inttoptr (i32 -17 to ptr), %if.end.i.i.i.i.do.body229.i.i.i.i_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %21) #7
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr53.i.i.i.i) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !140
  %99 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i.i.i1.i19.i.i.i.i = and i32 %99, -16384
  %100 = inttoptr i32 %and.i.i.i1.i19.i.i.i.i to ptr
  %task.i.i.i20.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %task.i.i.i20.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %task.i.i.i20.i.i.i.i, align 8
  %pagefault_disabled.i.i.i21.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %102, i32 0, i32 213
  %103 = ptrtoint ptr %pagefault_disabled.i.i.i21.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %pagefault_disabled.i.i.i21.i.i.i.i, align 8
  %dec.i.i.i22.i.i.i.i = add i32 %104, -1
  store i32 %dec.i.i.i22.i.i.i.i, ptr %pagefault_disabled.i.i.i21.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !141
  %105 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i.i.i.i23.i.i.i.i = and i32 %105, -16384
  %106 = inttoptr i32 %and.i.i.i.i23.i.i.i.i to ptr
  %preempt_count.i.i.i24.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %preempt_count.i.i.i24.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %preempt_count.i.i.i24.i.i.i.i, align 4
  %sub.i.i25.i.i.i.i = add i32 %108, -1
  store volatile i32 %sub.i.i25.i.i.i.i, ptr %preempt_count.i.i.i24.i.i.i.i, align 4
  br label %cleanup

do.body238.i.i.i.i:                               ; preds = %if.end76.i.i.i.i.do.body238.i.i.i.i_crit_edge, %if.then63.i.i.i.i.do.body238.i.i.i.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %21) #7
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr53.i.i.i.i) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !140
  %109 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i.i.i1.i26.i.i.i.i = and i32 %109, -16384
  %110 = inttoptr i32 %and.i.i.i1.i26.i.i.i.i to ptr
  %task.i.i.i27.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %110, i32 0, i32 2
  %111 = ptrtoint ptr %task.i.i.i27.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %task.i.i.i27.i.i.i.i, align 8
  %pagefault_disabled.i.i.i28.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %112, i32 0, i32 213
  %113 = ptrtoint ptr %pagefault_disabled.i.i.i28.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %pagefault_disabled.i.i.i28.i.i.i.i, align 8
  %dec.i.i.i29.i.i.i.i = add i32 %114, -1
  store i32 %dec.i.i.i29.i.i.i.i, ptr %pagefault_disabled.i.i.i28.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !141
  %115 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i.i.i.i30.i.i.i.i = and i32 %115, -16384
  %116 = inttoptr i32 %and.i.i.i.i30.i.i.i.i to ptr
  %preempt_count.i.i.i31.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %preempt_count.i.i.i31.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %preempt_count.i.i.i31.i.i.i.i, align 4
  %sub.i.i32.i.i.i.i = add i32 %118, -1
  store volatile i32 %sub.i.i32.i.i.i.i, ptr %preempt_count.i.i.i31.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool247.not.i.i.i.i = icmp ne i32 %34, 0
  %and.i33.i.i.i.i = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i33.i.i.i.i)
  %tobool.not.i34.i.i.i.i = icmp eq i32 %and.i33.i.i.i.i, 0
  %or.cond52.i.i.i.i = or i1 %tobool.not.i34.i.i.i.i, %tobool247.not.i.i.i.i
  br i1 %or.cond52.i.i.i.i, label %do.body238.i.i.i.i.cleanup_crit_edge, label %land.lhs.true.i37.i.i.i.i

do.body238.i.i.i.i.cleanup_crit_edge:             ; preds = %do.body238.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i37.i.i.i.i:                        ; preds = %do.body238.i.i.i.i
  %vm_ops.i.i35.i.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %119 = ptrtoint ptr %vm_ops.i.i35.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %vm_ops.i.i35.i.i.i.i, align 4
  %tobool.not.i.i36.i.i.i.i = icmp eq ptr %120, null
  br i1 %tobool.not.i.i36.i.i.i.i, label %land.lhs.true.i37.i.i.i.i.if.then.i41.i.i.i.i_crit_edge, label %lor.lhs.false.i40.i.i.i.i

land.lhs.true.i37.i.i.i.i.if.then.i41.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i37.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i41.i.i.i.i

lor.lhs.false.i40.i.i.i.i:                        ; preds = %land.lhs.true.i37.i.i.i.i
  %fault.i38.i.i.i.i = getelementptr inbounds %struct.vm_operations_struct, ptr %120, i32 0, i32 5
  %121 = ptrtoint ptr %fault.i38.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %fault.i38.i.i.i.i, align 4
  %tobool1.not.i39.i.i.i.i = icmp eq ptr %122, null
  br i1 %tobool1.not.i39.i.i.i.i, label %lor.lhs.false.i40.i.i.i.i.if.then.i41.i.i.i.i_crit_edge, label %lor.lhs.false.i40.i.i.i.i.cleanup_crit_edge

lor.lhs.false.i40.i.i.i.i.cleanup_crit_edge:      ; preds = %lor.lhs.false.i40.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i40.i.i.i.i.if.then.i41.i.i.i.i_crit_edge: ; preds = %lor.lhs.false.i40.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i41.i.i.i.i

if.then.i41.i.i.i.i:                              ; preds = %lor.lhs.false.i40.i.i.i.i.if.then.i41.i.i.i.i_crit_edge, %land.lhs.true.i37.i.i.i.i.if.then.i41.i.i.i.i_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.then.i41.i.i.i.i, %lor.lhs.false.i40.i.i.i.i.cleanup_crit_edge, %do.body238.i.i.i.i.cleanup_crit_edge, %do.body229.i.i.i.i, %do.body108.i.i.i.i, %if.then.i5.i.i.i.i, %lor.lhs.false.i.i.i.i.i.cleanup_crit_edge, %if.then46.i.i.i.i.cleanup_crit_edge, %if.then.i2.i.i.i, %land.rhs.i.i.i.i.cleanup_crit_edge, %if.then.i.i.i.i, %lor.lhs.false.i.i.i.i.cleanup_crit_edge, %if.then.i.i.i.cleanup_crit_edge
  %retval.0.i.i.i = phi ptr [ inttoptr (i32 -14 to ptr), %if.then.i.i.i.i ], [ null, %lor.lhs.false.i.i.i.i.cleanup_crit_edge ], [ null, %if.then.i.i.i.cleanup_crit_edge ], [ %page.1.i.i.i.i, %do.body229.i.i.i.i ], [ null, %do.body108.i.i.i.i ], [ null, %do.body238.i.i.i.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.rhs.i.i.i.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then.i2.i.i.i ], [ inttoptr (i32 -14 to ptr), %if.then.i5.i.i.i.i ], [ null, %lor.lhs.false.i.i.i.i.i.cleanup_crit_edge ], [ null, %if.then46.i.i.i.i.cleanup_crit_edge ], [ inttoptr (i32 -14 to ptr), %if.then.i41.i.i.i.i ], [ null, %lor.lhs.false.i40.i.i.i.i.cleanup_crit_edge ]
  ret ptr %retval.0.i.i.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_dev_pagemap(ptr noundef %pgmap) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %tobool.not = icmp eq ptr %pgmap, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %ref = getelementptr inbounds %struct.dev_pagemap, ptr %pgmap, i32 0, i32 1
  %0 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !145
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i.i.i, label %if.then.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.rcu_read_lock.exit.i.i_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #7
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.then.rcu_read_lock.exit.i.i_crit_edge
  %4 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %ref, align 4
  %and.i.i.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i1.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i1.i.i, label %do.body1.i.i, label %if.else.i.i, !prof !122

do.body1.i.i:                                     ; preds = %rcu_read_lock.exit.i.i
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !146
  %7 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i2.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i2.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %12, %5
  %13 = inttoptr i32 %add.i.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add15.i.i = add i32 %15, -1
  store i32 %add15.i.i, ptr %13, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !147
  %and.i.i.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then29.i.i, label %do.body1.i.i.do.end31.i.i_crit_edge, !prof !123

do.body1.i.i.do.end31.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31.i.i

if.then29.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end31.i.i

do.end31.i.i:                                     ; preds = %if.then29.i.i, %do.body1.i.i.do.end31.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #7, !srcloc !148
  br label %if.end48.i.i

if.else.i.i:                                      ; preds = %rcu_read_lock.exit.i.i
  %data.i.i = getelementptr inbounds %struct.dev_pagemap, ptr %pgmap, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %18, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !149
  tail call void @llvm.prefetch.p0(ptr %18, i32 1, i32 3, i32 1) #7
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #7, !srcloc !150
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !151
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %if.then45.i.i, label %if.else.i.i.if.end48.i.i_crit_edge, !prof !123

if.else.i.i.if.end48.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i.i

if.then45.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i.i, align 4
  %release.i.i = getelementptr inbounds %struct.percpu_ref_data, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %release.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %release.i.i, align 4
  tail call void %23(ptr noundef %ref) #7
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.then45.i.i, %if.else.i.i.if.end48.i.i_crit_edge, %do.end31.i.i
  %call.i3.i.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i3.i.i, label %if.end48.i.i.percpu_ref_put.exit_crit_edge, label %land.lhs.true.i6.i.i

if.end48.i.i.percpu_ref_put.exit_crit_edge:       ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %percpu_ref_put.exit

land.lhs.true.i6.i.i:                             ; preds = %if.end48.i.i
  %call1.i4.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %call1.i4.i.i, 0
  br i1 %tobool.not.i5.i.i, label %land.lhs.true.i6.i.i.percpu_ref_put.exit_crit_edge, label %land.lhs.true2.i8.i.i

land.lhs.true.i6.i.i.percpu_ref_put.exit_crit_edge: ; preds = %land.lhs.true.i6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %percpu_ref_put.exit

land.lhs.true2.i8.i.i:                            ; preds = %land.lhs.true.i6.i.i
  %.b4.i7.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i, label %land.lhs.true2.i8.i.i.percpu_ref_put.exit_crit_edge, label %if.then.i9.i.i

land.lhs.true2.i8.i.i.percpu_ref_put.exit_crit_edge: ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %percpu_ref_put.exit

if.then.i9.i.i:                                   ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #7
  br label %percpu_ref_put.exit

percpu_ref_put.exit:                              ; preds = %if.then.i9.i.i, %land.lhs.true2.i8.i.i.percpu_ref_put.exit_crit_edge, %land.lhs.true.i6.i.i.percpu_ref_put.exit_crit_edge, %if.end48.i.i.percpu_ref_put.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !152
  %24 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i.i.i.i.i10.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i10.i.i to ptr
  %preempt_count.i.i.i.i11.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i, align 4
  %sub.i.i.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %if.end

if.end:                                           ; preds = %percpu_ref_put.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fixup_user_fault(ptr noundef %mm, i32 noundef %address, i32 noundef %fault_flags, ptr noundef writeonly %unlocked) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call54 = tail call ptr @find_extend_vma(ptr noundef %mm, i32 noundef %address) #7
  %tobool1.not55 = icmp eq ptr %call54, null
  br i1 %tobool1.not55, label %entry.cleanup30_crit_edge, label %lor.lhs.false.lr.ph

entry.cleanup30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup30

lor.lhs.false.lr.ph:                              ; preds = %entry
  %tobool.not = icmp eq ptr %unlocked, null
  %or = or i32 %fault_flags, 20
  %spec.select = select i1 %tobool.not, i32 %fault_flags, i32 %or
  %mmap_lock.i = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 15
  %0 = or i32 %spec.select, 32
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %mmap_read_lock.exit.lor.lhs.false_crit_edge, %lor.lhs.false.lr.ph
  %call57 = phi ptr [ %call54, %lor.lhs.false.lr.ph ], [ %call, %mmap_read_lock.exit.lor.lhs.false_crit_edge ]
  %fault_flags.addr.156 = phi i32 [ %spec.select, %lor.lhs.false.lr.ph ], [ %0, %mmap_read_lock.exit.lor.lhs.false_crit_edge ]
  %1 = ptrtoint ptr %call57 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call57, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %address)
  %cmp = icmp ugt i32 %2, %address
  br i1 %cmp, label %lor.lhs.false.cleanup30_crit_edge, label %if.end3

lor.lhs.false.cleanup30_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup30

if.end3:                                          ; preds = %lor.lhs.false
  %and.i = and i32 %fault_flags.addr.156, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 1, i32 2
  %vm_flags8.i = getelementptr inbounds %struct.vm_area_struct, ptr %call57, i32 0, i32 8
  %3 = ptrtoint ptr %vm_flags8.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vm_flags8.i, align 4
  %and9.i = and i32 %4, %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i.not = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i.not, label %if.end3.cleanup30_crit_edge, label %if.end6

if.end3.cleanup30_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup30

if.end6:                                          ; preds = %if.end3
  %and = and i32 %fault_flags.addr.156, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end6.if.end12_crit_edge, label %land.lhs.true

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end6
  %5 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i47 = and i32 %5, -16384
  %6 = inttoptr i32 %and.i47 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stack.i.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and1.i.i.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not.i48 = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not.i48, label %land.lhs.true.if.end12_crit_edge, label %fatal_signal_pending.exit

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

fatal_signal_pending.exit:                        ; preds = %land.lhs.true
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 116, i32 1
  %13 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %signal.i.i, align 4
  %15 = and i32 %14, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool10.not = icmp eq i32 %15, 0
  br i1 %tobool10.not, label %fatal_signal_pending.exit.if.end12_crit_edge, label %fatal_signal_pending.exit.cleanup30_crit_edge

fatal_signal_pending.exit.cleanup30_crit_edge:    ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup30

fatal_signal_pending.exit.if.end12_crit_edge:     ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.end12:                                         ; preds = %fatal_signal_pending.exit.if.end12_crit_edge, %land.lhs.true.if.end12_crit_edge, %if.end6.if.end12_crit_edge
  %call13 = tail call i32 @handle_mm_fault(ptr noundef nonnull %call57, i32 noundef %address, i32 noundef %fault_flags.addr.156, ptr noundef null) #7
  %and14 = and i32 %call13, 2163
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end24, label %if.then16

if.then16:                                        ; preds = %if.end12
  %and.i49 = and i32 %call13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i49)
  %tobool.not.i50 = icmp eq i32 %and.i49, 0
  br i1 %tobool.not.i50, label %if.end.i, label %if.then16.cleanup30_crit_edge

if.then16.cleanup30_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup30

if.end.i:                                         ; preds = %if.then16
  %16 = and i32 %call13, 114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %do.body, label %if.end.i.cleanup30_crit_edge

if.end.i.cleanup30_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup30

do.body:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1321, 0\0A.popsection", ""() #7, !srcloc !153
  unreachable

if.end24:                                         ; preds = %if.end12
  %and25 = and i32 %call13, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.cleanup30_crit_edge, label %if.then27

if.end24.cleanup30_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup30

if.then27:                                        ; preds = %if.end24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@fixup_user_fault, %if.then.i.i)) #7
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !126

if.then.i.i:                                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %mm, i1 noundef zeroext false) #7
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.then27
  tail call void @down_read(ptr noundef %mmap_lock.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@fixup_user_fault, %if.then.i3.i)) #7
          to label %mmap_read_lock.exit [label %if.then.i3.i], !srcloc !126

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %mm, i1 noundef zeroext false, i1 noundef zeroext true) #7
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %18 = ptrtoint ptr %unlocked to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %unlocked, align 1
  %call = tail call ptr @find_extend_vma(ptr noundef %mm, i32 noundef %address) #7
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %mmap_read_lock.exit.cleanup30_crit_edge, label %mmap_read_lock.exit.lor.lhs.false_crit_edge

mmap_read_lock.exit.lor.lhs.false_crit_edge:      ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

mmap_read_lock.exit.cleanup30_crit_edge:          ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup30

cleanup30:                                        ; preds = %mmap_read_lock.exit.cleanup30_crit_edge, %if.end24.cleanup30_crit_edge, %if.end.i.cleanup30_crit_edge, %if.then16.cleanup30_crit_edge, %fatal_signal_pending.exit.cleanup30_crit_edge, %if.end3.cleanup30_crit_edge, %lor.lhs.false.cleanup30_crit_edge, %entry.cleanup30_crit_edge
  %retval.0 = phi i32 [ -14, %if.end.i.cleanup30_crit_edge ], [ -12, %if.then16.cleanup30_crit_edge ], [ -14, %entry.cleanup30_crit_edge ], [ -14, %lor.lhs.false.cleanup30_crit_edge ], [ -14, %mmap_read_lock.exit.cleanup30_crit_edge ], [ -14, %if.end3.cleanup30_crit_edge ], [ -4, %fatal_signal_pending.exit.cleanup30_crit_edge ], [ 0, %if.end24.cleanup30_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_extend_vma(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @handle_mm_fault(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @populate_vma_page_range(ptr noundef %vma, i32 noundef %start, i32 noundef %end, ptr noundef %locked) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  %0 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_mm, align 4
  %and = and i32 %start, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %do.body9, label %do.body3, !prof !122

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1494, 0\0A.popsection", ""() #7, !srcloc !154
  unreachable

do.body9:                                         ; preds = %entry
  %and10 = and i32 %end, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %cmp11.not = icmp eq i32 %and10, 0
  br i1 %cmp11.not, label %do.body30, label %do.body21, !prof !122

do.body21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1495, 0\0A.popsection", ""() #7, !srcloc !155
  unreachable

do.body30:                                        ; preds = %do.body9
  %2 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vma, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %start)
  %cmp31 = icmp ugt i32 %3, %start
  br i1 %cmp31, label %if.then38, label %do.body48, !prof !123

if.then38:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_vma(ptr noundef %vma) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1496, 0\0A.popsection", ""() #7, !srcloc !156
  unreachable

do.body48:                                        ; preds = %do.body30
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %4 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %end)
  %cmp49 = icmp ult i32 %5, %end
  br i1 %cmp49, label %if.then56, label %do.end65, !prof !123

if.then56:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_vma(ptr noundef %vma) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1497, 0\0A.popsection", ""() #7, !srcloc !157
  unreachable

do.end65:                                         ; preds = %do.body48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %do.end65.if.end.i_crit_edge, label %land.rhs.i

do.end65.if.end.i_crit_edge:                      ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.rhs.i:                                       ; preds = %do.end65
  %dep_map.i = getelementptr inbounds %struct.anon.9, ptr %1, i32 0, i32 15, i32 6
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !123

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 155, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %do.end65.if.end.i_crit_edge
  %mmap_lock25.i = getelementptr inbounds %struct.anon.9, ptr %1, i32 0, i32 15
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mmap_lock25.i, i32 noundef 4) #7
  %7 = ptrtoint ptr %mmap_lock25.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %mmap_lock25.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.not.i = icmp eq i32 %8, 0
  br i1 %cmp.i.not.i, label %if.then36.i, label %mmap_assert_locked.exit, !prof !123

if.then36.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_mm(ptr noundef %1) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mmap_lock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 156, 0\0A.popsection", ""() #7, !srcloc !158
  unreachable

mmap_assert_locked.exit:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %9 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vm_flags, align 4
  %and66 = and i32 %10, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  %spec.select = select i1 %tobool67.not, i32 4162, i32 4098
  %and72 = and i32 %10, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and72)
  %cmp73 = icmp eq i32 %and72, 2
  %or = zext i1 %cmp73 to i32
  %gup_flags.1 = or i32 %spec.select, %or
  %and.i = and i32 %10, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %or77 = or i32 %gup_flags.1, 16
  %gup_flags.2 = select i1 %tobool.i.not, i32 %gup_flags.1, i32 %or77
  %sub = sub i32 %end, %start
  %div96 = lshr i32 %sub, 12
  %call79 = tail call fastcc i32 @__get_user_pages(ptr noundef %1, i32 noundef %start, i32 noundef %div96, i32 noundef %gup_flags.2, ptr noundef null, ptr noundef null, ptr noundef %locked)
  ret i32 %call79
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_vma(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__get_user_pages(ptr noundef %mm, i32 noundef %start, i32 noundef %nr_pages, i32 noundef %gup_flags, ptr noundef %pages, ptr noundef writeonly %vmas, ptr noundef writeonly %locked) unnamed_addr #0 align 64 {
entry:
  %ctx = alloca %struct.follow_page_context, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ctx) #7
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %ctx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_pages)
  %tobool.not = icmp eq i32 %nr_pages, 0
  br i1 %tobool.not, label %entry.cleanup136_crit_edge, label %if.end

entry.cleanup136_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup136

if.end:                                           ; preds = %entry
  %tobool1 = icmp ne ptr %pages, null
  %and = and i32 %gup_flags, 262148
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3 = icmp eq i32 %and, 0
  %cmp.not = xor i1 %tobool3, %tobool1
  br i1 %cmp.not, label %do.end20, label %do.body14, !prof !122

do.body14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1125, 0\0A.popsection", ""() #7, !srcloc !159
  unreachable

do.end20:                                         ; preds = %if.end
  %and21 = shl i32 %gup_flags, 5
  %1 = and i32 %and21, 512
  %2 = xor i32 %1, 512
  %3 = or i32 %2, %gup_flags
  %and.i183 = and i32 %gup_flags, 1
  %and4.i = and i32 %gup_flags, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i183)
  %tobool17.not.i = icmp eq i32 %and.i183, 0
  %and22.i = and i32 %gup_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp ne i32 %and22.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool34.not.i = icmp eq i32 %and22.i, 0
  %tobool13.not.i = icmp eq ptr %locked, null
  %page_mask108 = getelementptr inbounds %struct.follow_page_context, ptr %ctx, i32 0, i32 1
  %pgd2.i = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 8
  %and51.i = and i32 %gup_flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i)
  %tobool52.not.i = icmp eq i32 %and51.i, 0
  %tobool110.not = icmp eq ptr %vmas, null
  br label %do.body25

do.body25:                                        ; preds = %do.cond124.do.body25_crit_edge, %do.end20
  %vma.0 = phi ptr [ null, %do.end20 ], [ %vma.4, %do.cond124.do.body25_crit_edge ]
  %nr_pages.addr.0 = phi i32 [ %nr_pages, %do.end20 ], [ %sub, %do.cond124.do.body25_crit_edge ]
  %start.addr.0 = phi i32 [ %start, %do.end20 ], [ %add121, %do.cond124.do.body25_crit_edge ]
  %ret.0 = phi i32 [ 0, %do.end20 ], [ %ret.4, %do.cond124.do.body25_crit_edge ]
  %i.0 = phi i32 [ 0, %do.end20 ], [ %add120, %do.cond124.do.body25_crit_edge ]
  %tobool26.not = icmp eq ptr %vma.0, null
  br i1 %tobool26.not, label %do.body25.if.then28_crit_edge, label %lor.lhs.false

do.body25.if.then28_crit_edge:                    ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28

lor.lhs.false:                                    ; preds = %do.body25
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0, i32 0, i32 1
  %4 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %start.addr.0, i32 %5)
  %cmp27.not = icmp ult i32 %start.addr.0, %5
  br i1 %cmp27.not, label %lor.lhs.false.if.end75_crit_edge, label %lor.lhs.false.if.then28_crit_edge

lor.lhs.false.if.then28_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28

lor.lhs.false.if.end75_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

if.then28:                                        ; preds = %lor.lhs.false.if.then28_crit_edge, %do.body25.if.then28_crit_edge
  %call = tail call ptr @find_extend_vma(ptr noundef %mm, i32 noundef %start.addr.0) #7
  %tobool29.not = icmp eq ptr %call, null
  br i1 %tobool29.not, label %land.lhs.true, label %if.end42

land.lhs.true:                                    ; preds = %if.then28
  %call30 = tail call i32 @in_gate_area(ptr noundef %mm, i32 noundef %start.addr.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true.out_crit_edge, label %if.then32

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then32:                                        ; preds = %land.lhs.true
  %and33 = and i32 %start.addr.0, -4096
  %arrayidx = getelementptr ptr, ptr %pages, i32 %i.0
  %spec.select181 = select i1 %tobool1, ptr %arrayidx, ptr null
  br i1 %tobool17.not.i, label %if.end.i, label %if.then32.out_crit_edge

if.then32.out_crit_edge:                          ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end.i:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833920, i32 %and33)
  %cmp.i = icmp ugt i32 %and33, -1226833920
  %pgd2.sink.i = select i1 %cmp.i, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), ptr %pgd2.i
  %6 = ptrtoint ptr %pgd2.sink.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pgd2.sink.i, align 4
  %shr.i110.i = lshr i32 %start.addr.0, 21
  %add.ptr.i111.i = getelementptr [2 x i32], ptr %7, i32 %shr.i110.i
  %8 = ptrtoint ptr %add.ptr.i111.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i111.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool22.not.i = icmp eq i32 %9, 0
  br i1 %tobool22.not.i, label %if.end.i.out_crit_edge, label %do.body.i

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.body.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %10 = load ptr, ptr @mem_map, align 4
  %shr.i = lshr i32 %9, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %11 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i = sub i32 %shr.i, %11
  %add.ptr.i = getelementptr %struct.page, ptr %10, i32 %sub.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %12 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %12, 512
  %13 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %16, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !138
  %17 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i.i.i1.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 213
  %21 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %22, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !139
  %call.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr.i, i32 noundef %or.i.i) #7
  %shr.i112.i = lshr i32 %start.addr.0, 12
  %and.i.i = and i32 %shr.i112.i, 511
  %add.ptr40.i = getelementptr i32, ptr %call.i.i.i, i32 %and.i.i
  %23 = ptrtoint ptr %add.ptr40.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr40.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool41.not.i = icmp eq i32 %24, 0
  br i1 %tobool41.not.i, label %do.body.i.get_gate_page.exit_crit_edge, label %if.end43.i

do.body.i.get_gate_page.exit_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_gate_page.exit

if.end43.i:                                       ; preds = %do.body.i
  %call44.i = tail call ptr @get_gate_vma(ptr noundef %mm) #7
  %tobool45.not.i = icmp eq ptr %spec.select181, null
  br i1 %tobool45.not.i, label %if.end43.i.out.i_crit_edge, label %if.end47.i

if.end43.i.out.i_crit_edge:                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end47.i:                                       ; preds = %if.end43.i
  %25 = ptrtoint ptr %add.ptr40.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr40.i, align 4
  %call48.i = tail call ptr @vm_normal_page(ptr noundef %call44.i, i32 noundef %and33, i32 noundef %26) #7
  %27 = ptrtoint ptr %spec.select181 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call48.i, ptr %spec.select181, align 4
  %tobool49.not.i = icmp eq ptr %call48.i, null
  br i1 %tobool49.not.i, label %if.then50.i, label %if.end47.i.if.end63.i_crit_edge

if.end47.i.if.end63.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63.i

if.then50.i:                                      ; preds = %if.end47.i
  br i1 %tobool52.not.i, label %lor.lhs.false.i, label %if.then50.i.get_gate_page.exit_crit_edge

if.then50.i.get_gate_page.exit_crit_edge:         ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_gate_page.exit

lor.lhs.false.i:                                  ; preds = %if.then50.i
  %28 = ptrtoint ptr %add.ptr40.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr40.i, align 4
  %shr54.i = lshr i32 %29, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @zero_pfn to i32))
  %30 = load i32, ptr @zero_pfn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %shr54.i)
  %cmp.i.not.i = icmp eq i32 %30, %shr54.i
  br i1 %cmp.i.not.i, label %if.end58.i, label %lor.lhs.false.i.get_gate_page.exit_crit_edge

lor.lhs.false.i.get_gate_page.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_gate_page.exit

if.end58.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %31 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %32 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub61.i = sub i32 %shr54.i, %32
  %add.ptr62.i = getelementptr %struct.page, ptr %31, i32 %sub61.i
  %33 = ptrtoint ptr %spec.select181 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr62.i, ptr %spec.select181, align 4
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.end58.i, %if.end47.i.if.end63.i_crit_edge
  %34 = ptrtoint ptr %spec.select181 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %spec.select181, align 4
  %call64.i = tail call zeroext i1 @try_grab_page(ptr noundef %35, i32 noundef %3) #7
  br i1 %call64.i, label %if.end63.i.out.i_crit_edge, label %if.end63.i.get_gate_page.exit_crit_edge, !prof !122

if.end63.i.get_gate_page.exit_crit_edge:          ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_gate_page.exit

if.end63.i.out.i_crit_edge:                       ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

out.i:                                            ; preds = %if.end63.i.out.i_crit_edge, %if.end43.i.out.i_crit_edge
  br label %get_gate_page.exit

get_gate_page.exit:                               ; preds = %out.i, %if.end63.i.get_gate_page.exit_crit_edge, %lor.lhs.false.i.get_gate_page.exit_crit_edge, %if.then50.i.get_gate_page.exit_crit_edge, %do.body.i.get_gate_page.exit_crit_edge
  %vma.1 = phi ptr [ null, %do.body.i.get_gate_page.exit_crit_edge ], [ %call44.i, %out.i ], [ %call44.i, %if.end63.i.get_gate_page.exit_crit_edge ], [ %call44.i, %lor.lhs.false.i.get_gate_page.exit_crit_edge ], [ %call44.i, %if.then50.i.get_gate_page.exit_crit_edge ]
  %tobool36.not = phi i1 [ false, %do.body.i.get_gate_page.exit_crit_edge ], [ true, %out.i ], [ false, %if.end63.i.get_gate_page.exit_crit_edge ], [ false, %lor.lhs.false.i.get_gate_page.exit_crit_edge ], [ false, %if.then50.i.get_gate_page.exit_crit_edge ]
  %ret.0.i = phi i32 [ -14, %do.body.i.get_gate_page.exit_crit_edge ], [ 0, %out.i ], [ -12, %if.end63.i.get_gate_page.exit_crit_edge ], [ -14, %lor.lhs.false.i.get_gate_page.exit_crit_edge ], [ -14, %if.then50.i.get_gate_page.exit_crit_edge ]
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr40.i) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !140
  %36 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i.i.i1.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 213
  %40 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %41, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !141
  %42 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i.i.i.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %45, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  br i1 %tobool36.not, label %get_gate_page.exit.next_page.sink.split_crit_edge, label %get_gate_page.exit.out_crit_edge

get_gate_page.exit.out_crit_edge:                 ; preds = %get_gate_page.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

get_gate_page.exit.next_page.sink.split_crit_edge: ; preds = %get_gate_page.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %next_page.sink.split

if.end42:                                         ; preds = %if.then28
  %vm_flags1.i = getelementptr inbounds %struct.vm_area_struct, ptr %call, i32 0, i32 8
  %46 = ptrtoint ptr %vm_flags1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %vm_flags1.i, align 4
  %and3.i = and i32 %47, 17408
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not.i184 = icmp eq i32 %and3.i, 0
  br i1 %tobool.not.i184, label %if.end.i185, label %if.end42.out_crit_edge

if.end42.out_crit_edge:                           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end.i185:                                      ; preds = %if.end42
  br i1 %tobool5.not.i, label %if.end.i185.if.end13.i_crit_edge, label %land.lhs.true.i

if.end.i185.if.end13.i_crit_edge:                 ; preds = %if.end.i185
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

land.lhs.true.i:                                  ; preds = %if.end.i185
  %vm_ops.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %call, i32 0, i32 12
  %48 = ptrtoint ptr %vm_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vm_ops.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %49, null
  br i1 %tobool.not.i.i, label %land.lhs.true.i.if.end13.i_crit_edge, label %land.lhs.true.i.out_crit_edge

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

land.lhs.true.i.if.end13.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.end13.i:                                       ; preds = %land.lhs.true.i.if.end13.i_crit_edge, %if.end.i185.if.end13.i_crit_edge
  br i1 %tobool17.not.i, label %if.else.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.end13.i
  %and19.i = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.then21.i, label %if.then18.i.if.end75_crit_edge

if.then18.i.if.end75_crit_edge:                   ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

if.then21.i:                                      ; preds = %if.then18.i
  %and.i.i186 = and i32 %47, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and.i.i186)
  %cmp.i.i = icmp eq i32 %and.i.i186, 32
  %or.cond64.i = select i1 %tobool23.not.i, i1 %cmp.i.i, i1 false
  br i1 %or.cond64.i, label %if.then21.i.if.end75_crit_edge, label %if.then21.i.out_crit_edge

if.then21.i.out_crit_edge:                        ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then21.i.if.end75_crit_edge:                   ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

if.else.i:                                        ; preds = %if.end13.i
  %and30.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %if.then32.i, label %if.else.i.if.end75_crit_edge

if.else.i.if.end75_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

if.then32.i:                                      ; preds = %if.else.i
  %and37.i = and i32 %47, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  %or.cond.i = select i1 %tobool34.not.i, i1 true, i1 %tobool38.not.i
  br i1 %or.cond.i, label %if.then32.i.out_crit_edge, label %if.then32.i.if.end75_crit_edge

if.then32.i.if.end75_crit_edge:                   ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

if.then32.i.out_crit_edge:                        ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end75:                                         ; preds = %if.then32.i.if.end75_crit_edge, %if.else.i.if.end75_crit_edge, %if.then21.i.if.end75_crit_edge, %if.then18.i.if.end75_crit_edge, %lor.lhs.false.if.end75_crit_edge
  %vma.3 = phi ptr [ %vma.0, %lor.lhs.false.if.end75_crit_edge ], [ %call, %if.then32.i.if.end75_crit_edge ], [ %call, %if.else.i.if.end75_crit_edge ], [ %call, %if.then21.i.if.end75_crit_edge ], [ %call, %if.then18.i.if.end75_crit_edge ]
  %ret.1 = phi i32 [ %ret.0, %lor.lhs.false.if.end75_crit_edge ], [ 0, %if.then32.i.if.end75_crit_edge ], [ 0, %if.else.i.if.end75_crit_edge ], [ 0, %if.then21.i.if.end75_crit_edge ], [ 0, %if.then18.i.if.end75_crit_edge ]
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.3, i32 0, i32 8
  br label %retry.outer

retry.outer:                                      ; preds = %land.lhs.true49.i, %if.end75
  %foll_flags.0.ph = phi i32 [ %70, %land.lhs.true49.i ], [ %3, %if.end75 ]
  %ret.2.ph = phi i32 [ 0, %land.lhs.true49.i ], [ %ret.1, %if.end75 ]
  %and.i190 = and i32 %foll_flags.0.ph, 4160
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %and.i190)
  %cmp.i191 = icmp eq i32 %and.i190, 4096
  %and1.i = and i32 %foll_flags.0.ph, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i192 = icmp eq i32 %and1.i, 0
  %and4.i194 = and i32 %foll_flags.0.ph, 1
  %and8.i = lshr i32 %foll_flags.0.ph, 6
  %50 = and i32 %and8.i, 128
  %51 = or i32 %50, %and4.i194
  %or15.i = or i32 %51, 20
  %fault_flags.2.i = select i1 %tobool13.not.i, i32 %51, i32 %or15.i
  %and17.i = and i32 %foll_flags.0.ph, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  %or20.i = or i32 %fault_flags.2.i, 12
  %fault_flags.3.i = select i1 %tobool18.not.i, i32 %fault_flags.2.i, i32 %or20.i
  %52 = and i32 %and8.i, 32
  %53 = or i32 %fault_flags.3.i, %52
  br label %retry

retry:                                            ; preds = %if.end46.i.retry_crit_edge, %retry.outer
  %ret.2 = phi i32 [ 0, %if.end46.i.retry_crit_edge ], [ %ret.2.ph, %retry.outer ]
  %54 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i188 = and i32 %54, -16384
  %55 = inttoptr i32 %and.i188 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %task, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %stack.i.i.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %59, align 4
  %and1.i.i.i.i.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not.i189 = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not.i189, label %retry.if.end80_crit_edge, label %fatal_signal_pending.exit

retry.if.end80_crit_edge:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

fatal_signal_pending.exit:                        ; preds = %retry
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 116, i32 1
  %62 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %signal.i.i, align 4
  %64 = and i32 %63, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool78.not = icmp eq i32 %64, 0
  br i1 %tobool78.not, label %fatal_signal_pending.exit.if.end80_crit_edge, label %fatal_signal_pending.exit.out_crit_edge

fatal_signal_pending.exit.out_crit_edge:          ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

fatal_signal_pending.exit.if.end80_crit_edge:     ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

if.end80:                                         ; preds = %fatal_signal_pending.exit.if.end80_crit_edge, %retry.if.end80_crit_edge
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 1186, i32 noundef 0) #7
  %call.i = tail call i32 @__cond_resched() #7
  %call82 = call fastcc ptr @follow_page_mask(ptr noundef nonnull %vma.3, i32 noundef %start.addr.0, i32 noundef %foll_flags.0.ph, ptr noundef nonnull %ctx)
  %tobool83.not = icmp eq ptr %call82, null
  br i1 %tobool83.not, label %if.then84, label %if.else

if.then84:                                        ; preds = %if.end80
  br i1 %cmp.i191, label %if.then84.next_page_crit_edge, label %if.end.i193

if.then84.next_page_crit_edge:                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #9
  br label %next_page

if.end.i193:                                      ; preds = %if.then84
  br i1 %tobool.not.i192, label %if.end3.i, label %if.end.i193.out_crit_edge

if.end.i193.out_crit_edge:                        ; preds = %if.end.i193
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end3.i:                                        ; preds = %if.end.i193
  %call.i195 = tail call i32 @handle_mm_fault(ptr noundef nonnull %vma.3, i32 noundef %start.addr.0, i32 noundef %53, ptr noundef null) #7
  %and27.i = and i32 %call.i195, 2163
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.end37.i, label %if.then29.i

if.then29.i:                                      ; preds = %if.end3.i
  %and.i.i196 = and i32 %call.i195, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i196)
  %tobool.not.i.i197 = icmp eq i32 %and.i.i196, 0
  br i1 %tobool.not.i.i197, label %if.end.i.i, label %if.then29.i.out_crit_edge

if.then29.i.out_crit_edge:                        ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end.i.i:                                       ; preds = %if.then29.i
  %and1.i.i = and i32 %call.i195, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end6.i.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and4.i.i = and i32 %foll_flags.0.ph, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0
  %spec.select235 = select i1 %tobool5.not.i.i, i32 -14, i32 -133
  br label %out

if.end6.i.i:                                      ; preds = %if.end.i.i
  %and7.i.i = and i32 %call.i195, 66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i, 0
  br i1 %tobool8.not.i.i, label %do.body.i198, label %if.end6.i.i.out_crit_edge

if.end6.i.i.out_crit_edge:                        ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.body.i198:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 975, 0\0A.popsection", ""() #7, !srcloc !160
  unreachable

if.end37.i:                                       ; preds = %if.end3.i
  %and38.i = and i32 %call.i195, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %if.end46.i, label %if.then40.i

if.then40.i:                                      ; preds = %if.end37.i
  %tobool13.not.not.i = xor i1 %tobool13.not.i, true
  %and42.i = and i32 %fault_flags.3.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  %or.cond.i199 = select i1 %tobool13.not.not.i, i1 %tobool43.not.i, i1 false
  br i1 %or.cond.i199, label %if.then44.i, label %if.then40.i.out_crit_edge

if.then40.i.out_crit_edge:                        ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then44.i:                                      ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %locked to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %locked, align 4
  br label %out

if.end46.i:                                       ; preds = %if.end37.i
  %and47.i = and i32 %call.i195, 8
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  br i1 %tobool48.not.i, label %if.end46.i.retry_crit_edge, label %land.lhs.true49.i

if.end46.i.retry_crit_edge:                       ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %retry

land.lhs.true49.i:                                ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %vm_flags.i, align 4
  %and50.i = shl i32 %67, 13
  %68 = and i32 %and50.i, 16384
  %69 = xor i32 %68, 16384
  %70 = or i32 %69, %foll_flags.0.ph
  br label %retry.outer

if.else:                                          ; preds = %if.end80
  %71 = ptrtoint ptr %call82 to i32
  %cmp96 = icmp eq ptr %call82, inttoptr (i32 -17 to ptr)
  br i1 %cmp96, label %if.else.next_page_crit_edge, label %if.else98

if.else.next_page_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %next_page

if.else98:                                        ; preds = %if.else
  %cmp.i201 = icmp ugt ptr %call82, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i201, label %out.loopexit304.split.loop.exit, label %if.end104

if.end104:                                        ; preds = %if.else98
  br i1 %tobool1, label %if.then106, label %if.end104.next_page_crit_edge

if.end104.next_page_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %next_page

if.then106:                                       ; preds = %if.end104
  %arrayidx107 = getelementptr ptr, ptr %pages, i32 %i.0
  %72 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call82, ptr %arrayidx107, align 4
  %73 = getelementptr inbounds %struct.page, ptr %call82, i32 0, i32 1
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %73, align 4
  %and.i2.i.i = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i2.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then106.PageAnon.exit.i_crit_edge, label %if.then.i.i.i, !prof !122

if.then106.PageAnon.exit.i_crit_edge:             ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #9
  br label %PageAnon.exit.i

if.then.i.i.i:                                    ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i202 = add i32 %75, -1
  br label %PageAnon.exit.i

PageAnon.exit.i:                                  ; preds = %if.then.i.i.i, %if.then106.PageAnon.exit.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i202, %if.then.i.i.i ], [ %71, %if.then106.PageAnon.exit.i_crit_edge ]
  %76 = inttoptr i32 %retval.0.i.i.i to ptr
  %mapping.i.i.i = getelementptr inbounds %struct.anon.81, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mapping.i.i.i, align 4
  %79 = ptrtoint ptr %78 to i32
  %and.i.i.i = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %PageAnon.exit.i.flush_anon_page.exit_crit_edge, label %if.then.i

PageAnon.exit.i.flush_anon_page.exit_crit_edge:   ; preds = %PageAnon.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %flush_anon_page.exit

if.then.i:                                        ; preds = %PageAnon.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__flush_anon_page(ptr noundef nonnull %vma.3, ptr noundef nonnull %call82, i32 noundef %start.addr.0) #7
  br label %flush_anon_page.exit

flush_anon_page.exit:                             ; preds = %if.then.i, %PageAnon.exit.i.flush_anon_page.exit_crit_edge
  tail call void @flush_dcache_page(ptr noundef nonnull %call82) #7
  br label %next_page.sink.split

next_page.sink.split:                             ; preds = %flush_anon_page.exit, %get_gate_page.exit.next_page.sink.split_crit_edge
  %vma.4.ph = phi ptr [ %vma.3, %flush_anon_page.exit ], [ %vma.1, %get_gate_page.exit.next_page.sink.split_crit_edge ]
  %ret.4.ph = phi i32 [ %ret.2, %flush_anon_page.exit ], [ 0, %get_gate_page.exit.next_page.sink.split_crit_edge ]
  %80 = ptrtoint ptr %page_mask108 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %page_mask108, align 4
  br label %next_page

next_page:                                        ; preds = %next_page.sink.split, %if.end104.next_page_crit_edge, %if.else.next_page_crit_edge, %if.then84.next_page_crit_edge
  %vma.4 = phi ptr [ %vma.3, %if.else.next_page_crit_edge ], [ %vma.3, %if.end104.next_page_crit_edge ], [ %vma.4.ph, %next_page.sink.split ], [ %vma.3, %if.then84.next_page_crit_edge ]
  %ret.4 = phi i32 [ %ret.2, %if.else.next_page_crit_edge ], [ %ret.2, %if.end104.next_page_crit_edge ], [ %ret.4.ph, %next_page.sink.split ], [ -2, %if.then84.next_page_crit_edge ]
  br i1 %tobool110.not, label %next_page.do.cond124_crit_edge, label %if.then111

next_page.do.cond124_crit_edge:                   ; preds = %next_page
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond124

if.then111:                                       ; preds = %next_page
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx112 = getelementptr ptr, ptr %vmas, i32 %i.0
  %81 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %vma.4, ptr %arrayidx112, align 4
  %82 = ptrtoint ptr %page_mask108 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %page_mask108, align 4
  br label %do.cond124

do.cond124:                                       ; preds = %if.then111, %next_page.do.cond124_crit_edge
  %shr = lshr i32 %start.addr.0, 12
  %neg = xor i32 %shr, -1
  %83 = ptrtoint ptr %page_mask108 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %page_mask108, align 4
  %and116 = and i32 %84, %neg
  %add = add i32 %and116, 1
  %85 = tail call i32 @llvm.umin.i32(i32 %add, i32 %nr_pages.addr.0)
  %add120 = add i32 %85, %i.0
  %mul = shl i32 %85, 12
  %add121 = add i32 %mul, %start.addr.0
  %sub = sub i32 %nr_pages.addr.0, %85
  %tobool125.not = icmp eq i32 %sub, 0
  br i1 %tobool125.not, label %do.cond124.out_crit_edge, label %do.cond124.do.body25_crit_edge

do.cond124.do.body25_crit_edge:                   ; preds = %do.cond124
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body25

do.cond124.out_crit_edge:                         ; preds = %do.cond124
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

out.loopexit304.split.loop.exit:                  ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %call82 to i32
  br label %out

out:                                              ; preds = %out.loopexit304.split.loop.exit, %do.cond124.out_crit_edge, %if.then44.i, %if.then40.i.out_crit_edge, %if.end6.i.i.out_crit_edge, %if.then3.i.i, %if.then29.i.out_crit_edge, %if.end.i193.out_crit_edge, %fatal_signal_pending.exit.out_crit_edge, %if.then32.i.out_crit_edge, %if.then21.i.out_crit_edge, %land.lhs.true.i.out_crit_edge, %if.end42.out_crit_edge, %get_gate_page.exit.out_crit_edge, %if.end.i.out_crit_edge, %if.then32.out_crit_edge, %land.lhs.true.out_crit_edge
  %i.1234 = phi i32 [ %i.0, %if.then44.i ], [ %i.0, %if.then40.i.out_crit_edge ], [ %i.0, %if.end6.i.i.out_crit_edge ], [ %i.0, %if.then29.i.out_crit_edge ], [ %i.0, %if.then3.i.i ], [ %i.0, %out.loopexit304.split.loop.exit ], [ %i.0, %fatal_signal_pending.exit.out_crit_edge ], [ %i.0, %if.end.i193.out_crit_edge ], [ %i.0, %if.then32.i.out_crit_edge ], [ %i.0, %if.then21.i.out_crit_edge ], [ %i.0, %land.lhs.true.i.out_crit_edge ], [ %i.0, %if.end42.out_crit_edge ], [ %i.0, %if.end.i.out_crit_edge ], [ %i.0, %if.then32.out_crit_edge ], [ %i.0, %land.lhs.true.out_crit_edge ], [ %i.0, %get_gate_page.exit.out_crit_edge ], [ %add120, %do.cond124.out_crit_edge ]
  %ret.5233 = phi i32 [ 0, %if.then44.i ], [ 0, %if.then40.i.out_crit_edge ], [ -14, %if.end6.i.i.out_crit_edge ], [ -12, %if.then29.i.out_crit_edge ], [ %spec.select235, %if.then3.i.i ], [ %86, %out.loopexit304.split.loop.exit ], [ -14, %if.end.i193.out_crit_edge ], [ -4, %fatal_signal_pending.exit.out_crit_edge ], [ -14, %if.then32.i.out_crit_edge ], [ -14, %if.then21.i.out_crit_edge ], [ -14, %land.lhs.true.i.out_crit_edge ], [ -14, %if.end42.out_crit_edge ], [ -14, %if.end.i.out_crit_edge ], [ -14, %if.then32.out_crit_edge ], [ -14, %land.lhs.true.out_crit_edge ], [ %ret.0.i, %get_gate_page.exit.out_crit_edge ], [ %ret.4, %do.cond124.out_crit_edge ]
  %87 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ctx, align 8
  %tobool127.not = icmp eq ptr %88, null
  br i1 %tobool127.not, label %out.if.end130_crit_edge, label %if.then128

out.if.end130_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end130

if.then128:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @put_dev_pagemap(ptr noundef nonnull %88)
  br label %if.end130

if.end130:                                        ; preds = %if.then128, %out.if.end130_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1234)
  %tobool131.not = icmp eq i32 %i.1234, 0
  %ret.5.i.1 = select i1 %tobool131.not, i32 %ret.5233, i32 %i.1234
  br label %cleanup136

cleanup136:                                       ; preds = %if.end130, %entry.cleanup136_crit_edge
  %retval.0 = phi i32 [ %ret.5.i.1, %if.end130 ], [ 0, %entry.cleanup136_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ctx) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @faultin_vma_page_range(ptr noundef %vma, i32 noundef %start, i32 noundef %end, i1 noundef zeroext %write, ptr noundef %locked) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  %0 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_mm, align 4
  %sub = sub i32 %end, %start
  %div88 = lshr i32 %sub, 12
  %and = and i32 %start, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %do.body9, label %do.body3, !prof !122

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1556, 0\0A.popsection", ""() #7, !srcloc !161
  unreachable

do.body9:                                         ; preds = %entry
  %and10 = and i32 %end, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %cmp11.not = icmp eq i32 %and10, 0
  br i1 %cmp11.not, label %do.body30, label %do.body21, !prof !122

do.body21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1557, 0\0A.popsection", ""() #7, !srcloc !162
  unreachable

do.body30:                                        ; preds = %do.body9
  %2 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vma, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %start)
  %cmp31 = icmp ugt i32 %3, %start
  br i1 %cmp31, label %if.then38, label %do.body48, !prof !123

if.then38:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_vma(ptr noundef %vma) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1558, 0\0A.popsection", ""() #7, !srcloc !163
  unreachable

do.body48:                                        ; preds = %do.body30
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %4 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %end)
  %cmp49 = icmp ult i32 %5, %end
  br i1 %cmp49, label %if.then56, label %do.end65, !prof !123

if.then56:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_vma(ptr noundef %vma) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1559, 0\0A.popsection", ""() #7, !srcloc !164
  unreachable

do.end65:                                         ; preds = %do.body48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %do.end65.if.end.i_crit_edge, label %land.rhs.i

do.end65.if.end.i_crit_edge:                      ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.rhs.i:                                       ; preds = %do.end65
  %dep_map.i = getelementptr inbounds %struct.anon.9, ptr %1, i32 0, i32 15, i32 6
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !123

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 155, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %do.end65.if.end.i_crit_edge
  %mmap_lock25.i = getelementptr inbounds %struct.anon.9, ptr %1, i32 0, i32 15
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mmap_lock25.i, i32 noundef 4) #7
  %7 = ptrtoint ptr %mmap_lock25.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %mmap_lock25.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.not.i = icmp eq i32 %8, 0
  br i1 %cmp.i.not.i, label %if.then36.i, label %mmap_assert_locked.exit, !prof !123

if.then36.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_mm(ptr noundef %1) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mmap_lock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 156, 0\0A.popsection", ""() #7, !srcloc !158
  unreachable

mmap_assert_locked.exit:                          ; preds = %if.end.i
  %spec.select = select i1 %write, i32 4419, i32 4418
  %vm_flags1.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %9 = ptrtoint ptr %vm_flags1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vm_flags1.i, align 4
  %and3.i = and i32 %10, 17408
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not.i89 = icmp eq i32 %and3.i, 0
  br i1 %tobool.not.i89, label %if.end.i90, label %mmap_assert_locked.exit.cleanup_crit_edge

mmap_assert_locked.exit.cleanup_crit_edge:        ; preds = %mmap_assert_locked.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i90:                                       ; preds = %mmap_assert_locked.exit
  %and.i = and i32 %spec.select, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool17.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool17.not.i, label %if.else.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.end.i90
  %and19.i = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.then18.i.cleanup_crit_edge, label %if.then18.i.if.end71_crit_edge

if.then18.i.if.end71_crit_edge:                   ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.then18.i.cleanup_crit_edge:                    ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.i:                                        ; preds = %if.end.i90
  %and30.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %if.else.i.cleanup_crit_edge, label %if.else.i.if.end71_crit_edge

if.else.i.if.end71_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end71:                                         ; preds = %if.else.i.if.end71_crit_edge, %if.then18.i.if.end71_crit_edge
  %call72 = tail call fastcc i32 @__get_user_pages(ptr noundef %1, i32 noundef %start, i32 noundef %div88, i32 noundef %spec.select, ptr noundef null, ptr noundef null, ptr noundef %locked)
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %if.else.i.cleanup_crit_edge, %if.then18.i.cleanup_crit_edge, %mmap_assert_locked.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call72, %if.end71 ], [ -22, %mmap_assert_locked.exit.cleanup_crit_edge ], [ -22, %if.then18.i.cleanup_crit_edge ], [ -22, %if.else.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__mm_populate(i32 noundef %start, i32 noundef %len, i32 noundef %ignore_errors) local_unnamed_addr #0 align 64 {
entry:
  %locked = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %locked) #7
  %6 = ptrtoint ptr %locked to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %locked, align 4
  %add = add i32 %len, %start
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %start)
  %cmp57 = icmp ugt i32 %add, %start
  br i1 %cmp57, label %for.body.lr.ph, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

for.body.lr.ph:                                   ; preds = %entry
  %mmap_lock.i = getelementptr inbounds %struct.anon.9, ptr %5, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ignore_errors)
  %tobool23.not = icmp eq i32 %ignore_errors, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %vma.059 = phi ptr [ null, %for.body.lr.ph ], [ %vma.1, %for.inc.for.body_crit_edge ]
  %nstart.058 = phi i32 [ %start, %for.body.lr.ph ], [ %nend.0, %for.inc.for.body_crit_edge ]
  %7 = ptrtoint ptr %locked to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %locked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %9 = ptrtoint ptr %locked to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %locked, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@__mm_populate, %if.then.i.i)) #7
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !126

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %5, i1 noundef zeroext false) #7
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.then
  call void @down_read(ptr noundef %mmap_lock.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@__mm_populate, %if.then.i3.i)) #7
          to label %mmap_read_lock.exit [label %if.then.i3.i], !srcloc !126

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %5, i1 noundef zeroext false, i1 noundef zeroext true) #7
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %call2 = call ptr @find_vma(ptr noundef %5, i32 noundef %nstart.058) #7
  br label %if.end5

if.else:                                          ; preds = %for.body
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma.059, i32 0, i32 1
  %10 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vm_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %nstart.058, i32 %11)
  %cmp3.not = icmp ult i32 %nstart.058, %11
  br i1 %cmp3.not, label %if.else.if.end5_crit_edge, label %if.then4

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %vm_next = getelementptr inbounds %struct.vm_area_struct, ptr %vma.059, i32 0, i32 2
  %12 = ptrtoint ptr %vm_next to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vm_next, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.else.if.end5_crit_edge, %mmap_read_lock.exit
  %vma.1 = phi ptr [ %13, %if.then4 ], [ %vma.059, %if.else.if.end5_crit_edge ], [ %call2, %mmap_read_lock.exit ]
  %tobool6.not = icmp eq ptr %vma.1, null
  br i1 %tobool6.not, label %if.end5.for.end_crit_edge, label %lor.lhs.false

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

lor.lhs.false:                                    ; preds = %if.end5
  %14 = ptrtoint ptr %vma.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vma.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %add)
  %cmp7.not = icmp ult i32 %15, %add
  br i1 %cmp7.not, label %if.end9, label %lor.lhs.false.for.end_crit_edge

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end9:                                          ; preds = %lor.lhs.false
  %vm_end10 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.1, i32 0, i32 1
  %16 = ptrtoint ptr %vm_end10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vm_end10, align 4
  %18 = call i32 @llvm.umin.i32(i32 %add, i32 %17)
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma.1, i32 0, i32 8
  %19 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vm_flags, align 4
  %and = and i32 %20, 17408
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end14, label %if.end9.for.inc_crit_edge

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end14:                                         ; preds = %if.end9
  %21 = call i32 @llvm.umax.i32(i32 %nstart.058, i32 %15)
  %call20 = call i32 @populate_vma_page_range(ptr noundef nonnull %vma.1, i32 noundef %21, i32 noundef %18, ptr noundef nonnull %locked)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end26

if.then22:                                        ; preds = %if.end14
  br i1 %tobool23.not, label %if.then22.for.end_crit_edge, label %if.then22.for.inc_crit_edge

if.then22.for.inc_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then22.for.end_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end26:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %mul = shl i32 %call20, 12
  %add27 = add i32 %mul, %21
  br label %for.inc

for.inc:                                          ; preds = %if.end26, %if.then22.for.inc_crit_edge, %if.end9.for.inc_crit_edge
  %nend.0 = phi i32 [ %18, %if.end9.for.inc_crit_edge ], [ %add27, %if.end26 ], [ %18, %if.then22.for.inc_crit_edge ]
  %cmp = icmp ult i32 %nend.0, %add
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then22.for.end_crit_edge, %lor.lhs.false.for.end_crit_edge, %if.end5.for.end_crit_edge
  %ret.2.ph = phi i32 [ %call20, %if.then22.for.end_crit_edge ], [ 0, %if.end5.for.end_crit_edge ], [ 0, %lor.lhs.false.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %22 = ptrtoint ptr %locked to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr = load i32, ptr %locked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool28.not = icmp eq i32 %.pr, 0
  br i1 %tobool28.not, label %for.end.if.end30_crit_edge, label %if.then29

for.end.if.end30_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then29:                                        ; preds = %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@__mm_populate, %if.then.i.i55)) #7
          to label %mmap_read_unlock.exit [label %if.then.i.i55], !srcloc !126

if.then.i.i55:                                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  call void @__mmap_lock_do_trace_released(ptr noundef %5, i1 noundef zeroext false) #7
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i55, %if.then29
  %mmap_lock.i56 = getelementptr inbounds %struct.anon.9, ptr %5, i32 0, i32 15
  call void @up_read(ptr noundef %mmap_lock.i56) #7
  br label %if.end30

if.end30:                                         ; preds = %mmap_read_unlock.exit, %for.end.if.end30_crit_edge, %entry.if.end30_crit_edge
  %ret.265 = phi i32 [ %ret.2.ph, %mmap_read_unlock.exit ], [ %ret.2.ph, %for.end.if.end30_crit_edge ], [ 0, %entry.if.end30_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %locked) #7
  ret i32 %ret.265
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fault_in_writeable(ptr noundef %uaddr, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp eq i32 %size, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !123

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %uaddr, i32 %size, i32 -1226833920) #10, !srcloc !165
  %asmresult = extractvalue { i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %cmp3 = icmp eq i32 %asmresult, 0
  br i1 %cmp3, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %1 = ptrtoint ptr %uaddr to i32
  %and = and i32 %1, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp6 = icmp eq i32 %and, 0
  br i1 %cmp6, label %if.end5.if.end23_crit_edge, label %do.body

if.end5.if.end23_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = add nuw i32 %1, 4095
  br label %if.end23

do.body:                                          ; preds = %if.end5
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1708) #7
  %2 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !166
  %and.i = and i32 %4, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #7, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  %5 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %uaddr, i8 0, i32 -1226833921) #7, !srcloc !169
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #7, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool11.not = icmp eq i32 %5, 0
  br i1 %tobool11.not, label %do.end21, label %do.body.do.end66_crit_edge, !prof !122

do.body.do.end66_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end66

do.end21:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add = add i32 %1, 4095
  %and22 = and i32 %add, -4096
  %6 = inttoptr i32 %and22 to ptr
  br label %if.end23

if.end23:                                         ; preds = %do.end21, %if.end5.if.end23_crit_edge
  %add24.pre-phi = phi i32 [ %.pre, %if.end5.if.end23_crit_edge ], [ %add, %do.end21 ]
  %uaddr.addr.0 = phi ptr [ %uaddr, %if.end5.if.end23_crit_edge ], [ %6, %do.end21 ]
  %add25 = add i32 %add24.pre-phi, %size
  %and26 = and i32 %add25, -4096
  %7 = inttoptr i32 %and26 to ptr
  %cmp27 = icmp ult ptr %7, %uaddr
  br i1 %cmp27, label %if.then34, label %if.end23.if.end35_crit_edge, !prof !123

if.end23.if.end35_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then34:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end23.if.end35_crit_edge
  %end.0 = phi ptr [ null, %if.then34 ], [ %7, %if.end23.if.end35_crit_edge ]
  %cmp36.not96 = icmp eq ptr %uaddr.addr.0, %end.0
  br i1 %cmp36.not96, label %if.end35.do.end66_crit_edge, label %if.end35.do.body37_crit_edge

if.end35.do.body37_crit_edge:                     ; preds = %if.end35
  br label %do.body37

if.end35.do.end66_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end66

do.body37:                                        ; preds = %do.end63.do.body37_crit_edge, %if.end35.do.body37_crit_edge
  %uaddr.addr.197 = phi ptr [ %add.ptr, %do.end63.do.body37_crit_edge ], [ %uaddr.addr.0, %if.end35.do.body37_crit_edge ]
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1715) #7
  %8 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i.i.i92 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i92 to ptr
  %cpu_domain.i.i93 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i93) #5, !srcloc !166
  %and.i94 = and i32 %10, -13
  %or.i95 = or i32 %and.i94, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i95) #7, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  %11 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %uaddr.addr.197, i8 0, i32 -1226833921) #7, !srcloc !170
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #7, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool53.not = icmp eq i32 %11, 0
  br i1 %tobool53.not, label %do.end63, label %do.body37.do.end66_crit_edge, !prof !122

do.body37.do.end66_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end66

do.end63:                                         ; preds = %do.body37
  %add.ptr = getelementptr i8, ptr %uaddr.addr.197, i32 4096
  %cmp36.not = icmp eq ptr %add.ptr, %end.0
  br i1 %cmp36.not, label %do.end63.do.end66_crit_edge, label %do.end63.do.body37_crit_edge

do.end63.do.body37_crit_edge:                     ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body37

do.end63.do.end66_crit_edge:                      ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end66

do.end66:                                         ; preds = %do.end63.do.end66_crit_edge, %do.body37.do.end66_crit_edge, %if.end35.do.end66_crit_edge, %do.body.do.end66_crit_edge
  %uaddr.addr.2 = phi ptr [ %uaddr, %do.body.do.end66_crit_edge ], [ %uaddr.addr.0, %if.end35.do.end66_crit_edge ], [ %end.0, %do.end63.do.end66_crit_edge ], [ %uaddr.addr.197, %do.body37.do.end66_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %uaddr.addr.2 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %1
  %12 = tail call i32 @llvm.usub.sat.i32(i32 %size, i32 %sub.ptr.sub)
  br label %cleanup

cleanup:                                          ; preds = %do.end66, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %size, %if.end.cleanup_crit_edge ], [ %12, %do.end66 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fault_in_safe_writeable(ptr noundef %uaddr, i32 noundef %size) #0 align 64 {
entry:
  %unlocked = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %uaddr to i32
  %1 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %mm1 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 53
  %5 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mm1, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %unlocked) #7
  %7 = ptrtoint ptr %unlocked to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %unlocked, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp eq i32 %size, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !123

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %size, 4095
  %add3 = add i32 %add, %0
  %and = and i32 %add3, -4096
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %0)
  %cmp4 = icmp ult i32 %and, %0
  %spec.store.select = select i1 %cmp4, i32 0, i32 %and
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@fault_in_safe_writeable, %if.then.i.i)) #7
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !126

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %6, i1 noundef zeroext false) #7
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.end
  %mmap_lock.i = getelementptr inbounds %struct.anon.9, ptr %6, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@fault_in_safe_writeable, %if.then.i3.i)) #7
          to label %do.body [label %if.then.i3.i], !srcloc !126

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %6, i1 noundef zeroext false, i1 noundef zeroext true) #7
  br label %do.body

do.body:                                          ; preds = %if.end10.do.body_crit_edge, %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %start.0 = phi i32 [ %and12, %if.end10.do.body_crit_edge ], [ %0, %__mmap_lock_trace_start_locking.exit.i ], [ %0, %if.then.i3.i ]
  %call7 = call i32 @fixup_user_fault(ptr noundef %6, i32 noundef %start.0, i32 noundef 1, ptr noundef nonnull %unlocked)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end10:                                         ; preds = %do.body
  %add11 = add i32 %start.0, 4096
  %and12 = and i32 %add11, -4096
  %cmp13.not = icmp eq i32 %and12, %spec.store.select
  br i1 %cmp13.not, label %if.end10.do.end_crit_edge, label %if.end10.do.body_crit_edge

if.end10.do.body_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end10.do.end_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %if.end10.do.end_crit_edge, %do.body.do.end_crit_edge
  %start.1 = phi i32 [ %start.0, %do.body.do.end_crit_edge ], [ %spec.store.select, %if.end10.do.end_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@fault_in_safe_writeable, %if.then.i.i36)) #7
          to label %mmap_read_unlock.exit [label %if.then.i.i36], !srcloc !126

if.then.i.i36:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__mmap_lock_do_trace_released(ptr noundef %6, i1 noundef zeroext false) #7
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i36, %do.end
  call void @up_read(ptr noundef %mmap_lock.i) #7
  %sub = sub i32 %0, %start.1
  %8 = call i32 @llvm.usub.sat.i32(i32 %size, i32 %sub)
  br label %cleanup

cleanup:                                          ; preds = %mmap_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %8, %mmap_read_unlock.exit ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %unlocked) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fault_in_readable(ptr noundef %uaddr, i32 noundef %size) #0 align 64 {
entry:
  %c = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %c)
  %0 = ptrtoint ptr %c to i32
  call void @__asan_store1_noabort(i32 %0)
  store volatile i8 -1, ptr %c, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp eq i32 %size, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !123

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %uaddr, i32 %size, i32 -1226833920) #10, !srcloc !171
  %asmresult = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %cmp3 = icmp eq i32 %asmresult, 0
  br i1 %cmp3, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %2 = ptrtoint ptr %uaddr to i32
  %and = and i32 %2, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp6 = icmp eq i32 %and, 0
  br i1 %cmp6, label %if.end5.if.end22_crit_edge, label %do.body

if.end5.if.end22_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = add nuw i32 %2, 4095
  br label %if.end22

do.body:                                          ; preds = %if.end5
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1789) #7
  %3 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !166
  %and.i = and i32 %5, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #7, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  %6 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %uaddr, i32 -1226833921) #7, !srcloc !172
  %asmresult9 = extractvalue { i32, i32 } %6, 0
  %asmresult10 = extractvalue { i32, i32 } %6, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #7, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  %conv = trunc i32 %asmresult10 to i8
  %7 = ptrtoint ptr %c to i32
  call void @__asan_store1_noabort(i32 %7)
  store volatile i8 %conv, ptr %c, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult9)
  %tobool12.not = icmp eq i32 %asmresult9, 0
  br i1 %tobool12.not, label %do.end, label %do.body.do.end65_crit_edge, !prof !122

do.body.do.end65_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end65

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add = add i32 %2, 4095
  %and21 = and i32 %add, -4096
  %8 = inttoptr i32 %and21 to ptr
  br label %if.end22

if.end22:                                         ; preds = %do.end, %if.end5.if.end22_crit_edge
  %add23.pre-phi = phi i32 [ %.pre, %if.end5.if.end22_crit_edge ], [ %add, %do.end ]
  %uaddr.addr.0 = phi ptr [ %uaddr, %if.end5.if.end22_crit_edge ], [ %8, %do.end ]
  %add24 = add i32 %add23.pre-phi, %size
  %and25 = and i32 %add24, -4096
  %9 = inttoptr i32 %and25 to ptr
  %cmp26 = icmp ult ptr %9, %uaddr
  br i1 %cmp26, label %if.then34, label %if.end22.if.end35_crit_edge, !prof !123

if.end22.if.end35_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then34:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end22.if.end35_crit_edge
  %end.0 = phi ptr [ null, %if.then34 ], [ %9, %if.end22.if.end35_crit_edge ]
  %cmp36.not97 = icmp eq ptr %uaddr.addr.0, %end.0
  br i1 %cmp36.not97, label %if.end35.do.end65_crit_edge, label %if.end35.do.body38_crit_edge

if.end35.do.body38_crit_edge:                     ; preds = %if.end35
  br label %do.body38

if.end35.do.end65_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end65

do.body38:                                        ; preds = %do.end62.do.body38_crit_edge, %if.end35.do.body38_crit_edge
  %uaddr.addr.198 = phi ptr [ %add.ptr, %do.end62.do.body38_crit_edge ], [ %uaddr.addr.0, %if.end35.do.body38_crit_edge ]
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1796) #7
  %10 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i.i.i93 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i93 to ptr
  %cpu_domain.i.i94 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i94) #5, !srcloc !166
  %and.i95 = and i32 %12, -13
  %or.i96 = or i32 %and.i95, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i96) #7, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  %13 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %uaddr.addr.198, i32 -1226833921) #7, !srcloc !173
  %asmresult48 = extractvalue { i32, i32 } %13, 0
  %asmresult49 = extractvalue { i32, i32 } %13, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #7, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  %conv50 = trunc i32 %asmresult49 to i8
  %14 = ptrtoint ptr %c to i32
  call void @__asan_store1_noabort(i32 %14)
  store volatile i8 %conv50, ptr %c, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult48)
  %tobool52.not = icmp eq i32 %asmresult48, 0
  br i1 %tobool52.not, label %do.end62, label %do.body38.do.end65_crit_edge, !prof !122

do.body38.do.end65_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end65

do.end62:                                         ; preds = %do.body38
  %add.ptr = getelementptr i8, ptr %uaddr.addr.198, i32 4096
  %cmp36.not = icmp eq ptr %add.ptr, %end.0
  br i1 %cmp36.not, label %do.end62.do.end65_crit_edge, label %do.end62.do.body38_crit_edge

do.end62.do.body38_crit_edge:                     ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body38

do.end62.do.end65_crit_edge:                      ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end65

do.end65:                                         ; preds = %do.end62.do.end65_crit_edge, %do.body38.do.end65_crit_edge, %if.end35.do.end65_crit_edge, %do.body.do.end65_crit_edge
  %uaddr.addr.2 = phi ptr [ %uaddr, %do.body.do.end65_crit_edge ], [ %uaddr.addr.0, %if.end35.do.end65_crit_edge ], [ %end.0, %do.end62.do.end65_crit_edge ], [ %uaddr.addr.198, %do.body38.do.end65_crit_edge ]
  %15 = ptrtoint ptr %c to i32
  call void @__asan_load1_noabort(i32 %15)
  %c.0.c.0.c.0. = load volatile i8, ptr %c, align 1
  %sub.ptr.lhs.cast = ptrtoint ptr %uaddr.addr.2 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %2
  %16 = tail call i32 @llvm.usub.sat.i32(i32 %size, i32 %sub.ptr.sub)
  br label %cleanup

cleanup:                                          ; preds = %do.end65, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %size, %if.end.cleanup_crit_edge ], [ %16, %do.end65 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %c)
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_dump_page(i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  %page = alloca ptr, align 4
  %locked = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #7
  %6 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %page, align 4, !annotation !174
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %locked) #7
  %7 = ptrtoint ptr %locked to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %locked, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@get_dump_page, %if.then.i.i)) #7
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !126

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %5, i1 noundef zeroext false) #7
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %entry
  %mmap_lock.i = getelementptr inbounds %struct.anon.9, ptr %5, i32 0, i32 15
  %call.i12 = tail call i32 @down_read_killable(ptr noundef %mmap_lock.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@get_dump_page, %if.then.i4.i)) #7
          to label %mmap_read_lock_killable.exit [label %if.then.i4.i], !srcloc !126

if.then.i4.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12)
  %cmp.i = icmp eq i32 %call.i12, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %5, i1 noundef zeroext false, i1 noundef zeroext %cmp.i) #7
  br label %mmap_read_lock_killable.exit

mmap_read_lock_killable.exit:                     ; preds = %if.then.i4.i, %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12)
  %tobool.not = icmp eq i32 %call.i12, 0
  br i1 %tobool.not, label %if.end, label %mmap_read_lock_killable.exit.cleanup_crit_edge

mmap_read_lock_killable.exit.cleanup_crit_edge:   ; preds = %mmap_read_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %mmap_read_lock_killable.exit
  %8 = ptrtoint ptr %locked to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %locked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 1
  br i1 %cmp.not.i, label %if.end28.i, label %do.body19.i, !prof !122

do.body19.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1354, 0\0A.popsection", ""() #7, !srcloc !175
  unreachable

if.end28.i:                                       ; preds = %if.end
  %call297.i = call fastcc i32 @__get_user_pages(ptr noundef %5, i32 noundef %addr, i32 noundef 1, i32 noundef 28, ptr noundef nonnull %page, ptr noundef null, ptr noundef nonnull %locked) #7
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.end184.i, %if.end28.i
  %call304.i = phi i32 [ %call297.i, %if.end28.i ], [ %call.i, %if.end184.i ]
  %lock_dropped.0.off0303.i = phi i1 [ false, %if.end28.i ], [ true, %if.end184.i ]
  %pages_done.0302.i = phi i32 [ 0, %if.end28.i ], [ %inc.i, %if.end184.i ]
  %start.addr.0301.i = phi i32 [ %addr, %if.end28.i ], [ %add194.i, %if.end184.i ]
  %pages.addr.0300.i = phi ptr [ %page, %if.end28.i ], [ %spec.select262.i, %if.end184.i ]
  %nr_pages.addr.0298.i = phi i32 [ 1, %if.end28.i ], [ %dec.i, %if.end184.i ]
  %10 = ptrtoint ptr %locked to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %locked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool41.not.i = icmp eq i32 %11, 0
  br i1 %tobool41.not.i, label %do.body43.i, label %if.end40.i.if.end79.i_crit_edge

if.end40.i.if.end79.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79.i

do.body43.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call304.i)
  %cmp44.i = icmp slt i32 %call304.i, 0
  br i1 %cmp44.i, label %do.body52.i, label %do.body61.i, !prof !123

do.body52.i:                                      ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1383, 0\0A.popsection", ""() #7, !srcloc !176
  unreachable

do.body61.i:                                      ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_cmp4(i32 %nr_pages.addr.0298.i, i32 %call304.i)
  %cmp62.not.i = icmp ugt i32 %nr_pages.addr.0298.i, %call304.i
  br i1 %cmp62.not.i, label %do.body61.i.if.end79.i_crit_edge, label %do.body70.i, !prof !122

do.body61.i.if.end79.i_crit_edge:                 ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79.i

do.body70.i:                                      ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1384, 0\0A.popsection", ""() #7, !srcloc !177
  unreachable

if.end79.i:                                       ; preds = %do.body61.i.if.end79.i_crit_edge, %if.end40.i.if.end79.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call304.i)
  %cmp80.i = icmp sgt i32 %call304.i, 0
  br i1 %cmp80.i, label %if.then81.i, label %if.end79.i.if.end85.i_crit_edge

if.end79.i.if.end85.i_crit_edge:                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85.i

if.then81.i:                                      ; preds = %if.end79.i
  %sub.i = sub i32 %nr_pages.addr.0298.i, %call304.i
  %add.i = add i32 %pages_done.0302.i, %call304.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool82.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool82.not.i, label %for.end.i, label %if.then81.i.if.end85.i_crit_edge

if.then81.i.if.end85.i_crit_edge:                 ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then81.i.if.end85.i_crit_edge, %if.end79.i.if.end85.i_crit_edge
  %nr_pages.addr.1.i = phi i32 [ %sub.i, %if.then81.i.if.end85.i_crit_edge ], [ %nr_pages.addr.0298.i, %if.end79.i.if.end85.i_crit_edge ]
  %pages_done.1.i = phi i32 [ %add.i, %if.then81.i.if.end85.i_crit_edge ], [ %pages_done.0302.i, %if.end79.i.if.end85.i_crit_edge ]
  br i1 %tobool41.not.i, label %if.end91.i, label %if.then87.i

if.then87.i:                                      ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pages_done.1.i)
  %tobool88.not.i = icmp eq i32 %pages_done.1.i, 0
  %spec.select258.i = select i1 %tobool88.not.i, i32 %call304.i, i32 %pages_done.1.i
  br i1 %lock_dropped.0.off0303.i, label %if.then87.i.land.lhs.true196.i_crit_edge, label %if.then87.i.__get_user_pages_locked.exit_crit_edge

if.then87.i.__get_user_pages_locked.exit_crit_edge: ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__get_user_pages_locked.exit

if.then87.i.land.lhs.true196.i_crit_edge:         ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true196.i

if.end91.i:                                       ; preds = %if.end85.i
  %tobool92.not.i = icmp eq ptr %pages.addr.0300.i, null
  %add.ptr.i = getelementptr ptr, ptr %pages.addr.0300.i, i32 %call304.i
  %spec.select259.i = select i1 %tobool92.not.i, ptr null, ptr %add.ptr.i, !prof !123
  %shl.i = shl i32 %call304.i, 12
  %add101.i = add i32 %start.addr.0301.i, %shl.i
  br label %retry.i

retry.i:                                          ; preds = %do.body139.i.retry.i_crit_edge, %if.end91.i
  %12 = call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i, align 8
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stack.i.i.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %and1.i.i.i.i.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i263.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i263.i, label %retry.i.if.end109.i_crit_edge, label %fatal_signal_pending.exit.i

retry.i.if.end109.i_crit_edge:                    ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109.i

fatal_signal_pending.exit.i:                      ; preds = %retry.i
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 116, i32 1
  %20 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %signal.i.i.i, align 4
  %22 = and i32 %21, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool104.not.i = icmp eq i32 %22, 0
  br i1 %tobool104.not.i, label %fatal_signal_pending.exit.i.if.end109.i_crit_edge, label %if.then105.i

fatal_signal_pending.exit.i.if.end109.i_crit_edge: ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109.i

if.then105.i:                                     ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pages_done.1.i)
  %tobool106.not.i = icmp eq i32 %pages_done.1.i, 0
  %spec.store.select.i = select i1 %tobool106.not.i, i32 -4, i32 %pages_done.1.i
  br label %land.lhs.true196.i

if.end109.i:                                      ; preds = %fatal_signal_pending.exit.i.if.end109.i_crit_edge, %retry.i.if.end109.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@get_dump_page, %if.then.i.i.i)) #7
          to label %__mmap_lock_trace_start_locking.exit.i.i [label %if.then.i.i.i], !srcloc !126

if.then.i.i.i:                                    ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %5, i1 noundef zeroext false) #7
  br label %__mmap_lock_trace_start_locking.exit.i.i

__mmap_lock_trace_start_locking.exit.i.i:         ; preds = %if.then.i.i.i, %if.end109.i
  %call.i.i = call i32 @down_read_killable(ptr noundef %mmap_lock.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@get_dump_page, %if.then.i4.i.i)) #7
          to label %mmap_read_lock_killable.exit.i [label %if.then.i4.i.i], !srcloc !126

if.then.i4.i.i:                                   ; preds = %__mmap_lock_trace_start_locking.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %5, i1 noundef zeroext false, i1 noundef zeroext %cmp.i.i) #7
  br label %mmap_read_lock_killable.exit.i

mmap_read_lock_killable.exit.i:                   ; preds = %if.then.i4.i.i, %__mmap_lock_trace_start_locking.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool111.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool111.not.i, label %if.end134.i, label %do.body113.i

do.body113.i:                                     ; preds = %mmap_read_lock_killable.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp114.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp114.i, label %do.body122.i, label %do.end130.i, !prof !123

do.body122.i:                                     ; preds = %do.body113.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1428, 0\0A.popsection", ""() #7, !srcloc !178
  unreachable

do.end130.i:                                      ; preds = %do.body113.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pages_done.1.i)
  %tobool131.not.i = icmp eq i32 %pages_done.1.i, 0
  %spec.select260.i = select i1 %tobool131.not.i, i32 %call.i.i, i32 %pages_done.1.i
  br label %land.lhs.true196.i

if.end134.i:                                      ; preds = %mmap_read_lock_killable.exit.i
  %23 = ptrtoint ptr %locked to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %locked, align 4
  %call136.i = call fastcc i32 @__get_user_pages(ptr noundef %5, i32 noundef %add101.i, i32 noundef 1, i32 noundef 2076, ptr noundef %spec.select259.i, ptr noundef null, ptr noundef nonnull %locked) #7
  %24 = ptrtoint ptr %locked to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %locked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool137.not.i = icmp eq i32 %25, 0
  br i1 %tobool137.not.i, label %do.body139.i, label %if.end157.i

do.body139.i:                                     ; preds = %if.end134.i
  %cmp140.not.i = icmp eq i32 %call136.i, 0
  br i1 %cmp140.not.i, label %do.body139.i.retry.i_crit_edge, label %do.body148.i, !prof !122

do.body139.i.retry.i_crit_edge:                   ; preds = %do.body139.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %retry.i

do.body148.i:                                     ; preds = %do.body139.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1439, 0\0A.popsection", ""() #7, !srcloc !179
  unreachable

if.end157.i:                                      ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call136.i)
  %cmp158.not.i = icmp eq i32 %call136.i, 1
  br i1 %cmp158.not.i, label %if.end181.i, label %do.body160.i

do.body160.i:                                     ; preds = %if.end157.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call136.i)
  %cmp161.i = icmp sgt i32 %call136.i, 1
  br i1 %cmp161.i, label %do.body169.i, label %do.end177.i, !prof !123

do.body169.i:                                     ; preds = %do.body160.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1443, 0\0A.popsection", ""() #7, !srcloc !180
  unreachable

do.end177.i:                                      ; preds = %do.body160.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pages_done.1.i)
  %tobool178.not.i = icmp eq i32 %pages_done.1.i, 0
  %spec.select261.i = select i1 %tobool178.not.i, i32 %call136.i, i32 %pages_done.1.i
  br label %land.lhs.true196.i

if.end181.i:                                      ; preds = %if.end157.i
  %dec.i = add i32 %nr_pages.addr.1.i, -1
  %inc.i = add i32 %pages_done.1.i, 1
  %tobool182.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool182.not.i, label %if.end181.i.land.lhs.true196.i_crit_edge, label %if.end184.i

if.end181.i.land.lhs.true196.i_crit_edge:         ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true196.i

if.end184.i:                                      ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #9
  %tobool185.not.i = icmp eq ptr %spec.select259.i, null
  %add.ptr.i.sroa.gep = getelementptr ptr, ptr %add.ptr.i, i32 1
  %spec.select259.i.sroa.sel = select i1 %tobool92.not.i, ptr inttoptr (i32 4 to ptr), ptr %add.ptr.i.sroa.gep
  %spec.select262.i = select i1 %tobool185.not.i, ptr null, ptr %spec.select259.i.sroa.sel, !prof !123
  %add194.i = add i32 %add101.i, 4096
  %call.i = call fastcc i32 @__get_user_pages(ptr noundef %5, i32 noundef %add194.i, i32 noundef %dec.i, i32 noundef 28, ptr noundef %spec.select262.i, ptr noundef null, ptr noundef nonnull %locked) #7
  br label %if.end40.i

for.end.i:                                        ; preds = %if.then81.i
  br i1 %lock_dropped.0.off0303.i, label %for.end.i.land.lhs.true196.i_crit_edge, label %for.end.i.__get_user_pages_locked.exit_crit_edge

for.end.i.__get_user_pages_locked.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__get_user_pages_locked.exit

for.end.i.land.lhs.true196.i_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true196.i

land.lhs.true196.i:                               ; preds = %for.end.i.land.lhs.true196.i_crit_edge, %if.end181.i.land.lhs.true196.i_crit_edge, %do.end177.i, %do.end130.i, %if.then105.i, %if.then87.i.land.lhs.true196.i_crit_edge
  %pages_done.2269.i = phi i32 [ %add.i, %for.end.i.land.lhs.true196.i_crit_edge ], [ %spec.select258.i, %if.then87.i.land.lhs.true196.i_crit_edge ], [ %spec.select261.i, %do.end177.i ], [ %spec.select260.i, %do.end130.i ], [ %spec.store.select.i, %if.then105.i ], [ %inc.i, %if.end181.i.land.lhs.true196.i_crit_edge ]
  %26 = ptrtoint ptr %locked to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %locked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool197.not.i = icmp eq i32 %27, 0
  br i1 %tobool197.not.i, label %land.lhs.true196.i.if.end6_crit_edge, label %if.then198.i

land.lhs.true196.i.if.end6_crit_edge:             ; preds = %land.lhs.true196.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then198.i:                                     ; preds = %land.lhs.true196.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@get_dump_page, %if.end6.sink.split.sink.split)) #7
          to label %if.end6.sink.split [label %if.end6.sink.split.sink.split], !srcloc !126

__get_user_pages_locked.exit:                     ; preds = %for.end.i.__get_user_pages_locked.exit_crit_edge, %if.then87.i.__get_user_pages_locked.exit_crit_edge
  %retval.0.i.ph = phi i32 [ %spec.select258.i, %if.then87.i.__get_user_pages_locked.exit_crit_edge ], [ %add.i, %for.end.i.__get_user_pages_locked.exit_crit_edge ]
  %28 = ptrtoint ptr %locked to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr = load i32, ptr %locked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool4.not = icmp eq i32 %.pr, 0
  br i1 %tobool4.not, label %__get_user_pages_locked.exit.if.end6_crit_edge, label %if.then5

__get_user_pages_locked.exit.if.end6_crit_edge:   ; preds = %__get_user_pages_locked.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then5:                                         ; preds = %__get_user_pages_locked.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@get_dump_page, %if.end6.sink.split.sink.split)) #7
          to label %if.end6.sink.split [label %if.end6.sink.split.sink.split], !srcloc !126

if.end6.sink.split.sink.split:                    ; preds = %if.then5, %if.then198.i
  %retval.0.i17.ph.ph = phi i32 [ %pages_done.2269.i, %if.then198.i ], [ %retval.0.i.ph, %if.then5 ]
  call void @__sanitizer_cov_trace_pc() #9
  call void @__mmap_lock_do_trace_released(ptr noundef %5, i1 noundef zeroext false) #7
  br label %if.end6.sink.split

if.end6.sink.split:                               ; preds = %if.end6.sink.split.sink.split, %if.then5, %if.then198.i
  %retval.0.i17.ph = phi i32 [ %pages_done.2269.i, %if.then198.i ], [ %retval.0.i.ph, %if.then5 ], [ %retval.0.i17.ph.ph, %if.end6.sink.split.sink.split ]
  call void @up_read(ptr noundef %mmap_lock.i) #7
  br label %if.end6

if.end6:                                          ; preds = %if.end6.sink.split, %__get_user_pages_locked.exit.if.end6_crit_edge, %land.lhs.true196.i.if.end6_crit_edge
  %retval.0.i17 = phi i32 [ %retval.0.i.ph, %__get_user_pages_locked.exit.if.end6_crit_edge ], [ %pages_done.2269.i, %land.lhs.true196.i.if.end6_crit_edge ], [ %retval.0.i17.ph, %if.end6.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i17)
  %cmp = icmp eq i32 %retval.0.i17, 1
  br i1 %cmp, label %cond.true, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cond.true:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %page, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.true, %if.end6.cleanup_crit_edge, %mmap_read_lock_killable.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %mmap_read_lock_killable.exit.cleanup_crit_edge ], [ %30, %cond.true ], [ null, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %locked) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #7
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_user_pages_remote(ptr noundef %mm, i32 noundef %start, i32 noundef %nr_pages, i32 noundef %gup_flags, ptr noundef %pages, ptr noundef %vmas, ptr noundef %locked) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %gup_flags, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end38.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %entry
  %.b104.i = load i1, ptr @is_valid_gup_flags.__already_done, align 1
  br i1 %.b104.i, label %land.rhs.i.return_crit_edge, label %land.rhs.i.return.sink.split.i_crit_edge, !prof !122

land.rhs.i.return.sink.split.i_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i

land.rhs.i.return_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end38.i:                                       ; preds = %entry
  %and40.i = and i32 %gup_flags, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  br i1 %tobool41.not.i, label %if.end, label %land.rhs48.i

land.rhs48.i:                                     ; preds = %if.end38.i
  %.b102103.i = load i1, ptr @is_valid_gup_flags.__already_done.18, align 1
  br i1 %.b102103.i, label %land.rhs48.i.return_crit_edge, label %land.rhs48.i.return.sink.split.i_crit_edge, !prof !122

land.rhs48.i.return.sink.split.i_crit_edge:       ; preds = %land.rhs48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i

land.rhs48.i.return_crit_edge:                    ; preds = %land.rhs48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return.sink.split.i:                              ; preds = %land.rhs48.i.return.sink.split.i_crit_edge, %land.rhs.i.return.sink.split.i_crit_edge
  %is_valid_gup_flags.__already_done.18.sink.i = phi ptr [ @is_valid_gup_flags.__already_done, %land.rhs.i.return.sink.split.i_crit_edge ], [ @is_valid_gup_flags.__already_done.18, %land.rhs48.i.return.sink.split.i_crit_edge ]
  %.sink.i = phi i32 [ 1964, %land.rhs.i.return.sink.split.i_crit_edge ], [ 1971, %land.rhs48.i.return.sink.split.i_crit_edge ]
  %0 = ptrtoint ptr %is_valid_gup_flags.__already_done.18.sink.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i1 true, ptr %is_valid_gup_flags.__already_done.18.sink.i, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink.i, i32 noundef 9, ptr noundef null) #7
  br label %return

if.end:                                           ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call fastcc i32 @__get_user_pages_remote(ptr noundef %mm, i32 noundef %start, i32 noundef %nr_pages, i32 noundef %gup_flags, ptr noundef %pages, ptr noundef %vmas, ptr noundef %locked)
  br label %return

return:                                           ; preds = %if.end, %return.sink.split.i, %land.rhs48.i.return_crit_edge, %land.rhs.i.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %land.rhs.i.return_crit_edge ], [ -22, %land.rhs48.i.return_crit_edge ], [ -22, %return.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__get_user_pages_remote(ptr noundef %mm, i32 noundef %start, i32 noundef %nr_pages, i32 noundef %gup_flags, ptr noundef %pages, ptr noundef %vmas, ptr noundef %locked) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %gup_flags, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end42, label %if.then

if.then:                                          ; preds = %entry
  %tobool1.not = icmp eq ptr %locked, null
  br i1 %tobool1.not, label %if.end40, label %land.rhs

land.rhs:                                         ; preds = %if.then
  %.b56 = load i1, ptr @__get_user_pages_remote.__already_done, align 1
  br i1 %.b56, label %land.rhs.return_crit_edge, label %if.then9, !prof !122

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then9:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__get_user_pages_remote.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1991, i32 noundef 9, ptr noundef null) #7
  br label %return

if.end40:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %or41 = or i32 %gup_flags, 8194
  %call = tail call fastcc i32 @__gup_longterm_locked(ptr noundef %mm, i32 noundef %start, i32 noundef %nr_pages, ptr noundef %pages, ptr noundef %vmas, i32 noundef %or41)
  br label %return

if.end42:                                         ; preds = %entry
  %or44 = or i32 %gup_flags, 8194
  %tobool.not.i = icmp eq ptr %locked, null
  br i1 %tobool.not.i, label %if.end42.if.end28.i_crit_edge, label %do.body.i

if.end42.if.end28.i_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i

do.body.i:                                        ; preds = %if.end42
  %tobool1.not.i = icmp eq ptr %vmas, null
  br i1 %tobool1.not.i, label %do.body11.i, label %do.body5.i, !prof !122

do.body5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1352, 0\0A.popsection", ""() #7, !srcloc !181
  unreachable

do.body11.i:                                      ; preds = %do.body.i
  %0 = ptrtoint ptr %locked to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %locked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 1
  br i1 %cmp.not.i, label %do.body11.i.if.end28.i_crit_edge, label %do.body19.i, !prof !122

do.body11.i.if.end28.i_crit_edge:                 ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i

do.body19.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1354, 0\0A.popsection", ""() #7, !srcloc !175
  unreachable

if.end28.i:                                       ; preds = %do.body11.i.if.end28.i_crit_edge, %if.end42.if.end28.i_crit_edge
  %and.i = and i32 %gup_flags, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool29.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool29.not.i, label %if.end28.i.if.end32.i_crit_edge, label %if.then30.i

if.end28.i.if.end32.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i

if.then30.i:                                      ; preds = %if.end28.i
  %flags31.i = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 43
  %2 = ptrtoint ptr %flags31.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags31.i, align 4
  %4 = and i32 %3, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then30.i.if.end32.i_crit_edge

if.then30.i.if.end32.i_crit_edge:                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i

if.then.i.i:                                      ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 28, ptr noundef %flags31.i) #7
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then.i.i, %if.then30.i.if.end32.i_crit_edge, %if.end28.i.if.end32.i_crit_edge
  %tobool33.not.i = icmp eq ptr %pages, null
  %or.i = or i32 %gup_flags, 8198
  %spec.select.i = select i1 %tobool29.not.i, i32 %or.i, i32 %or44
  %flags.addr.0.i = select i1 %tobool33.not.i, i32 %or44, i32 %spec.select.i
  %call297.i = tail call fastcc i32 @__get_user_pages(ptr noundef %mm, i32 noundef %start, i32 noundef %nr_pages, i32 noundef %flags.addr.0.i, ptr noundef %pages, ptr noundef %vmas, ptr noundef %locked) #7
  br i1 %tobool.not.i, label %if.end32.i.return_crit_edge, label %if.end40.lr.ph.i

if.end32.i.return_crit_edge:                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end40.lr.ph.i:                                 ; preds = %if.end32.i
  %mmap_lock.i.i = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 15
  %or135.i = or i32 %flags.addr.0.i, 2048
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.end184.i, %if.end40.lr.ph.i
  %call304.i = phi i32 [ %call297.i, %if.end40.lr.ph.i ], [ %call.i, %if.end184.i ]
  %lock_dropped.0.off0303.i = phi i1 [ false, %if.end40.lr.ph.i ], [ true, %if.end184.i ]
  %pages_done.0302.i = phi i32 [ 0, %if.end40.lr.ph.i ], [ %inc.i, %if.end184.i ]
  %start.addr.0301.i = phi i32 [ %start, %if.end40.lr.ph.i ], [ %add194.i, %if.end184.i ]
  %pages.addr.0300.i = phi ptr [ %pages, %if.end40.lr.ph.i ], [ %spec.select262.i, %if.end184.i ]
  %nr_pages.addr.0298.i = phi i32 [ %nr_pages, %if.end40.lr.ph.i ], [ %dec.i, %if.end184.i ]
  %5 = ptrtoint ptr %locked to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %locked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool41.not.i = icmp eq i32 %6, 0
  br i1 %tobool41.not.i, label %do.body43.i, label %if.end40.i.if.end79.i_crit_edge

if.end40.i.if.end79.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79.i

do.body43.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call304.i)
  %cmp44.i = icmp slt i32 %call304.i, 0
  br i1 %cmp44.i, label %do.body52.i, label %do.body61.i, !prof !123

do.body52.i:                                      ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1383, 0\0A.popsection", ""() #7, !srcloc !176
  unreachable

do.body61.i:                                      ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_cmp4(i32 %nr_pages.addr.0298.i, i32 %call304.i)
  %cmp62.not.i = icmp ugt i32 %nr_pages.addr.0298.i, %call304.i
  br i1 %cmp62.not.i, label %do.body61.i.if.end79.i_crit_edge, label %do.body70.i, !prof !122

do.body61.i.if.end79.i_crit_edge:                 ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79.i

do.body70.i:                                      ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1384, 0\0A.popsection", ""() #7, !srcloc !177
  unreachable

if.end79.i:                                       ; preds = %do.body61.i.if.end79.i_crit_edge, %if.end40.i.if.end79.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call304.i)
  %cmp80.i = icmp sgt i32 %call304.i, 0
  br i1 %cmp80.i, label %if.then81.i, label %if.end79.i.if.end85.i_crit_edge

if.end79.i.if.end85.i_crit_edge:                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85.i

if.then81.i:                                      ; preds = %if.end79.i
  %sub.i = sub i32 %nr_pages.addr.0298.i, %call304.i
  %add.i = add i32 %pages_done.0302.i, %call304.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool82.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool82.not.i, label %for.end.i, label %if.then81.i.if.end85.i_crit_edge

if.then81.i.if.end85.i_crit_edge:                 ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then81.i.if.end85.i_crit_edge, %if.end79.i.if.end85.i_crit_edge
  %nr_pages.addr.1.i = phi i32 [ %sub.i, %if.then81.i.if.end85.i_crit_edge ], [ %nr_pages.addr.0298.i, %if.end79.i.if.end85.i_crit_edge ]
  %pages_done.1.i = phi i32 [ %add.i, %if.then81.i.if.end85.i_crit_edge ], [ %pages_done.0302.i, %if.end79.i.if.end85.i_crit_edge ]
  br i1 %tobool41.not.i, label %if.end91.i, label %if.then87.i

if.then87.i:                                      ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pages_done.1.i)
  %tobool88.not.i = icmp eq i32 %pages_done.1.i, 0
  %spec.select258.i = select i1 %tobool88.not.i, i32 %call304.i, i32 %pages_done.1.i
  br i1 %lock_dropped.0.off0303.i, label %if.then87.i.land.lhs.true196.i_crit_edge, label %if.then87.i.return_crit_edge

if.then87.i.return_crit_edge:                     ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then87.i.land.lhs.true196.i_crit_edge:         ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true196.i

if.end91.i:                                       ; preds = %if.end85.i
  %tobool92.not.i = icmp eq ptr %pages.addr.0300.i, null
  %add.ptr.i = getelementptr ptr, ptr %pages.addr.0300.i, i32 %call304.i
  %spec.select259.i = select i1 %tobool92.not.i, ptr null, ptr %add.ptr.i, !prof !123
  %shl.i = shl i32 %call304.i, 12
  %add101.i = add i32 %start.addr.0301.i, %shl.i
  br label %retry.i

retry.i:                                          ; preds = %do.body139.i.retry.i_crit_edge, %if.end91.i
  %7 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i, align 8
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stack.i.i.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and1.i.i.i.i.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i263.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i263.i, label %retry.i.if.end109.i_crit_edge, label %fatal_signal_pending.exit.i

retry.i.if.end109.i_crit_edge:                    ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109.i

fatal_signal_pending.exit.i:                      ; preds = %retry.i
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 116, i32 1
  %15 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %signal.i.i.i, align 4
  %17 = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool104.not.i = icmp eq i32 %17, 0
  br i1 %tobool104.not.i, label %fatal_signal_pending.exit.i.if.end109.i_crit_edge, label %if.then105.i

fatal_signal_pending.exit.i.if.end109.i_crit_edge: ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109.i

if.then105.i:                                     ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pages_done.1.i)
  %tobool106.not.i = icmp eq i32 %pages_done.1.i, 0
  %spec.store.select.i = select i1 %tobool106.not.i, i32 -4, i32 %pages_done.1.i
  br label %land.lhs.true196.i

if.end109.i:                                      ; preds = %fatal_signal_pending.exit.i.if.end109.i_crit_edge, %retry.i.if.end109.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@__get_user_pages_remote, %if.then.i.i.i)) #7
          to label %__mmap_lock_trace_start_locking.exit.i.i [label %if.then.i.i.i], !srcloc !126

if.then.i.i.i:                                    ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %mm, i1 noundef zeroext false) #7
  br label %__mmap_lock_trace_start_locking.exit.i.i

__mmap_lock_trace_start_locking.exit.i.i:         ; preds = %if.then.i.i.i, %if.end109.i
  %call.i.i = tail call i32 @down_read_killable(ptr noundef %mmap_lock.i.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@__get_user_pages_remote, %if.then.i4.i.i)) #7
          to label %mmap_read_lock_killable.exit.i [label %if.then.i4.i.i], !srcloc !126

if.then.i4.i.i:                                   ; preds = %__mmap_lock_trace_start_locking.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %mm, i1 noundef zeroext false, i1 noundef zeroext %cmp.i.i) #7
  br label %mmap_read_lock_killable.exit.i

mmap_read_lock_killable.exit.i:                   ; preds = %if.then.i4.i.i, %__mmap_lock_trace_start_locking.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool111.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool111.not.i, label %if.end134.i, label %do.body113.i

do.body113.i:                                     ; preds = %mmap_read_lock_killable.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp114.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp114.i, label %do.body122.i, label %do.end130.i, !prof !123

do.body122.i:                                     ; preds = %do.body113.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1428, 0\0A.popsection", ""() #7, !srcloc !178
  unreachable

do.end130.i:                                      ; preds = %do.body113.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pages_done.1.i)
  %tobool131.not.i = icmp eq i32 %pages_done.1.i, 0
  %spec.select260.i = select i1 %tobool131.not.i, i32 %call.i.i, i32 %pages_done.1.i
  br label %land.lhs.true196.i

if.end134.i:                                      ; preds = %mmap_read_lock_killable.exit.i
  %18 = ptrtoint ptr %locked to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %locked, align 4
  %call136.i = tail call fastcc i32 @__get_user_pages(ptr noundef %mm, i32 noundef %add101.i, i32 noundef 1, i32 noundef %or135.i, ptr noundef %spec.select259.i, ptr noundef null, ptr noundef nonnull %locked) #7
  %19 = ptrtoint ptr %locked to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %locked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool137.not.i = icmp eq i32 %20, 0
  br i1 %tobool137.not.i, label %do.body139.i, label %if.end157.i

do.body139.i:                                     ; preds = %if.end134.i
  %cmp140.not.i = icmp eq i32 %call136.i, 0
  br i1 %cmp140.not.i, label %do.body139.i.retry.i_crit_edge, label %do.body148.i, !prof !122

do.body139.i.retry.i_crit_edge:                   ; preds = %do.body139.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %retry.i

do.body148.i:                                     ; preds = %do.body139.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1439, 0\0A.popsection", ""() #7, !srcloc !179
  unreachable

if.end157.i:                                      ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call136.i)
  %cmp158.not.i = icmp eq i32 %call136.i, 1
  br i1 %cmp158.not.i, label %if.end181.i, label %do.body160.i

do.body160.i:                                     ; preds = %if.end157.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call136.i)
  %cmp161.i = icmp sgt i32 %call136.i, 1
  br i1 %cmp161.i, label %do.body169.i, label %do.end177.i, !prof !123

do.body169.i:                                     ; preds = %do.body160.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1443, 0\0A.popsection", ""() #7, !srcloc !180
  unreachable

do.end177.i:                                      ; preds = %do.body160.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pages_done.1.i)
  %tobool178.not.i = icmp eq i32 %pages_done.1.i, 0
  %spec.select261.i = select i1 %tobool178.not.i, i32 %call136.i, i32 %pages_done.1.i
  br label %land.lhs.true196.i

if.end181.i:                                      ; preds = %if.end157.i
  %dec.i = add i32 %nr_pages.addr.1.i, -1
  %inc.i = add i32 %pages_done.1.i, 1
  %tobool182.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool182.not.i, label %if.end181.i.land.lhs.true196.i_crit_edge, label %if.end184.i

if.end181.i.land.lhs.true196.i_crit_edge:         ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true196.i

if.end184.i:                                      ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #9
  %tobool185.not.i = icmp eq ptr %spec.select259.i, null
  %incdec.ptr.i = getelementptr ptr, ptr %spec.select259.i, i32 1
  %spec.select262.i = select i1 %tobool185.not.i, ptr null, ptr %incdec.ptr.i, !prof !123
  %add194.i = add i32 %add101.i, 4096
  %call.i = tail call fastcc i32 @__get_user_pages(ptr noundef %mm, i32 noundef %add194.i, i32 noundef %dec.i, i32 noundef %flags.addr.0.i, ptr noundef %spec.select262.i, ptr noundef %vmas, ptr noundef nonnull %locked) #7
  br label %if.end40.i

for.end.i:                                        ; preds = %if.then81.i
  br i1 %lock_dropped.0.off0303.i, label %for.end.i.land.lhs.true196.i_crit_edge, label %for.end.i.return_crit_edge

for.end.i.return_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

for.end.i.land.lhs.true196.i_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true196.i

land.lhs.true196.i:                               ; preds = %for.end.i.land.lhs.true196.i_crit_edge, %if.end181.i.land.lhs.true196.i_crit_edge, %do.end177.i, %do.end130.i, %if.then105.i, %if.then87.i.land.lhs.true196.i_crit_edge
  %pages_done.2269.i = phi i32 [ %add.i, %for.end.i.land.lhs.true196.i_crit_edge ], [ %spec.select258.i, %if.then87.i.land.lhs.true196.i_crit_edge ], [ %spec.select261.i, %do.end177.i ], [ %spec.select260.i, %do.end130.i ], [ %spec.store.select.i, %if.then105.i ], [ %inc.i, %if.end181.i.land.lhs.true196.i_crit_edge ]
  %21 = ptrtoint ptr %locked to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %locked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool197.not.i = icmp eq i32 %22, 0
  br i1 %tobool197.not.i, label %land.lhs.true196.i.return_crit_edge, label %if.then198.i

land.lhs.true196.i.return_crit_edge:              ; preds = %land.lhs.true196.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then198.i:                                     ; preds = %land.lhs.true196.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@__get_user_pages_remote, %if.then.i.i264.i)) #7
          to label %mmap_read_unlock.exit.i [label %if.then.i.i264.i], !srcloc !126

if.then.i.i264.i:                                 ; preds = %if.then198.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_released(ptr noundef %mm, i1 noundef zeroext false) #7
  br label %mmap_read_unlock.exit.i

mmap_read_unlock.exit.i:                          ; preds = %if.then.i.i264.i, %if.then198.i
  tail call void @up_read(ptr noundef %mmap_lock.i.i) #7
  %23 = ptrtoint ptr %locked to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %locked, align 4
  br label %return

return:                                           ; preds = %mmap_read_unlock.exit.i, %land.lhs.true196.i.return_crit_edge, %for.end.i.return_crit_edge, %if.then87.i.return_crit_edge, %if.end32.i.return_crit_edge, %if.end40, %if.then9, %land.rhs.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end40 ], [ -22, %if.then9 ], [ -22, %land.rhs.return_crit_edge ], [ %pages_done.2269.i, %mmap_read_unlock.exit.i ], [ %pages_done.2269.i, %land.lhs.true196.i.return_crit_edge ], [ %add.i, %for.end.i.return_crit_edge ], [ %spec.select258.i, %if.then87.i.return_crit_edge ], [ %call297.i, %if.end32.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_user_pages(i32 noundef %start, i32 noundef %nr_pages, i32 noundef %gup_flags, ptr noundef %pages, ptr noundef %vmas) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %gup_flags, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end38.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %entry
  %.b104.i = load i1, ptr @is_valid_gup_flags.__already_done, align 1
  br i1 %.b104.i, label %land.rhs.i.return_crit_edge, label %land.rhs.i.return.sink.split.i_crit_edge, !prof !122

land.rhs.i.return.sink.split.i_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i

land.rhs.i.return_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end38.i:                                       ; preds = %entry
  %and40.i = and i32 %gup_flags, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  br i1 %tobool41.not.i, label %if.end, label %land.rhs48.i

land.rhs48.i:                                     ; preds = %if.end38.i
  %.b102103.i = load i1, ptr @is_valid_gup_flags.__already_done.18, align 1
  br i1 %.b102103.i, label %land.rhs48.i.return_crit_edge, label %land.rhs48.i.return.sink.split.i_crit_edge, !prof !122

land.rhs48.i.return.sink.split.i_crit_edge:       ; preds = %land.rhs48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i

land.rhs48.i.return_crit_edge:                    ; preds = %land.rhs48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return.sink.split.i:                              ; preds = %land.rhs48.i.return.sink.split.i_crit_edge, %land.rhs.i.return.sink.split.i_crit_edge
  %is_valid_gup_flags.__already_done.18.sink.i = phi ptr [ @is_valid_gup_flags.__already_done, %land.rhs.i.return.sink.split.i_crit_edge ], [ @is_valid_gup_flags.__already_done.18, %land.rhs48.i.return.sink.split.i_crit_edge ]
  %.sink.i = phi i32 [ 1964, %land.rhs.i.return.sink.split.i_crit_edge ], [ 1971, %land.rhs48.i.return.sink.split.i_crit_edge ]
  %0 = ptrtoint ptr %is_valid_gup_flags.__already_done.18.sink.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i1 true, ptr %is_valid_gup_flags.__already_done.18.sink.i, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink.i, i32 noundef 9, ptr noundef null) #7
  br label %return

if.end:                                           ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  %1 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i4 = and i32 %1, -16384
  %2 = inttoptr i32 %and.i4 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 53
  %5 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mm, align 8
  %or = or i32 %gup_flags, 2
  %call2 = tail call fastcc i32 @__gup_longterm_locked(ptr noundef %6, i32 noundef %start, i32 noundef %nr_pages, ptr noundef %pages, ptr noundef %vmas, i32 noundef %or)
  br label %return

return:                                           ; preds = %if.end, %return.sink.split.i, %land.rhs48.i.return_crit_edge, %land.rhs.i.return_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %land.rhs.i.return_crit_edge ], [ -22, %land.rhs48.i.return_crit_edge ], [ -22, %return.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__gup_longterm_locked(ptr noundef %mm, i32 noundef %start, i32 noundef %nr_pages, ptr noundef %pages, ptr noundef %vmas, i32 noundef %gup_flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %gup_flags, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %and.i = and i32 %gup_flags, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool29.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool29.not.i, label %if.then.__get_user_pages_locked.exit_crit_edge, label %if.then30.i

if.then.__get_user_pages_locked.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %__get_user_pages_locked.exit

if.then30.i:                                      ; preds = %if.then
  %flags31.i = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 43
  %0 = ptrtoint ptr %flags31.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags31.i, align 4
  %2 = and i32 %1, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then30.i.__get_user_pages_locked.exit_crit_edge

if.then30.i.__get_user_pages_locked.exit_crit_edge: ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__get_user_pages_locked.exit

if.then.i.i:                                      ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 28, ptr noundef %flags31.i) #7
  br label %__get_user_pages_locked.exit

__get_user_pages_locked.exit:                     ; preds = %if.then.i.i, %if.then30.i.__get_user_pages_locked.exit_crit_edge, %if.then.__get_user_pages_locked.exit_crit_edge
  %tobool33.not.i = icmp eq ptr %pages, null
  %or.i = or i32 %gup_flags, 4
  %spec.select.i = select i1 %tobool29.not.i, i32 %or.i, i32 %gup_flags
  %flags.addr.0.i = select i1 %tobool33.not.i, i32 %gup_flags, i32 %spec.select.i
  %call297.i = tail call fastcc i32 @__get_user_pages(ptr noundef %mm, i32 noundef %start, i32 noundef %nr_pages, i32 noundef %flags.addr.0.i, ptr noundef %pages, ptr noundef %vmas, ptr noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task.i, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags1.i, align 4
  %and.i32 = and i32 %8, 268435456
  %or.i33 = or i32 %8, 268435456
  store i32 %or.i33, ptr %flags1.i, align 4
  %and.i20 = and i32 %gup_flags, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20)
  %tobool29.not.i21 = icmp eq i32 %and.i20, 0
  %flags31.i22 = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 43
  %tobool33.not.i26 = icmp eq ptr %pages, null
  %or.i27 = or i32 %gup_flags, 4
  %spec.select.i28 = select i1 %tobool29.not.i21, i32 %or.i27, i32 %gup_flags
  %flags.addr.0.i29 = select i1 %tobool33.not.i26, i32 %gup_flags, i32 %spec.select.i28
  br label %do.body

do.body:                                          ; preds = %if.end4.do.body_crit_edge, %if.end
  br i1 %tobool29.not.i21, label %do.body.__get_user_pages_locked.exit31_crit_edge, label %if.then30.i24

do.body.__get_user_pages_locked.exit31_crit_edge: ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %__get_user_pages_locked.exit31

if.then30.i24:                                    ; preds = %do.body
  %9 = ptrtoint ptr %flags31.i22 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags31.i22, align 4
  %11 = and i32 %10, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i23 = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i23, label %if.then.i.i25, label %if.then30.i24.__get_user_pages_locked.exit31_crit_edge

if.then30.i24.__get_user_pages_locked.exit31_crit_edge: ; preds = %if.then30.i24
  call void @__sanitizer_cov_trace_pc() #9
  br label %__get_user_pages_locked.exit31

if.then.i.i25:                                    ; preds = %if.then30.i24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 28, ptr noundef %flags31.i22) #7
  br label %__get_user_pages_locked.exit31

__get_user_pages_locked.exit31:                   ; preds = %if.then.i.i25, %if.then30.i24.__get_user_pages_locked.exit31_crit_edge, %do.body.__get_user_pages_locked.exit31_crit_edge
  %call297.i30 = tail call fastcc i32 @__get_user_pages(ptr noundef %mm, i32 noundef %start, i32 noundef %nr_pages, i32 noundef %flags.addr.0.i29, ptr noundef %pages, ptr noundef %vmas, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call297.i30)
  %cmp = icmp slt i32 %call297.i30, 1
  br i1 %cmp, label %__get_user_pages_locked.exit31.do.end_crit_edge, label %if.end4

__get_user_pages_locked.exit31.do.end_crit_edge:  ; preds = %__get_user_pages_locked.exit31
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end4:                                          ; preds = %__get_user_pages_locked.exit31
  %call5 = tail call fastcc i32 @check_and_migrate_movable_pages(i32 noundef %call297.i30, ptr noundef %pages, i32 noundef %gup_flags)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.do.body_crit_edge, label %if.end4.do.end_crit_edge

if.end4.do.end_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end4.do.body_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end:                                           ; preds = %if.end4.do.end_crit_edge, %__get_user_pages_locked.exit31.do.end_crit_edge
  %rc.0 = phi i32 [ %call297.i30, %__get_user_pages_locked.exit31.do.end_crit_edge ], [ %call5, %if.end4.do.end_crit_edge ]
  %12 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i.i34 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i34 to ptr
  %task.i35 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i35 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i35, align 8
  %flags1.i36 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %flags1.i36 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags1.i36, align 4
  %and.i37 = and i32 %17, -268435457
  %or.i38 = or i32 %and.i37, %and.i32
  store i32 %or.i38, ptr %flags1.i36, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %__get_user_pages_locked.exit
  %retval.0 = phi i32 [ %rc.0, %do.end ], [ %call297.i, %__get_user_pages_locked.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_user_pages_locked(i32 noundef %start, i32 noundef %nr_pages, i32 noundef %gup_flags, ptr noundef %pages, ptr noundef %locked) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %gup_flags, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end38, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b106 = load i1, ptr @get_user_pages_locked.__already_done, align 1
  br i1 %.b106, label %land.rhs.return_crit_edge, label %if.then, !prof !122

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @get_user_pages_locked.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2170, i32 noundef 9, ptr noundef null) #7
  br label %return

if.end38:                                         ; preds = %entry
  %and40 = and i32 %gup_flags, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end96, label %land.rhs48

land.rhs48:                                       ; preds = %if.end38
  %.b104105 = load i1, ptr @get_user_pages_locked.__already_done.2, align 1
  br i1 %.b104105, label %land.rhs48.return_crit_edge, label %if.then59, !prof !122

land.rhs48.return_crit_edge:                      ; preds = %land.rhs48
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then59:                                        ; preds = %land.rhs48
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @get_user_pages_locked.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2176, i32 noundef 9, ptr noundef null) #7
  br label %return

if.end96:                                         ; preds = %if.end38
  %0 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i109 = and i32 %0, -16384
  %1 = inttoptr i32 %and.i109 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm, align 8
  %tobool.not.i = icmp eq ptr %locked, null
  br i1 %tobool.not.i, label %if.end96.if.end32.i_crit_edge, label %do.body.i

if.end96.if.end32.i_crit_edge:                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i

do.body.i:                                        ; preds = %if.end96
  %6 = ptrtoint ptr %locked to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %locked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 1
  br i1 %cmp.not.i, label %do.body.i.if.end32.i_crit_edge, label %do.body19.i, !prof !122

do.body.i.if.end32.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i

do.body19.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1354, 0\0A.popsection", ""() #7, !srcloc !175
  unreachable

if.end32.i:                                       ; preds = %do.body.i.if.end32.i_crit_edge, %if.end96.if.end32.i_crit_edge
  %tobool33.not.i = icmp eq ptr %pages, null
  %flags.addr.0.i.v = select i1 %tobool33.not.i, i32 2, i32 6
  %flags.addr.0.i = or i32 %flags.addr.0.i.v, %gup_flags
  %call297.i = tail call fastcc i32 @__get_user_pages(ptr noundef %5, i32 noundef %start, i32 noundef %nr_pages, i32 noundef %flags.addr.0.i, ptr noundef %pages, ptr noundef null, ptr noundef %locked) #7
  br i1 %tobool.not.i, label %if.end32.i.return_crit_edge, label %if.end40.lr.ph.i

if.end32.i.return_crit_edge:                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end40.lr.ph.i:                                 ; preds = %if.end32.i
  %mmap_lock.i.i = getelementptr inbounds %struct.anon.9, ptr %5, i32 0, i32 15
  %or135.i = or i32 %flags.addr.0.i, 2048
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.end184.i, %if.end40.lr.ph.i
  %call304.i = phi i32 [ %call297.i, %if.end40.lr.ph.i ], [ %call.i, %if.end184.i ]
  %lock_dropped.0.off0303.i = phi i1 [ false, %if.end40.lr.ph.i ], [ true, %if.end184.i ]
  %pages_done.0302.i = phi i32 [ 0, %if.end40.lr.ph.i ], [ %inc.i, %if.end184.i ]
  %start.addr.0301.i = phi i32 [ %start, %if.end40.lr.ph.i ], [ %add194.i, %if.end184.i ]
  %pages.addr.0300.i = phi ptr [ %pages, %if.end40.lr.ph.i ], [ %spec.select262.i, %if.end184.i ]
  %nr_pages.addr.0298.i = phi i32 [ %nr_pages, %if.end40.lr.ph.i ], [ %dec.i, %if.end184.i ]
  %8 = ptrtoint ptr %locked to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %locked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool41.not.i = icmp eq i32 %9, 0
  br i1 %tobool41.not.i, label %do.body43.i, label %if.end40.i.if.end79.i_crit_edge

if.end40.i.if.end79.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79.i

do.body43.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call304.i)
  %cmp44.i = icmp slt i32 %call304.i, 0
  br i1 %cmp44.i, label %do.body52.i, label %do.body61.i, !prof !123

do.body52.i:                                      ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1383, 0\0A.popsection", ""() #7, !srcloc !176
  unreachable

do.body61.i:                                      ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_cmp4(i32 %nr_pages.addr.0298.i, i32 %call304.i)
  %cmp62.not.i = icmp ugt i32 %nr_pages.addr.0298.i, %call304.i
  br i1 %cmp62.not.i, label %do.body61.i.if.end79.i_crit_edge, label %do.body70.i, !prof !122

do.body61.i.if.end79.i_crit_edge:                 ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79.i

do.body70.i:                                      ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1384, 0\0A.popsection", ""() #7, !srcloc !177
  unreachable

if.end79.i:                                       ; preds = %do.body61.i.if.end79.i_crit_edge, %if.end40.i.if.end79.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call304.i)
  %cmp80.i = icmp sgt i32 %call304.i, 0
  br i1 %cmp80.i, label %if.then81.i, label %if.end79.i.if.end85.i_crit_edge

if.end79.i.if.end85.i_crit_edge:                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85.i

if.then81.i:                                      ; preds = %if.end79.i
  %sub.i = sub i32 %nr_pages.addr.0298.i, %call304.i
  %add.i = add i32 %pages_done.0302.i, %call304.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool82.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool82.not.i, label %for.end.i, label %if.then81.i.if.end85.i_crit_edge

if.then81.i.if.end85.i_crit_edge:                 ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then81.i.if.end85.i_crit_edge, %if.end79.i.if.end85.i_crit_edge
  %nr_pages.addr.1.i = phi i32 [ %sub.i, %if.then81.i.if.end85.i_crit_edge ], [ %nr_pages.addr.0298.i, %if.end79.i.if.end85.i_crit_edge ]
  %pages_done.1.i = phi i32 [ %add.i, %if.then81.i.if.end85.i_crit_edge ], [ %pages_done.0302.i, %if.end79.i.if.end85.i_crit_edge ]
  br i1 %tobool41.not.i, label %if.end91.i, label %if.then87.i

if.then87.i:                                      ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pages_done.1.i)
  %tobool88.not.i = icmp eq i32 %pages_done.1.i, 0
  %spec.select258.i = select i1 %tobool88.not.i, i32 %call304.i, i32 %pages_done.1.i
  br i1 %lock_dropped.0.off0303.i, label %if.then87.i.land.lhs.true196.i_crit_edge, label %if.then87.i.return_crit_edge

if.then87.i.return_crit_edge:                     ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then87.i.land.lhs.true196.i_crit_edge:         ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true196.i

if.end91.i:                                       ; preds = %if.end85.i
  %tobool92.not.i = icmp eq ptr %pages.addr.0300.i, null
  %add.ptr.i = getelementptr ptr, ptr %pages.addr.0300.i, i32 %call304.i
  %spec.select259.i = select i1 %tobool92.not.i, ptr null, ptr %add.ptr.i, !prof !123
  %shl.i = shl i32 %call304.i, 12
  %add101.i = add i32 %start.addr.0301.i, %shl.i
  br label %retry.i

retry.i:                                          ; preds = %do.body139.i.retry.i_crit_edge, %if.end91.i
  %10 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task.i, align 8
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stack.i.i.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %and1.i.i.i.i.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i263.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i263.i, label %retry.i.if.end109.i_crit_edge, label %fatal_signal_pending.exit.i

retry.i.if.end109.i_crit_edge:                    ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109.i

fatal_signal_pending.exit.i:                      ; preds = %retry.i
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 116, i32 1
  %18 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %signal.i.i.i, align 4
  %20 = and i32 %19, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool104.not.i = icmp eq i32 %20, 0
  br i1 %tobool104.not.i, label %fatal_signal_pending.exit.i.if.end109.i_crit_edge, label %if.then105.i

fatal_signal_pending.exit.i.if.end109.i_crit_edge: ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109.i

if.then105.i:                                     ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pages_done.1.i)
  %tobool106.not.i = icmp eq i32 %pages_done.1.i, 0
  %spec.store.select.i = select i1 %tobool106.not.i, i32 -4, i32 %pages_done.1.i
  br label %land.lhs.true196.i

if.end109.i:                                      ; preds = %fatal_signal_pending.exit.i.if.end109.i_crit_edge, %retry.i.if.end109.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@get_user_pages_locked, %if.then.i.i.i)) #7
          to label %__mmap_lock_trace_start_locking.exit.i.i [label %if.then.i.i.i], !srcloc !126

if.then.i.i.i:                                    ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %5, i1 noundef zeroext false) #7
  br label %__mmap_lock_trace_start_locking.exit.i.i

__mmap_lock_trace_start_locking.exit.i.i:         ; preds = %if.then.i.i.i, %if.end109.i
  %call.i.i = tail call i32 @down_read_killable(ptr noundef %mmap_lock.i.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@get_user_pages_locked, %if.then.i4.i.i)) #7
          to label %mmap_read_lock_killable.exit.i [label %if.then.i4.i.i], !srcloc !126

if.then.i4.i.i:                                   ; preds = %__mmap_lock_trace_start_locking.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %5, i1 noundef zeroext false, i1 noundef zeroext %cmp.i.i) #7
  br label %mmap_read_lock_killable.exit.i

mmap_read_lock_killable.exit.i:                   ; preds = %if.then.i4.i.i, %__mmap_lock_trace_start_locking.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool111.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool111.not.i, label %if.end134.i, label %do.body113.i

do.body113.i:                                     ; preds = %mmap_read_lock_killable.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp114.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp114.i, label %do.body122.i, label %do.end130.i, !prof !123

do.body122.i:                                     ; preds = %do.body113.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1428, 0\0A.popsection", ""() #7, !srcloc !178
  unreachable

do.end130.i:                                      ; preds = %do.body113.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pages_done.1.i)
  %tobool131.not.i = icmp eq i32 %pages_done.1.i, 0
  %spec.select260.i = select i1 %tobool131.not.i, i32 %call.i.i, i32 %pages_done.1.i
  br label %land.lhs.true196.i

if.end134.i:                                      ; preds = %mmap_read_lock_killable.exit.i
  %21 = ptrtoint ptr %locked to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %locked, align 4
  %call136.i = tail call fastcc i32 @__get_user_pages(ptr noundef %5, i32 noundef %add101.i, i32 noundef 1, i32 noundef %or135.i, ptr noundef %spec.select259.i, ptr noundef null, ptr noundef nonnull %locked) #7
  %22 = ptrtoint ptr %locked to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %locked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool137.not.i = icmp eq i32 %23, 0
  br i1 %tobool137.not.i, label %do.body139.i, label %if.end157.i

do.body139.i:                                     ; preds = %if.end134.i
  %cmp140.not.i = icmp eq i32 %call136.i, 0
  br i1 %cmp140.not.i, label %do.body139.i.retry.i_crit_edge, label %do.body148.i, !prof !122

do.body139.i.retry.i_crit_edge:                   ; preds = %do.body139.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %retry.i

do.body148.i:                                     ; preds = %do.body139.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1439, 0\0A.popsection", ""() #7, !srcloc !179
  unreachable

if.end157.i:                                      ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call136.i)
  %cmp158.not.i = icmp eq i32 %call136.i, 1
  br i1 %cmp158.not.i, label %if.end181.i, label %do.body160.i

do.body160.i:                                     ; preds = %if.end157.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call136.i)
  %cmp161.i = icmp sgt i32 %call136.i, 1
  br i1 %cmp161.i, label %do.body169.i, label %do.end177.i, !prof !123

do.body169.i:                                     ; preds = %do.body160.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1443, 0\0A.popsection", ""() #7, !srcloc !180
  unreachable

do.end177.i:                                      ; preds = %do.body160.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pages_done.1.i)
  %tobool178.not.i = icmp eq i32 %pages_done.1.i, 0
  %spec.select261.i = select i1 %tobool178.not.i, i32 %call136.i, i32 %pages_done.1.i
  br label %land.lhs.true196.i

if.end181.i:                                      ; preds = %if.end157.i
  %dec.i = add i32 %nr_pages.addr.1.i, -1
  %inc.i = add i32 %pages_done.1.i, 1
  %tobool182.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool182.not.i, label %if.end181.i.land.lhs.true196.i_crit_edge, label %if.end184.i

if.end181.i.land.lhs.true196.i_crit_edge:         ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true196.i

if.end184.i:                                      ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #9
  %tobool185.not.i = icmp eq ptr %spec.select259.i, null
  %incdec.ptr.i = getelementptr ptr, ptr %spec.select259.i, i32 1
  %spec.select262.i = select i1 %tobool185.not.i, ptr null, ptr %incdec.ptr.i, !prof !123
  %add194.i = add i32 %add101.i, 4096
  %call.i = tail call fastcc i32 @__get_user_pages(ptr noundef %5, i32 noundef %add194.i, i32 noundef %dec.i, i32 noundef %flags.addr.0.i, ptr noundef %spec.select262.i, ptr noundef null, ptr noundef nonnull %locked) #7
  br label %if.end40.i

for.end.i:                                        ; preds = %if.then81.i
  br i1 %lock_dropped.0.off0303.i, label %for.end.i.land.lhs.true196.i_crit_edge, label %for.end.i.return_crit_edge

for.end.i.return_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

for.end.i.land.lhs.true196.i_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true196.i

land.lhs.true196.i:                               ; preds = %for.end.i.land.lhs.true196.i_crit_edge, %if.end181.i.land.lhs.true196.i_crit_edge, %do.end177.i, %do.end130.i, %if.then105.i, %if.then87.i.land.lhs.true196.i_crit_edge
  %pages_done.2269.i = phi i32 [ %add.i, %for.end.i.land.lhs.true196.i_crit_edge ], [ %spec.select258.i, %if.then87.i.land.lhs.true196.i_crit_edge ], [ %spec.select261.i, %do.end177.i ], [ %spec.select260.i, %do.end130.i ], [ %spec.store.select.i, %if.then105.i ], [ %inc.i, %if.end181.i.land.lhs.true196.i_crit_edge ]
  %24 = ptrtoint ptr %locked to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %locked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool197.not.i = icmp eq i32 %25, 0
  br i1 %tobool197.not.i, label %land.lhs.true196.i.return_crit_edge, label %if.then198.i

land.lhs.true196.i.return_crit_edge:              ; preds = %land.lhs.true196.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then198.i:                                     ; preds = %land.lhs.true196.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@get_user_pages_locked, %if.then.i.i264.i)) #7
          to label %mmap_read_unlock.exit.i [label %if.then.i.i264.i], !srcloc !126

if.then.i.i264.i:                                 ; preds = %if.then198.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_released(ptr noundef %5, i1 noundef zeroext false) #7
  br label %mmap_read_unlock.exit.i

mmap_read_unlock.exit.i:                          ; preds = %if.then.i.i264.i, %if.then198.i
  tail call void @up_read(ptr noundef %mmap_lock.i.i) #7
  %26 = ptrtoint ptr %locked to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %locked, align 4
  br label %return

return:                                           ; preds = %mmap_read_unlock.exit.i, %land.lhs.true196.i.return_crit_edge, %for.end.i.return_crit_edge, %if.then87.i.return_crit_edge, %if.end32.i.return_crit_edge, %if.then59, %land.rhs48.return_crit_edge, %if.then, %land.rhs.return_crit_edge
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then59 ], [ -22, %land.rhs.return_crit_edge ], [ -22, %land.rhs48.return_crit_edge ], [ %pages_done.2269.i, %mmap_read_unlock.exit.i ], [ %pages_done.2269.i, %land.lhs.true196.i.return_crit_edge ], [ %add.i, %for.end.i.return_crit_edge ], [ %spec.select258.i, %if.then87.i.return_crit_edge ], [ %call297.i, %if.end32.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_user_pages_unlocked(i32 noundef %start, i32 noundef %nr_pages, ptr noundef %pages, i32 noundef %gup_flags) #0 align 64 {
entry:
  %locked = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i53 = and i32 %0, -16384
  %1 = inttoptr i32 %and.i53 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %locked) #7
  %6 = ptrtoint ptr %locked to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %locked, align 4
  %and = and i32 %gup_flags, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end39, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b51 = load i1, ptr @get_user_pages_unlocked.__already_done, align 1
  br i1 %.b51, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !122

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @get_user_pages_unlocked.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2213, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end39:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@get_user_pages_unlocked, %if.then.i.i54)) #7
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i54], !srcloc !126

if.then.i.i54:                                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %5, i1 noundef zeroext false) #7
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i54, %if.end39
  %mmap_lock.i = getelementptr inbounds %struct.anon.9, ptr %5, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@get_user_pages_unlocked, %if.then.i3.i)) #7
          to label %mmap_read_lock.exit [label %if.then.i3.i], !srcloc !126

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %5, i1 noundef zeroext false, i1 noundef zeroext true) #7
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %or = or i32 %gup_flags, 2
  %7 = ptrtoint ptr %locked to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %locked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 1
  br i1 %cmp.not.i, label %if.end28.i, label %do.body19.i, !prof !122

do.body19.i:                                      ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1354, 0\0A.popsection", ""() #7, !srcloc !175
  unreachable

if.end28.i:                                       ; preds = %mmap_read_lock.exit
  %and.i = and i32 %gup_flags, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool29.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool29.not.i, label %if.end28.i.if.end32.i_crit_edge, label %if.then30.i

if.end28.i.if.end32.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i

if.then30.i:                                      ; preds = %if.end28.i
  %flags31.i = getelementptr inbounds %struct.anon.9, ptr %5, i32 0, i32 43
  %9 = ptrtoint ptr %flags31.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags31.i, align 4
  %11 = and i32 %10, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then30.i.if.end32.i_crit_edge

if.then30.i.if.end32.i_crit_edge:                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i

if.then.i.i:                                      ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 28, ptr noundef %flags31.i) #7
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then.i.i, %if.then30.i.if.end32.i_crit_edge, %if.end28.i.if.end32.i_crit_edge
  %tobool33.not.i = icmp eq ptr %pages, null
  %or.i = or i32 %gup_flags, 6
  %spec.select.i = select i1 %tobool29.not.i, i32 %or.i, i32 %or
  %flags.addr.0.i = select i1 %tobool33.not.i, i32 %or, i32 %spec.select.i
  %call297.i = call fastcc i32 @__get_user_pages(ptr noundef %5, i32 noundef %start, i32 noundef %nr_pages, i32 noundef %flags.addr.0.i, ptr noundef %pages, ptr noundef null, ptr noundef nonnull %locked) #7
  %or135.i = or i32 %flags.addr.0.i, 2048
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.end184.i, %if.end32.i
  %call304.i = phi i32 [ %call297.i, %if.end32.i ], [ %call.i, %if.end184.i ]
  %lock_dropped.0.off0303.i = phi i1 [ false, %if.end32.i ], [ true, %if.end184.i ]
  %pages_done.0302.i = phi i32 [ 0, %if.end32.i ], [ %inc.i, %if.end184.i ]
  %start.addr.0301.i = phi i32 [ %start, %if.end32.i ], [ %add194.i, %if.end184.i ]
  %pages.addr.0300.i = phi ptr [ %pages, %if.end32.i ], [ %spec.select262.i, %if.end184.i ]
  %nr_pages.addr.0298.i = phi i32 [ %nr_pages, %if.end32.i ], [ %dec.i, %if.end184.i ]
  %12 = ptrtoint ptr %locked to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %locked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool41.not.i = icmp eq i32 %13, 0
  br i1 %tobool41.not.i, label %do.body43.i, label %if.end40.i.if.end79.i_crit_edge

if.end40.i.if.end79.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79.i

do.body43.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call304.i)
  %cmp44.i = icmp slt i32 %call304.i, 0
  br i1 %cmp44.i, label %do.body52.i, label %do.body61.i, !prof !123

do.body52.i:                                      ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1383, 0\0A.popsection", ""() #7, !srcloc !176
  unreachable

do.body61.i:                                      ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_cmp4(i32 %nr_pages.addr.0298.i, i32 %call304.i)
  %cmp62.not.i = icmp ugt i32 %nr_pages.addr.0298.i, %call304.i
  br i1 %cmp62.not.i, label %do.body61.i.if.end79.i_crit_edge, label %do.body70.i, !prof !122

do.body61.i.if.end79.i_crit_edge:                 ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79.i

do.body70.i:                                      ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1384, 0\0A.popsection", ""() #7, !srcloc !177
  unreachable

if.end79.i:                                       ; preds = %do.body61.i.if.end79.i_crit_edge, %if.end40.i.if.end79.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call304.i)
  %cmp80.i = icmp sgt i32 %call304.i, 0
  br i1 %cmp80.i, label %if.then81.i, label %if.end79.i.if.end85.i_crit_edge

if.end79.i.if.end85.i_crit_edge:                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85.i

if.then81.i:                                      ; preds = %if.end79.i
  %sub.i = sub i32 %nr_pages.addr.0298.i, %call304.i
  %add.i = add i32 %pages_done.0302.i, %call304.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool82.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool82.not.i, label %for.end.i, label %if.then81.i.if.end85.i_crit_edge

if.then81.i.if.end85.i_crit_edge:                 ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then81.i.if.end85.i_crit_edge, %if.end79.i.if.end85.i_crit_edge
  %nr_pages.addr.1.i = phi i32 [ %sub.i, %if.then81.i.if.end85.i_crit_edge ], [ %nr_pages.addr.0298.i, %if.end79.i.if.end85.i_crit_edge ]
  %pages_done.1.i = phi i32 [ %add.i, %if.then81.i.if.end85.i_crit_edge ], [ %pages_done.0302.i, %if.end79.i.if.end85.i_crit_edge ]
  br i1 %tobool41.not.i, label %if.end91.i, label %if.then87.i

if.then87.i:                                      ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pages_done.1.i)
  %tobool88.not.i = icmp eq i32 %pages_done.1.i, 0
  %spec.select258.i = select i1 %tobool88.not.i, i32 %call304.i, i32 %pages_done.1.i
  br i1 %lock_dropped.0.off0303.i, label %if.then87.i.land.lhs.true196.i_crit_edge, label %if.then87.i.__get_user_pages_locked.exit_crit_edge

if.then87.i.__get_user_pages_locked.exit_crit_edge: ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__get_user_pages_locked.exit

if.then87.i.land.lhs.true196.i_crit_edge:         ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true196.i

if.end91.i:                                       ; preds = %if.end85.i
  %tobool92.not.i = icmp eq ptr %pages.addr.0300.i, null
  %add.ptr.i = getelementptr ptr, ptr %pages.addr.0300.i, i32 %call304.i
  %spec.select259.i = select i1 %tobool92.not.i, ptr null, ptr %add.ptr.i, !prof !123
  %shl.i = shl i32 %call304.i, 12
  %add101.i = add i32 %start.addr.0301.i, %shl.i
  br label %retry.i

retry.i:                                          ; preds = %do.body139.i.retry.i_crit_edge, %if.end91.i
  %14 = call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task.i, align 8
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stack.i.i.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  %and1.i.i.i.i.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i263.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i263.i, label %retry.i.if.end109.i_crit_edge, label %fatal_signal_pending.exit.i

retry.i.if.end109.i_crit_edge:                    ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109.i

fatal_signal_pending.exit.i:                      ; preds = %retry.i
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 116, i32 1
  %22 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %signal.i.i.i, align 4
  %24 = and i32 %23, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool104.not.i = icmp eq i32 %24, 0
  br i1 %tobool104.not.i, label %fatal_signal_pending.exit.i.if.end109.i_crit_edge, label %if.then105.i

fatal_signal_pending.exit.i.if.end109.i_crit_edge: ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109.i

if.then105.i:                                     ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pages_done.1.i)
  %tobool106.not.i = icmp eq i32 %pages_done.1.i, 0
  %spec.store.select.i = select i1 %tobool106.not.i, i32 -4, i32 %pages_done.1.i
  br label %land.lhs.true196.i

if.end109.i:                                      ; preds = %fatal_signal_pending.exit.i.if.end109.i_crit_edge, %retry.i.if.end109.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@get_user_pages_unlocked, %if.then.i.i.i)) #7
          to label %__mmap_lock_trace_start_locking.exit.i.i [label %if.then.i.i.i], !srcloc !126

if.then.i.i.i:                                    ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %5, i1 noundef zeroext false) #7
  br label %__mmap_lock_trace_start_locking.exit.i.i

__mmap_lock_trace_start_locking.exit.i.i:         ; preds = %if.then.i.i.i, %if.end109.i
  %call.i.i = call i32 @down_read_killable(ptr noundef %mmap_lock.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@get_user_pages_unlocked, %if.then.i4.i.i)) #7
          to label %mmap_read_lock_killable.exit.i [label %if.then.i4.i.i], !srcloc !126

if.then.i4.i.i:                                   ; preds = %__mmap_lock_trace_start_locking.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %5, i1 noundef zeroext false, i1 noundef zeroext %cmp.i.i) #7
  br label %mmap_read_lock_killable.exit.i

mmap_read_lock_killable.exit.i:                   ; preds = %if.then.i4.i.i, %__mmap_lock_trace_start_locking.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool111.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool111.not.i, label %if.end134.i, label %do.body113.i

do.body113.i:                                     ; preds = %mmap_read_lock_killable.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp114.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp114.i, label %do.body122.i, label %do.end130.i, !prof !123

do.body122.i:                                     ; preds = %do.body113.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1428, 0\0A.popsection", ""() #7, !srcloc !178
  unreachable

do.end130.i:                                      ; preds = %do.body113.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pages_done.1.i)
  %tobool131.not.i = icmp eq i32 %pages_done.1.i, 0
  %spec.select260.i = select i1 %tobool131.not.i, i32 %call.i.i, i32 %pages_done.1.i
  br label %land.lhs.true196.i

if.end134.i:                                      ; preds = %mmap_read_lock_killable.exit.i
  %25 = ptrtoint ptr %locked to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %locked, align 4
  %call136.i = call fastcc i32 @__get_user_pages(ptr noundef %5, i32 noundef %add101.i, i32 noundef 1, i32 noundef %or135.i, ptr noundef %spec.select259.i, ptr noundef null, ptr noundef nonnull %locked) #7
  %26 = ptrtoint ptr %locked to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %locked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool137.not.i = icmp eq i32 %27, 0
  br i1 %tobool137.not.i, label %do.body139.i, label %if.end157.i

do.body139.i:                                     ; preds = %if.end134.i
  %cmp140.not.i = icmp eq i32 %call136.i, 0
  br i1 %cmp140.not.i, label %do.body139.i.retry.i_crit_edge, label %do.body148.i, !prof !122

do.body139.i.retry.i_crit_edge:                   ; preds = %do.body139.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %retry.i

do.body148.i:                                     ; preds = %do.body139.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1439, 0\0A.popsection", ""() #7, !srcloc !179
  unreachable

if.end157.i:                                      ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call136.i)
  %cmp158.not.i = icmp eq i32 %call136.i, 1
  br i1 %cmp158.not.i, label %if.end181.i, label %do.body160.i

do.body160.i:                                     ; preds = %if.end157.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call136.i)
  %cmp161.i = icmp sgt i32 %call136.i, 1
  br i1 %cmp161.i, label %do.body169.i, label %do.end177.i, !prof !123

do.body169.i:                                     ; preds = %do.body160.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1443, 0\0A.popsection", ""() #7, !srcloc !180
  unreachable

do.end177.i:                                      ; preds = %do.body160.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pages_done.1.i)
  %tobool178.not.i = icmp eq i32 %pages_done.1.i, 0
  %spec.select261.i = select i1 %tobool178.not.i, i32 %call136.i, i32 %pages_done.1.i
  br label %land.lhs.true196.i

if.end181.i:                                      ; preds = %if.end157.i
  %dec.i = add i32 %nr_pages.addr.1.i, -1
  %inc.i = add i32 %pages_done.1.i, 1
  %tobool182.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool182.not.i, label %if.end181.i.land.lhs.true196.i_crit_edge, label %if.end184.i

if.end181.i.land.lhs.true196.i_crit_edge:         ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true196.i

if.end184.i:                                      ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #9
  %tobool185.not.i = icmp eq ptr %spec.select259.i, null
  %incdec.ptr.i = getelementptr ptr, ptr %spec.select259.i, i32 1
  %spec.select262.i = select i1 %tobool185.not.i, ptr null, ptr %incdec.ptr.i, !prof !123
  %add194.i = add i32 %add101.i, 4096
  %call.i = call fastcc i32 @__get_user_pages(ptr noundef %5, i32 noundef %add194.i, i32 noundef %dec.i, i32 noundef %flags.addr.0.i, ptr noundef %spec.select262.i, ptr noundef null, ptr noundef nonnull %locked) #7
  br label %if.end40.i

for.end.i:                                        ; preds = %if.then81.i
  br i1 %lock_dropped.0.off0303.i, label %for.end.i.land.lhs.true196.i_crit_edge, label %for.end.i.__get_user_pages_locked.exit_crit_edge

for.end.i.__get_user_pages_locked.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__get_user_pages_locked.exit

for.end.i.land.lhs.true196.i_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true196.i

land.lhs.true196.i:                               ; preds = %for.end.i.land.lhs.true196.i_crit_edge, %if.end181.i.land.lhs.true196.i_crit_edge, %do.end177.i, %do.end130.i, %if.then105.i, %if.then87.i.land.lhs.true196.i_crit_edge
  %pages_done.2269.i = phi i32 [ %add.i, %for.end.i.land.lhs.true196.i_crit_edge ], [ %spec.select258.i, %if.then87.i.land.lhs.true196.i_crit_edge ], [ %spec.select261.i, %do.end177.i ], [ %spec.select260.i, %do.end130.i ], [ %spec.store.select.i, %if.then105.i ], [ %inc.i, %if.end181.i.land.lhs.true196.i_crit_edge ]
  %28 = ptrtoint ptr %locked to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %locked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool197.not.i = icmp eq i32 %29, 0
  br i1 %tobool197.not.i, label %land.lhs.true196.i.cleanup_crit_edge, label %if.then198.i

land.lhs.true196.i.cleanup_crit_edge:             ; preds = %land.lhs.true196.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then198.i:                                     ; preds = %land.lhs.true196.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@get_user_pages_unlocked, %if.then.i.i264.i)) #7
          to label %mmap_read_unlock.exit.i [label %if.then.i.i264.i], !srcloc !126

if.then.i.i264.i:                                 ; preds = %if.then198.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__mmap_lock_do_trace_released(ptr noundef %5, i1 noundef zeroext false) #7
  br label %mmap_read_unlock.exit.i

mmap_read_unlock.exit.i:                          ; preds = %if.then.i.i264.i, %if.then198.i
  call void @up_read(ptr noundef %mmap_lock.i) #7
  br label %cleanup

__get_user_pages_locked.exit:                     ; preds = %for.end.i.__get_user_pages_locked.exit_crit_edge, %if.then87.i.__get_user_pages_locked.exit_crit_edge
  %retval.0.i.ph = phi i32 [ %spec.select258.i, %if.then87.i.__get_user_pages_locked.exit_crit_edge ], [ %add.i, %for.end.i.__get_user_pages_locked.exit_crit_edge ]
  %30 = ptrtoint ptr %locked to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr = load i32, ptr %locked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool41.not = icmp eq i32 %.pr, 0
  br i1 %tobool41.not, label %__get_user_pages_locked.exit.cleanup_crit_edge, label %if.then42

__get_user_pages_locked.exit.cleanup_crit_edge:   ; preds = %__get_user_pages_locked.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then42:                                        ; preds = %__get_user_pages_locked.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@get_user_pages_unlocked, %if.then.i.i55)) #7
          to label %mmap_read_unlock.exit [label %if.then.i.i55], !srcloc !126

if.then.i.i55:                                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  call void @__mmap_lock_do_trace_released(ptr noundef %5, i1 noundef zeroext false) #7
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i55, %if.then42
  call void @up_read(ptr noundef %mmap_lock.i) #7
  br label %cleanup

cleanup:                                          ; preds = %mmap_read_unlock.exit, %__get_user_pages_locked.exit.cleanup_crit_edge, %mmap_read_unlock.exit.i, %land.lhs.true196.i.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then ], [ %retval.0.i.ph, %mmap_read_unlock.exit ], [ %retval.0.i.ph, %__get_user_pages_locked.exit.cleanup_crit_edge ], [ -22, %land.rhs.cleanup_crit_edge ], [ %pages_done.2269.i, %land.lhs.true196.i.cleanup_crit_edge ], [ %pages_done.2269.i, %mmap_read_unlock.exit.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %locked) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_user_pages_fast_only(i32 noundef %start, i32 noundef %nr_pages, i32 noundef %gup_flags, ptr noundef %pages) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %or = or i32 %gup_flags, 524292
  %call = tail call fastcc i32 @internal_get_user_pages_fast(i32 noundef %start, i32 noundef %nr_pages, i32 noundef %or, ptr noundef %pages)
  %0 = tail call i32 @llvm.smax.i32(i32 %call, i32 0)
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @internal_get_user_pages_fast(i32 noundef %start, i32 noundef %nr_pages, i32 noundef %gup_flags, ptr noundef %pages) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %gup_flags, -852118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end38, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b134 = load i1, ptr @internal_get_user_pages_fast.__already_done, align 1
  br i1 %.b134, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !122

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @internal_get_user_pages_fast.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2858, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end38:                                         ; preds = %entry
  %and39 = and i32 %gup_flags, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end38.if.end42_crit_edge, label %if.then41

if.end38.if.end42_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then41:                                        ; preds = %if.end38
  %0 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm, align 8
  %flags = getelementptr inbounds %struct.anon.9, ptr %5, i32 0, i32 43
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then41.if.end42_crit_edge

if.then41.if.end42_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then.i:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 28, ptr noundef %flags) #7
  br label %if.end42

if.end42:                                         ; preds = %if.then.i, %if.then41.if.end42_crit_edge, %if.end38.if.end42_crit_edge
  %and43 = and i32 %gup_flags, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %__here, label %if.end42.if.end61_crit_edge

if.end42.if.end61_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

__here:                                           ; preds = %if.end42
  %9 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i136 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i136 to ptr
  %task49 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task49 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task49, align 8
  %mm50 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 53
  %13 = ptrtoint ptr %mm50 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mm50, align 8
  %dep_map = getelementptr inbounds %struct.anon.9, ptr %14, i32 0, i32 15, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@internal_get_user_pages_fast, %__here) to i32)) #7
  br label %__here57

__here57:                                         ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %task49 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task49, align 8
  %mm54 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 53
  %17 = ptrtoint ptr %mm54 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mm54, align 8
  %dep_map56 = getelementptr inbounds %struct.anon.9, ptr %18, i32 0, i32 15, i32 6
  tail call void @lock_release(ptr noundef %dep_map56, i32 noundef ptrtoint (ptr blockaddress(@internal_get_user_pages_fast, %__here57) to i32)) #7
  br label %if.end61

if.end61:                                         ; preds = %__here57, %if.end42.if.end61_crit_edge
  %and62 = and i32 %start, -4096
  %shl = shl i32 %nr_pages, 12
  %19 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %and62, i32 %shl)
  %20 = extractvalue { i32, i1 } %19, 1
  br i1 %20, label %if.end61.cleanup_crit_edge, label %if.end72

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end72:                                         ; preds = %if.end61
  %21 = inttoptr i32 %and62 to ptr
  %22 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %21, i32 %shl, i32 -1226833920) #10, !srcloc !182
  %asmresult = extractvalue { i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %cmp75.not = icmp eq i32 %asmresult, 0
  br i1 %cmp75.not, label %if.end86, label %if.end72.cleanup_crit_edge, !prof !122

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end86:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_pages)
  %cmp88 = icmp ne i32 %nr_pages, 0
  %23 = and i1 %cmp88, %tobool44.not
  br i1 %23, label %if.end93, label %if.end86.cleanup_crit_edge

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end93:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  %call95 = tail call fastcc i32 @__gup_longterm_unlocked(i32 noundef %and62, i32 noundef %nr_pages, i32 noundef %gup_flags, ptr noundef %pages)
  br label %cleanup

cleanup:                                          ; preds = %if.end93, %if.end86.cleanup_crit_edge, %if.end72.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.end61.cleanup_crit_edge ], [ -14, %if.end72.cleanup_crit_edge ], [ 0, %if.end86.cleanup_crit_edge ], [ %call95, %if.end93 ], [ -22, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_user_pages_fast(i32 noundef %start, i32 noundef %nr_pages, i32 noundef %gup_flags, ptr noundef %pages) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %gup_flags, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end38.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %entry
  %.b104.i = load i1, ptr @is_valid_gup_flags.__already_done, align 1
  br i1 %.b104.i, label %land.rhs.i.return_crit_edge, label %land.rhs.i.return.sink.split.i_crit_edge, !prof !122

land.rhs.i.return.sink.split.i_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i

land.rhs.i.return_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end38.i:                                       ; preds = %entry
  %and40.i = and i32 %gup_flags, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  br i1 %tobool41.not.i, label %if.end, label %land.rhs48.i

land.rhs48.i:                                     ; preds = %if.end38.i
  %.b102103.i = load i1, ptr @is_valid_gup_flags.__already_done.18, align 1
  br i1 %.b102103.i, label %land.rhs48.i.return_crit_edge, label %land.rhs48.i.return.sink.split.i_crit_edge, !prof !122

land.rhs48.i.return.sink.split.i_crit_edge:       ; preds = %land.rhs48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i

land.rhs48.i.return_crit_edge:                    ; preds = %land.rhs48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return.sink.split.i:                              ; preds = %land.rhs48.i.return.sink.split.i_crit_edge, %land.rhs.i.return.sink.split.i_crit_edge
  %is_valid_gup_flags.__already_done.18.sink.i = phi ptr [ @is_valid_gup_flags.__already_done, %land.rhs.i.return.sink.split.i_crit_edge ], [ @is_valid_gup_flags.__already_done.18, %land.rhs48.i.return.sink.split.i_crit_edge ]
  %.sink.i = phi i32 [ 1964, %land.rhs.i.return.sink.split.i_crit_edge ], [ 1971, %land.rhs48.i.return.sink.split.i_crit_edge ]
  %0 = ptrtoint ptr %is_valid_gup_flags.__already_done.18.sink.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i1 true, ptr %is_valid_gup_flags.__already_done.18.sink.i, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink.i, i32 noundef 9, ptr noundef null) #7
  br label %return

if.end:                                           ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %gup_flags, 4
  %call1 = tail call fastcc i32 @internal_get_user_pages_fast(i32 noundef %start, i32 noundef %nr_pages, i32 noundef %or, ptr noundef %pages)
  br label %return

return:                                           ; preds = %if.end, %return.sink.split.i, %land.rhs48.i.return_crit_edge, %land.rhs.i.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %land.rhs.i.return_crit_edge ], [ -22, %land.rhs48.i.return_crit_edge ], [ -22, %return.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pin_user_pages_fast(i32 noundef %start, i32 noundef %nr_pages, i32 noundef %gup_flags, ptr noundef %pages) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %gup_flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end38, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b43 = load i1, ptr @pin_user_pages_fast.__already_done, align 1
  br i1 %.b43, label %land.rhs.return_crit_edge, label %if.then, !prof !122

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @pin_user_pages_fast.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2997, i32 noundef 9, ptr noundef null) #7
  br label %return

if.end38:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %gup_flags, 262144
  %call = tail call fastcc i32 @internal_get_user_pages_fast(i32 noundef %start, i32 noundef %nr_pages, i32 noundef %or, ptr noundef %pages)
  br label %return

return:                                           ; preds = %if.end38, %if.then, %land.rhs.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end38 ], [ -22, %if.then ], [ -22, %land.rhs.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pin_user_pages_fast_only(i32 noundef %start, i32 noundef %nr_pages, i32 noundef %gup_flags, ptr noundef %pages) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %gup_flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end38, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b46 = load i1, ptr @pin_user_pages_fast_only.__already_done, align 1
  br i1 %.b46, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !122

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @pin_user_pages_fast_only.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3020, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end38:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %gup_flags, 786432
  %call = tail call fastcc i32 @internal_get_user_pages_fast(i32 noundef %start, i32 noundef %nr_pages, i32 noundef %or, ptr noundef %pages)
  %0 = tail call i32 @llvm.smax.i32(i32 %call, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.end38 ], [ 0, %if.then ], [ 0, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pin_user_pages_remote(ptr noundef %mm, i32 noundef %start, i32 noundef %nr_pages, i32 noundef %gup_flags, ptr noundef %pages, ptr noundef %vmas, ptr noundef %locked) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %gup_flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end38, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b43 = load i1, ptr @pin_user_pages_remote.__already_done, align 1
  br i1 %.b43, label %land.rhs.return_crit_edge, label %if.then, !prof !122

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @pin_user_pages_remote.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3070, i32 noundef 9, ptr noundef null) #7
  br label %return

if.end38:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %gup_flags, 262144
  %call = tail call fastcc i32 @__get_user_pages_remote(ptr noundef %mm, i32 noundef %start, i32 noundef %nr_pages, i32 noundef %or, ptr noundef %pages, ptr noundef %vmas, ptr noundef %locked)
  br label %return

return:                                           ; preds = %if.end38, %if.then, %land.rhs.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end38 ], [ -22, %if.then ], [ -22, %land.rhs.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pin_user_pages(i32 noundef %start, i32 noundef %nr_pages, i32 noundef %gup_flags, ptr noundef %pages, ptr noundef %vmas) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %gup_flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end38, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b44 = load i1, ptr @pin_user_pages.__already_done, align 1
  br i1 %.b44, label %land.rhs.return_crit_edge, label %if.then, !prof !122

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @pin_user_pages.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3102, i32 noundef 9, ptr noundef null) #7
  br label %return

if.end38:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %gup_flags, 262144
  %0 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm, align 8
  %call39 = tail call fastcc i32 @__gup_longterm_locked(ptr noundef %5, i32 noundef %start, i32 noundef %nr_pages, ptr noundef %pages, ptr noundef %vmas, i32 noundef %or)
  br label %return

return:                                           ; preds = %if.end38, %if.then, %land.rhs.return_crit_edge
  %retval.0 = phi i32 [ %call39, %if.end38 ], [ -22, %if.then ], [ -22, %land.rhs.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pin_user_pages_unlocked(i32 noundef %start, i32 noundef %nr_pages, ptr noundef %pages, i32 noundef %gup_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %gup_flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end38, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b43 = load i1, ptr @pin_user_pages_unlocked.__already_done, align 1
  br i1 %.b43, label %land.rhs.return_crit_edge, label %if.then, !prof !122

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @pin_user_pages_unlocked.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3120, i32 noundef 9, ptr noundef null) #7
  br label %return

if.end38:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %gup_flags, 262144
  %call = tail call i32 @get_user_pages_unlocked(i32 noundef %start, i32 noundef %nr_pages, ptr noundef %pages, i32 noundef %or)
  br label %return

return:                                           ; preds = %if.end38, %if.then, %land.rhs.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end38 ], [ -22, %if.then ], [ -22, %land.rhs.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pin_user_pages_locked(i32 noundef %start, i32 noundef %nr_pages, i32 noundef %gup_flags, ptr noundef %pages, ptr noundef %locked) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %gup_flags, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end38, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b108 = load i1, ptr @pin_user_pages_locked.__already_done, align 1
  br i1 %.b108, label %land.rhs.return_crit_edge, label %if.then, !prof !122

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @pin_user_pages_locked.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3143, i32 noundef 9, ptr noundef null) #7
  br label %return

if.end38:                                         ; preds = %entry
  %and40 = and i32 %gup_flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end96, label %land.rhs48

land.rhs48:                                       ; preds = %if.end38
  %.b106107 = load i1, ptr @pin_user_pages_locked.__already_done.3, align 1
  br i1 %.b106107, label %land.rhs48.return_crit_edge, label %if.then59, !prof !122

land.rhs48.return_crit_edge:                      ; preds = %land.rhs48
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then59:                                        ; preds = %land.rhs48
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @pin_user_pages_locked.__already_done.3, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3147, i32 noundef 9, ptr noundef null) #7
  br label %return

if.end96:                                         ; preds = %if.end38
  %0 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i111 = and i32 %0, -16384
  %1 = inttoptr i32 %and.i111 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm, align 8
  %or97 = or i32 %gup_flags, 262146
  %tobool.not.i = icmp eq ptr %locked, null
  br i1 %tobool.not.i, label %if.end96.if.end28.i_crit_edge, label %do.body.i

if.end96.if.end28.i_crit_edge:                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i

do.body.i:                                        ; preds = %if.end96
  %6 = ptrtoint ptr %locked to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %locked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 1
  br i1 %cmp.not.i, label %do.body.i.if.end28.i_crit_edge, label %do.body19.i, !prof !122

do.body.i.if.end28.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i

do.body19.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1354, 0\0A.popsection", ""() #7, !srcloc !175
  unreachable

if.end28.i:                                       ; preds = %do.body.i.if.end28.i_crit_edge, %if.end96.if.end28.i_crit_edge
  %flags31.i = getelementptr inbounds %struct.anon.9, ptr %5, i32 0, i32 43
  %8 = ptrtoint ptr %flags31.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags31.i, align 4
  %10 = and i32 %9, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end28.i.if.end32.i_crit_edge

if.end28.i.if.end32.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i

if.then.i.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 28, ptr noundef %flags31.i) #7
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then.i.i, %if.end28.i.if.end32.i_crit_edge
  %call297.i = tail call fastcc i32 @__get_user_pages(ptr noundef %5, i32 noundef %start, i32 noundef %nr_pages, i32 noundef %or97, ptr noundef %pages, ptr noundef null, ptr noundef %locked) #7
  br i1 %tobool.not.i, label %if.end32.i.return_crit_edge, label %if.end40.lr.ph.i

if.end32.i.return_crit_edge:                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end40.lr.ph.i:                                 ; preds = %if.end32.i
  %mmap_lock.i.i = getelementptr inbounds %struct.anon.9, ptr %5, i32 0, i32 15
  %or135.i = or i32 %gup_flags, 264194
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.end184.i, %if.end40.lr.ph.i
  %call304.i = phi i32 [ %call297.i, %if.end40.lr.ph.i ], [ %call.i, %if.end184.i ]
  %lock_dropped.0.off0303.i = phi i1 [ false, %if.end40.lr.ph.i ], [ true, %if.end184.i ]
  %pages_done.0302.i = phi i32 [ 0, %if.end40.lr.ph.i ], [ %inc.i, %if.end184.i ]
  %start.addr.0301.i = phi i32 [ %start, %if.end40.lr.ph.i ], [ %add194.i, %if.end184.i ]
  %pages.addr.0300.i = phi ptr [ %pages, %if.end40.lr.ph.i ], [ %spec.select262.i, %if.end184.i ]
  %nr_pages.addr.0298.i = phi i32 [ %nr_pages, %if.end40.lr.ph.i ], [ %dec.i, %if.end184.i ]
  %11 = ptrtoint ptr %locked to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %locked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool41.not.i = icmp eq i32 %12, 0
  br i1 %tobool41.not.i, label %do.body43.i, label %if.end40.i.if.end79.i_crit_edge

if.end40.i.if.end79.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79.i

do.body43.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call304.i)
  %cmp44.i = icmp slt i32 %call304.i, 0
  br i1 %cmp44.i, label %do.body52.i, label %do.body61.i, !prof !123

do.body52.i:                                      ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1383, 0\0A.popsection", ""() #7, !srcloc !176
  unreachable

do.body61.i:                                      ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_cmp4(i32 %nr_pages.addr.0298.i, i32 %call304.i)
  %cmp62.not.i = icmp ugt i32 %nr_pages.addr.0298.i, %call304.i
  br i1 %cmp62.not.i, label %do.body61.i.if.end79.i_crit_edge, label %do.body70.i, !prof !122

do.body61.i.if.end79.i_crit_edge:                 ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79.i

do.body70.i:                                      ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1384, 0\0A.popsection", ""() #7, !srcloc !177
  unreachable

if.end79.i:                                       ; preds = %do.body61.i.if.end79.i_crit_edge, %if.end40.i.if.end79.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call304.i)
  %cmp80.i = icmp sgt i32 %call304.i, 0
  br i1 %cmp80.i, label %if.then81.i, label %if.end79.i.if.end85.i_crit_edge

if.end79.i.if.end85.i_crit_edge:                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85.i

if.then81.i:                                      ; preds = %if.end79.i
  %sub.i = sub i32 %nr_pages.addr.0298.i, %call304.i
  %add.i = add i32 %pages_done.0302.i, %call304.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool82.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool82.not.i, label %for.end.i, label %if.then81.i.if.end85.i_crit_edge

if.then81.i.if.end85.i_crit_edge:                 ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then81.i.if.end85.i_crit_edge, %if.end79.i.if.end85.i_crit_edge
  %nr_pages.addr.1.i = phi i32 [ %sub.i, %if.then81.i.if.end85.i_crit_edge ], [ %nr_pages.addr.0298.i, %if.end79.i.if.end85.i_crit_edge ]
  %pages_done.1.i = phi i32 [ %add.i, %if.then81.i.if.end85.i_crit_edge ], [ %pages_done.0302.i, %if.end79.i.if.end85.i_crit_edge ]
  br i1 %tobool41.not.i, label %if.end91.i, label %if.then87.i

if.then87.i:                                      ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pages_done.1.i)
  %tobool88.not.i = icmp eq i32 %pages_done.1.i, 0
  %spec.select258.i = select i1 %tobool88.not.i, i32 %call304.i, i32 %pages_done.1.i
  br i1 %lock_dropped.0.off0303.i, label %if.then87.i.land.lhs.true196.i_crit_edge, label %if.then87.i.return_crit_edge

if.then87.i.return_crit_edge:                     ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then87.i.land.lhs.true196.i_crit_edge:         ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true196.i

if.end91.i:                                       ; preds = %if.end85.i
  %tobool92.not.i = icmp eq ptr %pages.addr.0300.i, null
  %add.ptr.i = getelementptr ptr, ptr %pages.addr.0300.i, i32 %call304.i
  %spec.select259.i = select i1 %tobool92.not.i, ptr null, ptr %add.ptr.i, !prof !123
  %shl.i = shl i32 %call304.i, 12
  %add101.i = add i32 %start.addr.0301.i, %shl.i
  br label %retry.i

retry.i:                                          ; preds = %do.body139.i.retry.i_crit_edge, %if.end91.i
  %13 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i, align 8
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stack.i.i.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %18, align 4
  %and1.i.i.i.i.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i263.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i263.i, label %retry.i.if.end109.i_crit_edge, label %fatal_signal_pending.exit.i

retry.i.if.end109.i_crit_edge:                    ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109.i

fatal_signal_pending.exit.i:                      ; preds = %retry.i
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 116, i32 1
  %21 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %signal.i.i.i, align 4
  %23 = and i32 %22, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool104.not.i = icmp eq i32 %23, 0
  br i1 %tobool104.not.i, label %fatal_signal_pending.exit.i.if.end109.i_crit_edge, label %if.then105.i

fatal_signal_pending.exit.i.if.end109.i_crit_edge: ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109.i

if.then105.i:                                     ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pages_done.1.i)
  %tobool106.not.i = icmp eq i32 %pages_done.1.i, 0
  %spec.store.select.i = select i1 %tobool106.not.i, i32 -4, i32 %pages_done.1.i
  br label %land.lhs.true196.i

if.end109.i:                                      ; preds = %fatal_signal_pending.exit.i.if.end109.i_crit_edge, %retry.i.if.end109.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@pin_user_pages_locked, %if.then.i.i.i)) #7
          to label %__mmap_lock_trace_start_locking.exit.i.i [label %if.then.i.i.i], !srcloc !126

if.then.i.i.i:                                    ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %5, i1 noundef zeroext false) #7
  br label %__mmap_lock_trace_start_locking.exit.i.i

__mmap_lock_trace_start_locking.exit.i.i:         ; preds = %if.then.i.i.i, %if.end109.i
  %call.i.i = tail call i32 @down_read_killable(ptr noundef %mmap_lock.i.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@pin_user_pages_locked, %if.then.i4.i.i)) #7
          to label %mmap_read_lock_killable.exit.i [label %if.then.i4.i.i], !srcloc !126

if.then.i4.i.i:                                   ; preds = %__mmap_lock_trace_start_locking.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %5, i1 noundef zeroext false, i1 noundef zeroext %cmp.i.i) #7
  br label %mmap_read_lock_killable.exit.i

mmap_read_lock_killable.exit.i:                   ; preds = %if.then.i4.i.i, %__mmap_lock_trace_start_locking.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool111.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool111.not.i, label %if.end134.i, label %do.body113.i

do.body113.i:                                     ; preds = %mmap_read_lock_killable.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp114.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp114.i, label %do.body122.i, label %do.end130.i, !prof !123

do.body122.i:                                     ; preds = %do.body113.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1428, 0\0A.popsection", ""() #7, !srcloc !178
  unreachable

do.end130.i:                                      ; preds = %do.body113.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pages_done.1.i)
  %tobool131.not.i = icmp eq i32 %pages_done.1.i, 0
  %spec.select260.i = select i1 %tobool131.not.i, i32 %call.i.i, i32 %pages_done.1.i
  br label %land.lhs.true196.i

if.end134.i:                                      ; preds = %mmap_read_lock_killable.exit.i
  %24 = ptrtoint ptr %locked to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %locked, align 4
  %call136.i = tail call fastcc i32 @__get_user_pages(ptr noundef %5, i32 noundef %add101.i, i32 noundef 1, i32 noundef %or135.i, ptr noundef %spec.select259.i, ptr noundef null, ptr noundef nonnull %locked) #7
  %25 = ptrtoint ptr %locked to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %locked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool137.not.i = icmp eq i32 %26, 0
  br i1 %tobool137.not.i, label %do.body139.i, label %if.end157.i

do.body139.i:                                     ; preds = %if.end134.i
  %cmp140.not.i = icmp eq i32 %call136.i, 0
  br i1 %cmp140.not.i, label %do.body139.i.retry.i_crit_edge, label %do.body148.i, !prof !122

do.body139.i.retry.i_crit_edge:                   ; preds = %do.body139.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %retry.i

do.body148.i:                                     ; preds = %do.body139.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1439, 0\0A.popsection", ""() #7, !srcloc !179
  unreachable

if.end157.i:                                      ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call136.i)
  %cmp158.not.i = icmp eq i32 %call136.i, 1
  br i1 %cmp158.not.i, label %if.end181.i, label %do.body160.i

do.body160.i:                                     ; preds = %if.end157.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call136.i)
  %cmp161.i = icmp sgt i32 %call136.i, 1
  br i1 %cmp161.i, label %do.body169.i, label %do.end177.i, !prof !123

do.body169.i:                                     ; preds = %do.body160.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/gup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1443, 0\0A.popsection", ""() #7, !srcloc !180
  unreachable

do.end177.i:                                      ; preds = %do.body160.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pages_done.1.i)
  %tobool178.not.i = icmp eq i32 %pages_done.1.i, 0
  %spec.select261.i = select i1 %tobool178.not.i, i32 %call136.i, i32 %pages_done.1.i
  br label %land.lhs.true196.i

if.end181.i:                                      ; preds = %if.end157.i
  %dec.i = add i32 %nr_pages.addr.1.i, -1
  %inc.i = add i32 %pages_done.1.i, 1
  %tobool182.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool182.not.i, label %if.end181.i.land.lhs.true196.i_crit_edge, label %if.end184.i

if.end181.i.land.lhs.true196.i_crit_edge:         ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true196.i

if.end184.i:                                      ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #9
  %tobool185.not.i = icmp eq ptr %spec.select259.i, null
  %incdec.ptr.i = getelementptr ptr, ptr %spec.select259.i, i32 1
  %spec.select262.i = select i1 %tobool185.not.i, ptr null, ptr %incdec.ptr.i, !prof !123
  %add194.i = add i32 %add101.i, 4096
  %call.i = tail call fastcc i32 @__get_user_pages(ptr noundef %5, i32 noundef %add194.i, i32 noundef %dec.i, i32 noundef %or97, ptr noundef %spec.select262.i, ptr noundef null, ptr noundef nonnull %locked) #7
  br label %if.end40.i

for.end.i:                                        ; preds = %if.then81.i
  br i1 %lock_dropped.0.off0303.i, label %for.end.i.land.lhs.true196.i_crit_edge, label %for.end.i.return_crit_edge

for.end.i.return_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

for.end.i.land.lhs.true196.i_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true196.i

land.lhs.true196.i:                               ; preds = %for.end.i.land.lhs.true196.i_crit_edge, %if.end181.i.land.lhs.true196.i_crit_edge, %do.end177.i, %do.end130.i, %if.then105.i, %if.then87.i.land.lhs.true196.i_crit_edge
  %pages_done.2269.i = phi i32 [ %add.i, %for.end.i.land.lhs.true196.i_crit_edge ], [ %spec.select258.i, %if.then87.i.land.lhs.true196.i_crit_edge ], [ %spec.select261.i, %do.end177.i ], [ %spec.select260.i, %do.end130.i ], [ %spec.store.select.i, %if.then105.i ], [ %inc.i, %if.end181.i.land.lhs.true196.i_crit_edge ]
  %27 = ptrtoint ptr %locked to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %locked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool197.not.i = icmp eq i32 %28, 0
  br i1 %tobool197.not.i, label %land.lhs.true196.i.return_crit_edge, label %if.then198.i

land.lhs.true196.i.return_crit_edge:              ; preds = %land.lhs.true196.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then198.i:                                     ; preds = %land.lhs.true196.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@pin_user_pages_locked, %if.then.i.i264.i)) #7
          to label %mmap_read_unlock.exit.i [label %if.then.i.i264.i], !srcloc !126

if.then.i.i264.i:                                 ; preds = %if.then198.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_released(ptr noundef %5, i1 noundef zeroext false) #7
  br label %mmap_read_unlock.exit.i

mmap_read_unlock.exit.i:                          ; preds = %if.then.i.i264.i, %if.then198.i
  tail call void @up_read(ptr noundef %mmap_lock.i.i) #7
  %29 = ptrtoint ptr %locked to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %locked, align 4
  br label %return

return:                                           ; preds = %mmap_read_unlock.exit.i, %land.lhs.true196.i.return_crit_edge, %for.end.i.return_crit_edge, %if.then87.i.return_crit_edge, %if.end32.i.return_crit_edge, %if.then59, %land.rhs48.return_crit_edge, %if.then, %land.rhs.return_crit_edge
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then59 ], [ -22, %land.rhs.return_crit_edge ], [ -22, %land.rhs48.return_crit_edge ], [ %pages_done.2269.i, %mmap_read_unlock.exit.i ], [ %pages_done.2269.i, %land.lhs.true196.i.return_crit_edge ], [ %add.i, %for.end.i.return_crit_edge ], [ %spec.select258.i, %if.then87.i.return_crit_edge ], [ %call297.i, %if.end32.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_page_refs(ptr noundef %page, i32 noundef %refs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %_refcount.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i, i32 noundef 4) #7
  %0 = ptrtoint ptr %_refcount.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %_refcount.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %refs)
  %cmp = icmp slt i32 %1, %refs
  br i1 %cmp, label %land.rhs, label %if.end40.critedge

land.rhs:                                         ; preds = %entry
  %.b51 = load i1, ptr @put_page_refs.__warned, align 1
  br i1 %.b51, label %land.rhs.return_crit_edge, label %if.then, !prof !122

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.4) #7
  store i1 true, ptr @put_page_refs.__warned, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 52, i32 noundef 9, ptr noundef null) #7
  br label %return

if.end40.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %refs)
  %cmp41 = icmp sgt i32 %refs, 1
  br i1 %cmp41, label %if.then42, label %if.end40.critedge.if.end43_crit_edge

if.end40.critedge.if.end43_crit_edge:             ; preds = %if.end40.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then42:                                        ; preds = %if.end40.critedge
  call void @__sanitizer_cov_trace_pc() #9
  %sub = add nsw i32 %refs, -1
  %call.i.i.i54 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %_refcount.i, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i, ptr %_refcount.i, i32 %sub, ptr elementtype(i32) %_refcount.i) #7, !srcloc !136
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@put_page_refs, %if.then.i)) #7
          to label %if.end43 [label %if.then.i], !srcloc !126

if.then.i:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub nsw i32 1, %refs
  tail call void @__page_ref_mod(ptr noundef %page, i32 noundef %sub.i) #7
  br label %if.end43

if.end43:                                         ; preds = %if.then.i, %if.then42, %if.end40.critedge.if.end43_crit_edge
  %3 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %and.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !122

if.then.i.i:                                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %5, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %6, %if.end.i.i ]
  %7 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %7, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  %8 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.i.i.i = icmp eq i32 %9, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !123

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %7, ptr noundef nonnull @.str.5) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !183
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !149
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #7
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #7, !srcloc !150
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !151
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@put_page_refs, %if.then.i.i.i.i.i)) #7
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !126

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %7, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #7
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.return_crit_edge

folio_put_testzero.exit.i.i.return_crit_edge:     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__put_page(ptr noundef %7) #7
  br label %return

return:                                           ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.return_crit_edge, %if.then, %land.rhs.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_unless(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_pfnblock_flags_mask(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @migration_entry_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vm_normal_page(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_page_accessed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_add_drain() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlock_vma_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_pte_at(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_mm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_gate_area(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_gate_vma(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__flush_anon_page(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_and_migrate_movable_pages(i32 noundef %nr_pages, ptr nocapture noundef readonly %pages, i32 noundef %gup_flags) unnamed_addr #0 align 64 {
entry:
  %movable_page_list = alloca %struct.list_head, align 4
  %mtc = alloca %struct.migration_target_control, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %movable_page_list) #7
  %0 = getelementptr inbounds %struct.list_head, ptr %movable_page_list, i32 0, i32 1
  %1 = ptrtoint ptr %movable_page_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %movable_page_list, ptr %movable_page_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %movable_page_list, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mtc) #7
  %3 = call ptr @memcpy(ptr %mtc, ptr @__const.check_and_migrate_movable_pages.mtc, i32 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_pages)
  %cmp141.not = icmp eq i32 %nr_pages, 0
  br i1 %cmp141.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %prev_head.0147 = phi ptr [ %prev_head.1, %for.inc.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %drain_allow.0.off0145 = phi i1 [ %drain_allow.2.off0, %for.inc.for.body_crit_edge ], [ true, %entry.for.body_crit_edge ]
  %isolation_error_count.0143 = phi i32 [ %isolation_error_count.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.0142 = phi i32 [ %inc24, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %pages, i32 %i.0142
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %and.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i91, !prof !122

if.then.i91:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add i32 %8, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %5 to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i91
  %retval.0.i = phi i32 [ %sub.i, %if.then.i91 ], [ %9, %if.end.i ]
  %10 = inttoptr i32 %retval.0.i to ptr
  %cmp1 = icmp eq ptr %prev_head.0147, %10
  br i1 %cmp1, label %_compound_head.exit.for.inc_crit_edge, label %if.end

_compound_head.exit.for.inc_crit_edge:            ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %_compound_head.exit
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741825, i32 %12)
  %cmp.i.i = icmp ugt i32 %12, -1073741825
  br i1 %cmp.i.i, label %if.end.is_pinnable_page.exit_crit_edge, label %lor.lhs.false.i

if.end.is_pinnable_page.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_pinnable_page.exit

lor.lhs.false.i:                                  ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %13 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i = sub i32 %retval.0.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %14 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %sub.ptr.div.i, %14
  %call1.i = call i32 @get_pfnblock_flags_mask(ptr noundef %10, i32 noundef %add.i, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, 4
  br i1 %cmp.i, label %lor.lhs.false.i.is_pinnable_page.exit_crit_edge, label %lor.lhs.false.i.for.inc_crit_edge

lor.lhs.false.i.for.inc_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false.i.is_pinnable_page.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_pinnable_page.exit

is_pinnable_page.exit:                            ; preds = %lor.lhs.false.i.is_pinnable_page.exit_crit_edge, %if.end.is_pinnable_page.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %15 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast3.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub4.i = sub i32 %retval.0.i, %sub.ptr.rhs.cast3.i
  %sub.ptr.div5.i = sdiv exact i32 %sub.ptr.sub4.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %16 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add6.i = add i32 %sub.ptr.div5.i, %16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @zero_pfn to i32))
  %17 = load i32, ptr @zero_pfn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %add6.i)
  %cmp.i11.i = icmp eq i32 %17, %add6.i
  br i1 %cmp.i11.i, label %is_pinnable_page.exit.for.inc_crit_edge, label %if.then3

is_pinnable_page.exit.for.inc_crit_edge:          ; preds = %is_pinnable_page.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then3:                                         ; preds = %is_pinnable_page.exit
  %18 = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %18, align 4
  %and.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then3._compound_head.exit.i_crit_edge, label %if.then.i.i, !prof !122

if.then3._compound_head.exit.i_crit_edge:         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %_compound_head.exit.i

if.then.i.i:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %20, -1
  %.pre = inttoptr i32 %sub.i.i to ptr
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i, %if.then3._compound_head.exit.i_crit_edge
  %.pre-phi = phi ptr [ %10, %if.then3._compound_head.exit.i_crit_edge ], [ %.pre, %if.then.i.i ]
  %21 = ptrtoint ptr %.pre-phi to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %.pre-phi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp.i.not.i = icmp eq i32 %22, -1
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %18, align 4
  %and.i13.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !123

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.then.i._compound_head.exit19.i_crit_edge, label %if.then.i16.i, !prof !122

if.then.i._compound_head.exit19.i_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_compound_head.exit19.i

if.then.i16.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i15.i = add i32 %24, -1
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.then.i16.i, %if.then.i._compound_head.exit19.i_crit_edge
  %.pre-phi164.in = phi i32 [ %retval.0.i, %if.then.i._compound_head.exit19.i_crit_edge ], [ %sub.i15.i, %if.then.i16.i ]
  %.pre-phi164 = inttoptr i32 %.pre-phi164.in to ptr
  call void @dump_page(ptr noundef %.pre-phi164, ptr noundef nonnull @.str.11) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 422, 0\0A.popsection", ""() #7, !srcloc !184
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %do.end8.i.PageLRU.exit_crit_edge, label %if.then.i23.i, !prof !122

do.end8.i.PageLRU.exit_crit_edge:                 ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %PageLRU.exit

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i22.i = add i32 %24, -1
  %.pre165 = inttoptr i32 %sub.i22.i to ptr
  br label %PageLRU.exit

PageLRU.exit:                                     ; preds = %if.then.i23.i, %do.end8.i.PageLRU.exit_crit_edge
  %.pre-phi166 = phi ptr [ %10, %do.end8.i.PageLRU.exit_crit_edge ], [ %.pre165, %if.then.i23.i ]
  %25 = ptrtoint ptr %.pre-phi166 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %.pre-phi166, align 4
  %27 = and i32 %26, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool10.not = icmp ne i32 %27, 0
  %drain_allow.0.off0.not = xor i1 %drain_allow.0.off0145, true
  %brmerge = select i1 %tobool10.not, i1 true, i1 %drain_allow.0.off0.not
  br i1 %brmerge, label %PageLRU.exit.if.end13_crit_edge, label %if.then12

PageLRU.exit.if.end13_crit_edge:                  ; preds = %PageLRU.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then12:                                        ; preds = %PageLRU.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @lru_add_drain_all() #7
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %PageLRU.exit.if.end13_crit_edge
  %drain_allow.1.off0 = phi i1 [ %drain_allow.0.off0145, %PageLRU.exit.if.end13_crit_edge ], [ false, %if.then12 ]
  %call14 = call i32 @isolate_lru_page(ptr noundef %10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %inc17 = add i32 %isolation_error_count.0143, 1
  br label %for.inc

if.end18:                                         ; preds = %if.end13
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %0, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %18, ptr noundef %29, ptr noundef nonnull %movable_page_list) #7
  br i1 %call.i.i, label %if.end.i.i92, label %if.end18.list_add_tail.exit_crit_edge

if.end18.list_add_tail.exit_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i92:                                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %18, ptr %0, align 4
  %31 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %movable_page_list, ptr %18, align 4
  %prev3.i.i = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 1, i32 0, i32 0, i32 1
  %32 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev3.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %18, ptr %29, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i92, %if.end18.list_add_tail.exit_crit_edge
  %34 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %cmp.i.not.i.i = icmp eq i32 %35, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i93, label %page_pgdat.exit, !prof !123

if.then.i.i93:                                    ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  %36 = inttoptr i32 %retval.0.i to ptr
  call void @dump_page(ptr noundef %36, ptr noundef nonnull @.str.9) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #7, !srcloc !127
  unreachable

page_pgdat.exit:                                  ; preds = %list_add_tail.exit
  %37 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %18, align 4
  %and.i.i94 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i94)
  %tobool.not.i.i95 = icmp eq i32 %and.i.i94, 0
  br i1 %tobool.not.i.i95, label %page_pgdat.exit._compound_head.exit.i100_crit_edge, label %if.then.i.i97, !prof !122

page_pgdat.exit._compound_head.exit.i100_crit_edge: ; preds = %page_pgdat.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %_compound_head.exit.i100

if.then.i.i97:                                    ; preds = %page_pgdat.exit
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i96 = add i32 %38, -1
  %.pre167 = inttoptr i32 %sub.i.i96 to ptr
  br label %_compound_head.exit.i100

_compound_head.exit.i100:                         ; preds = %if.then.i.i97, %page_pgdat.exit._compound_head.exit.i100_crit_edge
  %.pre-phi168 = phi ptr [ %10, %page_pgdat.exit._compound_head.exit.i100_crit_edge ], [ %.pre167, %if.then.i.i97 ]
  %39 = getelementptr inbounds %struct.page, ptr %.pre-phi168, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %39, align 4
  %and.i.i.i.i.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %page_is_file_lru.exit, label %if.then.i.i.i.i, !prof !122

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i100
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_page(ptr noundef %.pre-phi168, ptr noundef nonnull @.str.12) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #7, !srcloc !142
  unreachable

page_is_file_lru.exit:                            ; preds = %_compound_head.exit.i100
  %42 = ptrtoint ptr %.pre-phi168 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %.pre-phi168, align 4
  %44 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %18, align 4
  %and.i.i101 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i101)
  %tobool.not.i102 = icmp eq i32 %and.i.i101, 0
  br i1 %tobool.not.i102, label %thp_nr_pages.exit, label %if.then.i103, !prof !122

if.then.i103:                                     ; preds = %page_is_file_lru.exit
  call void @__sanitizer_cov_trace_pc() #9
  %46 = inttoptr i32 %retval.0.i to ptr
  call void @dump_page(ptr noundef %46, ptr noundef nonnull @.str.12) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/huge_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 347, 0\0A.popsection", ""() #7, !srcloc !185
  unreachable

thp_nr_pages.exit:                                ; preds = %page_is_file_lru.exit
  call void @__sanitizer_cov_trace_pc() #9
  %47 = shl i32 %43, 12
  %48 = ashr i32 %47, 31
  %add = add nsw i32 %48, 8
  call void @mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef %add, i32 noundef 1) #7
  br label %for.inc

for.inc:                                          ; preds = %thp_nr_pages.exit, %if.then16, %is_pinnable_page.exit.for.inc_crit_edge, %lor.lhs.false.i.for.inc_crit_edge, %_compound_head.exit.for.inc_crit_edge
  %isolation_error_count.1 = phi i32 [ %isolation_error_count.0143, %_compound_head.exit.for.inc_crit_edge ], [ %isolation_error_count.0143, %is_pinnable_page.exit.for.inc_crit_edge ], [ %inc17, %if.then16 ], [ %isolation_error_count.0143, %thp_nr_pages.exit ], [ %isolation_error_count.0143, %lor.lhs.false.i.for.inc_crit_edge ]
  %drain_allow.2.off0 = phi i1 [ %drain_allow.0.off0145, %_compound_head.exit.for.inc_crit_edge ], [ %drain_allow.0.off0145, %is_pinnable_page.exit.for.inc_crit_edge ], [ %drain_allow.1.off0, %if.then16 ], [ %drain_allow.1.off0, %thp_nr_pages.exit ], [ %drain_allow.0.off0145, %lor.lhs.false.i.for.inc_crit_edge ]
  %prev_head.1 = phi ptr [ %prev_head.0147, %_compound_head.exit.for.inc_crit_edge ], [ %10, %is_pinnable_page.exit.for.inc_crit_edge ], [ %10, %if.then16 ], [ %10, %thp_nr_pages.exit ], [ %10, %lor.lhs.false.i.for.inc_crit_edge ]
  %inc24 = add nuw i32 %i.0142, 1
  %exitcond.not = icmp eq i32 %inc24, %nr_pages
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %isolation_error_count.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %isolation_error_count.1, %for.inc.for.end_crit_edge ]
  %49 = ptrtoint ptr %movable_page_list to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %movable_page_list, align 4
  %cmp.i104 = icmp eq ptr %50, %movable_page_list
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %isolation_error_count.0.lcssa)
  %tobool28.not = icmp eq i32 %isolation_error_count.0.lcssa, 0
  %or.cond = select i1 %cmp.i104, i1 %tobool28.not, i1 false
  br i1 %or.cond, label %for.end.cleanup_crit_edge, label %if.end30

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end30:                                         ; preds = %for.end
  %and = and i32 %gup_flags, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %for.cond34.preheader, label %if.then32

for.cond34.preheader:                             ; preds = %if.end30
  br i1 %cmp141.not, label %for.cond34.preheader.if.end41_crit_edge, label %for.cond34.preheader.for.body36_crit_edge

for.cond34.preheader.for.body36_crit_edge:        ; preds = %for.cond34.preheader
  br label %for.body36

for.cond34.preheader.if.end41_crit_edge:          ; preds = %for.cond34.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  call void @unpin_user_pages(ptr noundef %pages, i32 noundef %nr_pages)
  br label %if.end41

for.body36:                                       ; preds = %put_page.exit.for.body36_crit_edge, %for.cond34.preheader.for.body36_crit_edge
  %i.1149 = phi i32 [ %inc39, %put_page.exit.for.body36_crit_edge ], [ 0, %for.cond34.preheader.for.body36_crit_edge ]
  %arrayidx37 = getelementptr ptr, ptr %pages, i32 %i.1149
  %51 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx37, align 4
  %53 = getelementptr inbounds %struct.page, ptr %52, i32 0, i32 1
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %53, align 4
  %and.i.i105 = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i105)
  %tobool.not.i.i106 = icmp eq i32 %and.i.i105, 0
  br i1 %tobool.not.i.i106, label %if.end.i.i109, label %if.then.i.i108, !prof !122

if.then.i.i108:                                   ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i107 = add i32 %55, -1
  br label %_compound_head.exit.i111

if.end.i.i109:                                    ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %52 to i32
  br label %_compound_head.exit.i111

_compound_head.exit.i111:                         ; preds = %if.end.i.i109, %if.then.i.i108
  %retval.0.i.i110 = phi i32 [ %sub.i.i107, %if.then.i.i108 ], [ %56, %if.end.i.i109 ]
  %57 = inttoptr i32 %retval.0.i.i110 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %57, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  %58 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp.i.i.i.i = icmp eq i32 %59, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i112, label %do.end5.i.i.i.i, !prof !123

if.then.i.i.i.i112:                               ; preds = %_compound_head.exit.i111
  call void @__sanitizer_cov_trace_pc() #9
  %60 = inttoptr i32 %retval.0.i.i110 to ptr
  call void @dump_page(ptr noundef %60, ptr noundef nonnull @.str.5) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !183
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i111
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !149
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #7
  %61 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #7, !srcloc !150
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %61, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !151
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@check_and_migrate_movable_pages, %if.then.i.i.i.i.i)) #7
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !126

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %57, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #7
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__put_page(ptr noundef %57) #7
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %inc39 = add nuw i32 %i.1149, 1
  %exitcond162.not = icmp eq i32 %inc39, %nr_pages
  br i1 %exitcond162.not, label %put_page.exit.if.end41_crit_edge, label %put_page.exit.for.body36_crit_edge

put_page.exit.for.body36_crit_edge:               ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body36

put_page.exit.if.end41_crit_edge:                 ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.end41:                                         ; preds = %put_page.exit.if.end41_crit_edge, %if.then32, %for.cond34.preheader.if.end41_crit_edge
  %62 = ptrtoint ptr %movable_page_list to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %movable_page_list, align 4
  %cmp.i113.not = icmp eq ptr %63, %movable_page_list
  br i1 %cmp.i113.not, label %if.end41.cleanup_crit_edge, label %if.then44

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then44:                                        ; preds = %if.end41
  %64 = ptrtoint ptr %mtc to i32
  %call45 = call i32 @migrate_pages(ptr noundef nonnull %movable_page_list, ptr noundef nonnull @alloc_migration_target, ptr noundef null, i32 noundef %64, i32 noundef 2, i32 noundef 7, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then44.cleanup_crit_edge, label %land.lhs.true47

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true47:                                  ; preds = %if.then44
  %65 = ptrtoint ptr %movable_page_list to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile ptr, ptr %movable_page_list, align 4
  %cmp.i115.not = icmp eq ptr %66, %movable_page_list
  br i1 %cmp.i115.not, label %land.lhs.true47.if.end52_crit_edge, label %if.then50

land.lhs.true47.if.end52_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.then50:                                        ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #9
  call void @putback_movable_pages(ptr noundef nonnull %movable_page_list) #7
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %land.lhs.true47.if.end52_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp53 = icmp sgt i32 %call45, 0
  %spec.select = select i1 %cmp53, i32 -12, i32 %call45
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %if.then44.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %nr_pages, %for.end.cleanup_crit_edge ], [ 0, %if.end41.cleanup_crit_edge ], [ 0, %if.then44.cleanup_crit_edge ], [ %spec.select, %if.end52 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mtc) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %movable_page_list) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_add_drain_all() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @isolate_lru_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @migrate_pages(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_migration_target(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @putback_movable_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__gup_longterm_unlocked(i32 noundef %start, i32 noundef %nr_pages, i32 noundef %gup_flags, ptr noundef %pages) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %gup_flags, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@__gup_longterm_unlocked, %if.then.i.i)) #7
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !126

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %5, i1 noundef zeroext false) #7
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.then
  %mmap_lock.i = getelementptr inbounds %struct.anon.9, ptr %5, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@__gup_longterm_unlocked, %if.then.i3.i)) #7
          to label %mmap_read_lock.exit [label %if.then.i3.i], !srcloc !126

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %5, i1 noundef zeroext false, i1 noundef zeroext true) #7
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %mm3 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 53
  %8 = ptrtoint ptr %mm3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mm3, align 8
  %call4 = tail call fastcc i32 @__gup_longterm_locked(ptr noundef %9, i32 noundef %start, i32 noundef %nr_pages, ptr noundef %pages, ptr noundef null, i32 noundef %gup_flags)
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %mm7 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 53
  %12 = ptrtoint ptr %mm7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mm7, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@__gup_longterm_unlocked, %if.then.i.i14)) #7
          to label %mmap_read_unlock.exit [label %if.then.i.i14], !srcloc !126

if.then.i.i14:                                    ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_released(ptr noundef %13, i1 noundef zeroext false) #7
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i14, %mmap_read_lock.exit
  %mmap_lock.i15 = getelementptr inbounds %struct.anon.9, ptr %13, i32 0, i32 15
  tail call void @up_read(ptr noundef %mmap_lock.i15) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call i32 @get_user_pages_unlocked(i32 noundef %start, i32 noundef %nr_pages, ptr noundef %pages, i32 noundef %gup_flags)
  br label %if.end

if.end:                                           ; preds = %if.else, %mmap_read_unlock.exit
  %ret.0 = phi i32 [ %call4, %mmap_read_unlock.exit ], [ %call8, %if.else ]
  ret i32 %ret.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !72, !74, !76, !78, !80, !82, !84, !85, !87, !89, !91, !93, !95, !97, !98, !99, !101, !102, !104, !106, !108, !110}
!llvm.named.register.sp = !{!112}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../mm/gup.c", i32 171, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../mm/gup.c", i32 211, i32 2}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../mm/gup.c", i32 220, i32 7}
!7 = !{ptr @__ksymtab_unpin_user_page, !8, !"__ksymtab_unpin_user_page", i1 false, i1 false}
!8 = !{!"../mm/gup.c", i32 255, i32 1}
!9 = !{ptr @__ksymtab_unpin_user_pages_dirty_lock, !10, !"__ksymtab_unpin_user_pages_dirty_lock", i1 false, i1 false}
!10 = !{!"../mm/gup.c", i32 369, i32 1}
!11 = !{ptr @__ksymtab_unpin_user_page_range_dirty_lock, !12, !"__ksymtab_unpin_user_page_range_dirty_lock", i1 false, i1 false}
!12 = !{!"../mm/gup.c", i32 405, i32 1}
!13 = !{ptr @__ksymtab_unpin_user_pages, !14, !"__ksymtab_unpin_user_pages", i1 false, i1 false}
!14 = !{!"../mm/gup.c", i32 433, i32 1}
!15 = !{ptr @__ksymtab_fixup_user_fault, !16, !"__ksymtab_fixup_user_fault", i1 false, i1 false}
!16 = !{!"../mm/gup.c", i32 1333, i32 1}
!17 = !{ptr @__ksymtab_fault_in_writeable, !18, !"__ksymtab_fault_in_writeable", i1 false, i1 false}
!18 = !{!"../mm/gup.c", i32 1725, i32 1}
!19 = !{ptr @__ksymtab_fault_in_safe_writeable, !20, !"__ksymtab_fault_in_safe_writeable", i1 false, i1 false}
!20 = !{!"../mm/gup.c", i32 1769, i32 1}
!21 = !{ptr @__ksymtab_fault_in_readable, !22, !"__ksymtab_fault_in_readable", i1 false, i1 false}
!22 = !{!"../mm/gup.c", i32 1807, i32 1}
!23 = !{ptr @__ksymtab_get_user_pages_remote, !24, !"__ksymtab_get_user_pages_remote", i1 false, i1 false}
!24 = !{!"../mm/gup.c", i32 2078, i32 1}
!25 = !{ptr @__ksymtab_get_user_pages, !26, !"__ksymtab_get_user_pages", i1 false, i1 false}
!26 = !{!"../mm/gup.c", i32 2124, i32 1}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../mm/gup.c", i32 2170, i32 6}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../mm/gup.c", i32 2176, i32 6}
!31 = !{ptr @__ksymtab_get_user_pages_locked, !32, !"__ksymtab_get_user_pages_locked", i1 false, i1 false}
!32 = !{!"../mm/gup.c", i32 2183, i32 1}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../mm/gup.c", i32 2213, i32 6}
!35 = !{ptr @__ksymtab_get_user_pages_unlocked, !36, !"__ksymtab_get_user_pages_unlocked", i1 false, i1 false}
!36 = !{!"../mm/gup.c", i32 2223, i32 1}
!37 = !{ptr @__ksymtab_get_user_pages_fast_only, !38, !"__ksymtab_get_user_pages_fast_only", i1 false, i1 false}
!38 = !{!"../mm/gup.c", i32 2942, i32 1}
!39 = !{ptr @__ksymtab_get_user_pages_fast, !40, !"__ksymtab_get_user_pages_fast", i1 false, i1 false}
!40 = !{!"../mm/gup.c", i32 2975, i32 1}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../mm/gup.c", i32 2997, i32 6}
!43 = !{ptr @__ksymtab_pin_user_pages_fast, !44, !"__ksymtab_pin_user_pages_fast", i1 false, i1 false}
!44 = !{!"../mm/gup.c", i32 3003, i32 1}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../mm/gup.c", i32 3020, i32 6}
!47 = !{ptr @__ksymtab_pin_user_pages_fast_only, !48, !"__ksymtab_pin_user_pages_fast_only", i1 false, i1 false}
!48 = !{!"../mm/gup.c", i32 3039, i32 1}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../mm/gup.c", i32 3070, i32 6}
!51 = !{ptr @__ksymtab_pin_user_pages_remote, !52, !"__ksymtab_pin_user_pages_remote", i1 false, i1 false}
!52 = !{!"../mm/gup.c", i32 3077, i32 1}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../mm/gup.c", i32 3102, i32 6}
!55 = !{ptr @__ksymtab_pin_user_pages, !56, !"__ksymtab_pin_user_pages", i1 false, i1 false}
!56 = !{!"../mm/gup.c", i32 3109, i32 1}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../mm/gup.c", i32 3120, i32 6}
!59 = !{ptr @__ksymtab_pin_user_pages_unlocked, !60, !"__ksymtab_pin_user_pages_unlocked", i1 false, i1 false}
!60 = !{!"../mm/gup.c", i32 3126, i32 1}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../mm/gup.c", i32 3143, i32 6}
!63 = distinct !{null, !64, !"__already_done", i1 false, i1 false}
!64 = !{!"../mm/gup.c", i32 3147, i32 6}
!65 = !{ptr @__ksymtab_pin_user_pages_locked, !66, !"__ksymtab_pin_user_pages_locked", i1 false, i1 false}
!66 = !{!"../mm/gup.c", i32 3155, i32 1}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../mm/gup.c", i32 73, i32 6}
!69 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!70 = !{!"../mm/gup.c", i32 52, i32 6}
!71 = !{ptr @.str.4, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.5, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../include/linux/mm.h", i32 717, i32 2}
!74 = !{ptr @.str.6, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../include/linux/page-flags.h", i32 698, i32 1}
!76 = !{ptr @.str.7, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../mm/gup.c", i32 34, i32 2}
!78 = !{ptr @.str.8, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../mm/gup.c", i32 35, i32 2}
!80 = !{ptr @.str.9, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../include/linux/mm.h", i32 1368, i32 10}
!82 = distinct !{null, !83, !"__already_done", i1 false, i1 false}
!83 = !{!"../include/linux/mm.h", i32 1177, i32 6}
!84 = !{ptr @.str.10, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.11, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../include/linux/page-flags.h", i32 420, i32 1}
!87 = distinct !{null, !88, !"__already_done", i1 false, i1 false}
!88 = !{!"../mm/gup.c", i32 842, i32 3}
!89 = distinct !{null, !90, !"__already_done", i1 false, i1 false}
!90 = !{!"../mm/gup.c", i32 509, i32 6}
!91 = !{ptr @.str.12, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!93 = distinct !{null, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!95 = distinct !{null, !96, !"__warned", i1 false, i1 false}
!96 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!97 = !{ptr @.str.14, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.15, !96, !"<string literal>", i1 false, i1 false}
!99 = distinct !{null, !100, !"__warned", i1 false, i1 false}
!100 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!101 = !{ptr @.str.16, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.17, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../include/linux/mmap_lock.h", i32 155, i32 2}
!104 = distinct !{null, !105, !"__already_done", i1 false, i1 false}
!105 = !{!"../mm/gup.c", i32 1964, i32 6}
!106 = distinct !{null, !107, !"__already_done", i1 false, i1 false}
!107 = !{!"../mm/gup.c", i32 1971, i32 6}
!108 = distinct !{null, !109, !"__already_done", i1 false, i1 false}
!109 = !{!"../mm/gup.c", i32 1991, i32 7}
!110 = distinct !{null, !111, !"__already_done", i1 false, i1 false}
!111 = !{!"../mm/gup.c", i32 2856, i32 6}
!112 = !{!"sp"}
!113 = !{i32 1, !"wchar_size", i32 2}
!114 = !{i32 1, !"min_enum_size", i32 4}
!115 = !{i32 8, !"branch-target-enforcement", i32 0}
!116 = !{i32 8, !"sign-return-address", i32 0}
!117 = !{i32 8, !"sign-return-address-all", i32 0}
!118 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!119 = !{i32 7, !"uwtable", i32 1}
!120 = !{i32 7, !"frame-pointer", i32 2}
!121 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!122 = !{!"branch_weights", i32 2000, i32 1}
!123 = !{!"branch_weights", i32 1, i32 2000}
!124 = !{i64 2151076917, i64 2151077408, i64 2151076954, i64 2151077010, i64 2151077044, i64 2151077068, i64 2151077109, i64 2151077130, i64 2151077158, i64 2151077192}
!125 = !{i64 2148299628, i64 2148299654, i64 2148299683, i64 2148299717, i64 2148299748, i64 2148299771}
!126 = !{i64 2148781443, i64 2148781448, i64 2148781461, i64 2148781505, i64 2148781539, i64 2148781560}
!127 = !{i64 2153230884, i64 2153231368, i64 2153230921, i64 2153230977, i64 2153231011, i64 2153231035, i64 2153231076, i64 2153231097, i64 2153231125, i64 2153231159}
!128 = !{i64 2148299047}
!129 = !{i64 783870, i64 783895, i64 783917, i64 783933, i64 783945, i64 783965, i64 783989, i64 784005, i64 784017}
!130 = !{i64 2148299235}
!131 = !{!"branch_weights", i32 1073205, i32 2146410443}
!132 = !{i64 2155244082, i64 2155244554, i64 2155244119, i64 2155244175, i64 2155244209, i64 2155244233, i64 2155244274, i64 2155244295, i64 2155244323, i64 2155244357}
!133 = !{i64 2155246013, i64 2155246485, i64 2155246050, i64 2155246106, i64 2155246140, i64 2155246164, i64 2155246205, i64 2155246226, i64 2155246254, i64 2155246288}
!134 = !{i64 2155247816, i64 2155248288, i64 2155247853, i64 2155247909, i64 2155247943, i64 2155247967, i64 2155248008, i64 2155248029, i64 2155248057, i64 2155248091}
!135 = !{i64 2155249747, i64 2155250219, i64 2155249784, i64 2155249840, i64 2155249874, i64 2155249898, i64 2155249939, i64 2155249960, i64 2155249988, i64 2155250022}
!136 = !{i64 2148302093, i64 2148302119, i64 2148302148, i64 2148302182, i64 2148302213, i64 2148302236}
!137 = !{i64 2150424101, i64 2150424592, i64 2150424138, i64 2150424194, i64 2150424228, i64 2150424252, i64 2150424293, i64 2150424314, i64 2150424342, i64 2150424376}
!138 = !{i64 2153763845}
!139 = !{i64 2152818180}
!140 = !{i64 2152818387}
!141 = !{i64 2153766616}
!142 = !{i64 2150310131, i64 2150310622, i64 2150310168, i64 2150310224, i64 2150310258, i64 2150310282, i64 2150310323, i64 2150310344, i64 2150310372, i64 2150310406}
!143 = !{i64 2148308486, i64 2148308518, i64 2148308547, i64 2148308581, i64 2148308612, i64 2148308635}
!144 = !{i64 2148397567}
!145 = !{i64 2150090466}
!146 = !{i64 692109, i64 692170}
!147 = !{i64 694841}
!148 = !{i64 695126}
!149 = !{i64 2148388080}
!150 = !{i64 2148302813, i64 2148302845, i64 2148302874, i64 2148302908, i64 2148302939, i64 2148302962}
!151 = !{i64 2148388309}
!152 = !{i64 2150090732}
!153 = !{i64 2155306936, i64 2155307410, i64 2155306973, i64 2155307029, i64 2155307063, i64 2155307087, i64 2155307128, i64 2155307149, i64 2155307177, i64 2155307211}
!154 = !{i64 2155321763, i64 2155322237, i64 2155321800, i64 2155321856, i64 2155321890, i64 2155321914, i64 2155321955, i64 2155321976, i64 2155322004, i64 2155322038}
!155 = !{i64 2155323815, i64 2155324289, i64 2155323852, i64 2155323908, i64 2155323942, i64 2155323966, i64 2155324007, i64 2155324028, i64 2155324056, i64 2155324090}
!156 = !{i64 2155325448, i64 2155325922, i64 2155325485, i64 2155325541, i64 2155325575, i64 2155325599, i64 2155325640, i64 2155325661, i64 2155325689, i64 2155325723}
!157 = !{i64 2155327077, i64 2155327551, i64 2155327114, i64 2155327170, i64 2155327204, i64 2155327228, i64 2155327269, i64 2155327290, i64 2155327318, i64 2155327352}
!158 = !{i64 2151312163, i64 2151312653, i64 2151312200, i64 2151312256, i64 2151312290, i64 2151312314, i64 2151312355, i64 2151312376, i64 2151312404, i64 2151312438}
!159 = !{i64 2155301941, i64 2155302415, i64 2155301978, i64 2155302034, i64 2155302068, i64 2155302092, i64 2155302133, i64 2155302154, i64 2155302182, i64 2155302216}
!160 = !{i64 2155300077, i64 2155300550, i64 2155300114, i64 2155300170, i64 2155300204, i64 2155300228, i64 2155300269, i64 2155300290, i64 2155300318, i64 2155300352}
!161 = !{i64 2155329307, i64 2155329781, i64 2155329344, i64 2155329400, i64 2155329434, i64 2155329458, i64 2155329499, i64 2155329520, i64 2155329548, i64 2155329582}
!162 = !{i64 2155331359, i64 2155331833, i64 2155331396, i64 2155331452, i64 2155331486, i64 2155331510, i64 2155331551, i64 2155331572, i64 2155331600, i64 2155331634}
!163 = !{i64 2155337053, i64 2155337527, i64 2155337090, i64 2155337146, i64 2155337180, i64 2155337204, i64 2155337245, i64 2155337266, i64 2155337294, i64 2155337328}
!164 = !{i64 2155338678, i64 2155339152, i64 2155338715, i64 2155338771, i64 2155338805, i64 2155338829, i64 2155338870, i64 2155338891, i64 2155338919, i64 2155338953}
!165 = !{i64 2155341723, i64 2155341748}
!166 = !{i64 5310918}
!167 = !{i64 5311115}
!168 = !{i64 2152796348}
!169 = !{i64 2155358522, i64 2155358832, i64 2155359146, i64 2155359460}
!170 = !{i64 2155381148, i64 2155381458, i64 2155381772, i64 2155382086}
!171 = !{i64 2155390756, i64 2155390781}
!172 = !{i64 2155415230, i64 2155415540, i64 2155415854, i64 2155416168}
!173 = !{i64 2155447849, i64 2155448159, i64 2155448473, i64 2155448787}
!174 = !{!"auto-init"}
!175 = !{i64 2155311701, i64 2155312175, i64 2155311738, i64 2155311794, i64 2155311828, i64 2155311852, i64 2155311893, i64 2155311914, i64 2155311942, i64 2155311976}
!176 = !{i64 2155313262, i64 2155313736, i64 2155313299, i64 2155313355, i64 2155313389, i64 2155313413, i64 2155313454, i64 2155313475, i64 2155313503, i64 2155313537}
!177 = !{i64 2155314818, i64 2155315292, i64 2155314855, i64 2155314911, i64 2155314945, i64 2155314969, i64 2155315010, i64 2155315031, i64 2155315059, i64 2155315093}
!178 = !{i64 2155316440, i64 2155316914, i64 2155316477, i64 2155316533, i64 2155316567, i64 2155316591, i64 2155316632, i64 2155316653, i64 2155316681, i64 2155316715}
!179 = !{i64 2155318000, i64 2155318474, i64 2155318037, i64 2155318093, i64 2155318127, i64 2155318151, i64 2155318192, i64 2155318213, i64 2155318241, i64 2155318275}
!180 = !{i64 2155319540, i64 2155320014, i64 2155319577, i64 2155319633, i64 2155319667, i64 2155319691, i64 2155319732, i64 2155319753, i64 2155319781, i64 2155319815}
!181 = !{i64 2155310151, i64 2155310625, i64 2155310188, i64 2155310244, i64 2155310278, i64 2155310302, i64 2155310343, i64 2155310364, i64 2155310392, i64 2155310426}
!182 = !{i64 2155484152, i64 2155484177}
!183 = !{i64 2153201129, i64 2153201612, i64 2153201166, i64 2153201222, i64 2153201256, i64 2153201280, i64 2153201321, i64 2153201342, i64 2153201370, i64 2153201404}
!184 = !{i64 2150452197, i64 2150452688, i64 2150452234, i64 2150452290, i64 2150452324, i64 2150452348, i64 2150452389, i64 2150452410, i64 2150452438, i64 2150452472}
!185 = !{i64 2153192119, i64 2153192607, i64 2153192156, i64 2153192212, i64 2153192246, i64 2153192270, i64 2153192311, i64 2153192332, i64 2153192360, i64 2153192394}
