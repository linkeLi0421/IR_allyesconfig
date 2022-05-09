; ModuleID = '/llk/IR_all_yes/drivers/md/persistent-data/dm-block-manager.c_pt.bc'
source_filename = "../drivers/md/persistent-data/dm-block-manager.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dm_block_location\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_block_location\09\09\09\09"
module asm "\09.long\09__crc_dm_block_location\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_block_location:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_block_location\22\09\09\09\09\09"
module asm "__kstrtabns_dm_block_location:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dm_block_data\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_block_data\09\09\09\09"
module asm "\09.long\09__crc_dm_block_data\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_block_data:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_block_data\22\09\09\09\09\09"
module asm "__kstrtabns_dm_block_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dm_block_manager_create\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_block_manager_create\09\09\09\09"
module asm "\09.long\09__crc_dm_block_manager_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_block_manager_create:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_block_manager_create\22\09\09\09\09\09"
module asm "__kstrtabns_dm_block_manager_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dm_block_manager_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_block_manager_destroy\09\09\09\09"
module asm "\09.long\09__crc_dm_block_manager_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_block_manager_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_block_manager_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_dm_block_manager_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dm_bm_block_size\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_bm_block_size\09\09\09\09"
module asm "\09.long\09__crc_dm_bm_block_size\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_bm_block_size:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_bm_block_size\22\09\09\09\09\09"
module asm "__kstrtabns_dm_bm_block_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dm_bm_read_lock\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_bm_read_lock\09\09\09\09"
module asm "\09.long\09__crc_dm_bm_read_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_bm_read_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_bm_read_lock\22\09\09\09\09\09"
module asm "__kstrtabns_dm_bm_read_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dm_bm_write_lock\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_bm_write_lock\09\09\09\09"
module asm "\09.long\09__crc_dm_bm_write_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_bm_write_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_bm_write_lock\22\09\09\09\09\09"
module asm "__kstrtabns_dm_bm_write_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dm_bm_write_lock_zero\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_bm_write_lock_zero\09\09\09\09"
module asm "\09.long\09__crc_dm_bm_write_lock_zero\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_bm_write_lock_zero:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_bm_write_lock_zero\22\09\09\09\09\09"
module asm "__kstrtabns_dm_bm_write_lock_zero:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dm_bm_unlock\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_bm_unlock\09\09\09\09"
module asm "\09.long\09__crc_dm_bm_unlock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_bm_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_bm_unlock\22\09\09\09\09\09"
module asm "__kstrtabns_dm_bm_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dm_bm_flush\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_bm_flush\09\09\09\09"
module asm "\09.long\09__crc_dm_bm_flush\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_bm_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_bm_flush\22\09\09\09\09\09"
module asm "__kstrtabns_dm_bm_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dm_bm_is_read_only\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_bm_is_read_only\09\09\09\09"
module asm "\09.long\09__crc_dm_bm_is_read_only\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_bm_is_read_only:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_bm_is_read_only\22\09\09\09\09\09"
module asm "__kstrtabns_dm_bm_is_read_only:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dm_bm_set_read_only\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_bm_set_read_only\09\09\09\09"
module asm "\09.long\09__crc_dm_bm_set_read_only\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_bm_set_read_only:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_bm_set_read_only\22\09\09\09\09\09"
module asm "__kstrtabns_dm_bm_set_read_only:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dm_bm_set_read_write\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_bm_set_read_write\09\09\09\09"
module asm "\09.long\09__crc_dm_bm_set_read_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_bm_set_read_write:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_bm_set_read_write\22\09\09\09\09\09"
module asm "__kstrtabns_dm_bm_set_read_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dm_bm_checksum\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_bm_checksum\09\09\09\09"
module asm "\09.long\09__crc_dm_bm_checksum\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_bm_checksum:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_bm_checksum\22\09\09\09\09\09"
module asm "__kstrtabns_dm_bm_checksum:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dm_block_manager = type { ptr, i8 }
%struct.buffer_aux = type { ptr, i32, %struct.block_lock }
%struct.block_lock = type { %struct.spinlock, i32, %struct.list_head, [4 x ptr], [4 x %struct.stack_store] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.stack_store = type { i32, [10 x i32] }
%struct.dm_block_validator = type { ptr, ptr, ptr }
%struct.waiter = type { %struct.list_head, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.58, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.34 }
%struct.llist_node = type { ptr }
%union.anon.34 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.36 }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.58 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__kstrtab_dm_block_location = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_block_location = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_block_location = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_block_location to i32), ptr @__kstrtab_dm_block_location, ptr @__kstrtabns_dm_block_location }, section "___ksymtab_gpl+dm_block_location", align 4
@__kstrtab_dm_block_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_block_data = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_block_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_block_data to i32), ptr @__kstrtab_dm_block_data, ptr @__kstrtabns_dm_block_data }, section "___ksymtab_gpl+dm_block_data", align 4
@__kstrtab_dm_block_manager_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_block_manager_create = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_block_manager_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_block_manager_create to i32), ptr @__kstrtab_dm_block_manager_create, ptr @__kstrtabns_dm_block_manager_create }, section "___ksymtab_gpl+dm_block_manager_create", align 4
@__kstrtab_dm_block_manager_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_block_manager_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_block_manager_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_block_manager_destroy to i32), ptr @__kstrtab_dm_block_manager_destroy, ptr @__kstrtabns_dm_block_manager_destroy }, section "___ksymtab_gpl+dm_block_manager_destroy", align 4
@__kstrtab_dm_bm_block_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_bm_block_size = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_bm_block_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_bm_block_size to i32), ptr @__kstrtab_dm_bm_block_size, ptr @__kstrtabns_dm_bm_block_size }, section "___ksymtab_gpl+dm_bm_block_size", align 4
@__kstrtab_dm_bm_read_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_bm_read_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_bm_read_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_bm_read_lock to i32), ptr @__kstrtab_dm_bm_read_lock, ptr @__kstrtabns_dm_bm_read_lock }, section "___ksymtab_gpl+dm_bm_read_lock", align 4
@__kstrtab_dm_bm_write_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_bm_write_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_bm_write_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_bm_write_lock to i32), ptr @__kstrtab_dm_bm_write_lock, ptr @__kstrtabns_dm_bm_write_lock }, section "___ksymtab_gpl+dm_bm_write_lock", align 4
@__kstrtab_dm_bm_write_lock_zero = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_bm_write_lock_zero = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_bm_write_lock_zero = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_bm_write_lock_zero to i32), ptr @__kstrtab_dm_bm_write_lock_zero, ptr @__kstrtabns_dm_bm_write_lock_zero }, section "___ksymtab_gpl+dm_bm_write_lock_zero", align 4
@__kstrtab_dm_bm_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_bm_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_bm_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_bm_unlock to i32), ptr @__kstrtab_dm_bm_unlock, ptr @__kstrtabns_dm_bm_unlock }, section "___ksymtab_gpl+dm_bm_unlock", align 4
@__kstrtab_dm_bm_flush = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_bm_flush = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_bm_flush = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_bm_flush to i32), ptr @__kstrtab_dm_bm_flush, ptr @__kstrtabns_dm_bm_flush }, section "___ksymtab_gpl+dm_bm_flush", align 4
@__kstrtab_dm_bm_is_read_only = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_bm_is_read_only = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_bm_is_read_only = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_bm_is_read_only to i32), ptr @__kstrtab_dm_bm_is_read_only, ptr @__kstrtabns_dm_bm_is_read_only }, section "___ksymtab_gpl+dm_bm_is_read_only", align 4
@__kstrtab_dm_bm_set_read_only = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_bm_set_read_only = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_bm_set_read_only = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_bm_set_read_only to i32), ptr @__kstrtab_dm_bm_set_read_only, ptr @__kstrtabns_dm_bm_set_read_only }, section "___ksymtab_gpl+dm_bm_set_read_only", align 4
@__kstrtab_dm_bm_set_read_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_bm_set_read_write = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_bm_set_read_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_bm_set_read_write to i32), ptr @__kstrtab_dm_bm_set_read_write, ptr @__kstrtabns_dm_bm_set_read_write }, section "___ksymtab_gpl+dm_bm_set_read_write", align 4
@__kstrtab_dm_bm_checksum = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_bm_checksum = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_bm_checksum = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_bm_checksum to i32), ptr @__kstrtab_dm_bm_checksum, ptr @__kstrtabns_dm_bm_checksum }, section "___ksymtab_gpl+dm_bm_checksum", align 4
@__UNIQUE_ID_file269 = internal constant [70 x i8] c"dm_persistent_data.file=drivers/md/persistent-data/dm-persistent-data\00", section ".modinfo", align 1
@__UNIQUE_ID_license270 = internal constant [31 x i8] c"dm_persistent_data.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author271 = internal constant [61 x i8] c"dm_persistent_data.author=Joe Thornber <dm-devel@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description272 = internal constant [65 x i8] c"dm_persistent_data.description=Immutable metadata library for dm\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bl_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&lock->lock\00", [20 x i8] zeroinitializer }, align 32
@__check_holder._entry = internal constant %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 104, ptr null, ptr null }, align 1
@.str.1 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013device-mapper: block manager: recursive lock detected in metadata\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__check_holder\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/md/persistent-data/dm-block-manager.c\00", [50 x i8] zeroinitializer }, align 32
@__check_holder._entry_ptr = internal global ptr @__check_holder._entry, section ".printk_index", align 4
@__check_holder._entry.4 = internal constant %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 106, ptr null, ptr null }, align 1
@.str.5 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013device-mapper: block manager: previously held here:\0A\00", [41 x i8] zeroinitializer }, align 32
@__check_holder._entry_ptr.6 = internal global ptr @__check_holder._entry.4, section ".printk_index", align 4
@__check_holder._entry.7 = internal constant %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 110, ptr null, ptr null }, align 1
@.str.8 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013device-mapper: block manager: subsequent acquisition attempted here:\0A\00", [56 x i8] zeroinitializer }, align 32
@__check_holder._entry_ptr.9 = internal global ptr @__check_holder._entry.7, section ".printk_index", align 4
@report_recursive_bug._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\013device-mapper: block manager: recursive acquisition of block %llu requested.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"report_recursive_bug\00", [43 x i8] zeroinitializer }, align 32
@report_recursive_bug._entry_ptr = internal global ptr @report_recursive_bug._entry, section ".printk_index", align 4
@dm_bm_validate_buffer._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.dm_bm_validate_buffer = private unnamed_addr constant [22 x i8] c"dm_bm_validate_buffer\00", align 1
@dm_bm_validate_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.dm_bm_validate_buffer, ptr @.str.3, i32 440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013device-mapper: block manager: %s validator check failed for block %llu\0A\00", [54 x i8] zeroinitializer }, align 32
@dm_bm_validate_buffer._entry_ptr = internal global ptr @dm_bm_validate_buffer._entry, section ".printk_index", align 4
@dm_bm_validate_buffer._rs.15 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dm_bm_validate_buffer._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @__func__.dm_bm_validate_buffer, ptr @.str.3, i32 448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\013device-mapper: block manager: validator mismatch (old=%s vs new=%s) for block %llu\0A\00", [42 x i8] zeroinitializer }, align 32
@dm_bm_validate_buffer._entry_ptr.18 = internal global ptr @dm_bm_validate_buffer._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NULL\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 177, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 104, i32 4 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 106, i32 4 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 110, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 303, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 439, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private constant [49 x i8] c"../drivers/md/persistent-data/dm-block-manager.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 446, i32 4 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_author271, ptr @__UNIQUE_ID_description272, ptr @__UNIQUE_ID_file269, ptr @__UNIQUE_ID_license270, ptr @__check_holder._entry, ptr @__check_holder._entry.4, ptr @__check_holder._entry.7, ptr @__check_holder._entry_ptr, ptr @__check_holder._entry_ptr.6, ptr @__check_holder._entry_ptr.9, ptr @__ksymtab_dm_block_data, ptr @__ksymtab_dm_block_location, ptr @__ksymtab_dm_block_manager_create, ptr @__ksymtab_dm_block_manager_destroy, ptr @__ksymtab_dm_bm_block_size, ptr @__ksymtab_dm_bm_checksum, ptr @__ksymtab_dm_bm_flush, ptr @__ksymtab_dm_bm_is_read_only, ptr @__ksymtab_dm_bm_read_lock, ptr @__ksymtab_dm_bm_set_read_only, ptr @__ksymtab_dm_bm_set_read_write, ptr @__ksymtab_dm_bm_unlock, ptr @__ksymtab_dm_bm_write_lock, ptr @__ksymtab_dm_bm_write_lock_zero, ptr @dm_bm_validate_buffer._entry, ptr @dm_bm_validate_buffer._entry.16, ptr @dm_bm_validate_buffer._entry_ptr, ptr @dm_bm_validate_buffer._entry_ptr.18, ptr @report_recursive_bug._entry, ptr @report_recursive_bug._entry_ptr, ptr @bl_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.12, ptr @dm_bm_validate_buffer._rs, ptr @.str.13, ptr @.str.14, ptr @dm_bm_validate_buffer._rs.15, ptr @.str.17, ptr @.str.19], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @report_recursive_bug._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_bm_validate_buffer._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_bm_validate_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_bm_validate_buffer._rs.15 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_bm_validate_buffer._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @dm_block_location(ptr noundef %b) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i64 @dm_bufio_get_block_number(ptr noundef %b) #9
  ret i64 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dm_bufio_get_block_number(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dm_block_data(ptr noundef %b) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @dm_bufio_get_block_data(ptr noundef %b) #9
  ret ptr %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_bufio_get_block_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dm_block_manager_create(ptr noundef %bdev, i32 noundef %block_size, i32 noundef %max_held_per_thread) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 8) #12
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @dm_bufio_client_create(ptr noundef %bdev, i32 noundef %block_size, i32 noundef %max_held_per_thread, i32 noundef 256, ptr noundef nonnull @dm_block_manager_alloc_callback, ptr noundef nonnull @dm_block_manager_write_callback) #9
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %call7.i, align 8
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %read_only = getelementptr inbounds %struct.dm_block_manager, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %read_only to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %read_only, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %read_only, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i, %if.end7 ], [ %call1, %if.then4 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_bufio_client_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dm_block_manager_alloc_callback(ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dm_bufio_get_aux_data(ptr noundef %buf) #9
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %call, align 4
  %lock = getelementptr inbounds %struct.buffer_aux, ptr %call, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @bl_init.__key, i16 noundef signext 3) #9
  %count.i = getelementptr inbounds %struct.buffer_aux, ptr %call, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %count.i, align 4
  %waiters.i = getelementptr inbounds %struct.buffer_aux, ptr %call, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %waiters.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %waiters.i, ptr %waiters.i, align 4
  %prev.i.i = getelementptr inbounds %struct.buffer_aux, ptr %call, i32 0, i32 2, i32 2, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %waiters.i, ptr %prev.i.i, align 4
  %uglygep.i = getelementptr %struct.buffer_aux, ptr %call, i32 0, i32 2, i32 3
  %4 = call ptr @memset(ptr %uglygep.i, i32 0, i32 16)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dm_block_manager_write_callback(ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dm_bufio_get_aux_data(ptr noundef %buf) #9
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prepare_for_write = getelementptr inbounds %struct.dm_block_validator, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prepare_for_write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prepare_for_write, align 4
  %call3 = tail call ptr @dm_bufio_get_client(ptr noundef %buf) #9
  %call4 = tail call i32 @dm_bufio_get_block_size(ptr noundef %call3) #9
  tail call void %3(ptr noundef nonnull %1, ptr noundef %buf, i32 noundef %call4) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_block_manager_destroy(ptr noundef %bm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bm, align 4
  tail call void @dm_bufio_client_destroy(ptr noundef %1) #9
  tail call void @kfree(ptr noundef %bm) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_bufio_client_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_bm_block_size(ptr nocapture noundef readonly %bm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bm, align 4
  %call = tail call i32 @dm_bufio_get_block_size(ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bufio_get_block_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @dm_bm_nr_blocks(ptr nocapture noundef readonly %bm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bm, align 4
  %call = tail call i64 @dm_bufio_get_device_size(ptr noundef %1) #9
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dm_bufio_get_device_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_bm_read_lock(ptr nocapture noundef readonly %bm, i64 noundef %b, ptr noundef %v, ptr noundef %result) #0 align 64 {
entry:
  %w.i = alloca %struct.waiter, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bm, align 4
  %call = tail call ptr @dm_bufio_read(ptr noundef %1, i64 noundef %b, ptr noundef %result) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %result, align 4
  %call4 = tail call ptr @dm_bufio_get_aux_data(ptr noundef %4) #9
  %lock = getelementptr inbounds %struct.buffer_aux, ptr %call4, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %w.i) #9
  %5 = getelementptr inbounds %struct.list_head, ptr %w.i, i32 0, i32 1
  %6 = getelementptr inbounds %struct.waiter, ptr %w.i, i32 0, i32 1
  %7 = getelementptr inbounds %struct.waiter, ptr %w.i, i32 0, i32 2
  %8 = ptrtoint ptr %w.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %w.i, align 8
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %call.i = tail call fastcc i32 @__check_holder(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then8

if.end.i:                                         ; preds = %if.end
  %count.i.i = getelementptr inbounds %struct.buffer_aux, ptr %call4, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %11 = icmp ult i32 %10, 4
  br i1 %11, label %__available_for_read.exit.i, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

__available_for_read.exit.i:                      ; preds = %if.end.i
  %waiters.i.i = getelementptr inbounds %struct.buffer_aux, ptr %call4, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %waiters.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %waiters.i.i, align 4
  %cmp.i.i.not.i = icmp eq ptr %13, %waiters.i.i
  br i1 %cmp.i.i.not.i, label %if.then5.i, label %__available_for_read.exit.i.if.end8.i_crit_edge

__available_for_read.exit.i.if.end8.i_crit_edge:  ; preds = %__available_for_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then5.i:                                       ; preds = %__available_for_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i = add nuw nsw i32 %10, 1
  %14 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %inc.i, ptr %count.i.i, align 4
  %15 = tail call i32 @llvm.read_register.i32(metadata !74) #9
  %and.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task.i, align 8
  tail call fastcc void @__add_holder(ptr noundef %lock, ptr noundef %18) #9
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %if.end10

if.end8.i:                                        ; preds = %__available_for_read.exit.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge
  %19 = tail call i32 @llvm.read_register.i32(metadata !74) #9
  %and.i28.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i28.i to ptr
  %task10.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task10.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task10.i, align 8
  %usage.i.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %usage.i.i, i32 1, i32 3, i32 1) #9
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i, ptr %usage.i.i, i32 1, ptr elementtype(i32) %usage.i.i) #9, !srcloc !84
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end8.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !85

if.end8.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end8.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %24 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %.not.i.i.i.i.i = icmp sgt i32 %24, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.get_task_struct.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !86

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.get_task_struct.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_task_struct.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end8.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end8.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i.i, i32 noundef %.sink.i.i.i.i.i) #9
  br label %get_task_struct.exit.i

get_task_struct.exit.i:                           ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.get_task_struct.exit.i_crit_edge
  %25 = ptrtoint ptr %task10.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task10.i, align 8
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %6, align 8
  %28 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %7, align 4
  %waiters.i = getelementptr inbounds %struct.buffer_aux, ptr %call4, i32 0, i32 2, i32 2
  %prev.i.i = getelementptr inbounds %struct.buffer_aux, ptr %call4, i32 0, i32 2, i32 2, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %w.i, ptr noundef %30, ptr noundef %waiters.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %get_task_struct.exit.i.list_add_tail.exit.i_crit_edge

get_task_struct.exit.i.list_add_tail.exit.i_crit_edge: ; preds = %get_task_struct.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %get_task_struct.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %w.i, ptr %prev.i.i, align 4
  %32 = ptrtoint ptr %w.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %waiters.i, ptr %w.i, align 8
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %5, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %w.i, ptr %30, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %get_task_struct.exit.i.list_add_tail.exit.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #9
  call fastcc void @__wait(ptr noundef nonnull %w.i) #9
  %35 = ptrtoint ptr %task10.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task10.i, align 8
  %usage.i29.i = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 2
  %call.i.i.i.i.i.i30.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i29.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !87
  call void @llvm.prefetch.p0(ptr %usage.i29.i, i32 1, i32 3, i32 1) #9
  %37 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i29.i, ptr %usage.i29.i, i32 1, ptr elementtype(i32) %usage.i29.i) #9, !srcloc !88
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i31.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i31.i, label %if.end5.i.i.i.i.i.if.end10_crit_edge, label %if.then10.i.i.i.i.i, !prof !86

if.end5.i.i.i.i.i.if.end10_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %usage.i29.i, i32 noundef 3) #9
  br label %if.end10

if.then.i.i:                                      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !89
  call void @__put_task_struct(ptr noundef %36) #9
  br label %if.end10

if.then8:                                         ; preds = %if.end
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %w.i) #9
  %38 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %result, align 4
  tail call void @dm_bufio_release(ptr noundef %39) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call.i)
  %cmp.i40 = icmp eq i32 %call.i, -22
  br i1 %cmp.i40, label %do.end.i, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %call.i41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i64 noundef %b) #13
  br label %cleanup

if.end10:                                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end10_crit_edge, %if.then5.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %w.i) #9
  %write_locked = getelementptr inbounds %struct.buffer_aux, ptr %call4, i32 0, i32 1
  %40 = ptrtoint ptr %write_locked to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %write_locked, align 4
  %41 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %result, align 4
  %call12 = call fastcc i32 @dm_bm_validate_buffer(ptr noundef %bm, ptr noundef %42, ptr noundef %call4, ptr noundef %v)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %if.then20, !prof !86

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then20:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @bl_up_read(ptr noundef %lock)
  %43 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %result, align 4
  call void @dm_bufio_release(ptr noundef %44) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end10.cleanup_crit_edge, %do.end.i, %if.then8.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %call12, %if.then20 ], [ 0, %if.end10.cleanup_crit_edge ], [ %call.i, %if.then8.cleanup_crit_edge ], [ -22, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_bufio_read(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_bufio_get_aux_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_bufio_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dm_bm_validate_buffer(ptr nocapture noundef readonly %bm, ptr noundef %buf, ptr nocapture noundef %aux, ptr noundef %v) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.else, !prof !85

if.then:                                          ; preds = %entry
  %tobool4.not = icmp eq ptr %v, null
  br i1 %tobool4.not, label %if.then.return_crit_edge, label %if.end

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %if.then
  %check = getelementptr inbounds %struct.dm_block_validator, ptr %v, i32 0, i32 2
  %2 = ptrtoint ptr %check to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %check, align 4
  %4 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bm, align 4
  %call = tail call i32 @dm_bufio_get_block_size(ptr noundef %5) #9
  %call6 = tail call i32 %3(ptr noundef nonnull %v, ptr noundef %buf, i32 noundef %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cleanup, label %if.then14, !prof !86

if.then14:                                        ; preds = %if.end
  %call15 = tail call i32 @___ratelimit(ptr noundef nonnull @dm_bm_validate_buffer._rs, ptr noundef nonnull @__func__.dm_bm_validate_buffer) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then14.return_crit_edge, label %do.end

if.then14.return_crit_edge:                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.end:                                           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %v, align 4
  %call18 = tail call i64 @dm_bufio_get_block_number(ptr noundef %buf) #9
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %7, i64 noundef %call18) #13
  br label %return

cleanup:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %aux to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %v, ptr %aux, align 4
  br label %return

if.else:                                          ; preds = %entry
  %cmp.not = icmp eq ptr %1, %v
  br i1 %cmp.not, label %if.else.return_crit_edge, label %if.then30, !prof !86

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then30:                                        ; preds = %if.else
  %call31 = tail call i32 @___ratelimit(ptr noundef nonnull @dm_bm_validate_buffer._rs.15, ptr noundef nonnull @__func__.dm_bm_validate_buffer) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then30.return_crit_edge, label %do.end36

if.then30.return_crit_edge:                       ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.end36:                                         ; preds = %if.then30
  %9 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %aux, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool40.not = icmp eq ptr %v, null
  br i1 %tobool40.not, label %do.end36.cond.end_crit_edge, label %cond.true

do.end36.cond.end_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %v, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end36.cond.end_crit_edge
  %cond = phi ptr [ %14, %cond.true ], [ @.str.19, %do.end36.cond.end_crit_edge ]
  %call42 = tail call i64 @dm_bufio_get_block_number(ptr noundef %buf) #9
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %12, ptr noundef %cond, i64 noundef %call42) #13
  br label %return

return:                                           ; preds = %cond.end, %if.then30.return_crit_edge, %if.else.return_crit_edge, %cleanup, %do.end, %if.then14.return_crit_edge, %if.then.return_crit_edge
  %retval.1 = phi i32 [ -22, %cond.end ], [ -22, %if.then30.return_crit_edge ], [ 0, %cleanup ], [ 0, %if.else.return_crit_edge ], [ %call6, %if.then14.return_crit_edge ], [ %call6, %do.end ], [ 0, %if.then.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bl_up_read(ptr noundef %lock) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %count = getelementptr inbounds %struct.block_lock, ptr %lock, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %do.body3, label %do.end6, !prof !85

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/persistent-data/dm-block-manager.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 246, 0\0A.popsection", ""() #9, !srcloc !90
  unreachable

do.end6:                                          ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !74) #9
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %arrayidx.i.i = getelementptr %struct.block_lock, ptr %lock, i32 0, i32 3, i32 0
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp1.i.i = icmp eq ptr %7, %5
  br i1 %cmp1.i.i, label %do.end6.__find_holder.exit.i_crit_edge, label %for.inc.i.i

do.end6.__find_holder.exit.i_crit_edge:           ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %__find_holder.exit.i

for.inc.i.i:                                      ; preds = %do.end6
  %arrayidx.1.i.i = getelementptr %struct.block_lock, ptr %lock, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1.i.i, align 4
  %cmp1.1.i.i = icmp eq ptr %9, %5
  br i1 %cmp1.1.i.i, label %for.inc.i.i.__find_holder.exit.i_crit_edge, label %for.inc.1.i.i

for.inc.i.i.__find_holder.exit.i_crit_edge:       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__find_holder.exit.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  %arrayidx.2.i.i = getelementptr %struct.block_lock, ptr %lock, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.2.i.i, align 4
  %cmp1.2.i.i = icmp eq ptr %11, %5
  br i1 %cmp1.2.i.i, label %for.inc.1.i.i.__find_holder.exit.i_crit_edge, label %for.inc.2.i.i

for.inc.1.i.i.__find_holder.exit.i_crit_edge:     ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__find_holder.exit.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  %arrayidx.3.i.i = getelementptr %struct.block_lock, ptr %lock, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.3.i.i, align 4
  %cmp1.3.i.i = icmp eq ptr %13, %5
  br i1 %cmp1.3.i.i, label %for.inc.2.i.i.__find_holder.exit.i_crit_edge, label %do.body5.i.i

for.inc.2.i.i.__find_holder.exit.i_crit_edge:     ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__find_holder.exit.i

do.body5.i.i:                                     ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/persistent-data/dm-block-manager.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 69, 0\0A.popsection", ""() #9, !srcloc !91
  unreachable

__find_holder.exit.i:                             ; preds = %for.inc.2.i.i.__find_holder.exit.i_crit_edge, %for.inc.1.i.i.__find_holder.exit.i_crit_edge, %for.inc.i.i.__find_holder.exit.i_crit_edge, %do.end6.__find_holder.exit.i_crit_edge
  %i.019.lcssa.i.i = phi i32 [ 0, %do.end6.__find_holder.exit.i_crit_edge ], [ 1, %for.inc.i.i.__find_holder.exit.i_crit_edge ], [ 2, %for.inc.1.i.i.__find_holder.exit.i_crit_edge ], [ 3, %for.inc.2.i.i.__find_holder.exit.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.block_lock, ptr %lock, i32 0, i32 3, i32 %i.019.lcssa.i.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx.i, align 4
  %usage.i.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !87
  tail call void @llvm.prefetch.p0(ptr %usage.i.i, i32 1, i32 3, i32 1) #9
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i, ptr %usage.i.i, i32 1, ptr elementtype(i32) %usage.i.i) #9, !srcloc !88
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %__find_holder.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.__del_holder.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !86

if.end5.i.i.i.i.i.__del_holder.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__del_holder.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %usage.i.i, i32 noundef 3) #9
  br label %__del_holder.exit

if.then.i.i:                                      ; preds = %__find_holder.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !89
  tail call void @__put_task_struct(ptr noundef %5) #9
  br label %__del_holder.exit

__del_holder.exit:                                ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.__del_holder.exit_crit_edge
  %16 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count, align 4
  %dec = add i32 %17, -1
  store i32 %dec, ptr %count, align 4
  %waiters = getelementptr inbounds %struct.block_lock, ptr %lock, i32 0, i32 2
  %18 = ptrtoint ptr %waiters to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %waiters, align 4
  %cmp.i.not = icmp eq ptr %19, %waiters
  br i1 %cmp.i.not, label %__del_holder.exit.if.end11_crit_edge, label %if.then10

__del_holder.exit.if.end11_crit_edge:             ; preds = %__del_holder.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then10:                                        ; preds = %__del_holder.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @__wake_many(ptr noundef %lock)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %__del_holder.exit.if.end11_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_bm_write_lock(ptr noundef readonly %bm, i64 noundef %b, ptr noundef %v, ptr noundef %result) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %bm, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %dm_bm_is_read_only.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

dm_bm_is_read_only.exit:                          ; preds = %entry
  %read_only.i = getelementptr inbounds %struct.dm_block_manager, ptr %bm, i32 0, i32 1
  %0 = ptrtoint ptr %read_only.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %read_only.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i)
  %bf.cast.i = icmp slt i8 %bf.load.i, 0
  br i1 %bf.cast.i, label %dm_bm_is_read_only.exit.cleanup_crit_edge, label %if.end

dm_bm_is_read_only.exit.cleanup_crit_edge:        ; preds = %dm_bm_is_read_only.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %dm_bm_is_read_only.exit
  %1 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bm, align 4
  %call1 = tail call ptr @dm_bufio_read(ptr noundef %2, i64 noundef %b, ptr noundef %result) #9
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %4 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %result, align 4
  %call7 = tail call ptr @dm_bufio_get_aux_data(ptr noundef %5) #9
  %lock = getelementptr inbounds %struct.buffer_aux, ptr %call7, i32 0, i32 2
  %call8 = tail call fastcc i32 @bl_down_write(ptr noundef %lock)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end5
  %6 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %result, align 4
  tail call void @dm_bufio_release(ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call8)
  %cmp.i38 = icmp eq i32 %call8, -22
  br i1 %cmp.i38, label %do.end.i, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i64 noundef %b) #13
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %write_locked = getelementptr inbounds %struct.buffer_aux, ptr %call7, i32 0, i32 1
  %8 = ptrtoint ptr %write_locked to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %write_locked, align 4
  %9 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %result, align 4
  %call13 = tail call fastcc i32 @dm_bm_validate_buffer(ptr noundef nonnull %bm, ptr noundef %10, ptr noundef %call7, ptr noundef %v)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end11.cleanup_crit_edge, label %if.then17, !prof !86

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @bl_up_write(ptr noundef %lock)
  %11 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %result, align 4
  tail call void @dm_bufio_release(ptr noundef %12) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end11.cleanup_crit_edge, %do.end.i, %if.then9.cleanup_crit_edge, %if.then3, %dm_bm_is_read_only.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then3 ], [ %call13, %if.then17 ], [ -1, %dm_bm_is_read_only.exit.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ], [ %call8, %if.then9.cleanup_crit_edge ], [ -22, %do.end.i ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @dm_bm_is_read_only(ptr noundef readonly %bm) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %bm, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %read_only = getelementptr inbounds %struct.dm_block_manager, ptr %bm, i32 0, i32 1
  %0 = ptrtoint ptr %read_only to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %read_only, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %bf.cast = icmp slt i8 %bf.load, 0
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i1 [ %bf.cast, %cond.true ], [ true, %entry.cond.end_crit_edge ]
  ret i1 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bl_down_write(ptr noundef %lock) unnamed_addr #0 align 64 {
entry:
  %w = alloca %struct.waiter, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %w) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %w, i32 0, i32 1
  %1 = getelementptr inbounds %struct.waiter, ptr %w, i32 0, i32 1
  %2 = getelementptr inbounds %struct.waiter, ptr %w, i32 0, i32 2
  %3 = ptrtoint ptr %w to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %w, align 8
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %call = tail call fastcc i32 @__check_holder(ptr noundef %lock)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %count = getelementptr inbounds %struct.block_lock, ptr %lock, i32 0, i32 1
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %waiters = getelementptr inbounds %struct.block_lock, ptr %lock, i32 0, i32 2
  %6 = ptrtoint ptr %waiters to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %waiters, align 4
  %cmp.i.not = icmp eq ptr %7, %waiters
  br i1 %cmp.i.not, label %if.then5, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %count, align 4
  %9 = tail call i32 @llvm.read_register.i32(metadata !74) #9
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  tail call fastcc void @__add_holder(ptr noundef %lock, ptr noundef %12)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %13 = tail call i32 @llvm.read_register.i32(metadata !74) #9
  %and.i31 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i31 to ptr
  %task11 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task11, align 8
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #9
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #9, !srcloc !84
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end9.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !85

if.end9.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end9
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %18 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %.not.i.i.i.i = icmp sgt i32 %18, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_task_struct.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !86

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_task_struct.exit_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_task_struct.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end9.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end9.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #9
  br label %get_task_struct.exit

get_task_struct.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_task_struct.exit_crit_edge
  %19 = ptrtoint ptr %task11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task11, align 8
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %1, align 8
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %2, align 4
  %waiters16 = getelementptr inbounds %struct.block_lock, ptr %lock, i32 0, i32 2
  %23 = ptrtoint ptr %waiters16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %waiters16, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %w, ptr noundef %waiters16, ptr noundef %24) #9
  br i1 %call.i.i, label %if.end.i.i, label %get_task_struct.exit.list_add.exit_crit_edge

get_task_struct.exit.list_add.exit_crit_edge:     ; preds = %get_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i:                                       ; preds = %get_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %w, ptr %prev1.i.i, align 4
  %26 = ptrtoint ptr %w to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %w, align 8
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %waiters16, ptr %0, align 4
  %28 = ptrtoint ptr %waiters16 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %w, ptr %waiters16, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %get_task_struct.exit.list_add.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #9
  call fastcc void @__wait(ptr noundef nonnull %w)
  %29 = ptrtoint ptr %task11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task11, align 8
  %usage.i32 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 2
  %call.i.i.i.i.i.i33 = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i32, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !87
  call void @llvm.prefetch.p0(ptr %usage.i32, i32 1, i32 3, i32 1) #9
  %31 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i32, ptr %usage.i32, i32 1, ptr elementtype(i32) %usage.i32) #9, !srcloc !88
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i34 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i34, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !86

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %usage.i32, i32 noundef 3) #9
  br label %cleanup

if.then.i:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !89
  call void @__put_task_struct(ptr noundef %30) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %w) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bl_up_write(ptr noundef %lock) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %0 = tail call i32 @llvm.read_register.i32(metadata !74) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %arrayidx.i.i = getelementptr %struct.block_lock, ptr %lock, i32 0, i32 3, i32 0
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp1.i.i = icmp eq ptr %5, %3
  br i1 %cmp1.i.i, label %entry.__find_holder.exit.i_crit_edge, label %for.inc.i.i

entry.__find_holder.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__find_holder.exit.i

for.inc.i.i:                                      ; preds = %entry
  %arrayidx.1.i.i = getelementptr %struct.block_lock, ptr %lock, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1.i.i, align 4
  %cmp1.1.i.i = icmp eq ptr %7, %3
  br i1 %cmp1.1.i.i, label %for.inc.i.i.__find_holder.exit.i_crit_edge, label %for.inc.1.i.i

for.inc.i.i.__find_holder.exit.i_crit_edge:       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__find_holder.exit.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  %arrayidx.2.i.i = getelementptr %struct.block_lock, ptr %lock, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.2.i.i, align 4
  %cmp1.2.i.i = icmp eq ptr %9, %3
  br i1 %cmp1.2.i.i, label %for.inc.1.i.i.__find_holder.exit.i_crit_edge, label %for.inc.2.i.i

for.inc.1.i.i.__find_holder.exit.i_crit_edge:     ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__find_holder.exit.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  %arrayidx.3.i.i = getelementptr %struct.block_lock, ptr %lock, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.3.i.i, align 4
  %cmp1.3.i.i = icmp eq ptr %11, %3
  br i1 %cmp1.3.i.i, label %for.inc.2.i.i.__find_holder.exit.i_crit_edge, label %do.body5.i.i

for.inc.2.i.i.__find_holder.exit.i_crit_edge:     ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__find_holder.exit.i

do.body5.i.i:                                     ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/persistent-data/dm-block-manager.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 69, 0\0A.popsection", ""() #9, !srcloc !91
  unreachable

__find_holder.exit.i:                             ; preds = %for.inc.2.i.i.__find_holder.exit.i_crit_edge, %for.inc.1.i.i.__find_holder.exit.i_crit_edge, %for.inc.i.i.__find_holder.exit.i_crit_edge, %entry.__find_holder.exit.i_crit_edge
  %i.019.lcssa.i.i = phi i32 [ 0, %entry.__find_holder.exit.i_crit_edge ], [ 1, %for.inc.i.i.__find_holder.exit.i_crit_edge ], [ 2, %for.inc.1.i.i.__find_holder.exit.i_crit_edge ], [ 3, %for.inc.2.i.i.__find_holder.exit.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.block_lock, ptr %lock, i32 0, i32 3, i32 %i.019.lcssa.i.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx.i, align 4
  %usage.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !87
  tail call void @llvm.prefetch.p0(ptr %usage.i.i, i32 1, i32 3, i32 1) #9
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i, ptr %usage.i.i, i32 1, ptr elementtype(i32) %usage.i.i) #9, !srcloc !88
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %__find_holder.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.__del_holder.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !86

if.end5.i.i.i.i.i.__del_holder.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__del_holder.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %usage.i.i, i32 noundef 3) #9
  br label %__del_holder.exit

if.then.i.i:                                      ; preds = %__find_holder.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !89
  tail call void @__put_task_struct(ptr noundef %3) #9
  br label %__del_holder.exit

__del_holder.exit:                                ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.__del_holder.exit_crit_edge
  %count = getelementptr inbounds %struct.block_lock, ptr %lock, i32 0, i32 1
  %14 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %count, align 4
  %waiters = getelementptr inbounds %struct.block_lock, ptr %lock, i32 0, i32 2
  %15 = ptrtoint ptr %waiters to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %waiters, align 4
  %cmp.i.not = icmp eq ptr %16, %waiters
  br i1 %cmp.i.not, label %__del_holder.exit.if.end_crit_edge, label %if.then

__del_holder.exit.if.end_crit_edge:               ; preds = %__del_holder.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %__del_holder.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @__wake_many(ptr noundef %lock)
  br label %if.end

if.end:                                           ; preds = %if.then, %__del_holder.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_bm_read_try_lock(ptr nocapture noundef readonly %bm, i64 noundef %b, ptr noundef %v, ptr noundef %result) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bm, align 4
  %call = tail call ptr @dm_bufio_get(ptr noundef %1, i64 noundef %b, ptr noundef %result) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end7, !prof !85

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %3 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %result, align 4
  %call9 = tail call ptr @dm_bufio_get_aux_data(ptr noundef %4) #9
  %lock = getelementptr inbounds %struct.buffer_aux, ptr %call9, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %call.i = tail call fastcc i32 @__check_holder(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %bl_down_read_nonblock.exit

if.end.i:                                         ; preds = %if.end7
  %count.i.i = getelementptr inbounds %struct.buffer_aux, ptr %call9, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %__available_for_read.exit.i, label %if.end.i.if.then11.thread_crit_edge

if.end.i.if.then11.thread_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.thread

__available_for_read.exit.i:                      ; preds = %if.end.i
  %waiters.i.i = getelementptr inbounds %struct.buffer_aux, ptr %call9, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %waiters.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %waiters.i.i, align 4
  %cmp.i.i.not.i = icmp eq ptr %9, %waiters.i.i
  br i1 %cmp.i.i.not.i, label %bl_down_read_nonblock.exit.thread50, label %__available_for_read.exit.i.if.then11.thread_crit_edge

__available_for_read.exit.i.if.then11.thread_crit_edge: ; preds = %__available_for_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.thread

bl_down_read_nonblock.exit.thread50:              ; preds = %__available_for_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i = add nuw nsw i32 %6, 1
  %10 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %inc.i, ptr %count.i.i, align 4
  %11 = tail call i32 @llvm.read_register.i32(metadata !74) #9
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i, align 8
  tail call fastcc void @__add_holder(ptr noundef %lock, ptr noundef %14) #9
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %if.end13

if.then11.thread:                                 ; preds = %__available_for_read.exit.i.if.then11.thread_crit_edge, %if.end.i.if.then11.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  %15 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %result, align 4
  tail call void @dm_bufio_release(ptr noundef %16) #9
  br label %cleanup

bl_down_read_nonblock.exit:                       ; preds = %if.end7
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then11, label %bl_down_read_nonblock.exit.if.end13_crit_edge

bl_down_read_nonblock.exit.if.end13_crit_edge:    ; preds = %bl_down_read_nonblock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then11:                                        ; preds = %bl_down_read_nonblock.exit
  %17 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %result, align 4
  tail call void @dm_bufio_release(ptr noundef %18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call.i)
  %cmp.i44 = icmp eq i32 %call.i, -22
  br i1 %cmp.i44, label %do.end.i, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %call.i45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i64 noundef %b) #13
  br label %cleanup

if.end13:                                         ; preds = %bl_down_read_nonblock.exit.if.end13_crit_edge, %bl_down_read_nonblock.exit.thread50
  %write_locked = getelementptr inbounds %struct.buffer_aux, ptr %call9, i32 0, i32 1
  %19 = ptrtoint ptr %write_locked to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %write_locked, align 4
  %20 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %result, align 4
  %call15 = tail call fastcc i32 @dm_bm_validate_buffer(ptr noundef %bm, ptr noundef %21, ptr noundef %call9, ptr noundef %v)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end13.cleanup_crit_edge, label %if.then23, !prof !86

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then23:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @bl_up_read(ptr noundef %lock)
  %22 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %result, align 4
  tail call void @dm_bufio_release(ptr noundef %23) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.end13.cleanup_crit_edge, %do.end.i, %if.then11.cleanup_crit_edge, %if.then11.thread, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %call15, %if.then23 ], [ -11, %if.end.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ], [ -11, %if.then11.thread ], [ %call.i, %if.then11.cleanup_crit_edge ], [ -22, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_bufio_get(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_bm_write_lock_zero(ptr noundef readonly %bm, i64 noundef %b, ptr noundef %v, ptr noundef %result) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %bm, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %dm_bm_is_read_only.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

dm_bm_is_read_only.exit:                          ; preds = %entry
  %read_only.i = getelementptr inbounds %struct.dm_block_manager, ptr %bm, i32 0, i32 1
  %0 = ptrtoint ptr %read_only.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %read_only.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i)
  %bf.cast.i = icmp slt i8 %bf.load.i, 0
  br i1 %bf.cast.i, label %dm_bm_is_read_only.exit.cleanup_crit_edge, label %if.end

dm_bm_is_read_only.exit.cleanup_crit_edge:        ; preds = %dm_bm_is_read_only.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %dm_bm_is_read_only.exit
  %1 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bm, align 4
  %call1 = tail call ptr @dm_bufio_new(ptr noundef %2, i64 noundef %b, ptr noundef %result) #9
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %4 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bm, align 4
  %call.i = tail call i32 @dm_bufio_get_block_size(ptr noundef %5) #9
  %6 = call ptr @memset(ptr %call1, i32 0, i32 %call.i)
  %7 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %result, align 4
  %call8 = tail call ptr @dm_bufio_get_aux_data(ptr noundef %8) #9
  %lock = getelementptr inbounds %struct.buffer_aux, ptr %call8, i32 0, i32 2
  %call9 = tail call fastcc i32 @bl_down_write(ptr noundef %lock)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %result, align 4
  tail call void @dm_bufio_release(ptr noundef %10) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %write_locked = getelementptr inbounds %struct.buffer_aux, ptr %call8, i32 0, i32 1
  %11 = ptrtoint ptr %write_locked to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %write_locked, align 4
  %12 = ptrtoint ptr %call8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %v, ptr %call8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then10, %if.then3, %dm_bm_is_read_only.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then3 ], [ %call9, %if.then10 ], [ 0, %if.end12 ], [ -1, %dm_bm_is_read_only.exit.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_bufio_new(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_bm_unlock(ptr noundef %b) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @dm_bufio_get_aux_data(ptr noundef %b) #9
  %write_locked = getelementptr inbounds %struct.buffer_aux, ptr %call1, i32 0, i32 1
  %0 = ptrtoint ptr %write_locked to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %write_locked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dm_bufio_mark_buffer_dirty(ptr noundef %b) #9
  %lock = getelementptr inbounds %struct.buffer_aux, ptr %call1, i32 0, i32 2
  tail call fastcc void @bl_up_write(ptr noundef %lock)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lock3 = getelementptr inbounds %struct.buffer_aux, ptr %call1, i32 0, i32 2
  tail call fastcc void @bl_up_read(ptr noundef %lock3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @dm_bufio_release(ptr noundef %b) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_bufio_mark_buffer_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_bm_flush(ptr noundef readonly %bm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %bm, null
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %dm_bm_is_read_only.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

dm_bm_is_read_only.exit:                          ; preds = %entry
  %read_only.i = getelementptr inbounds %struct.dm_block_manager, ptr %bm, i32 0, i32 1
  %0 = ptrtoint ptr %read_only.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %read_only.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i)
  %bf.cast.i = icmp slt i8 %bf.load.i, 0
  br i1 %bf.cast.i, label %dm_bm_is_read_only.exit.return_crit_edge, label %if.end

dm_bm_is_read_only.exit.return_crit_edge:         ; preds = %dm_bm_is_read_only.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %dm_bm_is_read_only.exit
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bm, align 4
  %call1 = tail call i32 @dm_bufio_write_dirty_buffers(ptr noundef %2) #9
  br label %return

return:                                           ; preds = %if.end, %dm_bm_is_read_only.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -1, %dm_bm_is_read_only.exit.return_crit_edge ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bufio_write_dirty_buffers(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_bm_prefetch(ptr nocapture noundef readonly %bm, i64 noundef %b) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bm, align 4
  tail call void @dm_bufio_prefetch(ptr noundef %1, i64 noundef %b, i32 noundef 1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_bufio_prefetch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dm_bm_set_read_only(ptr noundef %bm) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %bm, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %read_only = getelementptr inbounds %struct.dm_block_manager, ptr %bm, i32 0, i32 1
  %0 = ptrtoint ptr %read_only to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %read_only, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %read_only, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dm_bm_set_read_write(ptr noundef %bm) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %bm, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %read_only = getelementptr inbounds %struct.dm_block_manager, ptr %bm, i32 0, i32 1
  %0 = ptrtoint ptr %read_only to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %read_only, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %read_only, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_bm_checksum(ptr noundef %data, i32 noundef %len, i32 noundef %init_xor) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crc32c(i32 noundef -1, ptr noundef %data, i32 noundef %len) #9
  %xor = xor i32 %call, %init_xor
  ret i32 %xor
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32c(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_bufio_get_client(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__check_holder(ptr noundef %lock) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !74) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %arrayidx = getelementptr %struct.block_lock, ptr %lock, i32 0, i32 3, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp1 = icmp eq ptr %5, %3
  br i1 %cmp1, label %entry.do.end_crit_edge, label %for.inc

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %for.inc.2.do.end_crit_edge, %for.inc.1.do.end_crit_edge, %for.inc.do.end_crit_edge, %entry.do.end_crit_edge
  %i.023.lcssa = phi i32 [ 0, %entry.do.end_crit_edge ], [ 1, %for.inc.do.end_crit_edge ], [ 2, %for.inc.1.do.end_crit_edge ], [ 3, %for.inc.2.do.end_crit_edge ]
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #13
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #13
  %arrayidx8 = getelementptr %struct.block_lock, ptr %lock, i32 0, i32 4, i32 %i.023.lcssa
  %entries = getelementptr %struct.block_lock, ptr %lock, i32 0, i32 4, i32 %i.023.lcssa, i32 1
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx8, align 4
  tail call void @stack_trace_print(ptr noundef %entries, i32 noundef %7, i32 noundef 4) #9
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #13
  tail call void @dump_stack() #13
  br label %cleanup

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr %struct.block_lock, ptr %lock, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1, align 4
  %cmp1.1 = icmp eq ptr %9, %3
  br i1 %cmp1.1, label %for.inc.do.end_crit_edge, label %for.inc.1

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.block_lock, ptr %lock, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.2, align 4
  %cmp1.2 = icmp eq ptr %11, %3
  br i1 %cmp1.2, label %for.inc.1.do.end_crit_edge, label %for.inc.2

for.inc.1.do.end_crit_edge:                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.block_lock, ptr %lock, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.3, align 4
  %cmp1.3 = icmp eq ptr %13, %3
  br i1 %cmp1.3, label %for.inc.2.do.end_crit_edge, label %for.inc.2.cleanup_crit_edge

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.2.do.end_crit_edge:                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

cleanup:                                          ; preds = %for.inc.2.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %for.inc.2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__add_holder(ptr noundef %lock, ptr noundef %task) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.block_lock, ptr %lock, i32 0, i32 3, i32 0
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %cmp1.i = icmp eq ptr %1, null
  br i1 %cmp1.i, label %entry.__find_holder.exit_crit_edge, label %for.inc.i

entry.__find_holder.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__find_holder.exit

for.inc.i:                                        ; preds = %entry
  %arrayidx.1.i = getelementptr %struct.block_lock, ptr %lock, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1.i, align 4
  %cmp1.1.i = icmp eq ptr %3, null
  br i1 %cmp1.1.i, label %for.inc.i.__find_holder.exit_crit_edge, label %for.inc.1.i

for.inc.i.__find_holder.exit_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__find_holder.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx.2.i = getelementptr %struct.block_lock, ptr %lock, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.2.i, align 4
  %cmp1.2.i = icmp eq ptr %5, null
  br i1 %cmp1.2.i, label %for.inc.1.i.__find_holder.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.__find_holder.exit_crit_edge:         ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__find_holder.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %arrayidx.3.i = getelementptr %struct.block_lock, ptr %lock, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.3.i, align 4
  %cmp1.3.i = icmp eq ptr %7, null
  br i1 %cmp1.3.i, label %for.inc.2.i.__find_holder.exit_crit_edge, label %do.body5.i

for.inc.2.i.__find_holder.exit_crit_edge:         ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__find_holder.exit

do.body5.i:                                       ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/persistent-data/dm-block-manager.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 69, 0\0A.popsection", ""() #9, !srcloc !91
  unreachable

__find_holder.exit:                               ; preds = %for.inc.2.i.__find_holder.exit_crit_edge, %for.inc.1.i.__find_holder.exit_crit_edge, %for.inc.i.__find_holder.exit_crit_edge, %entry.__find_holder.exit_crit_edge
  %i.019.lcssa.i = phi i32 [ 0, %entry.__find_holder.exit_crit_edge ], [ 1, %for.inc.i.__find_holder.exit_crit_edge ], [ 2, %for.inc.1.i.__find_holder.exit_crit_edge ], [ 3, %for.inc.2.i.__find_holder.exit_crit_edge ]
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #9, !srcloc !84
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %__find_holder.exit.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !85

__find_holder.exit.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %__find_holder.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %__find_holder.exit
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_task_struct.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !86

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_task_struct.exit_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_task_struct.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %__find_holder.exit.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %__find_holder.exit.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #9
  br label %get_task_struct.exit

get_task_struct.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_task_struct.exit_crit_edge
  %arrayidx = getelementptr %struct.block_lock, ptr %lock, i32 0, i32 3, i32 %i.019.lcssa.i
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %task, ptr %arrayidx, align 4
  %traces = getelementptr inbounds %struct.block_lock, ptr %lock, i32 0, i32 4
  %add.ptr = getelementptr %struct.stack_store, ptr %traces, i32 %i.019.lcssa.i
  %entries = getelementptr %struct.stack_store, ptr %traces, i32 %i.019.lcssa.i, i32 1
  %call3 = tail call i32 @stack_trace_save(ptr noundef %entries, i32 noundef 10, i32 noundef 2) #9
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call3, ptr %add.ptr, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__wait(ptr nocapture noundef readonly %w) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %task60 = getelementptr inbounds %struct.waiter, ptr %w, i32 0, i32 1
  br label %__here

__here:                                           ; preds = %if.end63, %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !74) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 212
  %4 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 ptrtoint (ptr blockaddress(@__wait, %__here) to i32), ptr %task_state_change, align 4
  %5 = load ptr, ptr %task, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 2, ptr %5, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !92
  %7 = ptrtoint ptr %task60 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task60, align 4
  %tobool61.not = icmp eq ptr %8, null
  br i1 %tobool61.not, label %__here114, label %if.end63

if.end63:                                         ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @schedule() #9
  br label %__here

__here114:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  %9 = inttoptr i32 %and.i to ptr
  %task.le = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.le to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.le, align 8
  %task_state_change118 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 212
  %12 = ptrtoint ptr %task_state_change118 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 ptrtoint (ptr blockaddress(@__wait, %__here114) to i32), ptr %task_state_change118, align 4
  %13 = load ptr, ptr %task.le, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 0, ptr %13, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !93
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @stack_trace_print(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stack_trace_save(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__wake_many(ptr noundef %lock) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.block_lock, ptr %lock, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %do.body2, label %do.end7, !prof !85

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/persistent-data/dm-block-manager.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 152, 0\0A.popsection", ""() #9, !srcloc !94
  unreachable

do.end7:                                          ; preds = %entry
  %waiters = getelementptr inbounds %struct.block_lock, ptr %lock, i32 0, i32 2
  %2 = ptrtoint ptr %waiters to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %waiters, align 4
  %cmp15.not64 = icmp eq ptr %3, %waiters
  br i1 %cmp15.not64, label %do.end7.cleanup_crit_edge, label %do.end7.for.body_crit_edge

do.end7.for.body_crit_edge:                       ; preds = %do.end7
  br label %for.body

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %__wake_waiter.exit60.for.body_crit_edge, %do.end7.for.body_crit_edge
  %w.065 = phi ptr [ %tmp.067, %__wake_waiter.exit60.for.body_crit_edge ], [ %3, %do.end7.for.body_crit_edge ]
  %4 = ptrtoint ptr %w.065 to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp.067 = load ptr, ptr %w.065, align 4
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp19 = icmp sgt i32 %6, 3
  br i1 %cmp19, label %for.body.cleanup_crit_edge, label %if.end21

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %for.body
  %wants_write = getelementptr inbounds %struct.waiter, ptr %w.065, i32 0, i32 2
  %7 = ptrtoint ptr %wants_write to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wants_write, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool22.not = icmp eq i32 %8, 0
  br i1 %tobool22.not, label %if.end29, label %if.then23

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp25 = icmp sgt i32 %6, 0
  br i1 %cmp25, label %if.then23.cleanup_crit_edge, label %if.end27

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end27:                                         ; preds = %if.then23
  %9 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %count, align 4
  %task = getelementptr inbounds %struct.waiter, ptr %w.065, i32 0, i32 1
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 4
  tail call fastcc void @__add_holder(ptr noundef %lock, ptr noundef %11)
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %w.065) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end27.__wake_waiter.exit_crit_edge

if.end27.__wake_waiter.exit_crit_edge:            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %__wake_waiter.exit

if.end.i.i.i:                                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %w.065, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %w.065 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %w.065, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %__wake_waiter.exit

__wake_waiter.exit:                               ; preds = %if.end.i.i.i, %if.end27.__wake_waiter.exit_crit_edge
  %18 = ptrtoint ptr %w.065 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %w.065, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %w.065, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !95
  %22 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %task, align 4
  %call.i = tail call i32 @wake_up_process(ptr noundef %21) #9
  br label %cleanup

if.end29:                                         ; preds = %if.end21
  %inc = add nsw i32 %6, 1
  %23 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %inc, ptr %count, align 4
  %task31 = getelementptr inbounds %struct.waiter, ptr %w.065, i32 0, i32 1
  %24 = ptrtoint ptr %task31 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task31, align 4
  tail call fastcc void @__add_holder(ptr noundef %lock, ptr noundef %25)
  %call.i.i.i53 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %w.065) #9
  br i1 %call.i.i.i53, label %if.end.i.i.i56, label %if.end29.__wake_waiter.exit60_crit_edge

if.end29.__wake_waiter.exit60_crit_edge:          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %__wake_waiter.exit60

if.end.i.i.i56:                                   ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i54 = getelementptr inbounds %struct.list_head, ptr %w.065, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i.i54, align 4
  %28 = ptrtoint ptr %w.065 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %w.065, align 4
  %prev1.i.i.i.i55 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i.i55 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i.i55, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %__wake_waiter.exit60

__wake_waiter.exit60:                             ; preds = %if.end.i.i.i56, %if.end29.__wake_waiter.exit60_crit_edge
  %32 = ptrtoint ptr %w.065 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 256 to ptr), ptr %w.065, align 4
  %prev.i.i57 = getelementptr inbounds %struct.list_head, ptr %w.065, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i57 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i57, align 4
  %34 = ptrtoint ptr %task31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task31, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !95
  %36 = ptrtoint ptr %task31 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %task31, align 4
  %call.i59 = tail call i32 @wake_up_process(ptr noundef %35) #9
  %cmp15.not = icmp eq ptr %tmp.067, %waiters
  br i1 %cmp15.not, label %__wake_waiter.exit60.cleanup_crit_edge, label %__wake_waiter.exit60.for.body_crit_edge

__wake_waiter.exit60.for.body_crit_edge:          ; preds = %__wake_waiter.exit60
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

__wake_waiter.exit60.cleanup_crit_edge:           ; preds = %__wake_waiter.exit60
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %__wake_waiter.exit60.cleanup_crit_edge, %__wake_waiter.exit, %if.then23.cleanup_crit_edge, %for.body.cleanup_crit_edge, %do.end7.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !33, !35, !37, !38, !40, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !56, !58, !59, !60, !61, !63, !64, !65, !66, !67, !68, !70, !71, !72, !73}
!llvm.named.register.sp = !{!74}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__ksymtab_dm_block_location, !1, !"__ksymtab_dm_block_location", i1 false, i1 false}
!1 = !{!"../drivers/md/persistent-data/dm-block-manager.c", i32 337, i32 1}
!2 = !{ptr @__ksymtab_dm_block_data, !3, !"__ksymtab_dm_block_data", i1 false, i1 false}
!3 = !{!"../drivers/md/persistent-data/dm-block-manager.c", i32 343, i32 1}
!4 = !{ptr @__ksymtab_dm_block_manager_create, !5, !"__ksymtab_dm_block_manager_create", i1 false, i1 false}
!5 = !{!"../drivers/md/persistent-data/dm-block-manager.c", i32 408, i32 1}
!6 = !{ptr @__ksymtab_dm_block_manager_destroy, !7, !"__ksymtab_dm_block_manager_destroy", i1 false, i1 false}
!7 = !{!"../drivers/md/persistent-data/dm-block-manager.c", i32 415, i32 1}
!8 = !{ptr @__ksymtab_dm_bm_block_size, !9, !"__ksymtab_dm_bm_block_size", i1 false, i1 false}
!9 = !{!"../drivers/md/persistent-data/dm-block-manager.c", i32 421, i32 1}
!10 = !{ptr @__ksymtab_dm_bm_read_lock, !11, !"__ksymtab_dm_bm_read_lock", i1 false, i1 false}
!11 = !{!"../drivers/md/persistent-data/dm-block-manager.c", i32 486, i32 1}
!12 = !{ptr @__ksymtab_dm_bm_write_lock, !13, !"__ksymtab_dm_bm_write_lock", i1 false, i1 false}
!13 = !{!"../drivers/md/persistent-data/dm-block-manager.c", i32 522, i32 1}
!14 = !{ptr @__ksymtab_dm_bm_write_lock_zero, !15, !"__ksymtab_dm_bm_write_lock_zero", i1 false, i1 false}
!15 = !{!"../drivers/md/persistent-data/dm-block-manager.c", i32 586, i32 1}
!16 = !{ptr @__ksymtab_dm_bm_unlock, !17, !"__ksymtab_dm_bm_unlock", i1 false, i1 false}
!17 = !{!"../drivers/md/persistent-data/dm-block-manager.c", i32 601, i32 1}
!18 = !{ptr @__ksymtab_dm_bm_flush, !19, !"__ksymtab_dm_bm_flush", i1 false, i1 false}
!19 = !{!"../drivers/md/persistent-data/dm-block-manager.c", i32 610, i32 1}
!20 = !{ptr @__ksymtab_dm_bm_is_read_only, !21, !"__ksymtab_dm_bm_is_read_only", i1 false, i1 false}
!21 = !{!"../drivers/md/persistent-data/dm-block-manager.c", i32 621, i32 1}
!22 = !{ptr @__ksymtab_dm_bm_set_read_only, !23, !"__ksymtab_dm_bm_set_read_only", i1 false, i1 false}
!23 = !{!"../drivers/md/persistent-data/dm-block-manager.c", i32 628, i32 1}
!24 = !{ptr @__ksymtab_dm_bm_set_read_write, !25, !"__ksymtab_dm_bm_set_read_write", i1 false, i1 false}
!25 = !{!"../drivers/md/persistent-data/dm-block-manager.c", i32 635, i32 1}
!26 = !{ptr @__ksymtab_dm_bm_checksum, !27, !"__ksymtab_dm_bm_checksum", i1 false, i1 false}
!27 = !{!"../drivers/md/persistent-data/dm-block-manager.c", i32 641, i32 1}
!28 = !{ptr @__UNIQUE_ID_file269, !29, !"__UNIQUE_ID_file269", i1 false, i1 false}
!29 = !{!"../drivers/md/persistent-data/dm-block-manager.c", i32 645, i32 1}
!30 = !{ptr @__UNIQUE_ID_license270, !29, !"__UNIQUE_ID_license270", i1 false, i1 false}
!31 = !{ptr @__UNIQUE_ID_author271, !32, !"__UNIQUE_ID_author271", i1 false, i1 false}
!32 = !{!"../drivers/md/persistent-data/dm-block-manager.c", i32 646, i32 1}
!33 = !{ptr @__UNIQUE_ID_description272, !34, !"__UNIQUE_ID_description272", i1 false, i1 false}
!34 = !{!"../drivers/md/persistent-data/dm-block-manager.c", i32 647, i32 1}
!35 = !{ptr @bl_init.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/md/persistent-data/dm-block-manager.c", i32 177, i32 2}
!37 = !{ptr @.str, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.1, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/md/persistent-data/dm-block-manager.c", i32 104, i32 4}
!40 = !{ptr @.str.2, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.3, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @__check_holder._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @__check_holder._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.5, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/md/persistent-data/dm-block-manager.c", i32 106, i32 4}
!46 = !{ptr @__check_holder._entry.4, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @__check_holder._entry_ptr.6, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.8, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/md/persistent-data/dm-block-manager.c", i32 110, i32 4}
!50 = !{ptr @__check_holder._entry.7, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @__check_holder._entry_ptr.9, !49, !"_entry_ptr", i1 false, i1 false}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../drivers/md/persistent-data/dm-block-manager.c", i32 123, i32 3}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../drivers/md/persistent-data/dm-block-manager.c", i32 131, i32 2}
!56 = !{ptr @.str.11, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/md/persistent-data/dm-block-manager.c", i32 303, i32 3}
!58 = !{ptr @.str.12, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @report_recursive_bug._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @report_recursive_bug._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.13, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/md/persistent-data/dm-block-manager.c", i32 439, i32 4}
!63 = !{ptr @dm_bm_validate_buffer._rs, !62, !"_rs", i1 false, i1 false}
!64 = !{ptr @__func__.dm_bm_validate_buffer, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.14, !62, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @dm_bm_validate_buffer._entry, !62, !"_entry", i1 false, i1 false}
!67 = !{ptr @dm_bm_validate_buffer._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @dm_bm_validate_buffer._rs.15, !69, !"_rs", i1 false, i1 false}
!69 = !{!"../drivers/md/persistent-data/dm-block-manager.c", i32 446, i32 4}
!70 = !{ptr @.str.17, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @dm_bm_validate_buffer._entry.16, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @dm_bm_validate_buffer._entry_ptr.18, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.19, !69, !"<string literal>", i1 false, i1 false}
!74 = !{!"sp"}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{i64 2148476806, i64 2148476838, i64 2148476867, i64 2148476901, i64 2148476932, i64 2148476955}
!85 = !{!"branch_weights", i32 1, i32 2000}
!86 = !{!"branch_weights", i32 2000, i32 1}
!87 = !{i64 2148564807}
!88 = !{i64 2148479271, i64 2148479303, i64 2148479332, i64 2148479366, i64 2148479397, i64 2148479420}
!89 = !{i64 2149610777}
!90 = !{i64 2154330341, i64 2154330851, i64 2154330378, i64 2154330434, i64 2154330468, i64 2154330492, i64 2154330533, i64 2154330554, i64 2154330582, i64 2154330616}
!91 = !{i64 2154301671, i64 2154302180, i64 2154301708, i64 2154301764, i64 2154301798, i64 2154301822, i64 2154301863, i64 2154301884, i64 2154301912, i64 2154301946}
!92 = !{i64 2154318257}
!93 = !{i64 2154323007}
!94 = !{i64 2154323565, i64 2154324075, i64 2154323602, i64 2154323658, i64 2154323692, i64 2154323716, i64 2154323757, i64 2154323778, i64 2154323806, i64 2154323840}
!95 = !{i64 2154323159}
