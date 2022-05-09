; ModuleID = '/llk/IR_all_yes/mm/zsmalloc.c_pt.bc'
source_filename = "../mm/zsmalloc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+zs_get_total_pages\22, \22a\22\09"
module asm "\09.weak\09__crc_zs_get_total_pages\09\09\09\09"
module asm "\09.long\09__crc_zs_get_total_pages\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zs_get_total_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22zs_get_total_pages\22\09\09\09\09\09"
module asm "__kstrtabns_zs_get_total_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+zs_map_object\22, \22a\22\09"
module asm "\09.weak\09__crc_zs_map_object\09\09\09\09"
module asm "\09.long\09__crc_zs_map_object\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zs_map_object:\09\09\09\09\09"
module asm "\09.asciz \09\22zs_map_object\22\09\09\09\09\09"
module asm "__kstrtabns_zs_map_object:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+zs_unmap_object\22, \22a\22\09"
module asm "\09.weak\09__crc_zs_unmap_object\09\09\09\09"
module asm "\09.long\09__crc_zs_unmap_object\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zs_unmap_object:\09\09\09\09\09"
module asm "\09.asciz \09\22zs_unmap_object\22\09\09\09\09\09"
module asm "__kstrtabns_zs_unmap_object:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+zs_huge_class_size\22, \22a\22\09"
module asm "\09.weak\09__crc_zs_huge_class_size\09\09\09\09"
module asm "\09.long\09__crc_zs_huge_class_size\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zs_huge_class_size:\09\09\09\09\09"
module asm "\09.asciz \09\22zs_huge_class_size\22\09\09\09\09\09"
module asm "__kstrtabns_zs_huge_class_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+zs_malloc\22, \22a\22\09"
module asm "\09.weak\09__crc_zs_malloc\09\09\09\09"
module asm "\09.long\09__crc_zs_malloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zs_malloc:\09\09\09\09\09"
module asm "\09.asciz \09\22zs_malloc\22\09\09\09\09\09"
module asm "__kstrtabns_zs_malloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+zs_free\22, \22a\22\09"
module asm "\09.weak\09__crc_zs_free\09\09\09\09"
module asm "\09.long\09__crc_zs_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zs_free:\09\09\09\09\09"
module asm "\09.asciz \09\22zs_free\22\09\09\09\09\09"
module asm "__kstrtabns_zs_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+zs_compact\22, \22a\22\09"
module asm "\09.weak\09__crc_zs_compact\09\09\09\09"
module asm "\09.long\09__crc_zs_compact\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zs_compact:\09\09\09\09\09"
module asm "\09.asciz \09\22zs_compact\22\09\09\09\09\09"
module asm "__kstrtabns_zs_compact:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+zs_pool_stats\22, \22a\22\09"
module asm "\09.weak\09__crc_zs_pool_stats\09\09\09\09"
module asm "\09.long\09__crc_zs_pool_stats\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zs_pool_stats:\09\09\09\09\09"
module asm "\09.asciz \09\22zs_pool_stats\22\09\09\09\09\09"
module asm "__kstrtabns_zs_pool_stats:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+zs_create_pool\22, \22a\22\09"
module asm "\09.weak\09__crc_zs_create_pool\09\09\09\09"
module asm "\09.long\09__crc_zs_create_pool\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zs_create_pool:\09\09\09\09\09"
module asm "\09.asciz \09\22zs_create_pool\22\09\09\09\09\09"
module asm "__kstrtabns_zs_create_pool:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+zs_destroy_pool\22, \22a\22\09"
module asm "\09.weak\09__crc_zs_destroy_pool\09\09\09\09"
module asm "\09.long\09__crc_zs_destroy_pool\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zs_destroy_pool:\09\09\09\09\09"
module asm "\09.asciz \09\22zs_destroy_pool\22\09\09\09\09\09"
module asm "__kstrtabns_zs_destroy_pool:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mapping_area = type { %struct.local_lock_t, ptr, ptr, i32 }
%struct.local_lock_t = type { %struct.lockdep_map, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.zpool_driver = type { ptr, ptr, %struct.atomic_t, %struct.list_head, ptr, ptr, i8, ptr, ptr, ptr, i8, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.32 }
%union.anon.32 = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, [36 x i8], %struct.zone_padding, %struct.lruvec, i32, [12 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [92 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [96 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [90 x i8], %struct.zone_padding, [11 x %struct.atomic_t], [0 x %struct.atomic_t], [84 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32, ptr }
%struct.zone_padding = type { [0 x i8] }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.zs_pool = type { ptr, [255 x ptr], ptr, ptr, %struct.atomic_t, %struct.zs_pool_stats, %struct.shrinker, ptr, ptr, %struct.work_struct, %struct.rwlock_t }
%struct.zs_pool_stats = type { %struct.atomic_t }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.7, %union.anon.46, %struct.atomic_t, i32 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.46 = type { %struct.atomic_t }
%struct.zspage = type { %struct.anon.78, i32, i32, ptr, %struct.list_head, %struct.rwlock_t }
%struct.anon.78 = type { i24 }
%struct.size_class = type { %struct.spinlock, [4 x %struct.list_head], i32, i32, i32, i32, %struct.zs_size_stat }
%struct.zs_size_stat = type { [6 x i32] }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.68, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.0 }
%struct.llist_node = type { ptr }
%union.anon.0 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.47 }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.68 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.link_free = type { %union.anon.79 }
%union.anon.79 = type { i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.72, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.73, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.74, ptr, %struct.address_space, %struct.list_head, %union.anon.75, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.73 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.74 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.75 = type { ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__UNIQUE_ID_alias256 = internal constant [30 x i8] c"zsmalloc.alias=zpool-zsmalloc\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lock\00", [27 x i8] zeroinitializer }, align 32
@zs_map_area = weak dso_local global %struct.mapping_area { %struct.local_lock_t { %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 1, i32 0, i32 0 }, ptr null }, ptr null, ptr null, i32 0 }, section ".data..percpu", align 4
@zs_stat_root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_zs_get_total_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_zs_get_total_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_zs_get_total_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zs_get_total_pages to i32), ptr @__kstrtab_zs_get_total_pages, ptr @__kstrtabns_zs_get_total_pages }, section "___ksymtab_gpl+zs_get_total_pages", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__kstrtab_zs_map_object = external dso_local constant [0 x i8], align 1
@__kstrtabns_zs_map_object = external dso_local constant [0 x i8], align 1
@__ksymtab_zs_map_object = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zs_map_object to i32), ptr @__kstrtab_zs_map_object, ptr @__kstrtabns_zs_map_object }, section "___ksymtab_gpl+zs_map_object", align 4
@__kstrtab_zs_unmap_object = external dso_local constant [0 x i8], align 1
@__kstrtabns_zs_unmap_object = external dso_local constant [0 x i8], align 1
@__ksymtab_zs_unmap_object = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zs_unmap_object to i32), ptr @__kstrtab_zs_unmap_object, ptr @__kstrtabns_zs_unmap_object }, section "___ksymtab_gpl+zs_unmap_object", align 4
@huge_class_size = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_zs_huge_class_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_zs_huge_class_size = external dso_local constant [0 x i8], align 1
@__ksymtab_zs_huge_class_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zs_huge_class_size to i32), ptr @__kstrtab_zs_huge_class_size, ptr @__kstrtabns_zs_huge_class_size }, section "___ksymtab_gpl+zs_huge_class_size", align 4
@__kstrtab_zs_malloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_zs_malloc = external dso_local constant [0 x i8], align 1
@__ksymtab_zs_malloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zs_malloc to i32), ptr @__kstrtab_zs_malloc, ptr @__kstrtabns_zs_malloc }, section "___ksymtab_gpl+zs_malloc", align 4
@__kstrtab_zs_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_zs_free = external dso_local constant [0 x i8], align 1
@__ksymtab_zs_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zs_free to i32), ptr @__kstrtab_zs_free, ptr @__kstrtabns_zs_free }, section "___ksymtab_gpl+zs_free", align 4
@__kstrtab_zs_compact = external dso_local constant [0 x i8], align 1
@__kstrtabns_zs_compact = external dso_local constant [0 x i8], align 1
@__ksymtab_zs_compact = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zs_compact to i32), ptr @__kstrtab_zs_compact, ptr @__kstrtabns_zs_compact }, section "___ksymtab_gpl+zs_compact", align 4
@__kstrtab_zs_pool_stats = external dso_local constant [0 x i8], align 1
@__kstrtabns_zs_pool_stats = external dso_local constant [0 x i8], align 1
@__ksymtab_zs_pool_stats = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zs_pool_stats to i32), ptr @__kstrtab_zs_pool_stats, ptr @__kstrtabns_zs_pool_stats }, section "___ksymtab_gpl+zs_pool_stats", align 4
@zs_create_pool.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&pool->migrate_lock\00", [44 x i8] zeroinitializer }, align 32
@zs_create_pool.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&class->lock\00", [19 x i8] zeroinitializer }, align 32
@__kstrtab_zs_create_pool = external dso_local constant [0 x i8], align 1
@__kstrtabns_zs_create_pool = external dso_local constant [0 x i8], align 1
@__ksymtab_zs_create_pool = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zs_create_pool to i32), ptr @__kstrtab_zs_create_pool, ptr @__kstrtabns_zs_create_pool }, section "___ksymtab_gpl+zs_create_pool", align 4
@zs_destroy_pool._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 2338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016zsmalloc: Freeing non-empty class with size %db, fullness group %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"zs_destroy_pool\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mm/zsmalloc.c\00", [18 x i8] zeroinitializer }, align 32
@zs_destroy_pool._entry_ptr = internal global ptr @zs_destroy_pool._entry, section ".printk_index", align 4
@__kstrtab_zs_destroy_pool = external dso_local constant [0 x i8], align 1
@__kstrtabns_zs_destroy_pool = external dso_local constant [0 x i8], align 1
@__ksymtab_zs_destroy_pool = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zs_destroy_pool to i32), ptr @__kstrtab_zs_destroy_pool, ptr @__kstrtabns_zs_destroy_pool }, section "___ksymtab_gpl+zs_destroy_pool", align 4
@zs_zpool_driver = internal global { %struct.zpool_driver, [36 x i8] } { %struct.zpool_driver { ptr @.str.48, ptr null, %struct.atomic_t zeroinitializer, %struct.list_head zeroinitializer, ptr @zs_zpool_create, ptr @zs_zpool_destroy, i8 1, ptr @zs_zpool_malloc, ptr @zs_zpool_free, ptr null, i8 0, ptr @zs_zpool_map, ptr @zs_zpool_unmap, ptr @zs_zpool_total_size }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_zsmalloc__280_2388_zs_init6 = internal global ptr @zs_init, section ".initcall6.init", align 4
@__exitcall_zs_exit = internal global ptr @zs_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file281 = internal constant [26 x i8] c"zsmalloc.file=mm/zsmalloc\00", section ".modinfo", align 1
@__UNIQUE_ID_license282 = internal constant [30 x i8] c"zsmalloc.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author283 = internal constant [48 x i8] c"zsmalloc.author=Nitin Gupta <ngupta@vflare.org>\00", section ".modinfo", align 1
@__pcpu_unique_zs_map_area = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"include/linux/local_lock_internal.h\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"l->owner\00", [23 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l->owner != current\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"VM_BUG_ON_PAGE(!is_first_page(first_page))\00", [53 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@migrate_lock_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&zspage->lock\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"VM_BUG_ON_PAGE(!PageLocked(page))\00", [62 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"VM_BUG_ON_PAGE(!is_first_page(page))\00", [59 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_deferred_free.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&pool->free_work)\00", [60 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"zs_handle\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"zspage\00", [25 x i8] zeroinitializer }, align 32
@zs_pool_stat_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.6, i32 649, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014zsmalloc: no root stat dir, not creating <%s> stat dir\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"zs_pool_stat_create\00", [44 x i8] zeroinitializer }, align 32
@zs_pool_stat_create._entry_ptr = internal global ptr @zs_pool_stat_create._entry, section ".printk_index", align 4
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"classes\00", [24 x i8] zeroinitializer }, align 32
@zs_stats_size_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @zs_stats_size_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c" %5s %5s %11s %12s %13s %10s %10s %16s %8s\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"class\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"size\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"almost_full\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"almost_empty\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"obj_allocated\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"obj_used\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pages_used\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pages_per_zspage\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"freeable\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c" %5u %5u %11lu %12lu %13lu %10lu %10lu %16d %8lu\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c" %5s %5s %11lu %12lu %13lu %10lu %10lu %16s %8lu\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Total\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@zsmalloc_mnt = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@zsmalloc_aops = internal constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zs_page_migrate, ptr @zs_page_isolate, ptr @zs_page_putback, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(!PageMovable(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(!PageIsolated(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@contig_page_data = external dso_local global %struct.pglist_data, align 128
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(p))\00", [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PageIsolated(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"zsmalloc\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mm/zsmalloc:prepare\00", [44 x i8] zeroinitializer }, align 32
@zsmalloc_fs = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.48, i32 0, ptr @zs_init_fs_context, ptr null, ptr null, ptr @kill_anon_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@zs_stat_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.6, i32 573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014zsmalloc: debugfs not available, stat dir not created\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"zs_stat_init\00", [19 x i8] zeroinitializer }, align 32
@zs_stat_init._entry_ptr = internal global ptr @zs_stat_init._entry, section ".printk_index", align 4
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 457, i32 10 }
@___asan_gen_.55 = private unnamed_addr constant [13 x i8] c"zs_stat_root\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 177, i32 23 }
@___asan_gen_.58 = private unnamed_addr constant [16 x i8] c"huge_class_size\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 199, i32 15 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 2215, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 2286, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 2337, i32 5 }
@___asan_gen_.85 = private unnamed_addr constant [16 x i8] c"zs_zpool_driver\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 439, i32 28 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 30, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [39 x i8] c"../include/linux/local_lock_internal.h\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 36, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 481, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 452, i32 1 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1757, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 260, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 936, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 414, i32 1 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 717, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 878, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 2008, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 788, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 327, i32 42 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 332, i32 42 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 649, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 655, i32 22 }
@___asan_gen_.154 = private unnamed_addr constant [19 x i8] c"zs_stats_size_fops\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 644, i32 1 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 599, i32 16 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 600, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 600, i32 13 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 600, i32 21 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 600, i32 36 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 601, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 601, i32 21 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 601, i32 33 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 602, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 602, i32 24 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 622, i32 17 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 636, i32 14 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 637, i32 16 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 638, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 638, i32 13 }
@___asan_gen_.202 = private unnamed_addr constant [13 x i8] c"zsmalloc_mnt\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 181, i32 25 }
@___asan_gen_.205 = private unnamed_addr constant [14 x i8] c"zsmalloc_aops\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1938, i32 46 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1860, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1861, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1160, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1368, i32 10 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1829, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 440, i32 14 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 2358, i32 47 }
@___asan_gen_.229 = private unnamed_addr constant [12 x i8] c"zsmalloc_fs\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1733, i32 32 }
@___asan_gen_.232 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.239 = private constant [17 x i8] c"../mm/zsmalloc.c\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 573, i32 3 }
@llvm.compiler.used = appending global [84 x ptr] [ptr @__UNIQUE_ID_alias256, ptr @__UNIQUE_ID_author283, ptr @__UNIQUE_ID_file281, ptr @__UNIQUE_ID_license282, ptr @__exitcall_zs_exit, ptr @__initcall__kmod_zsmalloc__280_2388_zs_init6, ptr @__ksymtab_zs_compact, ptr @__ksymtab_zs_create_pool, ptr @__ksymtab_zs_destroy_pool, ptr @__ksymtab_zs_free, ptr @__ksymtab_zs_get_total_pages, ptr @__ksymtab_zs_huge_class_size, ptr @__ksymtab_zs_malloc, ptr @__ksymtab_zs_map_object, ptr @__ksymtab_zs_pool_stats, ptr @__ksymtab_zs_unmap_object, ptr @zs_destroy_pool._entry, ptr @zs_destroy_pool._entry_ptr, ptr @zs_exit, ptr @zs_pool_stat_create._entry, ptr @zs_pool_stat_create._entry_ptr, ptr @zs_stat_exit, ptr @zs_stat_init._entry, ptr @zs_stat_init._entry_ptr, ptr @.str, ptr @zs_stat_root, ptr @huge_class_size, ptr @zs_create_pool.__key, ptr @.str.1, ptr @zs_create_pool.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @zs_zpool_driver, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @migrate_lock_init.__key, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @init_deferred_free.__key, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @zs_stats_size_fops, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @zsmalloc_mnt, ptr @zsmalloc_aops, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @zsmalloc_fs, ptr @.str.50, ptr @.str.51], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zs_stat_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @huge_class_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zs_create_pool.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zs_create_pool.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zs_destroy_pool._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zs_zpool_driver to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @migrate_lock_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_deferred_free.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zs_pool_stat_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zs_stats_size_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zsmalloc_mnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zsmalloc_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zsmalloc_fs to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zs_stat_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @zs_stat_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = load ptr, ptr @zs_stat_root, align 4
  tail call void @debugfs_remove(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zs_get_total_pages(ptr noundef %pool) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pages_allocated = getelementptr inbounds %struct.zs_pool, ptr %pool, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pages_allocated, i32 noundef 4) #13
  %0 = ptrtoint ptr %pages_allocated to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %pages_allocated, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @zs_map_object(ptr noundef %pool, i32 noundef %handle, i32 noundef %mm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %3, 15728640
  %4 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i97 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i97 to ptr
  %preempt_count.i98 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i98 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i98, align 4
  %and2 = and i32 %7, 983040
  %or = or i32 %and2, %and
  %8 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i99 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i99 to ptr
  %preempt_count.i100 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i100 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i100, align 4
  %and4 = and i32 %11, 65280
  %or5 = or i32 %or, %and4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5)
  %tobool.not = icmp eq i32 %or5, 0
  br i1 %tobool.not, label %do.end13, label %do.body8, !prof !164

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1256, 0\0A.popsection", ""() #13, !srcloc !165
  unreachable

do.end13:                                         ; preds = %entry
  %migrate_lock = getelementptr inbounds %struct.zs_pool, ptr %pool, i32 0, i32 10
  tail call void @_raw_read_lock(ptr noundef %migrate_lock) #13
  %12 = inttoptr i32 %handle to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %15 = load ptr, ptr @mem_map, align 4
  %shr1.i = lshr i32 %14, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %16 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i = sub i32 %shr1.i, %16
  %add.ptr.i = getelementptr %struct.page, ptr %15, i32 %sub.i
  %private.i = getelementptr %struct.page, ptr %15, i32 %sub.i, i32 1, i32 0, i32 3
  %17 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %private.i, align 4
  %19 = inttoptr i32 %18 to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load.i = load i32, ptr %19, align 4
  %21 = and i32 %bf.load.i, 130560
  call void @__sanitizer_cov_trace_const_cmp4(i32 45056, i32 %21)
  %cmp.not.i = icmp eq i32 %21, 45056
  br i1 %cmp.not.i, label %get_zspage.exit, label %do.body2.i, !prof !164

do.body2.i:                                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 817, 0\0A.popsection", ""() #13, !srcloc !166
  unreachable

get_zspage.exit:                                  ; preds = %do.end13
  %shr.i = lshr i32 %14, 1
  %and.i = and i32 %shr.i, 2047
  %lock.i = getelementptr inbounds %struct.zspage, ptr %19, i32 0, i32 5
  tail call void @_raw_read_lock(ptr noundef %lock.i) #13
  tail call void @_raw_read_unlock(ptr noundef %migrate_lock) #13
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load.i101 = load i32, ptr %19, align 4
  %bf.lshr.i = lshr i32 %bf.load.i101, 20
  %bf.clear.i = and i32 %bf.lshr.i, 511
  %arrayidx.i = getelementptr %struct.zs_pool, ptr %pool, i32 0, i32 1, i32 %bf.clear.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  %size = getelementptr inbounds %struct.size_class, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size, align 4
  %mul = mul i32 %26, %and.i
  %and18 = and i32 %mul, 4095
  %27 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %30, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !167
  %31 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i102 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i102 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx, align 4
  %add = add i32 %36, ptrtoint (ptr @zs_map_area to i32)
  %37 = inttoptr i32 %add to ptr
  tail call fastcc void @local_lock_acquire(ptr noundef %37)
  %38 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu, align 4
  %arrayidx39 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx39, align 4
  %add40 = add i32 %41, ptrtoint (ptr @zs_map_area to i32)
  %42 = inttoptr i32 %add40 to ptr
  %vm_mm = getelementptr inbounds %struct.mapping_area, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %vm_mm to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %mm, ptr %vm_mm, align 4
  %44 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %size, align 4
  %add42 = add i32 %45, %and18
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %add42)
  %cmp = icmp ult i32 %add42, 4097
  br i1 %cmp, label %if.then43, label %if.end46

if.then43:                                        ; preds = %get_zspage.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %46 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %46, 512
  %47 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %50, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !168
  %51 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i1.i.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 213
  %55 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %56, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !169
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr.i, i32 noundef %or.i) #13
  %vm_addr = getelementptr inbounds %struct.mapping_area, ptr %42, i32 0, i32 2
  %57 = ptrtoint ptr %vm_addr to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i.i, ptr %vm_addr, align 4
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 %and18
  br label %out

if.end46:                                         ; preds = %get_zspage.exit
  %58 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %private.i, align 4
  %60 = inttoptr i32 %59 to ptr
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %bf.load.i.i = load i32, ptr %60, align 4
  %62 = and i32 %bf.load.i.i, 130560
  call void @__sanitizer_cov_trace_const_cmp4(i32 45056, i32 %62)
  %cmp.not.i.i = icmp eq i32 %62, 45056
  br i1 %cmp.not.i.i, label %get_zspage.exit.i, label %do.body2.i.i, !prof !164

do.body2.i.i:                                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 817, 0\0A.popsection", ""() #13, !srcloc !166
  unreachable

get_zspage.exit.i:                                ; preds = %if.end46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load.i.i)
  %tobool.i.i = icmp slt i32 %bf.load.i.i, 0
  br i1 %tobool.i.i, label %get_zspage.exit.i.do.body62_crit_edge, label %get_next_page.exit, !prof !170

get_zspage.exit.i.do.body62_crit_edge:            ; preds = %get_zspage.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body62

get_next_page.exit:                               ; preds = %get_zspage.exit.i
  %index.i = getelementptr %struct.page, ptr %15, i32 %sub.i, i32 1, i32 0, i32 2
  %63 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %index.i, align 4
  %65 = inttoptr i32 %64 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool52.not = icmp eq i32 %64, 0
  br i1 %tobool52.not, label %get_next_page.exit.do.body62_crit_edge, label %do.end70, !prof !170

get_next_page.exit.do.body62_crit_edge:           ; preds = %get_next_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body62

do.body62:                                        ; preds = %get_next_page.exit.do.body62_crit_edge, %get_zspage.exit.i.do.body62_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1289, 0\0A.popsection", ""() #13, !srcloc !171
  unreachable

do.end70:                                         ; preds = %get_next_page.exit
  %vm_buf.i = getelementptr inbounds %struct.mapping_area, ptr %42, i32 0, i32 1
  %66 = ptrtoint ptr %vm_buf.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %vm_buf.i, align 4
  %68 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i.i = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %71, i32 0, i32 213
  %72 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %inc.i.i.i = add i32 %73, 1
  store i32 %inc.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !169
  %74 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %vm_mm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %75)
  %cmp.i = icmp eq i32 %75, 2
  br i1 %cmp.i, label %do.end70.__zs_map_object.exit_crit_edge, label %if.end.i110

do.end70.__zs_map_object.exit_crit_edge:          ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #15
  br label %__zs_map_object.exit

if.end.i110:                                      ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i103 = sub nuw nsw i32 4096, %and18
  %sub2.i = sub i32 %45, %sub.i103
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %76 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %76, 512
  %77 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i.i.i.i = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %80, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !168
  %81 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i1.i.i.i = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %84, i32 0, i32 213
  %85 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %86, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !169
  %call.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr.i, i32 noundef %or.i.i) #13
  %add.ptr.i104 = getelementptr i8, ptr %call.i.i.i, i32 %and18
  %87 = call ptr @memcpy(ptr %67, ptr %add.ptr.i104, i32 %sub.i103)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !172
  %88 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i1.i.i105 = and i32 %88, -16384
  %89 = inttoptr i32 %and.i.i.i1.i.i105 to ptr
  %task.i.i.i.i106 = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %task.i.i.i.i106 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %task.i.i.i.i106, align 8
  %pagefault_disabled.i.i.i.i107 = getelementptr inbounds %struct.task_struct, ptr %91, i32 0, i32 213
  %92 = ptrtoint ptr %pagefault_disabled.i.i.i.i107 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %pagefault_disabled.i.i.i.i107, align 8
  %dec.i.i.i.i = add i32 %93, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i107, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !173
  %94 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i.i.i108 = and i32 %94, -16384
  %95 = inttoptr i32 %and.i.i.i.i.i108 to ptr
  %preempt_count.i.i.i.i109 = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %preempt_count.i.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %preempt_count.i.i.i.i109, align 4
  %sub.i.i.i = add i32 %97, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i109, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %98 = load i32, ptr @pgprot_kernel, align 4
  %or.i31.i = or i32 %98, 512
  %99 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i.i.i32.i = and i32 %99, -16384
  %100 = inttoptr i32 %and.i.i.i.i.i32.i to ptr
  %preempt_count.i.i.i.i33.i = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %preempt_count.i.i.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %preempt_count.i.i.i.i33.i, align 4
  %add.i.i.i34.i = add i32 %102, 1
  store volatile i32 %add.i.i.i34.i, ptr %preempt_count.i.i.i.i33.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !168
  %103 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i1.i.i35.i = and i32 %103, -16384
  %104 = inttoptr i32 %and.i.i.i1.i.i35.i to ptr
  %task.i.i.i.i36.i = getelementptr inbounds %struct.thread_info, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %task.i.i.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %task.i.i.i.i36.i, align 8
  %pagefault_disabled.i.i.i.i37.i = getelementptr inbounds %struct.task_struct, ptr %106, i32 0, i32 213
  %107 = ptrtoint ptr %pagefault_disabled.i.i.i.i37.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %pagefault_disabled.i.i.i.i37.i, align 8
  %inc.i.i.i.i38.i = add i32 %108, 1
  store i32 %inc.i.i.i.i38.i, ptr %pagefault_disabled.i.i.i.i37.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !169
  %call.i.i39.i = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %65, i32 noundef %or.i31.i) #13
  %add.ptr12.i = getelementptr i8, ptr %67, i32 %sub.i103
  %109 = call ptr @memcpy(ptr %add.ptr12.i, ptr %call.i.i39.i, i32 %sub2.i)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i39.i) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !172
  %110 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i1.i40.i = and i32 %110, -16384
  %111 = inttoptr i32 %and.i.i.i1.i40.i to ptr
  %task.i.i.i41.i = getelementptr inbounds %struct.thread_info, ptr %111, i32 0, i32 2
  %112 = ptrtoint ptr %task.i.i.i41.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %task.i.i.i41.i, align 8
  %pagefault_disabled.i.i.i42.i = getelementptr inbounds %struct.task_struct, ptr %113, i32 0, i32 213
  %114 = ptrtoint ptr %pagefault_disabled.i.i.i42.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %pagefault_disabled.i.i.i42.i, align 8
  %dec.i.i.i43.i = add i32 %115, -1
  store i32 %dec.i.i.i43.i, ptr %pagefault_disabled.i.i.i42.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !173
  %116 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i.i44.i = and i32 %116, -16384
  %117 = inttoptr i32 %and.i.i.i.i44.i to ptr
  %preempt_count.i.i.i45.i = getelementptr inbounds %struct.thread_info, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %preempt_count.i.i.i45.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %preempt_count.i.i.i45.i, align 4
  %sub.i.i46.i = add i32 %119, -1
  store volatile i32 %sub.i.i46.i, ptr %preempt_count.i.i.i45.i, align 4
  br label %__zs_map_object.exit

__zs_map_object.exit:                             ; preds = %if.end.i110, %do.end70.__zs_map_object.exit_crit_edge
  %120 = ptrtoint ptr %vm_buf.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %vm_buf.i, align 4
  br label %out

out:                                              ; preds = %__zs_map_object.exit, %if.then43
  %ret.0 = phi ptr [ %add.ptr, %if.then43 ], [ %121, %__zs_map_object.exit ]
  %122 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %122)
  %bf.load.i111 = load i32, ptr %19, align 4
  %123 = lshr i32 %bf.load.i111, 29
  %124 = and i32 %123, 4
  %125 = xor i32 %124, 4
  %spec.select = getelementptr i8, ptr %ret.0, i32 %125
  ret ptr %spec.select
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_lock_acquire(ptr noundef %l) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_acquire(ptr noundef %l, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@local_lock_acquire, %__here) to i32)) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %__here.if.end36_crit_edge

__here.if.end36_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

land.lhs.true:                                    ; preds = %__here
  %owner = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %land.lhs.true.if.end36_crit_edge, label %do.end, !prof !164

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

do.end:                                           ; preds = %land.lhs.true
  %call = tail call i32 @debug_locks_off() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %do.end.if.end36_crit_edge, label %land.lhs.true5

do.end.if.end36_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %3 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool6.not = icmp eq i32 %3, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end36_crit_edge

land.lhs.true5.if.end36_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 30, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #13
  br label %if.end36

if.end36:                                         ; preds = %do.end19, %land.lhs.true5.if.end36_crit_edge, %do.end.if.end36_crit_edge, %land.lhs.true.if.end36_crit_edge, %__here.if.end36_crit_edge
  %4 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %owner39 = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %8 = ptrtoint ptr %owner39 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %owner39, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zs_unmap_object(ptr nocapture noundef readonly %pool, i32 noundef %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %handle to ptr
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %3 = load ptr, ptr @mem_map, align 4
  %shr1.i = lshr i32 %2, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %4 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i54 = sub i32 %shr1.i, %4
  %add.ptr.i = getelementptr %struct.page, ptr %3, i32 %sub.i54
  %private.i = getelementptr %struct.page, ptr %3, i32 %sub.i54, i32 1, i32 0, i32 3
  %5 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %private.i, align 4
  %7 = inttoptr i32 %6 to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load.i = load i32, ptr %7, align 4
  %9 = and i32 %bf.load.i, 130560
  call void @__sanitizer_cov_trace_const_cmp4(i32 45056, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 45056
  br i1 %cmp.not.i, label %get_zspage.exit, label %do.body2.i, !prof !164

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 817, 0\0A.popsection", ""() #13, !srcloc !166
  unreachable

get_zspage.exit:                                  ; preds = %entry
  %shr.i = lshr i32 %2, 1
  %and.i = and i32 %shr.i, 2047
  %bf.lshr.i = lshr i32 %bf.load.i, 20
  %bf.clear.i = and i32 %bf.lshr.i, 511
  %arrayidx.i = getelementptr %struct.zs_pool, ptr %pool, i32 0, i32 1, i32 %bf.clear.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %size = getelementptr inbounds %struct.size_class, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size, align 4
  %mul = mul i32 %13, %and.i
  %and = and i32 %mul, 4095
  %14 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i56 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i56 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %add = add i32 %19, ptrtoint (ptr @zs_map_area to i32)
  %20 = inttoptr i32 %add to ptr
  %add6 = add i32 %and, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %add6)
  %cmp = icmp ult i32 %add6, 4097
  br i1 %cmp, label %do.end10, label %get_zspage.exit.i

do.end10:                                         ; preds = %get_zspage.exit
  call void @__sanitizer_cov_trace_pc() #15
  %vm_addr = getelementptr inbounds %struct.mapping_area, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %vm_addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vm_addr, align 4
  tail call void @kunmap_local_indexed(ptr noundef %22) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !172
  %23 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i1.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 213
  %27 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %28, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !173
  %29 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  br label %do.body33

get_zspage.exit.i:                                ; preds = %get_zspage.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load.i)
  %tobool.i.i = icmp slt i32 %bf.load.i, 0
  br i1 %tobool.i.i, label %get_zspage.exit.i.do.body22_crit_edge, label %get_next_page.exit, !prof !170

get_zspage.exit.i.do.body22_crit_edge:            ; preds = %get_zspage.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body22

get_next_page.exit:                               ; preds = %get_zspage.exit.i
  %index.i = getelementptr %struct.page, ptr %3, i32 %sub.i54, i32 1, i32 0, i32 2
  %33 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %index.i, align 4
  %35 = inttoptr i32 %34 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not = icmp eq i32 %34, 0
  br i1 %tobool.not, label %get_next_page.exit.do.body22_crit_edge, label %do.end29, !prof !170

get_next_page.exit.do.body22_crit_edge:           ; preds = %get_next_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body22

do.body22:                                        ; preds = %get_next_page.exit.do.body22_crit_edge, %get_zspage.exit.i.do.body22_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1324, 0\0A.popsection", ""() #13, !srcloc !174
  unreachable

do.end29:                                         ; preds = %get_next_page.exit
  %vm_mm.i = getelementptr inbounds %struct.mapping_area, ptr %20, i32 0, i32 3
  %36 = ptrtoint ptr %vm_mm.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vm_mm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp.i = icmp eq i32 %37, 1
  br i1 %cmp.i, label %do.end29.__zs_unmap_object.exit_crit_edge, label %if.end.i58

do.end29.__zs_unmap_object.exit_crit_edge:        ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %__zs_unmap_object.exit

if.end.i58:                                       ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #15
  %vm_buf.i = getelementptr inbounds %struct.mapping_area, ptr %20, i32 0, i32 1
  %38 = ptrtoint ptr %vm_buf.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vm_buf.i, align 4
  %add.ptr.i57 = getelementptr i8, ptr %39, i32 4
  %add.i = add nuw nsw i32 %and, 4
  %sub1.i = sub nsw i32 4092, %and
  %sub3.i = add i32 %add6, -4096
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %40 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %40, 512
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %42, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !168
  %43 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i1.i.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 213
  %47 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %48, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !169
  %call.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr.i, i32 noundef %or.i.i) #13
  %add.ptr6.i = getelementptr i8, ptr %call.i.i.i, i32 %add.i
  %49 = call ptr @memcpy(ptr %add.ptr6.i, ptr %add.ptr.i57, i32 %sub1.i)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !172
  %50 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i1.i.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 213
  %54 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %55, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !173
  %56 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i.i.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %59, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %60 = load i32, ptr @pgprot_kernel, align 4
  %or.i34.i = or i32 %60, 512
  %61 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i.i.i35.i = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i.i.i35.i to ptr
  %preempt_count.i.i.i.i36.i = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %preempt_count.i.i.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %preempt_count.i.i.i.i36.i, align 4
  %add.i.i.i37.i = add i32 %64, 1
  store volatile i32 %add.i.i.i37.i, ptr %preempt_count.i.i.i.i36.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !168
  %65 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i1.i.i38.i = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i1.i.i38.i to ptr
  %task.i.i.i.i39.i = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %task.i.i.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %task.i.i.i.i39.i, align 8
  %pagefault_disabled.i.i.i.i40.i = getelementptr inbounds %struct.task_struct, ptr %68, i32 0, i32 213
  %69 = ptrtoint ptr %pagefault_disabled.i.i.i.i40.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pagefault_disabled.i.i.i.i40.i, align 8
  %inc.i.i.i.i41.i = add i32 %70, 1
  store i32 %inc.i.i.i.i41.i, ptr %pagefault_disabled.i.i.i.i40.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !169
  %call.i.i42.i = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %35, i32 noundef %or.i34.i) #13
  %add.ptr14.i = getelementptr i8, ptr %add.ptr.i57, i32 %sub1.i
  %71 = call ptr @memcpy(ptr %call.i.i42.i, ptr %add.ptr14.i, i32 %sub3.i)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i42.i) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !172
  %72 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i1.i43.i = and i32 %72, -16384
  %73 = inttoptr i32 %and.i.i.i1.i43.i to ptr
  %task.i.i.i44.i = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %task.i.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %task.i.i.i44.i, align 8
  %pagefault_disabled.i.i.i45.i = getelementptr inbounds %struct.task_struct, ptr %75, i32 0, i32 213
  %76 = ptrtoint ptr %pagefault_disabled.i.i.i45.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pagefault_disabled.i.i.i45.i, align 8
  %dec.i.i.i46.i = add i32 %77, -1
  store i32 %dec.i.i.i46.i, ptr %pagefault_disabled.i.i.i45.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !173
  %78 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i.i47.i = and i32 %78, -16384
  %79 = inttoptr i32 %and.i.i.i.i47.i to ptr
  %preempt_count.i.i.i48.i = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %preempt_count.i.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %preempt_count.i.i.i48.i, align 4
  %sub.i.i49.i = add i32 %81, -1
  store volatile i32 %sub.i.i49.i, ptr %preempt_count.i.i.i48.i, align 4
  br label %__zs_unmap_object.exit

__zs_unmap_object.exit:                           ; preds = %if.end.i58, %do.end29.__zs_unmap_object.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !172
  %82 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i.i59 = and i32 %82, -16384
  %83 = inttoptr i32 %and.i.i.i.i59 to ptr
  %task.i.i.i60 = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %task.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %task.i.i.i60, align 8
  %pagefault_disabled.i.i.i61 = getelementptr inbounds %struct.task_struct, ptr %85, i32 0, i32 213
  %86 = ptrtoint ptr %pagefault_disabled.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %pagefault_disabled.i.i.i61, align 8
  %dec.i.i.i62 = add i32 %87, -1
  store i32 %dec.i.i.i62, ptr %pagefault_disabled.i.i.i61, align 8
  br label %do.body33

do.body33:                                        ; preds = %__zs_unmap_object.exit, %do.end10
  %88 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %cpu, align 4
  %arrayidx42 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %89
  %90 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx42, align 4
  %add43 = add i32 %91, ptrtoint (ptr @zs_map_area to i32)
  %92 = inttoptr i32 %add43 to ptr
  tail call fastcc void @local_lock_release(ptr noundef %92)
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !175
  %93 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i = and i32 %93, -16384
  %94 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %96, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  %lock.i = getelementptr inbounds %struct.zspage, ptr %7, i32 0, i32 5
  tail call void @_raw_read_unlock(ptr noundef %lock.i) #13
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_lock_release(ptr noundef %l) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

land.lhs.true:                                    ; preds = %entry
  %owner = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %2, %6
  br i1 %cmp.not, label %land.lhs.true.if.end35_crit_edge, label %do.end, !prof !164

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

do.end:                                           ; preds = %land.lhs.true
  %call3 = tail call i32 @debug_locks_off() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.if.end35_crit_edge, label %land.lhs.true5

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %7 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end35_crit_edge

land.lhs.true5.if.end35_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 36, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.10) #13
  br label %if.end35

if.end35:                                         ; preds = %do.end19, %land.lhs.true5.if.end35_crit_edge, %do.end.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %entry.if.end35_crit_edge
  %owner37 = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %8 = ptrtoint ptr %owner37 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %owner37, align 4
  br label %__here

__here:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef %l, i32 noundef ptrtoint (ptr blockaddress(@local_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @zs_huge_class_size(ptr nocapture readnone %pool) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @huge_class_size, align 4
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zs_malloc(ptr noundef %pool, i32 noundef %size, i32 noundef %gfp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %size, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %0)
  %1 = icmp ult i32 %0, -4096
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end, !prof !170

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %handle_cachep.i = getelementptr inbounds %struct.zs_pool, ptr %pool, i32 0, i32 2
  %2 = ptrtoint ptr %handle_cachep.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle_cachep.i, align 4
  %and.i = and i32 %gfp, -11
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %3, i32 noundef %and.i) #13
  %4 = ptrtoint ptr %call.i to i32
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %size)
  %cmp.i = icmp ugt i32 %size, 28
  %sub2.i = add nsw i32 %size, -13
  %div7.i = lshr i32 %sub2.i, 4
  %5 = tail call i32 @llvm.umin.i32(i32 %div7.i, i32 254) #13
  %6 = select i1 %cmp.i, i32 %5, i32 0, !prof !164
  %arrayidx = getelementptr %struct.zs_pool, ptr %pool, i32 0, i32 1, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  tail call void @_raw_spin_lock(ptr noundef %8) #13
  %arrayidx.i = getelementptr %struct.size_class, ptr %8, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp2.not.i = icmp eq ptr %10, %arrayidx.i
  %add.ptr.i = getelementptr i8, ptr %10, i32 -16
  %tobool.not9.i = icmp eq ptr %add.ptr.i, null
  %tobool.not.i = or i1 %cmp2.not.i, %tobool.not9.i
  br i1 %tobool.not.i, label %for.cond.i, label %if.end5.if.then15_crit_edge

if.end5.if.then15_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then15

for.cond.i:                                       ; preds = %if.end5
  %arrayidx.1.i = getelementptr %struct.size_class, ptr %8, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %arrayidx.1.i, align 4
  %cmp2.not.1.i = icmp eq ptr %12, %arrayidx.1.i
  %add.ptr.1.i = getelementptr i8, ptr %12, i32 -16
  %tobool.not9.1.i = icmp eq ptr %add.ptr.1.i, null
  %tobool.not.1.i = or i1 %cmp2.not.1.i, %tobool.not9.1.i
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.if.then15_crit_edge

for.cond.i.if.then15_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then15

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx.2.i = getelementptr %struct.size_class, ptr %8, i32 0, i32 1, i32 0
  %13 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %arrayidx.2.i, align 4
  %cmp2.not.2.i = icmp eq ptr %14, %arrayidx.2.i
  %add.ptr.2.i = getelementptr i8, ptr %14, i32 -16
  %tobool.not9.2.i = icmp eq ptr %add.ptr.2.i, null
  %tobool.not.2.i = or i1 %cmp2.not.2.i, %tobool.not9.2.i
  br i1 %tobool.not.2.i, label %if.end19, label %for.cond.1.i.if.then15_crit_edge

for.cond.1.i.if.then15_crit_edge:                 ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then15

if.then15:                                        ; preds = %for.cond.1.i.if.then15_crit_edge, %for.cond.i.if.then15_crit_edge, %if.end5.if.then15_crit_edge
  %zspage.1.i.ph = phi ptr [ %add.ptr.2.i, %for.cond.1.i.if.then15_crit_edge ], [ %add.ptr.1.i, %for.cond.i.if.then15_crit_edge ], [ %add.ptr.i, %if.end5.if.then15_crit_edge ]
  %call16 = tail call fastcc i32 @obj_malloc(ptr noundef %pool, ptr noundef nonnull %zspage.1.i.ph, i32 noundef %4)
  %call17 = tail call fastcc i32 @fix_fullness_group(ptr noundef %8, ptr noundef nonnull %zspage.1.i.ph)
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call16, ptr %call.i, align 8
  %arrayidx.i76 = getelementptr %struct.size_class, ptr %8, i32 0, i32 6, i32 0, i32 5
  %16 = ptrtoint ptr %arrayidx.i76 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i76, align 4
  %add.i = add i32 %17, 1
  store i32 %add.i, ptr %arrayidx.i76, align 4
  tail call void @_raw_spin_unlock(ptr noundef %8) #13
  br label %cleanup

if.end19:                                         ; preds = %for.cond.1.i
  tail call void @_raw_spin_unlock(ptr noundef %8) #13
  %call21 = tail call fastcc ptr @alloc_zspage(ptr noundef %pool, ptr noundef %8, i32 noundef %gfp)
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %handle_cachep.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %handle_cachep.i, align 4
  tail call void @kmem_cache_free(ptr noundef %19, ptr noundef nonnull %call.i) #13
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  tail call void @_raw_spin_lock(ptr noundef %8) #13
  %call26 = tail call fastcc i32 @obj_malloc(ptr noundef %pool, ptr noundef nonnull %call21, i32 noundef %4)
  %inuse.i.i = getelementptr inbounds %struct.zspage, ptr %call21, i32 0, i32 1
  %20 = ptrtoint ptr %inuse.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %inuse.i.i, align 4
  %objs_per_zspage1.i = getelementptr inbounds %struct.size_class, ptr %8, i32 0, i32 3
  %22 = ptrtoint ptr %objs_per_zspage1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %objs_per_zspage1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i78 = icmp eq i32 %21, 0
  br i1 %cmp.i78, label %if.end24.get_fullness_group.exit_crit_edge, label %if.else.i

if.end24.get_fullness_group.exit_crit_edge:       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_fullness_group.exit

if.else.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp2.i = icmp eq i32 %21, %23
  br i1 %cmp2.i, label %if.else.i.get_fullness_group.exit_crit_edge, label %if.else4.i

if.else.i.get_fullness_group.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_fullness_group.exit

if.else4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %mul.i = mul i32 %23, 3
  %div.i = sdiv i32 %mul.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %div.i)
  %cmp5.not.i = icmp sgt i32 %21, %div.i
  %..i = select i1 %cmp5.not.i, i32 2, i32 1
  br label %get_fullness_group.exit

get_fullness_group.exit:                          ; preds = %if.else4.i, %if.else.i.get_fullness_group.exit_crit_edge, %if.end24.get_fullness_group.exit_crit_edge
  %fg.0.i = phi i32 [ 0, %if.end24.get_fullness_group.exit_crit_edge ], [ 3, %if.else.i.get_fullness_group.exit_crit_edge ], [ %..i, %if.else4.i ]
  tail call fastcc void @insert_zspage(ptr noundef %8, ptr noundef nonnull %call21, i32 noundef %fg.0.i)
  %index = getelementptr inbounds %struct.size_class, ptr %8, i32 0, i32 5
  %24 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %index, align 4
  %26 = ptrtoint ptr %call21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %bf.load.i = load i32, ptr %call21, align 4
  %bf.value.i = shl i32 %25, 20
  %bf.shl.i = and i32 %bf.value.i, 535822336
  %bf.clear.i = and i32 %bf.load.i, -2146435073
  %bf.value2.i = shl nuw nsw i32 %fg.0.i, 29
  %bf.set.i = or i32 %bf.shl.i, %bf.value2.i
  %bf.set5.i = or i32 %bf.set.i, %bf.clear.i
  store i32 %bf.set5.i, ptr %call21, align 4
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call26, ptr %call.i, align 8
  %pages_per_zspage = getelementptr inbounds %struct.size_class, ptr %8, i32 0, i32 4
  %28 = ptrtoint ptr %pages_per_zspage to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pages_per_zspage, align 4
  %pages_allocated = getelementptr inbounds %struct.zs_pool, ptr %pool, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pages_allocated, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %pages_allocated, i32 1, i32 3, i32 1) #13
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pages_allocated, ptr %pages_allocated, i32 %29, ptr elementtype(i32) %pages_allocated) #13, !srcloc !176
  %31 = ptrtoint ptr %objs_per_zspage1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %objs_per_zspage1.i, align 4
  %arrayidx.i80 = getelementptr %struct.size_class, ptr %8, i32 0, i32 6, i32 0, i32 4
  %33 = ptrtoint ptr %arrayidx.i80 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i80, align 4
  %add.i81 = add i32 %34, %32
  store i32 %add.i81, ptr %arrayidx.i80, align 4
  %arrayidx.i83 = getelementptr %struct.size_class, ptr %8, i32 0, i32 6, i32 0, i32 5
  %35 = ptrtoint ptr %arrayidx.i83 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i83, align 4
  %add.i84 = add i32 %36, 1
  store i32 %add.i84, ptr %arrayidx.i83, align 4
  tail call fastcc void @SetZsPageMovable(ptr noundef %pool, ptr noundef nonnull %call21)
  tail call void @_raw_spin_unlock(ptr noundef %8) #13
  br label %cleanup

cleanup:                                          ; preds = %get_fullness_group.exit, %if.then23, %if.then15, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then15 ], [ %4, %get_fullness_group.exit ], [ 0, %if.then23 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @obj_malloc(ptr nocapture noundef readonly %pool, ptr nocapture noundef %zspage, i32 noundef %handle) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %zspage to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %zspage, align 4
  %bf.lshr = lshr i32 %bf.load, 20
  %bf.clear = and i32 %bf.lshr, 511
  %arrayidx = getelementptr %struct.zs_pool, ptr %pool, i32 0, i32 1, i32 %bf.clear
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %freeobj.i = getelementptr inbounds %struct.zspage, ptr %zspage, i32 0, i32 2
  %3 = ptrtoint ptr %freeobj.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %freeobj.i, align 4
  %size = getelementptr inbounds %struct.size_class, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 4
  %mul = mul i32 %6, %4
  %shr = ashr i32 %mul, 12
  %first_page1.i = getelementptr inbounds %struct.zspage, ptr %zspage, i32 0, i32 3
  %7 = ptrtoint ptr %first_page1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %first_page1.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i.not.i.i.i = icmp eq i32 %10, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %is_first_page.exit.i, !prof !170

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.12) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #13, !srcloc !177
  unreachable

is_first_page.exit.i:                             ; preds = %entry
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %8, align 4
  %13 = and i32 %12, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.cond.preheader, !prof !170

for.cond.preheader:                               ; preds = %is_first_page.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %mul)
  %cmp32 = icmp sgt i32 %mul, 4095
  br i1 %cmp32, label %for.body.preheader, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %smax = call i32 @llvm.smax.i32(i32 %shr, i32 1)
  br label %for.body

if.then.i:                                        ; preds = %is_first_page.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.11) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 481, 0\0A.popsection", ""() #13, !srcloc !178
  unreachable

for.body:                                         ; preds = %get_next_page.exit.for.body_crit_edge, %for.body.preheader
  %m_page.034 = phi ptr [ %retval.0.i, %get_next_page.exit.for.body_crit_edge ], [ %8, %for.body.preheader ]
  %i.033 = phi i32 [ %inc, %get_next_page.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %private.i.i = getelementptr inbounds %struct.page, ptr %m_page.034, i32 0, i32 1, i32 0, i32 3
  %14 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %private.i.i, align 4
  %16 = inttoptr i32 %15 to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load.i.i = load i32, ptr %16, align 4
  %18 = and i32 %bf.load.i.i, 130560
  call void @__sanitizer_cov_trace_const_cmp4(i32 45056, i32 %18)
  %cmp.not.i.i = icmp eq i32 %18, 45056
  br i1 %cmp.not.i.i, label %get_zspage.exit.i, label %do.body2.i.i, !prof !164

do.body2.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 817, 0\0A.popsection", ""() #13, !srcloc !166
  unreachable

get_zspage.exit.i:                                ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load.i.i)
  %tobool.i.i = icmp slt i32 %bf.load.i.i, 0
  br i1 %tobool.i.i, label %get_zspage.exit.i.get_next_page.exit_crit_edge, label %if.end.i, !prof !170

get_zspage.exit.i.get_next_page.exit_crit_edge:   ; preds = %get_zspage.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_next_page.exit

if.end.i:                                         ; preds = %get_zspage.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %index.i = getelementptr inbounds %struct.page, ptr %m_page.034, i32 0, i32 1, i32 0, i32 2
  %19 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %index.i, align 4
  %21 = inttoptr i32 %20 to ptr
  br label %get_next_page.exit

get_next_page.exit:                               ; preds = %if.end.i, %get_zspage.exit.i.get_next_page.exit_crit_edge
  %retval.0.i = phi ptr [ %21, %if.end.i ], [ null, %get_zspage.exit.i.get_next_page.exit_crit_edge ]
  %inc = add nuw nsw i32 %i.033, 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %get_next_page.exit.for.end_crit_edge, label %get_next_page.exit.for.body_crit_edge

get_next_page.exit.for.body_crit_edge:            ; preds = %get_next_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

get_next_page.exit.for.end_crit_edge:             ; preds = %get_next_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %get_next_page.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %m_page.0.lcssa = phi ptr [ %8, %for.cond.preheader.for.end_crit_edge ], [ %retval.0.i, %get_next_page.exit.for.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %22 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %22, 512
  %23 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %26, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !168
  %27 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i1.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 213
  %31 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %32, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !169
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %m_page.0.lcssa, i32 noundef %or.i) #13
  %and = lshr i32 %mul, 2
  %div28 = and i32 %and, 1023
  %add.ptr = getelementptr %struct.link_free, ptr %call.i.i, i32 %div28
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr, align 4
  %shr4 = lshr i32 %34, 1
  %35 = ptrtoint ptr %freeobj.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %shr4, ptr %freeobj.i, align 4
  %36 = ptrtoint ptr %zspage to i32
  call void @__asan_load4_noabort(i32 %36)
  %bf.load.i = load i32, ptr %zspage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load.i)
  %tobool.i = icmp slt i32 %bf.load.i, 0
  br i1 %tobool.i, label %if.else, label %for.end.do.end_crit_edge, !prof !170

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %first_page1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %first_page1.i, align 4
  %index = getelementptr inbounds %struct.page, ptr %38, i32 0, i32 1, i32 0, i32 2
  br label %do.end

do.end:                                           ; preds = %if.else, %for.end.do.end_crit_edge
  %index.sink = phi ptr [ %index, %if.else ], [ %add.ptr, %for.end.do.end_crit_edge ]
  %or = or i32 %handle, 1
  %39 = ptrtoint ptr %index.sink to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or, ptr %index.sink, align 4
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !172
  %40 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i1.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 213
  %44 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %45, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !173
  %46 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %49, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %inuse.i = getelementptr inbounds %struct.zspage, ptr %zspage, i32 0, i32 1
  %50 = ptrtoint ptr %inuse.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %inuse.i, align 4
  %add.i = add i32 %51, 1
  store i32 %add.i, ptr %inuse.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %52 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %m_page.0.lcssa to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %52 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %53 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i30 = add i32 %sub.ptr.div.i, %53
  %54 = shl i32 %add.i30, 12
  %and.i = shl i32 %4, 1
  %55 = and i32 %and.i, 4094
  %shl1.i = or i32 %54, %55
  ret i32 %shl1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fix_fullness_group(ptr noundef %class, ptr noundef %zspage) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %zspage to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load.i = load i32, ptr %zspage, align 4
  %1 = and i32 %bf.load.i, 130560
  call void @__sanitizer_cov_trace_const_cmp4(i32 45056, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 45056
  br i1 %cmp.not.i, label %get_zspage_mapping.exit, label %do.body2.i, !prof !164

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 509, 0\0A.popsection", ""() #13, !srcloc !179
  unreachable

get_zspage_mapping.exit:                          ; preds = %entry
  %bf.lshr7.i = lshr i32 %bf.load.i, 29
  %bf.clear8.i = and i32 %bf.lshr7.i, 3
  %bf.clear11.i = and i32 %bf.load.i, 535822336
  %inuse.i.i = getelementptr inbounds %struct.zspage, ptr %zspage, i32 0, i32 1
  %2 = ptrtoint ptr %inuse.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inuse.i.i, align 4
  %objs_per_zspage1.i = getelementptr inbounds %struct.size_class, ptr %class, i32 0, i32 3
  %4 = ptrtoint ptr %objs_per_zspage1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %objs_per_zspage1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %get_zspage_mapping.exit.get_fullness_group.exit_crit_edge, label %if.else.i

get_zspage_mapping.exit.get_fullness_group.exit_crit_edge: ; preds = %get_zspage_mapping.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_fullness_group.exit

if.else.i:                                        ; preds = %get_zspage_mapping.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp2.i = icmp eq i32 %3, %5
  br i1 %cmp2.i, label %if.else.i.get_fullness_group.exit_crit_edge, label %if.else4.i

if.else.i.get_fullness_group.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_fullness_group.exit

if.else4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %mul.i = mul i32 %5, 3
  %div.i = sdiv i32 %mul.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %div.i)
  %cmp5.not.i = icmp sgt i32 %3, %div.i
  %..i = select i1 %cmp5.not.i, i32 2, i32 1
  br label %get_fullness_group.exit

get_fullness_group.exit:                          ; preds = %if.else4.i, %if.else.i.get_fullness_group.exit_crit_edge, %get_zspage_mapping.exit.get_fullness_group.exit_crit_edge
  %fg.0.i = phi i32 [ 0, %get_zspage_mapping.exit.get_fullness_group.exit_crit_edge ], [ 3, %if.else.i.get_fullness_group.exit_crit_edge ], [ %..i, %if.else4.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %fg.0.i, i32 %bf.clear8.i)
  %cmp = icmp eq i32 %fg.0.i, %bf.clear8.i
  br i1 %cmp, label %get_fullness_group.exit.out_crit_edge, label %if.end

get_fullness_group.exit.out_crit_edge:            ; preds = %get_fullness_group.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %get_fullness_group.exit
  %arrayidx.i = getelementptr %struct.size_class, ptr %class, i32 0, i32 1, i32 %bf.clear8.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i.not.i = icmp eq ptr %7, %arrayidx.i
  br i1 %cmp.i.not.i, label %do.body3.i, label %do.end6.i, !prof !170

do.body3.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 744, 0\0A.popsection", ""() #13, !srcloc !180
  unreachable

do.end6.i:                                        ; preds = %if.end
  %list.i = getelementptr inbounds %struct.zspage, ptr %zspage, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end6.i.remove_zspage.exit_crit_edge

do.end6.i.remove_zspage.exit_crit_edge:           ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %remove_zspage.exit

if.end.i.i.i:                                     ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.zspage, ptr %zspage, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i.i, align 4
  %10 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %remove_zspage.exit

remove_zspage.exit:                               ; preds = %if.end.i.i.i, %do.end6.i.remove_zspage.exit_crit_edge
  %14 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.zspage, ptr %zspage, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %list.i, ptr %prev.i3.i.i, align 4
  %stats.i.i = getelementptr inbounds %struct.size_class, ptr %class, i32 0, i32 6
  %arrayidx.i.i = getelementptr [6 x i32], ptr %stats.i.i, i32 0, i32 %bf.clear8.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  %sub.i.i = add i32 %17, -1
  store i32 %sub.i.i, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i11 = getelementptr [6 x i32], ptr %stats.i.i, i32 0, i32 %fg.0.i
  %18 = ptrtoint ptr %arrayidx.i.i11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i11, align 4
  %add.i.i = add i32 %19, 1
  store i32 %add.i.i, ptr %arrayidx.i.i11, align 4
  %arrayidx.i12 = getelementptr %struct.size_class, ptr %class, i32 0, i32 1, i32 %fg.0.i
  %20 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %arrayidx.i12, align 4
  %cmp.not.i13 = icmp eq ptr %21, %arrayidx.i12
  %add.ptr.i = getelementptr i8, ptr %21, i32 -16
  %tobool.not25.i = icmp eq ptr %add.ptr.i, null
  %tobool.not.i = or i1 %cmp.not.i13, %tobool.not25.i
  br i1 %tobool.not.i, label %remove_zspage.exit.if.else.i18_crit_edge, label %land.lhs.true.i

remove_zspage.exit.if.else.i18_crit_edge:         ; preds = %remove_zspage.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i18

land.lhs.true.i:                                  ; preds = %remove_zspage.exit
  %22 = ptrtoint ptr %inuse.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %inuse.i.i, align 4
  %inuse.i19.i = getelementptr i8, ptr %21, i32 -12
  %24 = ptrtoint ptr %inuse.i19.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %inuse.i19.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp4.i = icmp slt i32 %23, %25
  br i1 %cmp4.i, label %if.then.i, label %land.lhs.true.i.if.else.i18_crit_edge

land.lhs.true.i.if.else.i18_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i18

if.then.i:                                        ; preds = %land.lhs.true.i
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %21, align 4
  %call.i.i.i16 = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %21, ptr noundef %27) #13
  br i1 %call.i.i.i16, label %if.then.i.insert_zspage.exit.sink.split_crit_edge, label %if.then.i.insert_zspage.exit_crit_edge

if.then.i.insert_zspage.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %insert_zspage.exit

if.then.i.insert_zspage.exit.sink.split_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %insert_zspage.exit.sink.split

if.else.i18:                                      ; preds = %land.lhs.true.i.if.else.i18_crit_edge, %remove_zspage.exit.if.else.i18_crit_edge
  %call.i.i20.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %arrayidx.i12, ptr noundef %21) #13
  br i1 %call.i.i20.i, label %if.else.i18.insert_zspage.exit.sink.split_crit_edge, label %if.else.i18.insert_zspage.exit_crit_edge

if.else.i18.insert_zspage.exit_crit_edge:         ; preds = %if.else.i18
  call void @__sanitizer_cov_trace_pc() #15
  br label %insert_zspage.exit

if.else.i18.insert_zspage.exit.sink.split_crit_edge: ; preds = %if.else.i18
  call void @__sanitizer_cov_trace_pc() #15
  br label %insert_zspage.exit.sink.split

insert_zspage.exit.sink.split:                    ; preds = %if.else.i18.insert_zspage.exit.sink.split_crit_edge, %if.then.i.insert_zspage.exit.sink.split_crit_edge
  %.sink22 = phi ptr [ %27, %if.then.i.insert_zspage.exit.sink.split_crit_edge ], [ %21, %if.else.i18.insert_zspage.exit.sink.split_crit_edge ]
  %.sink20 = phi ptr [ %21, %if.then.i.insert_zspage.exit.sink.split_crit_edge ], [ %arrayidx.i12, %if.else.i18.insert_zspage.exit.sink.split_crit_edge ]
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %.sink22, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %list.i, ptr %prev1.i.i.i, align 4
  %29 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %.sink22, ptr %list.i, align 4
  %30 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %.sink20, ptr %prev.i3.i.i, align 4
  %31 = ptrtoint ptr %.sink20 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %list.i, ptr %.sink20, align 4
  br label %insert_zspage.exit

insert_zspage.exit:                               ; preds = %insert_zspage.exit.sink.split, %if.else.i18.insert_zspage.exit_crit_edge, %if.then.i.insert_zspage.exit_crit_edge
  %32 = ptrtoint ptr %zspage to i32
  call void @__asan_load4_noabort(i32 %32)
  %bf.load.i19 = load i32, ptr %zspage, align 4
  %bf.clear.i = and i32 %bf.load.i19, -2146435073
  %bf.value2.i = shl nuw nsw i32 %fg.0.i, 29
  %bf.set.i = or i32 %bf.value2.i, %bf.clear11.i
  %bf.set5.i = or i32 %bf.clear.i, %bf.set.i
  store i32 %bf.set5.i, ptr %zspage, align 4
  br label %out

out:                                              ; preds = %insert_zspage.exit, %get_fullness_group.exit.out_crit_edge
  ret i32 %fg.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alloc_zspage(ptr nocapture noundef readonly %pool, ptr nocapture noundef readonly %class, i32 noundef %gfp) unnamed_addr #2 align 64 {
entry:
  %pages = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pages) #13
  %zspage_cachep.i = getelementptr inbounds %struct.zs_pool, ptr %pool, i32 0, i32 3
  %0 = call ptr @memset(ptr %pages, i32 255, i32 16)
  %1 = ptrtoint ptr %zspage_cachep.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %zspage_cachep.i, align 4
  %and.i = and i32 %gfp, -267
  %or.i.i = or i32 %and.i, 256
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef %or.i.i) #13
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup8_crit_edge, label %if.end

entry.cleanup8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup8

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load = load i32, ptr %call.i.i, align 8
  %bf.clear = and i32 %bf.load, -130561
  %bf.set = or i32 %bf.clear, 45056
  store i32 %bf.set, ptr %call.i.i, align 8
  %lock.i = getelementptr inbounds %struct.zspage, ptr %call.i.i, i32 0, i32 5
  tail call void @__rwlock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @migrate_lock_init.__key) #13
  %pages_per_zspage = getelementptr inbounds %struct.size_class, ptr %class, i32 0, i32 4
  %4 = ptrtoint ptr %pages_per_zspage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pages_per_zspage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp39 = icmp sgt i32 %5, 0
  br i1 %cmp39, label %if.end.for.body_crit_edge, label %if.end.create_page_chain.exit_crit_edge

if.end.create_page_chain.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %create_page_chain.exit

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.040 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef %gfp, i32 noundef 0, i32 noundef 0, ptr noundef null) #13
  %tobool2.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool2.not, label %while.cond.preheader, label %for.inc

while.cond.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.040)
  %cmp437.not = icmp eq i32 %i.040, 0
  br i1 %cmp437.not, label %while.cond.preheader.cleanup8.loopexit_crit_edge, label %while.body.preheader

while.cond.preheader.cleanup8.loopexit_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup8.loopexit

while.body.preheader:                             ; preds = %while.cond.preheader
  %dec36 = add nsw i32 %i.040, -1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %dec38 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %dec36, %while.body.preheader ]
  %arrayidx = getelementptr [4 x ptr], ptr %pages, i32 0, i32 %dec38
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void @dec_zone_page_state(ptr noundef %7, i32 noundef 9) #13
  tail call void @__free_pages(ptr noundef %7, i32 noundef 0) #13
  %dec = add i32 %dec38, -1
  %cmp4 = icmp sgt i32 %dec, -1
  br i1 %cmp4, label %while.body.while.body_crit_edge, label %while.body.cleanup8.loopexit_crit_edge

while.body.cleanup8.loopexit_crit_edge:           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup8.loopexit

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

for.inc:                                          ; preds = %for.body
  tail call void @inc_zone_page_state(ptr noundef nonnull %call38.i.i.i, i32 noundef 9) #13
  %arrayidx7 = getelementptr [4 x ptr], ptr %pages, i32 0, i32 %i.040
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call38.i.i.i, ptr %arrayidx7, align 4
  %inc = add nuw nsw i32 %i.040, 1
  %9 = ptrtoint ptr %pages_per_zspage to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pages_per_zspage, align 4
  %cmp = icmp slt i32 %inc, %10
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp21.i = icmp sgt i32 %10, 0
  br i1 %cmp21.i, label %if.then.peel.i, label %for.end.create_page_chain.exit_crit_edge

for.end.create_page_chain.exit_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %create_page_chain.exit

if.then.peel.i:                                   ; preds = %for.end
  %11 = ptrtoint ptr %call.i.i to i32
  %12 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pages, align 4
  %private1.i.peel.i = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 1, i32 0, i32 3
  %14 = ptrtoint ptr %private1.i.peel.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %11, ptr %private1.i.peel.i, align 4
  %index.peel.i = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 1, i32 0, i32 2
  %15 = ptrtoint ptr %index.peel.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %index.peel.i, align 4
  %first_page.i = getelementptr inbounds %struct.zspage, ptr %call.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %first_page.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %first_page.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp.i.not.i.peel.i = icmp eq i32 %18, -1
  br i1 %cmp.i.not.i.peel.i, label %if.then.i.i, label %SetPagePrivate.exit.peel.i, !prof !170

SetPagePrivate.exit.peel.i:                       ; preds = %if.then.peel.i
  %objs_per_zspage.i = getelementptr inbounds %struct.size_class, ptr %class, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 13, ptr noundef %13) #13
  %19 = ptrtoint ptr %objs_per_zspage.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %objs_per_zspage.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp2.peel.i = icmp eq i32 %20, 1
  br i1 %cmp2.peel.i, label %land.rhs.peel.i, label %SetPagePrivate.exit.peel.i.if.end8.peel.i_crit_edge

SetPagePrivate.exit.peel.i.if.end8.peel.i_crit_edge: ; preds = %SetPagePrivate.exit.peel.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.peel.i

land.rhs.peel.i:                                  ; preds = %SetPagePrivate.exit.peel.i
  %21 = ptrtoint ptr %pages_per_zspage to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pages_per_zspage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp4.peel.i = icmp eq i32 %22, 1
  br i1 %cmp4.peel.i, label %if.then6.peel.i, label %land.rhs.peel.i.if.end8.peel.i_crit_edge, !prof !170

land.rhs.peel.i.if.end8.peel.i_crit_edge:         ; preds = %land.rhs.peel.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.peel.i

if.then6.peel.i:                                  ; preds = %land.rhs.peel.i
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load.i.peel.i = load i32, ptr %call.i.i, align 8
  %bf.set.i.peel.i = or i32 %bf.load.i.peel.i, -2147483648
  store i32 %bf.set.i.peel.i, ptr %call.i.i, align 8
  br label %if.end8.peel.i

if.end8.peel.i:                                   ; preds = %if.then6.peel.i, %land.rhs.peel.i.if.end8.peel.i_crit_edge, %SetPagePrivate.exit.peel.i.if.end8.peel.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %exitcond.peel.not.i = icmp eq i32 %10, 1
  br i1 %exitcond.peel.not.i, label %if.end8.peel.i.create_page_chain.exit_crit_edge, label %if.end8.peel.i.if.end8.i_crit_edge

if.end8.peel.i.if.end8.i_crit_edge:               ; preds = %if.end8.peel.i
  br label %if.end8.i

if.end8.peel.i.create_page_chain.exit_crit_edge:  ; preds = %if.end8.peel.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %create_page_chain.exit

if.then.i.i:                                      ; preds = %if.then.peel.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %13, ptr noundef nonnull @.str.12) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #13, !srcloc !181
  unreachable

if.end8.i:                                        ; preds = %if.end8.i.if.end8.i_crit_edge, %if.end8.peel.i.if.end8.i_crit_edge
  %prev_page.023.i = phi ptr [ %25, %if.end8.i.if.end8.i_crit_edge ], [ %13, %if.end8.peel.i.if.end8.i_crit_edge ]
  %i.022.i = phi i32 [ %inc.i, %if.end8.i.if.end8.i_crit_edge ], [ 1, %if.end8.peel.i.if.end8.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %pages, i32 %i.022.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %private1.i.i = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 1, i32 0, i32 3
  %26 = ptrtoint ptr %private1.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %11, ptr %private1.i.i, align 4
  %index.i = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 1, i32 0, i32 2
  %27 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %index.i, align 4
  %28 = ptrtoint ptr %25 to i32
  %index7.i = getelementptr inbounds %struct.page, ptr %prev_page.023.i, i32 0, i32 1, i32 0, i32 2
  %29 = ptrtoint ptr %index7.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %index7.i, align 4
  %inc.i = add nuw nsw i32 %i.022.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %10
  br i1 %exitcond.not.i, label %if.end8.i.create_page_chain.exit_crit_edge, label %if.end8.i.if.end8.i_crit_edge, !llvm.loop !182

if.end8.i.if.end8.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i

if.end8.i.create_page_chain.exit_crit_edge:       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %create_page_chain.exit

create_page_chain.exit:                           ; preds = %if.end8.i.create_page_chain.exit_crit_edge, %if.end8.peel.i.create_page_chain.exit_crit_edge, %for.end.create_page_chain.exit_crit_edge, %if.end.create_page_chain.exit_crit_edge
  %first_page1.i.i = getelementptr inbounds %struct.zspage, ptr %call.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %first_page1.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %first_page1.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp.i.not.i.i.i.i = icmp eq i32 %33, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i, label %is_first_page.exit.i.i, !prof !170

if.then.i.i.i.i:                                  ; preds = %create_page_chain.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %31, ptr noundef nonnull @.str.12) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #13, !srcloc !177
  unreachable

is_first_page.exit.i.i:                           ; preds = %create_page_chain.exit
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %31, align 4
  %36 = and i32 %35, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i.i, label %if.then.i.i29, label %while.cond.preheader.i, !prof !170

while.cond.preheader.i:                           ; preds = %is_first_page.exit.i.i
  %tobool.not38.i = icmp eq ptr %31, null
  br i1 %tobool.not38.i, label %while.cond.preheader.i.init_zspage.exit_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.init_zspage.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %init_zspage.exit

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %size.i = getelementptr inbounds %struct.size_class, ptr %class, i32 0, i32 2
  br label %while.body.i

if.then.i.i29:                                    ; preds = %is_first_page.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %31, ptr noundef nonnull @.str.11) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 481, 0\0A.popsection", ""() #13, !srcloc !178
  unreachable

while.body.i:                                     ; preds = %get_next_page.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %page.041.i = phi ptr [ %31, %while.body.lr.ph.i ], [ %retval.0.i.i, %get_next_page.exit.i.while.body.i_crit_edge ]
  %off.040.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %rem.i, %get_next_page.exit.i.while.body.i_crit_edge ]
  %freeobj.039.i = phi i32 [ 1, %while.body.lr.ph.i ], [ %freeobj.2.i, %get_next_page.exit.i.while.body.i_crit_edge ]
  %37 = getelementptr inbounds %struct.page, ptr %page.041.i, i32 0, i32 2
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %off.040.i, ptr %37, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %39 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i30 = or i32 %39, 512
  %40 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i.i.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %43, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !168
  %44 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i1.i.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 213
  %48 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %49, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !169
  %call.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %page.041.i, i32 noundef %or.i.i30) #13
  %div29.i = lshr i32 %off.040.i, 2
  %add.ptr.i = getelementptr %struct.link_free, ptr %call.i.i.i, i32 %div29.i
  %50 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %size.i, align 4
  %add31.i = add i32 %51, %off.040.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add31.i)
  %cmp32.i = icmp ult i32 %add31.i, 4096
  br i1 %cmp32.i, label %while.body.i.while.body3.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.body.i.while.body3.i_crit_edge:             ; preds = %while.body.i
  br label %while.body3.i

while.body3.i:                                    ; preds = %while.body3.i.while.body3.i_crit_edge, %while.body.i.while.body3.i_crit_edge
  %add35.i = phi i32 [ %add.i, %while.body3.i.while.body3.i_crit_edge ], [ %add31.i, %while.body.i.while.body3.i_crit_edge ]
  %link.034.i = phi ptr [ %add.ptr6.i, %while.body3.i.while.body3.i_crit_edge ], [ %add.ptr.i, %while.body.i.while.body3.i_crit_edge ]
  %freeobj.133.i = phi i32 [ %inc.i31, %while.body3.i.while.body3.i_crit_edge ], [ %freeobj.039.i, %while.body.i.while.body3.i_crit_edge ]
  %inc.i31 = add i32 %freeobj.133.i, 1
  %shl.i = shl i32 %freeobj.133.i, 1
  %52 = ptrtoint ptr %link.034.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %shl.i, ptr %link.034.i, align 4
  %53 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %size.i, align 4
  %div530.i = lshr i32 %54, 2
  %add.ptr6.i = getelementptr %struct.link_free, ptr %link.034.i, i32 %div530.i
  %add.i = add i32 %54, %add35.i
  %cmp.i = icmp ult i32 %add.i, 4096
  br i1 %cmp.i, label %while.body3.i.while.body3.i_crit_edge, label %while.body3.i.while.end.i_crit_edge

while.body3.i.while.end.i_crit_edge:              ; preds = %while.body3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.body3.i.while.body3.i_crit_edge:            ; preds = %while.body3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body3.i

while.end.i:                                      ; preds = %while.body3.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge
  %freeobj.1.lcssa.i = phi i32 [ %freeobj.039.i, %while.body.i.while.end.i_crit_edge ], [ %inc.i31, %while.body3.i.while.end.i_crit_edge ]
  %link.0.lcssa.i = phi ptr [ %add.ptr.i, %while.body.i.while.end.i_crit_edge ], [ %add.ptr6.i, %while.body3.i.while.end.i_crit_edge ]
  %add.lcssa.i = phi i32 [ %add31.i, %while.body.i.while.end.i_crit_edge ], [ %add.i, %while.body3.i.while.end.i_crit_edge ]
  %private.i.i.i = getelementptr inbounds %struct.page, ptr %page.041.i, i32 0, i32 1, i32 0, i32 3
  %55 = ptrtoint ptr %private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %private.i.i.i, align 4
  %57 = inttoptr i32 %56 to ptr
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %bf.load.i.i.i = load i32, ptr %57, align 4
  %59 = and i32 %bf.load.i.i.i, 130560
  call void @__sanitizer_cov_trace_const_cmp4(i32 45056, i32 %59)
  %cmp.not.i.i.i = icmp eq i32 %59, 45056
  br i1 %cmp.not.i.i.i, label %get_zspage.exit.i.i, label %do.body2.i.i.i, !prof !164

do.body2.i.i.i:                                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 817, 0\0A.popsection", ""() #13, !srcloc !166
  unreachable

get_zspage.exit.i.i:                              ; preds = %while.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load.i.i.i)
  %tobool.i.i.i = icmp slt i32 %bf.load.i.i.i, 0
  br i1 %tobool.i.i.i, label %get_zspage.exit.i.i.get_next_page.exit.i_crit_edge, label %if.end.i.i, !prof !170

get_zspage.exit.i.i.get_next_page.exit.i_crit_edge: ; preds = %get_zspage.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_next_page.exit.i

if.end.i.i:                                       ; preds = %get_zspage.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %index.i.i = getelementptr inbounds %struct.page, ptr %page.041.i, i32 0, i32 1, i32 0, i32 2
  %60 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %index.i.i, align 4
  %62 = inttoptr i32 %61 to ptr
  br label %get_next_page.exit.i

get_next_page.exit.i:                             ; preds = %if.end.i.i, %get_zspage.exit.i.i.get_next_page.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %62, %if.end.i.i ], [ null, %get_zspage.exit.i.i.get_next_page.exit.i_crit_edge ]
  %tobool8.not.i = icmp eq ptr %retval.0.i.i, null
  %shl10.i = shl i32 %freeobj.1.lcssa.i, 1
  %storemerge.i = select i1 %tobool8.not.i, i32 -2, i32 %shl10.i
  %not.tobool8.not.i = xor i1 %tobool8.not.i, true
  %inc9.i = zext i1 %not.tobool8.not.i to i32
  %freeobj.2.i = add i32 %freeobj.1.lcssa.i, %inc9.i
  %63 = ptrtoint ptr %link.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %storemerge.i, ptr %link.0.lcssa.i, align 4
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !172
  %64 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i1.i.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %67, i32 0, i32 213
  %68 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %69, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !173
  %70 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i.i.i = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %73, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  %rem.i = and i32 %add.lcssa.i, 4095
  br i1 %tobool8.not.i, label %get_next_page.exit.i.init_zspage.exit_crit_edge, label %get_next_page.exit.i.while.body.i_crit_edge

get_next_page.exit.i.while.body.i_crit_edge:      ; preds = %get_next_page.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

get_next_page.exit.i.init_zspage.exit_crit_edge:  ; preds = %get_next_page.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %init_zspage.exit

init_zspage.exit:                                 ; preds = %get_next_page.exit.i.init_zspage.exit_crit_edge, %while.cond.preheader.i.init_zspage.exit_crit_edge
  %freeobj.i.i = getelementptr inbounds %struct.zspage, ptr %call.i.i, i32 0, i32 2
  %74 = ptrtoint ptr %freeobj.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %freeobj.i.i, align 8
  br label %cleanup8

cleanup8.loopexit:                                ; preds = %while.body.cleanup8.loopexit_crit_edge, %while.cond.preheader.cleanup8.loopexit_crit_edge
  %75 = ptrtoint ptr %zspage_cachep.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %zspage_cachep.i, align 4
  tail call void @kmem_cache_free(ptr noundef %76, ptr noundef nonnull %call.i.i) #13
  br label %cleanup8

cleanup8:                                         ; preds = %cleanup8.loopexit, %init_zspage.exit, %entry.cleanup8_crit_edge
  %retval.2 = phi ptr [ %call.i.i, %init_zspage.exit ], [ null, %entry.cleanup8_crit_edge ], [ null, %cleanup8.loopexit ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pages) #13
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @insert_zspage(ptr noundef %class, ptr noundef %zspage, i32 noundef %fullness) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %stats.i = getelementptr inbounds %struct.size_class, ptr %class, i32 0, i32 6
  %arrayidx.i = getelementptr [6 x i32], ptr %stats.i, i32 0, i32 %fullness
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %1, 1
  store i32 %add.i, ptr %arrayidx.i, align 4
  %arrayidx = getelementptr %struct.size_class, ptr %class, i32 0, i32 1, i32 %fullness
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.not = icmp eq ptr %3, %arrayidx
  %add.ptr = getelementptr i8, ptr %3, i32 -16
  %tobool.not25 = icmp eq ptr %add.ptr, null
  %tobool.not = or i1 %cmp.not, %tobool.not25
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %inuse.i = getelementptr inbounds %struct.zspage, ptr %zspage, i32 0, i32 1
  %4 = ptrtoint ptr %inuse.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %inuse.i, align 4
  %inuse.i19 = getelementptr i8, ptr %3, i32 -12
  %6 = ptrtoint ptr %inuse.i19 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %inuse.i19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp4 = icmp slt i32 %5, %7
  br i1 %cmp4, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %list = getelementptr inbounds %struct.zspage, ptr %zspage, i32 0, i32 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %3, ptr noundef %9) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list, ptr %prev1.i.i, align 4
  %11 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.zspage, ptr %zspage, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %3, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %list, ptr %3, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %list6 = getelementptr inbounds %struct.zspage, ptr %zspage, i32 0, i32 4
  %call.i.i20 = tail call zeroext i1 @__list_add_valid(ptr noundef %list6, ptr noundef %arrayidx, ptr noundef %3) #13
  br i1 %call.i.i20, label %if.end.i.i23, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i.i23:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i21 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i21 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list6, ptr %prev1.i.i21, align 4
  %15 = ptrtoint ptr %list6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %3, ptr %list6, align 4
  %prev3.i.i22 = getelementptr inbounds %struct.zspage, ptr %zspage, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %prev3.i.i22 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx, ptr %prev3.i.i22, align 4
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %list6, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i23, %if.else.if.end_crit_edge, %if.end.i.i, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @SetZsPageMovable(ptr nocapture noundef readonly %pool, ptr nocapture noundef readonly %zspage) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %first_page1.i = getelementptr inbounds %struct.zspage, ptr %zspage, i32 0, i32 3
  %0 = ptrtoint ptr %first_page1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %first_page1.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i.not.i.i.i = icmp eq i32 %3, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %is_first_page.exit.i, !prof !170

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %1, ptr noundef nonnull @.str.12) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #13, !srcloc !177
  unreachable

is_first_page.exit.i:                             ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %1, align 4
  %6 = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body.preheader, !prof !170

do.body.preheader:                                ; preds = %is_first_page.exit.i
  %inode = getelementptr inbounds %struct.zs_pool, ptr %pool, i32 0, i32 8
  br label %do.body

if.then.i:                                        ; preds = %is_first_page.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %1, ptr noundef nonnull @.str.11) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 481, 0\0A.popsection", ""() #13, !srcloc !178
  unreachable

do.body:                                          ; preds = %get_next_page.exit.do.body_crit_edge, %do.body.preheader
  %page.0 = phi ptr [ %30, %get_next_page.exit.do.body_crit_edge ], [ %1, %do.body.preheader ]
  %7 = getelementptr inbounds %struct.page, ptr %page.0, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !164

if.then.i.i:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = add i32 %9, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %page.0 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %10, %if.end.i.i ]
  %11 = inttoptr i32 %retval.0.i.i to ptr
  %12 = getelementptr inbounds %struct.page, ptr %11, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and.i.i.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i30, !prof !164

if.then.i.i.i30:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %15 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %15, ptr noundef nonnull @.str.15) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #13, !srcloc !184
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %11, i32 noundef 4) #13
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %11, align 4
  %and.i.i4.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_page.exit, label %folio_flags.exit.i.i.do.end_crit_edge

folio_flags.exit.i.i.do.end_crit_edge:            ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

trylock_page.exit:                                ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %11, i32 1, i32 3, i32 1) #13
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #13, !srcloc !185
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !186
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.not.not = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.not.not, label %trylock_page.exit.if.end_crit_edge, label %trylock_page.exit.do.end_crit_edge, !prof !164

trylock_page.exit.do.end_crit_edge:               ; preds = %trylock_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

trylock_page.exit.if.end_crit_edge:               ; preds = %trylock_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %trylock_page.exit.do.end_crit_edge, %folio_flags.exit.i.i.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 2016, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %trylock_page.exit.if.end_crit_edge
  %19 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %inode, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_mapping, align 8
  tail call void @__SetPageMovable(ptr noundef %page.0, ptr noundef %22) #13
  tail call void @unlock_page(ptr noundef %page.0) #13
  %private.i.i = getelementptr inbounds %struct.page, ptr %page.0, i32 0, i32 1, i32 0, i32 3
  %23 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %private.i.i, align 4
  %25 = inttoptr i32 %24 to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %bf.load.i.i = load i32, ptr %25, align 4
  %27 = and i32 %bf.load.i.i, 130560
  call void @__sanitizer_cov_trace_const_cmp4(i32 45056, i32 %27)
  %cmp.not.i.i = icmp eq i32 %27, 45056
  br i1 %cmp.not.i.i, label %get_zspage.exit.i, label %do.body2.i.i, !prof !164

do.body2.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 817, 0\0A.popsection", ""() #13, !srcloc !166
  unreachable

get_zspage.exit.i:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load.i.i)
  %tobool.i.i = icmp slt i32 %bf.load.i.i, 0
  br i1 %tobool.i.i, label %get_zspage.exit.i.do.end25_crit_edge, label %get_next_page.exit, !prof !170

get_zspage.exit.i.do.end25_crit_edge:             ; preds = %get_zspage.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end25

get_next_page.exit:                               ; preds = %get_zspage.exit.i
  %index.i = getelementptr inbounds %struct.page, ptr %page.0, i32 0, i32 1, i32 0, i32 2
  %28 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %index.i, align 4
  %30 = inttoptr i32 %29 to ptr
  %cmp.not = icmp eq i32 %29, 0
  br i1 %cmp.not, label %get_next_page.exit.do.end25_crit_edge, label %get_next_page.exit.do.body_crit_edge

get_next_page.exit.do.body_crit_edge:             ; preds = %get_next_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

get_next_page.exit.do.end25_crit_edge:            ; preds = %get_next_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end25

do.end25:                                         ; preds = %get_next_page.exit.do.end25_crit_edge, %get_zspage.exit.i.do.end25_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zs_free(ptr noundef %pool, i32 noundef %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handle)
  %tobool.not = icmp eq i32 %handle, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !170

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %migrate_lock = getelementptr inbounds %struct.zs_pool, ptr %pool, i32 0, i32 10
  tail call void @_raw_read_lock(ptr noundef %migrate_lock) #13
  %0 = inttoptr i32 %handle to ptr
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %shr.i = lshr i32 %2, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %3 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %4 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i = sub i32 %shr.i, %4
  %private.i = getelementptr %struct.page, ptr %3, i32 %sub.i, i32 1, i32 0, i32 3
  %5 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %private.i, align 4
  %7 = inttoptr i32 %6 to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load.i = load i32, ptr %7, align 4
  %9 = and i32 %bf.load.i, 130560
  call void @__sanitizer_cov_trace_const_cmp4(i32 45056, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 45056
  br i1 %cmp.not.i, label %get_zspage.exit, label %do.body2.i, !prof !164

do.body2.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 817, 0\0A.popsection", ""() #13, !srcloc !166
  unreachable

get_zspage.exit:                                  ; preds = %if.end
  %bf.lshr.i = lshr i32 %bf.load.i, 20
  %bf.clear.i = and i32 %bf.lshr.i, 511
  %arrayidx.i = getelementptr %struct.zs_pool, ptr %pool, i32 0, i32 1, i32 %bf.clear.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  tail call void @_raw_spin_lock(ptr noundef %11) #13
  tail call void @_raw_read_unlock(ptr noundef %migrate_lock) #13
  %size = getelementptr inbounds %struct.size_class, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size, align 4
  tail call fastcc void @obj_free(i32 noundef %13, i32 noundef %2)
  %arrayidx.i30 = getelementptr %struct.size_class, ptr %11, i32 0, i32 6, i32 0, i32 5
  %14 = ptrtoint ptr %arrayidx.i30 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i30, align 4
  %sub.i31 = add i32 %15, -1
  store i32 %sub.i31, ptr %arrayidx.i30, align 4
  %call7 = tail call fastcc i32 @fix_fullness_group(ptr noundef %11, ptr noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp.not = icmp eq i32 %call7, 0
  br i1 %cmp.not, label %if.end9, label %get_zspage.exit.out_crit_edge

get_zspage.exit.out_crit_edge:                    ; preds = %get_zspage.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end9:                                          ; preds = %get_zspage.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @free_zspage(ptr noundef %pool, ptr noundef %11, ptr noundef %7)
  br label %out

out:                                              ; preds = %if.end9, %get_zspage.exit.out_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %11) #13
  %handle_cachep.i = getelementptr inbounds %struct.zs_pool, ptr %pool, i32 0, i32 2
  %16 = ptrtoint ptr %handle_cachep.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %handle_cachep.i, align 4
  tail call void @kmem_cache_free(ptr noundef %17, ptr noundef nonnull %0) #13
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @obj_free(i32 noundef %class_size, i32 noundef %obj) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %shr.i = lshr i32 %obj, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %0 = load ptr, ptr @mem_map, align 4
  %shr1.i = lshr i32 %obj, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %1 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i = sub i32 %shr1.i, %1
  %and.i = and i32 %shr.i, 2047
  %private.i = getelementptr %struct.page, ptr %0, i32 %sub.i, i32 1, i32 0, i32 3
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private.i, align 4
  %4 = inttoptr i32 %3 to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load.i = load i32, ptr %4, align 4
  %6 = and i32 %bf.load.i, 130560
  call void @__sanitizer_cov_trace_const_cmp4(i32 45056, i32 %6)
  %cmp.not.i = icmp eq i32 %6, 45056
  br i1 %cmp.not.i, label %get_zspage.exit, label %do.body2.i, !prof !164

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 817, 0\0A.popsection", ""() #13, !srcloc !166
  unreachable

get_zspage.exit:                                  ; preds = %entry
  %add.ptr.i = getelementptr %struct.page, ptr %0, i32 %sub.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %7 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %7, 512
  %8 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !168
  %12 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i1.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 213
  %16 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %17, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !169
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr.i, i32 noundef %or.i) #13
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load.i13 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load.i13)
  %tobool.i = icmp slt i32 %bf.load.i13, 0
  br i1 %tobool.i, label %if.else, label %if.then, !prof !170

if.then:                                          ; preds = %get_zspage.exit
  call void @__sanitizer_cov_trace_pc() #15
  %mul = mul i32 %and.i, %class_size
  %and = and i32 %mul, 4095
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 %and
  %freeobj.i = getelementptr inbounds %struct.zspage, ptr %4, i32 0, i32 2
  %19 = ptrtoint ptr %freeobj.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %freeobj.i, align 4
  %shl = shl i32 %20, 1
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shl, ptr %add.ptr, align 4
  br label %do.end

if.else:                                          ; preds = %get_zspage.exit
  call void @__sanitizer_cov_trace_pc() #15
  %index = getelementptr %struct.page, ptr %0, i32 %sub.i, i32 1, i32 0, i32 2
  %22 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %index, align 4
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !172
  %23 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i1.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 213
  %27 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %28, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !173
  %29 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %freeobj.i14 = getelementptr inbounds %struct.zspage, ptr %4, i32 0, i32 2
  %33 = ptrtoint ptr %freeobj.i14 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and.i, ptr %freeobj.i14, align 4
  %inuse.i = getelementptr inbounds %struct.zspage, ptr %4, i32 0, i32 1
  %34 = ptrtoint ptr %inuse.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %inuse.i, align 4
  %add.i = add i32 %35, -1
  store i32 %add.i, ptr %inuse.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_zspage(ptr noundef %pool, ptr noundef %class, ptr noundef %zspage) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %inuse.i = getelementptr inbounds %struct.zspage, ptr %zspage, i32 0, i32 1
  %0 = ptrtoint ptr %inuse.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %inuse.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.body7, label %do.body3, !prof !164

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 955, 0\0A.popsection", ""() #13, !srcloc !187
  unreachable

do.body7:                                         ; preds = %entry
  %list = getelementptr inbounds %struct.zspage, ptr %zspage, i32 0, i32 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %3, %list
  br i1 %cmp.i.not, label %do.body17, label %do.end22, !prof !170

do.body17:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 956, 0\0A.popsection", ""() #13, !srcloc !188
  unreachable

do.end22:                                         ; preds = %do.body7
  %first_page1.i.i = getelementptr inbounds %struct.zspage, ptr %zspage, i32 0, i32 3
  %4 = ptrtoint ptr %first_page1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %first_page1.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp.i.not.i.i.i.i = icmp eq i32 %7, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i, label %is_first_page.exit.i.i, !prof !170

if.then.i.i.i.i:                                  ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %5, ptr noundef nonnull @.str.12) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #13, !srcloc !177
  unreachable

is_first_page.exit.i.i:                           ; preds = %do.end22
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %5, align 4
  %10 = and i32 %9, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %for.cond.preheader.i, !prof !170

for.cond.preheader.i:                             ; preds = %is_first_page.exit.i.i
  %cmp.not44.i = icmp eq ptr %5, null
  br i1 %cmp.not44.i, label %for.cond.preheader.i.if.end26_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end26_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then.i.i:                                      ; preds = %is_first_page.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %5, ptr noundef nonnull @.str.11) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 481, 0\0A.popsection", ""() #13, !srcloc !178
  unreachable

for.body.i:                                       ; preds = %get_next_page.exit.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %cursor.045.i = phi ptr [ %37, %get_next_page.exit.i.for.body.i_crit_edge ], [ %5, %for.cond.preheader.i.for.body.i_crit_edge ]
  %11 = getelementptr inbounds %struct.page, ptr %cursor.045.i, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %and.i.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !164

if.then.i.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i.i = add i32 %13, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %cursor.045.i to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %14, %if.end.i.i.i ]
  %15 = inttoptr i32 %retval.0.i.i.i to ptr
  %16 = getelementptr inbounds %struct.page, ptr %15, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %and.i.i.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_flags.exit.i.i.i, label %if.then.i.i.i18.i, !prof !164

if.then.i.i.i18.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %19 = inttoptr i32 %retval.0.i.i.i to ptr
  tail call void @dump_page(ptr noundef %19, ptr noundef nonnull @.str.15) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #13, !srcloc !184
  unreachable

folio_flags.exit.i.i.i:                           ; preds = %_compound_head.exit.i.i
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %15, i32 noundef 4) #13
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %15, align 4
  %and.i.i4.i.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i4.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %trylock_page.exit.i, label %folio_flags.exit.i.i.i.if.then.i_crit_edge

folio_flags.exit.i.i.i.if.then.i_crit_edge:       ; preds = %folio_flags.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

trylock_page.exit.i:                              ; preds = %folio_flags.exit.i.i.i
  tail call void @llvm.prefetch.p0(ptr %15, i32 1, i32 3, i32 1) #13
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #13, !srcloc !185
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !186
  %and1.i.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not.not.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not.not.i, label %for.inc.i, label %trylock_page.exit.i.if.then.i_crit_edge

trylock_page.exit.i.if.then.i_crit_edge:          ; preds = %trylock_page.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.then.i:                                        ; preds = %trylock_page.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i.i.if.then.i_crit_edge
  %23 = ptrtoint ptr %first_page1.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %first_page1.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp.i.not.i.i.i20.i = icmp eq i32 %26, -1
  br i1 %cmp.i.not.i.i.i20.i, label %if.then.i.i.i21.i, label %is_first_page.exit.i23.i, !prof !170

if.then.i.i.i21.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %24, ptr noundef nonnull @.str.12) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #13, !srcloc !177
  unreachable

is_first_page.exit.i23.i:                         ; preds = %if.then.i
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %24, align 4
  %29 = and i32 %28, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i22.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i22.i, label %if.then.i24.i, label %for.cond4.preheader.i, !prof !170

for.cond4.preheader.i:                            ; preds = %is_first_page.exit.i23.i
  %cmp5.not46.i = icmp eq ptr %24, %cursor.045.i
  br i1 %cmp5.not46.i, label %for.cond4.preheader.i.if.then25_crit_edge, label %for.cond4.preheader.i.for.body6.i_crit_edge

for.cond4.preheader.i.for.body6.i_crit_edge:      ; preds = %for.cond4.preheader.i
  br label %for.body6.i

for.cond4.preheader.i.if.then25_crit_edge:        ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then25

if.then.i24.i:                                    ; preds = %is_first_page.exit.i23.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %24, ptr noundef nonnull @.str.11) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 481, 0\0A.popsection", ""() #13, !srcloc !178
  unreachable

for.inc.i:                                        ; preds = %trylock_page.exit.i
  %private.i.i.i = getelementptr inbounds %struct.page, ptr %cursor.045.i, i32 0, i32 1, i32 0, i32 3
  %30 = ptrtoint ptr %private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %private.i.i.i, align 4
  %32 = inttoptr i32 %31 to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %bf.load.i.i.i = load i32, ptr %32, align 4
  %34 = and i32 %bf.load.i.i.i, 130560
  call void @__sanitizer_cov_trace_const_cmp4(i32 45056, i32 %34)
  %cmp.not.i.i.i = icmp eq i32 %34, 45056
  br i1 %cmp.not.i.i.i, label %get_zspage.exit.i.i, label %do.body2.i.i.i, !prof !164

do.body2.i.i.i:                                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 817, 0\0A.popsection", ""() #13, !srcloc !166
  unreachable

get_zspage.exit.i.i:                              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load.i.i.i)
  %tobool.i.i.i = icmp slt i32 %bf.load.i.i.i, 0
  br i1 %tobool.i.i.i, label %get_zspage.exit.i.i.if.end26_crit_edge, label %get_next_page.exit.i, !prof !170

get_zspage.exit.i.i.if.end26_crit_edge:           ; preds = %get_zspage.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

get_next_page.exit.i:                             ; preds = %get_zspage.exit.i.i
  %index.i.i = getelementptr inbounds %struct.page, ptr %cursor.045.i, i32 0, i32 1, i32 0, i32 2
  %35 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %index.i.i, align 4
  %37 = inttoptr i32 %36 to ptr
  %cmp.not.i = icmp eq i32 %36, 0
  br i1 %cmp.not.i, label %get_next_page.exit.i.if.end26_crit_edge, label %get_next_page.exit.i.for.body.i_crit_edge

get_next_page.exit.i.for.body.i_crit_edge:        ; preds = %get_next_page.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

get_next_page.exit.i.if.end26_crit_edge:          ; preds = %get_next_page.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

for.body6.i:                                      ; preds = %get_next_page.exit35.i.for.body6.i_crit_edge, %for.cond4.preheader.i.for.body6.i_crit_edge
  %cursor.147.i = phi ptr [ %retval.0.i34.i, %get_next_page.exit35.i.for.body6.i_crit_edge ], [ %24, %for.cond4.preheader.i.for.body6.i_crit_edge ]
  tail call void @unlock_page(ptr noundef %cursor.147.i) #13
  %private.i.i26.i = getelementptr inbounds %struct.page, ptr %cursor.147.i, i32 0, i32 1, i32 0, i32 3
  %38 = ptrtoint ptr %private.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %private.i.i26.i, align 4
  %40 = inttoptr i32 %39 to ptr
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %bf.load.i.i27.i = load i32, ptr %40, align 4
  %42 = and i32 %bf.load.i.i27.i, 130560
  call void @__sanitizer_cov_trace_const_cmp4(i32 45056, i32 %42)
  %cmp.not.i.i28.i = icmp eq i32 %42, 45056
  br i1 %cmp.not.i.i28.i, label %get_zspage.exit.i31.i, label %do.body2.i.i29.i, !prof !164

do.body2.i.i29.i:                                 ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 817, 0\0A.popsection", ""() #13, !srcloc !166
  unreachable

get_zspage.exit.i31.i:                            ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load.i.i27.i)
  %tobool.i.i30.i = icmp slt i32 %bf.load.i.i27.i, 0
  br i1 %tobool.i.i30.i, label %get_zspage.exit.i31.i.get_next_page.exit35.i_crit_edge, label %if.end.i33.i, !prof !170

get_zspage.exit.i31.i.get_next_page.exit35.i_crit_edge: ; preds = %get_zspage.exit.i31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_next_page.exit35.i

if.end.i33.i:                                     ; preds = %get_zspage.exit.i31.i
  call void @__sanitizer_cov_trace_pc() #15
  %index.i32.i = getelementptr inbounds %struct.page, ptr %cursor.147.i, i32 0, i32 1, i32 0, i32 2
  %43 = ptrtoint ptr %index.i32.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %index.i32.i, align 4
  %45 = inttoptr i32 %44 to ptr
  br label %get_next_page.exit35.i

get_next_page.exit35.i:                           ; preds = %if.end.i33.i, %get_zspage.exit.i31.i.get_next_page.exit35.i_crit_edge
  %retval.0.i34.i = phi ptr [ %45, %if.end.i33.i ], [ null, %get_zspage.exit.i31.i.get_next_page.exit35.i_crit_edge ]
  %cmp5.not.i = icmp eq ptr %retval.0.i34.i, %cursor.045.i
  br i1 %cmp5.not.i, label %get_next_page.exit35.i.if.then25_crit_edge, label %get_next_page.exit35.i.for.body6.i_crit_edge

get_next_page.exit35.i.for.body6.i_crit_edge:     ; preds = %get_next_page.exit35.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body6.i

get_next_page.exit35.i.if.then25_crit_edge:       ; preds = %get_next_page.exit35.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then25

if.then25:                                        ; preds = %get_next_page.exit35.i.if.then25_crit_edge, %for.cond4.preheader.i.if.then25_crit_edge
  %free_work.i = getelementptr inbounds %struct.zs_pool, ptr %pool, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %46 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %46, ptr noundef %free_work.i) #13
  br label %return

if.end26:                                         ; preds = %get_next_page.exit.i.if.end26_crit_edge, %get_zspage.exit.i.i.if.end26_crit_edge, %for.cond.preheader.i.if.end26_crit_edge
  %arrayidx.i = getelementptr %struct.size_class, ptr %class, i32 0, i32 1, i32 0
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i.not.i = icmp eq ptr %48, %arrayidx.i
  br i1 %cmp.i.not.i, label %do.body3.i, label %do.end6.i, !prof !170

do.body3.i:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 744, 0\0A.popsection", ""() #13, !srcloc !180
  unreachable

do.end6.i:                                        ; preds = %if.end26
  %call.i.i.i33 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #13
  br i1 %call.i.i.i33, label %if.end.i.i.i34, label %do.end6.i.remove_zspage.exit_crit_edge

do.end6.i.remove_zspage.exit_crit_edge:           ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %remove_zspage.exit

if.end.i.i.i34:                                   ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.zspage, ptr %zspage, i32 0, i32 4, i32 1
  %49 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i.i.i, align 4
  %51 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %list, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev1.i.i.i.i, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %52, ptr %50, align 4
  br label %remove_zspage.exit

remove_zspage.exit:                               ; preds = %if.end.i.i.i34, %do.end6.i.remove_zspage.exit_crit_edge
  %55 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.zspage, ptr %zspage, i32 0, i32 4, i32 1
  %56 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %list, ptr %prev.i3.i.i, align 4
  %stats.i.i = getelementptr inbounds %struct.size_class, ptr %class, i32 0, i32 6
  %57 = ptrtoint ptr %stats.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %stats.i.i, align 4
  %sub.i.i = add i32 %58, -1
  store i32 %sub.i.i, ptr %stats.i.i, align 4
  tail call fastcc void @__free_zspage(ptr noundef %pool, ptr noundef %class, ptr noundef %zspage)
  br label %return

return:                                           ; preds = %remove_zspage.exit, %if.then25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zs_compact(ptr noundef %pool) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %migrate_lock.i = getelementptr inbounds %struct.zs_pool, ptr %pool, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %pages_freed.0134 = phi i32 [ 0, %entry ], [ %pages_freed.1, %for.inc.for.body_crit_edge ]
  %i.0132 = phi i32 [ 254, %entry ], [ %dec, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.zs_pool, ptr %pool, i32 0, i32 1, i32 %i.0132
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %for.body
  %index = getelementptr inbounds %struct.size_class, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %i.0132)
  %cmp1.not = icmp eq i32 %3, %i.0132
  br i1 %cmp1.not, label %if.end3, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end3:                                          ; preds = %if.end
  tail call void @_raw_write_lock(ptr noundef %migrate_lock.i) #13
  tail call void @_raw_spin_lock(ptr noundef nonnull %1) #13
  %arrayidx3.i.i = getelementptr %struct.size_class, ptr %1, i32 0, i32 1, i32 1
  %arrayidx3.1.i.i = getelementptr %struct.size_class, ptr %1, i32 0, i32 1, i32 2
  %stats.i.i.i.i = getelementptr inbounds %struct.size_class, ptr %1, i32 0, i32 6
  %arrayidx.i.i.i = getelementptr %struct.size_class, ptr %1, i32 0, i32 6, i32 0, i32 4
  %arrayidx.i11.i.i = getelementptr %struct.size_class, ptr %1, i32 0, i32 6, i32 0, i32 5
  %objs_per_zspage.i.i = getelementptr inbounds %struct.size_class, ptr %1, i32 0, i32 3
  %pages_per_zspage.i.i = getelementptr inbounds %struct.size_class, ptr %1, i32 0, i32 4
  %size.i.i.i = getelementptr inbounds %struct.size_class, ptr %1, i32 0, i32 2
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end23.i, %if.end3
  %pages_freed.0.i = phi i32 [ 0, %if.end3 ], [ %pages_freed.1.i, %if.end23.i ]
  %4 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx3.i.i, align 4
  %cmp5.not.i.i = icmp eq ptr %5, %arrayidx3.i.i
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 -16
  %tobool7.not22.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool7.not.i.i = or i1 %cmp5.not.i.i, %tobool7.not22.i.i
  br i1 %tobool7.not.i.i, label %for.cond.i.i, label %while.cond.i.if.then8.i.i_crit_edge

while.cond.i.if.then8.i.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8.i.i

for.cond.i.i:                                     ; preds = %while.cond.i
  %6 = ptrtoint ptr %arrayidx3.1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx3.1.i.i, align 4
  %cmp5.not.1.i.i = icmp eq ptr %7, %arrayidx3.1.i.i
  %add.ptr.1.i.i = getelementptr i8, ptr %7, i32 -16
  %tobool7.not22.1.i.i = icmp eq ptr %add.ptr.1.i.i, null
  %tobool7.not.1.i.i = or i1 %cmp5.not.1.i.i, %tobool7.not22.1.i.i
  br i1 %tobool7.not.1.i.i, label %for.cond.i.i.__zs_compact.exit_crit_edge, label %for.cond.i.i.if.then8.i.i_crit_edge

for.cond.i.i.if.then8.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8.i.i

for.cond.i.i.__zs_compact.exit_crit_edge:         ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__zs_compact.exit

if.then8.i.i:                                     ; preds = %for.cond.i.i.if.then8.i.i_crit_edge, %while.cond.i.if.then8.i.i_crit_edge
  %.lcssa29.i.i = phi i32 [ 1, %while.cond.i.if.then8.i.i_crit_edge ], [ 2, %for.cond.i.i.if.then8.i.i_crit_edge ]
  %arrayidx3.lcssa.i.i = phi ptr [ %arrayidx3.i.i, %while.cond.i.if.then8.i.i_crit_edge ], [ %arrayidx3.1.i.i, %for.cond.i.i.if.then8.i.i_crit_edge ]
  %.lcssa.i.i = phi ptr [ %5, %while.cond.i.if.then8.i.i_crit_edge ], [ %7, %for.cond.i.i.if.then8.i.i_crit_edge ]
  %add.ptr.lcssa.i.i = phi ptr [ %add.ptr.i.i, %while.cond.i.if.then8.i.i_crit_edge ], [ %add.ptr.1.i.i, %for.cond.i.i.if.then8.i.i_crit_edge ]
  %8 = ptrtoint ptr %arrayidx3.lcssa.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %arrayidx3.lcssa.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %9, %arrayidx3.lcssa.i.i
  br i1 %cmp.i.not.i.i.i, label %do.body3.i.i.i, label %do.end6.i.i.i, !prof !170

do.body3.i.i.i:                                   ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 744, 0\0A.popsection", ""() #13, !srcloc !180
  unreachable

do.end6.i.i.i:                                    ; preds = %if.then8.i.i
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.lcssa.i.i) #13
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %do.end6.i.i.i.while.body.i_crit_edge

do.end6.i.i.i.while.body.i_crit_edge:             ; preds = %do.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

if.end.i.i.i.i.i:                                 ; preds = %do.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i.i.i = getelementptr i8, ptr %.lcssa.i.i, i32 4
  %10 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %12 = ptrtoint ptr %.lcssa.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %.lcssa.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.i.i.i.i, %do.end6.i.i.i.while.body.i_crit_edge
  %16 = ptrtoint ptr %.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %.lcssa.i.i, ptr %.lcssa.i.i, align 4
  %prev.i3.i.i.i.i = getelementptr i8, ptr %.lcssa.i.i, i32 4
  %17 = ptrtoint ptr %prev.i3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %.lcssa.i.i, ptr %prev.i3.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [6 x i32], ptr %stats.i.i.i.i, i32 0, i32 %.lcssa29.i.i
  %18 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %19, -1
  store i32 %sub.i.i.i.i, ptr %arrayidx.i.i.i.i, align 4
  %lock.i.i = getelementptr inbounds %struct.zspage, ptr %add.ptr.lcssa.i.i, i32 0, i32 5
  tail call void @_raw_write_lock(ptr noundef %lock.i.i) #13
  %20 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i.i, align 4
  %22 = ptrtoint ptr %arrayidx.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i11.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp.not.i.i = icmp ugt i32 %21, %23
  br i1 %cmp.not.i.i, label %zs_can_compact.exit.i, label %while.body.i.if.then31.i_crit_edge

while.body.i.if.then31.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then31.i

zs_can_compact.exit.i:                            ; preds = %while.body.i
  %sub.i.i = sub i32 %21, %23
  %24 = ptrtoint ptr %objs_per_zspage.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %objs_per_zspage.i.i, align 4
  %div.i.i = udiv i32 %sub.i.i, %25
  %26 = ptrtoint ptr %pages_per_zspage.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pages_per_zspage.i.i, align 4
  %mul.i.i = mul i32 %27, %div.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i)
  %tobool2.not.i = icmp eq i32 %mul.i.i, 0
  br i1 %tobool2.not.i, label %zs_can_compact.exit.i.if.then31.i_crit_edge, label %if.end.i

zs_can_compact.exit.i.if.then31.i_crit_edge:      ; preds = %zs_can_compact.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then31.i

if.end.i:                                         ; preds = %zs_can_compact.exit.i
  %first_page1.i.i = getelementptr inbounds %struct.zspage, ptr %add.ptr.lcssa.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %first_page1.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %first_page1.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp.i.not.i.i.i.i = icmp eq i32 %31, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i, label %is_first_page.exit.i.i, !prof !170

if.then.i.i.i.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %29, ptr noundef nonnull @.str.12) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #13, !srcloc !177
  unreachable

is_first_page.exit.i.i:                           ; preds = %if.end.i
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %29, align 4
  %34 = and i32 %33, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %is_first_page.exit.i.i.while.cond4.i_crit_edge, !prof !170

is_first_page.exit.i.i.while.cond4.i_crit_edge:   ; preds = %is_first_page.exit.i.i
  br label %while.cond4.i

if.then.i.i:                                      ; preds = %is_first_page.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %29, ptr noundef nonnull @.str.11) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 481, 0\0A.popsection", ""() #13, !srcloc !178
  unreachable

while.cond4.i:                                    ; preds = %if.end12.i, %is_first_page.exit.i.i.while.cond4.i_crit_edge
  %cc.sroa.9.0.i = phi i32 [ %index.023.i.i.i, %if.end12.i ], [ 0, %is_first_page.exit.i.i.while.cond4.i_crit_edge ]
  %cc.sroa.0.0.i = phi ptr [ %s_page.0.ph.i.i, %if.end12.i ], [ %29, %is_first_page.exit.i.i.while.cond4.i_crit_edge ]
  %35 = ptrtoint ptr %arrayidx3.1.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %arrayidx3.1.i.i, align 4
  %cmp5.not.i72.i = icmp eq ptr %36, %arrayidx3.1.i.i
  %add.ptr.i73.i = getelementptr i8, ptr %36, i32 -16
  %tobool7.not22.i74.i = icmp eq ptr %add.ptr.i73.i, null
  %tobool7.not.i75.i = or i1 %cmp5.not.i72.i, %tobool7.not22.i74.i
  br i1 %tobool7.not.i75.i, label %for.cond.i81.i, label %while.cond4.i.if.then8.i87.i_crit_edge

while.cond4.i.if.then8.i87.i_crit_edge:           ; preds = %while.cond4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8.i87.i

for.cond.i81.i:                                   ; preds = %while.cond4.i
  %37 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %arrayidx3.i.i, align 4
  %cmp5.not.1.i77.i = icmp eq ptr %38, %arrayidx3.i.i
  %add.ptr.1.i78.i = getelementptr i8, ptr %38, i32 -16
  %tobool7.not22.1.i79.i = icmp eq ptr %add.ptr.1.i78.i, null
  %tobool7.not.1.i80.i = or i1 %cmp5.not.1.i77.i, %tobool7.not22.1.i79.i
  br i1 %tobool7.not.1.i80.i, label %for.cond.i81.i.if.then31.i_crit_edge, label %for.cond.i81.i.if.then8.i87.i_crit_edge

for.cond.i81.i.if.then8.i87.i_crit_edge:          ; preds = %for.cond.i81.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8.i87.i

for.cond.i81.i.if.then31.i_crit_edge:             ; preds = %for.cond.i81.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then31.i

if.then8.i87.i:                                   ; preds = %for.cond.i81.i.if.then8.i87.i_crit_edge, %while.cond4.i.if.then8.i87.i_crit_edge
  %.lcssa29.i82.i = phi i32 [ 2, %while.cond4.i.if.then8.i87.i_crit_edge ], [ 1, %for.cond.i81.i.if.then8.i87.i_crit_edge ]
  %arrayidx3.lcssa.i83.i = phi ptr [ %arrayidx3.1.i.i, %while.cond4.i.if.then8.i87.i_crit_edge ], [ %arrayidx3.i.i, %for.cond.i81.i.if.then8.i87.i_crit_edge ]
  %.lcssa.i84.i = phi ptr [ %36, %while.cond4.i.if.then8.i87.i_crit_edge ], [ %38, %for.cond.i81.i.if.then8.i87.i_crit_edge ]
  %add.ptr.lcssa.i85.i = phi ptr [ %add.ptr.i73.i, %while.cond4.i.if.then8.i87.i_crit_edge ], [ %add.ptr.1.i78.i, %for.cond.i81.i.if.then8.i87.i_crit_edge ]
  %39 = ptrtoint ptr %arrayidx3.lcssa.i83.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %arrayidx3.lcssa.i83.i, align 4
  %cmp.i.not.i.i86.i = icmp eq ptr %40, %arrayidx3.lcssa.i83.i
  br i1 %cmp.i.not.i.i86.i, label %do.body3.i.i88.i, label %do.end6.i.i90.i, !prof !170

do.body3.i.i88.i:                                 ; preds = %if.then8.i87.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 744, 0\0A.popsection", ""() #13, !srcloc !180
  unreachable

do.end6.i.i90.i:                                  ; preds = %if.then8.i87.i
  %call.i.i.i.i89.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.lcssa.i84.i) #13
  br i1 %call.i.i.i.i89.i, label %if.end.i.i.i.i93.i, label %do.end6.i.i90.i.while.body7.i_crit_edge

do.end6.i.i90.i.while.body7.i_crit_edge:          ; preds = %do.end6.i.i90.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body7.i

if.end.i.i.i.i93.i:                               ; preds = %do.end6.i.i90.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i.i91.i = getelementptr i8, ptr %.lcssa.i84.i, i32 4
  %41 = ptrtoint ptr %prev.i.i.i.i91.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i.i.i91.i, align 4
  %43 = ptrtoint ptr %.lcssa.i84.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %.lcssa.i84.i, align 4
  %prev1.i.i.i.i.i92.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i.i.i.i92.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev1.i.i.i.i.i92.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %44, ptr %42, align 4
  br label %while.body7.i

while.body7.i:                                    ; preds = %if.end.i.i.i.i93.i, %do.end6.i.i90.i.while.body7.i_crit_edge
  %47 = ptrtoint ptr %.lcssa.i84.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %.lcssa.i84.i, ptr %.lcssa.i84.i, align 4
  %prev.i3.i.i.i94.i = getelementptr i8, ptr %.lcssa.i84.i, i32 4
  %48 = ptrtoint ptr %prev.i3.i.i.i94.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %.lcssa.i84.i, ptr %prev.i3.i.i.i94.i, align 4
  %arrayidx.i.i.i96.i = getelementptr [6 x i32], ptr %stats.i.i.i.i, i32 0, i32 %.lcssa29.i82.i
  %49 = ptrtoint ptr %arrayidx.i.i.i96.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i.i.i96.i, align 4
  %sub.i.i.i97.i = add i32 %50, -1
  store i32 %sub.i.i.i97.i, ptr %arrayidx.i.i.i96.i, align 4
  %lock.i101.i = getelementptr inbounds %struct.zspage, ptr %add.ptr.lcssa.i85.i, i32 0, i32 5
  tail call void @_raw_write_lock_nested(ptr noundef %lock.i101.i, i32 noundef 1) #13
  %first_page1.i102.i = getelementptr inbounds %struct.zspage, ptr %add.ptr.lcssa.i85.i, i32 0, i32 3
  %51 = ptrtoint ptr %first_page1.i102.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %first_page1.i102.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %54)
  %cmp.i.not.i.i.i103.i = icmp eq i32 %54, -1
  br i1 %cmp.i.not.i.i.i103.i, label %if.then.i.i.i104.i, label %is_first_page.exit.i106.i, !prof !170

if.then.i.i.i104.i:                               ; preds = %while.body7.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %52, ptr noundef nonnull @.str.12) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #13, !srcloc !177
  unreachable

is_first_page.exit.i106.i:                        ; preds = %while.body7.i
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %52, align 4
  %57 = and i32 %56, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i105.i = icmp eq i32 %57, 0
  br i1 %tobool.not.i105.i, label %if.then.i107.i, label %get_first_page.exit108.i, !prof !170

if.then.i107.i:                                   ; preds = %is_first_page.exit.i106.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %52, ptr noundef nonnull @.str.11) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 481, 0\0A.popsection", ""() #13, !srcloc !178
  unreachable

get_first_page.exit108.i:                         ; preds = %is_first_page.exit.i106.i
  %private.i.i.i = getelementptr inbounds %struct.page, ptr %52, i32 0, i32 1, i32 0, i32 3
  br label %while.cond.outer.i.i

while.cond.outer.i.i:                             ; preds = %get_next_page.exit.i.i.while.cond.outer.i.i_crit_edge, %get_first_page.exit108.i
  %obj_idx.0.ph.i.i = phi i32 [ 0, %get_next_page.exit.i.i.while.cond.outer.i.i_crit_edge ], [ %cc.sroa.9.0.i, %get_first_page.exit108.i ]
  %s_page.0.ph.i.i = phi ptr [ %102, %get_next_page.exit.i.i.while.cond.outer.i.i_crit_edge ], [ %cc.sroa.0.0.i, %get_first_page.exit108.i ]
  %58 = getelementptr inbounds %struct.page, ptr %s_page.0.ph.i.i, i32 0, i32 2
  %private.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %s_page.0.ph.i.i, i32 0, i32 1, i32 0, i32 3
  %index.i.i.i.i = getelementptr inbounds %struct.page, ptr %s_page.0.ph.i.i, i32 0, i32 1, i32 0, i32 2
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %zs_object_copy.exit.i.i, %while.cond.outer.i.i
  %obj_idx.0.i.i = phi i32 [ %inc.i.i, %zs_object_copy.exit.i.i ], [ %obj_idx.0.ph.i.i, %while.cond.outer.i.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %59 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i.i.i = or i32 %59, 512
  %60 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i.i.i.i.i.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %63, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !168
  %64 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i1.i.i.i.i.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i1.i.i.i.i.i to ptr
  %task.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %task.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %task.i.i.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %67, i32 0, i32 213
  %68 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pagefault_disabled.i.i.i.i.i.i.i, align 8
  %inc.i.i.i.i.i.i.i = add i32 %69, 1
  store i32 %inc.i.i.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !169
  %call.i.i.i.i109.i = tail call ptr @__kmap_local_page_prot(ptr noundef %s_page.0.ph.i.i, i32 noundef %or.i.i.i.i) #13
  %70 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %58, align 4
  %72 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %size.i.i.i, align 4
  %mul.i.i.i = mul i32 %73, %obj_idx.0.i.i
  %add.i.i.i = add i32 %mul.i.i.i, %71
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i.i)
  %cmp24.i.i.i = icmp ult i32 %add.i.i.i, 4096
  br i1 %cmp24.i.i.i, label %while.body.lr.ph.i.i.i, label %while.cond.i.i.find_alloced_obj.exit.i.i_crit_edge

while.cond.i.i.find_alloced_obj.exit.i.i_crit_edge: ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %find_alloced_obj.exit.i.i

while.body.lr.ph.i.i.i:                           ; preds = %while.cond.i.i
  %74 = ptrtoint ptr %private.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %private.i.i.i.i.i, align 4
  %76 = inttoptr i32 %75 to ptr
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %bf.load.i.i.i.i.i = load i32, ptr %76, align 4
  %78 = and i32 %bf.load.i.i.i.i.i, 130560
  call void @__sanitizer_cov_trace_const_cmp4(i32 45056, i32 %78)
  %cmp.not.i.i.i.i.i = icmp eq i32 %78, 45056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load.i.i.i.i.i)
  %tobool.i.i.i.i.i = icmp slt i32 %bf.load.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %while.body.lr.ph.i.i.i.while.body.i.i.i_crit_edge, label %do.body2.i.i.i.i.i, !prof !164

while.body.lr.ph.i.i.i.while.body.i.i.i_crit_edge: ; preds = %while.body.lr.ph.i.i.i
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %if.end.i.i.i.while.body.i.i.i_crit_edge, %while.body.lr.ph.i.i.i.while.body.i.i.i_crit_edge
  %index.026.i.i.i = phi i32 [ %inc.i.i.i, %if.end.i.i.i.while.body.i.i.i_crit_edge ], [ %obj_idx.0.i.i, %while.body.lr.ph.i.i.i.while.body.i.i.i_crit_edge ]
  %offset.025.i.i.i = phi i32 [ %add4.i.i.i, %if.end.i.i.i.while.body.i.i.i_crit_edge ], [ %add.i.i.i, %while.body.lr.ph.i.i.i.while.body.i.i.i_crit_edge ]
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i.i.i.i109.i, i32 %offset.025.i.i.i
  br i1 %tobool.i.i.i.i.i, label %do.body.i.i.i.i, label %while.body.i.i.i.if.end20.i.i.i.i_crit_edge, !prof !170

while.body.i.i.i.if.end20.i.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20.i.i.i.i

do.body2.i.i.i.i.i:                               ; preds = %while.body.lr.ph.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 817, 0\0A.popsection", ""() #13, !srcloc !166
  unreachable

do.body.i.i.i.i:                                  ; preds = %while.body.i.i.i
  %79 = ptrtoint ptr %s_page.0.ph.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %s_page.0.ph.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %80)
  %cmp.i.not.i.i.i.i.i.i = icmp eq i32 %80, -1
  br i1 %cmp.i.not.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %is_first_page.exit.i.i.i.i, !prof !170

if.then.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %s_page.0.ph.i.i, ptr noundef nonnull @.str.12) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #13, !srcloc !177
  unreachable

is_first_page.exit.i.i.i.i:                       ; preds = %do.body.i.i.i.i
  %81 = ptrtoint ptr %s_page.0.ph.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %s_page.0.ph.i.i, align 4
  %83 = and i32 %82, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool4.not.i.i.i.i = icmp eq i32 %83, 0
  br i1 %tobool4.not.i.i.i.i, label %if.then13.i.i.i.i, label %is_first_page.exit.i.i.i.i.if.end20.i.i.i.i_crit_edge, !prof !170

is_first_page.exit.i.i.i.i.if.end20.i.i.i.i_crit_edge: ; preds = %is_first_page.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20.i.i.i.i

if.then13.i.i.i.i:                                ; preds = %is_first_page.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %s_page.0.ph.i.i, ptr noundef nonnull @.str.20) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 878, 0\0A.popsection", ""() #13, !srcloc !189
  unreachable

if.end20.i.i.i.i:                                 ; preds = %is_first_page.exit.i.i.i.i.if.end20.i.i.i.i_crit_edge, %while.body.i.i.i.if.end20.i.i.i.i_crit_edge
  %handle.0.in.i.i.i.i = phi ptr [ %add.ptr.i.i.i, %while.body.i.i.i.if.end20.i.i.i.i_crit_edge ], [ %index.i.i.i.i, %is_first_page.exit.i.i.i.i.if.end20.i.i.i.i_crit_edge ]
  %84 = ptrtoint ptr %handle.0.in.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %handle.0.i.i.i.i = load i32, ptr %handle.0.in.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %handle.0.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool21.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool21.not.i.i.i.i, label %if.end.i.i.i, label %obj_allocated.exit.thread.i.i.i

obj_allocated.exit.thread.i.i.i:                  ; preds = %if.end20.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %and24.i.i.i.i = and i32 %handle.0.i.i.i.i, -2
  br label %find_alloced_obj.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end20.i.i.i.i
  %add4.i.i.i = add i32 %offset.025.i.i.i, %73
  %inc.i.i.i = add i32 %index.026.i.i.i, 1
  %cmp.i.i.i = icmp ult i32 %add4.i.i.i, 4096
  br i1 %cmp.i.i.i, label %if.end.i.i.i.while.body.i.i.i_crit_edge, label %if.end.i.i.i.find_alloced_obj.exit.i.i_crit_edge

if.end.i.i.i.find_alloced_obj.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %find_alloced_obj.exit.i.i

if.end.i.i.i.while.body.i.i.i_crit_edge:          ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i.i

find_alloced_obj.exit.i.i:                        ; preds = %if.end.i.i.i.find_alloced_obj.exit.i.i_crit_edge, %obj_allocated.exit.thread.i.i.i, %while.cond.i.i.find_alloced_obj.exit.i.i_crit_edge
  %index.023.i.i.i = phi i32 [ %index.026.i.i.i, %obj_allocated.exit.thread.i.i.i ], [ %obj_idx.0.i.i, %while.cond.i.i.find_alloced_obj.exit.i.i_crit_edge ], [ %inc.i.i.i, %if.end.i.i.i.find_alloced_obj.exit.i.i_crit_edge ]
  %handle.2.i.i.i = phi i32 [ %and24.i.i.i.i, %obj_allocated.exit.thread.i.i.i ], [ 0, %while.cond.i.i.find_alloced_obj.exit.i.i_crit_edge ], [ 0, %if.end.i.i.i.find_alloced_obj.exit.i.i_crit_edge ]
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i.i109.i) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !172
  %85 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i1.i.i.i.i = and i32 %85, -16384
  %86 = inttoptr i32 %and.i.i.i1.i.i.i.i to ptr
  %task.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %task.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %task.i.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %88, i32 0, i32 213
  %89 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  %dec.i.i.i.i.i.i = add i32 %90, -1
  store i32 %dec.i.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !173
  %91 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i.i.i.i.i = and i32 %91, -16384
  %92 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %94, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handle.2.i.i.i)
  %tobool.not.i110.i = icmp eq i32 %handle.2.i.i.i, 0
  br i1 %tobool.not.i110.i, label %if.then.i111.i, label %if.end7.i.i

if.then.i111.i:                                   ; preds = %find_alloced_obj.exit.i.i
  %95 = ptrtoint ptr %private.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %private.i.i.i.i.i, align 4
  %97 = inttoptr i32 %96 to ptr
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %bf.load.i.i.i.i = load i32, ptr %97, align 4
  %99 = and i32 %bf.load.i.i.i.i, 130560
  call void @__sanitizer_cov_trace_const_cmp4(i32 45056, i32 %99)
  %cmp.not.i.i.i.i = icmp eq i32 %99, 45056
  br i1 %cmp.not.i.i.i.i, label %get_zspage.exit.i.i.i, label %do.body2.i.i.i.i, !prof !164

do.body2.i.i.i.i:                                 ; preds = %if.then.i111.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 817, 0\0A.popsection", ""() #13, !srcloc !166
  unreachable

get_zspage.exit.i.i.i:                            ; preds = %if.then.i111.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load.i.i.i.i)
  %tobool.i.i.i.i = icmp slt i32 %bf.load.i.i.i.i, 0
  br i1 %tobool.i.i.i.i, label %get_zspage.exit.i.i.i.if.end18.i_crit_edge, label %get_next_page.exit.i.i, !prof !170

get_zspage.exit.i.i.i.if.end18.i_crit_edge:       ; preds = %get_zspage.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18.i

get_next_page.exit.i.i:                           ; preds = %get_zspage.exit.i.i.i
  %100 = ptrtoint ptr %index.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %index.i.i.i.i, align 4
  %102 = inttoptr i32 %101 to ptr
  %tobool5.not.i.i = icmp eq i32 %101, 0
  br i1 %tobool5.not.i.i, label %get_next_page.exit.i.i.if.end18.i_crit_edge, label %get_next_page.exit.i.i.while.cond.outer.i.i_crit_edge

get_next_page.exit.i.i.while.cond.outer.i.i_crit_edge: ; preds = %get_next_page.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.outer.i.i

get_next_page.exit.i.i.if.end18.i_crit_edge:      ; preds = %get_next_page.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18.i

if.end7.i.i:                                      ; preds = %find_alloced_obj.exit.i.i
  %103 = ptrtoint ptr %private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %private.i.i.i, align 4
  %105 = inttoptr i32 %104 to ptr
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %bf.load.i.i.i = load i32, ptr %105, align 4
  %107 = and i32 %bf.load.i.i.i, 130560
  call void @__sanitizer_cov_trace_const_cmp4(i32 45056, i32 %107)
  %cmp.not.i.i.i = icmp eq i32 %107, 45056
  br i1 %cmp.not.i.i.i, label %get_zspage.exit.i.i, label %do.body2.i.i.i, !prof !164

do.body2.i.i.i:                                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 817, 0\0A.popsection", ""() #13, !srcloc !166
  unreachable

get_zspage.exit.i.i:                              ; preds = %if.end7.i.i
  %inuse.i.i.i.i = getelementptr inbounds %struct.zspage, ptr %105, i32 0, i32 1
  %108 = ptrtoint ptr %inuse.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %inuse.i.i.i.i, align 4
  %110 = ptrtoint ptr %objs_per_zspage.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %objs_per_zspage.i.i, align 4
  %cmp.i34.i.i = icmp eq i32 %109, %111
  br i1 %cmp.i34.i.i, label %if.end12.i, label %get_zspage.exit39.i.i

get_zspage.exit39.i.i:                            ; preds = %get_zspage.exit.i.i
  %112 = inttoptr i32 %handle.2.i.i.i to ptr
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %112, align 4
  %call14.i.i = tail call fastcc i32 @obj_malloc(ptr noundef %pool, ptr noundef %105, i32 noundef %handle.2.i.i.i) #13, !range !190
  %115 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %size.i.i.i, align 4
  %shr.i.i.i.i = lshr i32 %114, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %117 = load ptr, ptr @mem_map, align 4
  %shr1.i.i.i.i = lshr i32 %114, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %118 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i.i.i112.i = sub i32 %shr1.i.i.i.i, %118
  %add.ptr.i.i.i.i = getelementptr %struct.page, ptr %117, i32 %sub.i.i.i112.i
  %and.i.i40.i.i = and i32 %shr.i.i.i.i, 2047
  %shr.i99.i.i.i = lshr i32 %call14.i.i, 1
  %shr1.i100.i.i.i = lshr i32 %call14.i.i, 12
  %sub.i101.i.i.i = sub i32 %shr1.i100.i.i.i, %118
  %add.ptr.i102.i.i.i = getelementptr %struct.page, ptr %117, i32 %sub.i101.i.i.i
  %and.i103.i.i.i = and i32 %shr.i99.i.i.i, 2047
  %mul.i41.i.i = mul i32 %116, %and.i.i40.i.i
  %and.i.i.i = and i32 %mul.i41.i.i, 4095
  %mul4.i.i.i = mul i32 %and.i103.i.i.i, %116
  %and5.i.i.i = and i32 %mul4.i.i.i, 4095
  %add.i42.i.i = add i32 %and.i.i.i, %116
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i42.i.i)
  %cmp.i43.i.i = icmp ugt i32 %add.i42.i.i, 4096
  %sub.i.i.i = sub nuw nsw i32 4096, %and.i.i.i
  %spec.select.i.i.i = select i1 %cmp.i43.i.i, i32 %sub.i.i.i, i32 %116
  %add8.i.i.i = add i32 %and5.i.i.i, %116
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add8.i.i.i)
  %cmp9.i.i.i = icmp ugt i32 %add8.i.i.i, 4096
  %sub11.i.i.i = sub nuw nsw i32 4096, %and5.i.i.i
  %d_size.0.i.i.i = select i1 %cmp9.i.i.i, i32 %sub11.i.i.i, i32 %116
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %119 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i44.i.i = or i32 %119, 512
  %120 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i.i.i.i45.i.i = and i32 %120, -16384
  %121 = inttoptr i32 %and.i.i.i.i.i.i45.i.i to ptr
  %preempt_count.i.i.i.i.i46.i.i = getelementptr inbounds %struct.thread_info, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %preempt_count.i.i.i.i.i46.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %preempt_count.i.i.i.i.i46.i.i, align 4
  %add.i.i.i.i47.i.i = add i32 %123, 1
  store volatile i32 %add.i.i.i.i47.i.i, ptr %preempt_count.i.i.i.i.i46.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !168
  %124 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i1.i.i.i48.i.i = and i32 %124, -16384
  %125 = inttoptr i32 %and.i.i.i1.i.i.i48.i.i to ptr
  %task.i.i.i.i.i49.i.i = getelementptr inbounds %struct.thread_info, ptr %125, i32 0, i32 2
  %126 = ptrtoint ptr %task.i.i.i.i.i49.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %task.i.i.i.i.i49.i.i, align 8
  %pagefault_disabled.i.i.i.i.i50.i.i = getelementptr inbounds %struct.task_struct, ptr %127, i32 0, i32 213
  %128 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i50.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %pagefault_disabled.i.i.i.i.i50.i.i, align 8
  %inc.i.i.i.i.i51.i.i = add i32 %129, 1
  store i32 %inc.i.i.i.i.i51.i.i, ptr %pagefault_disabled.i.i.i.i.i50.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !169
  %call.i.i.i52.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr.i.i.i.i, i32 noundef %or.i.i44.i.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %130 = load i32, ptr @pgprot_kernel, align 4
  %or.i104.i.i.i = or i32 %130, 512
  %131 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i.i.i105.i.i.i = and i32 %131, -16384
  %132 = inttoptr i32 %and.i.i.i.i.i105.i.i.i to ptr
  %preempt_count.i.i.i.i106.i.i.i = getelementptr inbounds %struct.thread_info, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %preempt_count.i.i.i.i106.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile i32, ptr %preempt_count.i.i.i.i106.i.i.i, align 4
  %add.i.i.i107.i.i.i = add i32 %134, 1
  store volatile i32 %add.i.i.i107.i.i.i, ptr %preempt_count.i.i.i.i106.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !168
  %135 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i1.i.i108.i.i.i = and i32 %135, -16384
  %136 = inttoptr i32 %and.i.i.i1.i.i108.i.i.i to ptr
  %task.i.i.i.i109.i.i.i = getelementptr inbounds %struct.thread_info, ptr %136, i32 0, i32 2
  %137 = ptrtoint ptr %task.i.i.i.i109.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %task.i.i.i.i109.i.i.i, align 8
  %pagefault_disabled.i.i.i.i110.i.i.i = getelementptr inbounds %struct.task_struct, ptr %138, i32 0, i32 213
  %139 = ptrtoint ptr %pagefault_disabled.i.i.i.i110.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %pagefault_disabled.i.i.i.i110.i.i.i, align 8
  %inc.i.i.i.i111.i.i.i = add i32 %140, 1
  store i32 %inc.i.i.i.i111.i.i.i, ptr %pagefault_disabled.i.i.i.i110.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !169
  %call.i.i112.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr.i102.i.i.i, i32 noundef %or.i104.i.i.i) #13
  %141 = tail call i32 @llvm.smin.i32(i32 %spec.select.i.i.i, i32 %d_size.0.i.i.i) #13
  %add.ptr185.i.i.i = getelementptr i8, ptr %call.i.i112.i.i.i, i32 %and5.i.i.i
  %add.ptr15186.i.i.i = getelementptr i8, ptr %call.i.i.i52.i.i, i32 %and.i.i.i
  %142 = call ptr @memcpy(ptr %add.ptr185.i.i.i, ptr %add.ptr15186.i.i.i, i32 %141)
  %143 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %size.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %141, i32 %144)
  %cmp18187.i.i.i = icmp eq i32 %141, %144
  br i1 %cmp18187.i.i.i, label %get_zspage.exit39.i.i.zs_object_copy.exit.i.i_crit_edge, label %get_zspage.exit39.i.i.if.end20.i.i.i_crit_edge

get_zspage.exit39.i.i.if.end20.i.i.i_crit_edge:   ; preds = %get_zspage.exit39.i.i
  br label %if.end20.i.i.i

get_zspage.exit39.i.i.zs_object_copy.exit.i.i_crit_edge: ; preds = %get_zspage.exit39.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %zs_object_copy.exit.i.i

if.end20.i.i.i:                                   ; preds = %if.end54.i.i.i.if.end20.i.i.i_crit_edge, %get_zspage.exit39.i.i.if.end20.i.i.i_crit_edge
  %add16196.i.i.i = phi i32 [ %add16.i.i.i, %if.end54.i.i.i.if.end20.i.i.i_crit_edge ], [ %141, %get_zspage.exit39.i.i.if.end20.i.i.i_crit_edge ]
  %145 = phi i32 [ %229, %if.end54.i.i.i.if.end20.i.i.i_crit_edge ], [ %141, %get_zspage.exit39.i.i.if.end20.i.i.i_crit_edge ]
  %s_off.0195.i.i.i = phi i32 [ %s_off.1.i.i.i, %if.end54.i.i.i.if.end20.i.i.i_crit_edge ], [ %and.i.i.i, %get_zspage.exit39.i.i.if.end20.i.i.i_crit_edge ]
  %d_size.1194.i.i.i = phi i32 [ %d_size.2.i.i.i, %if.end54.i.i.i.if.end20.i.i.i_crit_edge ], [ %d_size.0.i.i.i, %get_zspage.exit39.i.i.if.end20.i.i.i_crit_edge ]
  %s_size.1193.i.i.i = phi i32 [ %s_size.2.i.i.i, %if.end54.i.i.i.if.end20.i.i.i_crit_edge ], [ %spec.select.i.i.i, %get_zspage.exit39.i.i.if.end20.i.i.i_crit_edge ]
  %d_addr.0192.i.i.i = phi ptr [ %d_addr.2.i.i.i, %if.end54.i.i.i.if.end20.i.i.i_crit_edge ], [ %call.i.i112.i.i.i, %get_zspage.exit39.i.i.if.end20.i.i.i_crit_edge ]
  %s_addr.0191.i.i.i = phi ptr [ %s_addr.1.i.i.i, %if.end54.i.i.i.if.end20.i.i.i_crit_edge ], [ %call.i.i.i52.i.i, %get_zspage.exit39.i.i.if.end20.i.i.i_crit_edge ]
  %d_off.0190.i.i.i = phi i32 [ %d_off.1.i.i.i, %if.end54.i.i.i.if.end20.i.i.i_crit_edge ], [ %and5.i.i.i, %get_zspage.exit39.i.i.if.end20.i.i.i_crit_edge ]
  %s_page.0189.i.i.i = phi ptr [ %s_page.1.i.i.i, %if.end54.i.i.i.if.end20.i.i.i_crit_edge ], [ %add.ptr.i.i.i.i, %get_zspage.exit39.i.i.if.end20.i.i.i_crit_edge ]
  %d_page.0188.i.i.i = phi ptr [ %d_page.1.i.i.i, %if.end54.i.i.i.if.end20.i.i.i_crit_edge ], [ %add.ptr.i102.i.i.i, %get_zspage.exit39.i.i.if.end20.i.i.i_crit_edge ]
  %add21.i.i.i = add i32 %s_off.0195.i.i.i, %145
  %sub22.i.i.i = sub i32 %s_size.1193.i.i.i, %145
  %add23.i.i.i = add i32 %d_off.0190.i.i.i, %145
  %sub24.i.i.i = sub i32 %d_size.1194.i.i.i, %145
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add21.i.i.i)
  %cmp25.i.i.i = icmp ugt i32 %add21.i.i.i, 4095
  br i1 %cmp25.i.i.i, label %do.end.i.i.i, label %if.end20.i.i.i.if.end41.i.i.i_crit_edge

if.end20.i.i.i.if.end41.i.i.i_crit_edge:          ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41.i.i.i

do.end.i.i.i:                                     ; preds = %if.end20.i.i.i
  tail call void @kunmap_local_indexed(ptr noundef %d_addr.0192.i.i.i) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !172
  %146 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i1.i.i53.i.i = and i32 %146, -16384
  %147 = inttoptr i32 %and.i.i.i1.i.i53.i.i to ptr
  %task.i.i.i.i54.i.i = getelementptr inbounds %struct.thread_info, ptr %147, i32 0, i32 2
  %148 = ptrtoint ptr %task.i.i.i.i54.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %task.i.i.i.i54.i.i, align 8
  %pagefault_disabled.i.i.i.i55.i.i = getelementptr inbounds %struct.task_struct, ptr %149, i32 0, i32 213
  %150 = ptrtoint ptr %pagefault_disabled.i.i.i.i55.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %pagefault_disabled.i.i.i.i55.i.i, align 8
  %dec.i.i.i.i56.i.i = add i32 %151, -1
  store i32 %dec.i.i.i.i56.i.i, ptr %pagefault_disabled.i.i.i.i55.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !173
  %152 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i.i.i57.i.i = and i32 %152, -16384
  %153 = inttoptr i32 %and.i.i.i.i.i57.i.i to ptr
  %preempt_count.i.i.i.i58.i.i = getelementptr inbounds %struct.thread_info, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %preempt_count.i.i.i.i58.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load volatile i32, ptr %preempt_count.i.i.i.i58.i.i, align 4
  %sub.i.i.i59.i.i = add i32 %155, -1
  store volatile i32 %sub.i.i.i59.i.i, ptr %preempt_count.i.i.i.i58.i.i, align 4
  tail call void @kunmap_local_indexed(ptr noundef %s_addr.0191.i.i.i) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !172
  %156 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i1.i113.i.i.i = and i32 %156, -16384
  %157 = inttoptr i32 %and.i.i.i1.i113.i.i.i to ptr
  %task.i.i.i114.i.i.i = getelementptr inbounds %struct.thread_info, ptr %157, i32 0, i32 2
  %158 = ptrtoint ptr %task.i.i.i114.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %task.i.i.i114.i.i.i, align 8
  %pagefault_disabled.i.i.i115.i.i.i = getelementptr inbounds %struct.task_struct, ptr %159, i32 0, i32 213
  %160 = ptrtoint ptr %pagefault_disabled.i.i.i115.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %pagefault_disabled.i.i.i115.i.i.i, align 8
  %dec.i.i.i116.i.i.i = add i32 %161, -1
  store i32 %dec.i.i.i116.i.i.i, ptr %pagefault_disabled.i.i.i115.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !173
  %162 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i.i117.i.i.i = and i32 %162, -16384
  %163 = inttoptr i32 %and.i.i.i.i117.i.i.i to ptr
  %preempt_count.i.i.i118.i.i.i = getelementptr inbounds %struct.thread_info, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %preempt_count.i.i.i118.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load volatile i32, ptr %preempt_count.i.i.i118.i.i.i, align 4
  %sub.i.i119.i.i.i = add i32 %165, -1
  store volatile i32 %sub.i.i119.i.i.i, ptr %preempt_count.i.i.i118.i.i.i, align 4
  %private.i.i.i60.i.i = getelementptr inbounds %struct.page, ptr %s_page.0189.i.i.i, i32 0, i32 1, i32 0, i32 3
  %166 = ptrtoint ptr %private.i.i.i60.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %private.i.i.i60.i.i, align 4
  %168 = inttoptr i32 %167 to ptr
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %169)
  %bf.load.i.i.i61.i.i = load i32, ptr %168, align 4
  %170 = and i32 %bf.load.i.i.i61.i.i, 130560
  call void @__sanitizer_cov_trace_const_cmp4(i32 45056, i32 %170)
  %cmp.not.i.i.i62.i.i = icmp eq i32 %170, 45056
  br i1 %cmp.not.i.i.i62.i.i, label %get_zspage.exit.i.i.i.i, label %do.body2.i.i.i63.i.i, !prof !164

do.body2.i.i.i63.i.i:                             ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 817, 0\0A.popsection", ""() #13, !srcloc !166
  unreachable

get_zspage.exit.i.i.i.i:                          ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load.i.i.i61.i.i)
  %tobool.i.i.i64.i.i = icmp slt i32 %bf.load.i.i.i61.i.i, 0
  br i1 %tobool.i.i.i64.i.i, label %get_zspage.exit.i.i.i.i.get_next_page.exit.i.i.i_crit_edge, label %if.end.i.i.i.i, !prof !170

get_zspage.exit.i.i.i.i.get_next_page.exit.i.i.i_crit_edge: ; preds = %get_zspage.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_next_page.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %get_zspage.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %index.i.i65.i.i = getelementptr inbounds %struct.page, ptr %s_page.0189.i.i.i, i32 0, i32 1, i32 0, i32 2
  %171 = ptrtoint ptr %index.i.i65.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %index.i.i65.i.i, align 4
  %173 = inttoptr i32 %172 to ptr
  br label %get_next_page.exit.i.i.i

get_next_page.exit.i.i.i:                         ; preds = %if.end.i.i.i.i, %get_zspage.exit.i.i.i.i.get_next_page.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %173, %if.end.i.i.i.i ], [ null, %get_zspage.exit.i.i.i.i.get_next_page.exit.i.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %174 = load i32, ptr @pgprot_kernel, align 4
  %or.i120.i.i.i = or i32 %174, 512
  %175 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i.i.i121.i.i.i = and i32 %175, -16384
  %176 = inttoptr i32 %and.i.i.i.i.i121.i.i.i to ptr
  %preempt_count.i.i.i.i122.i.i.i = getelementptr inbounds %struct.thread_info, ptr %176, i32 0, i32 1
  %177 = ptrtoint ptr %preempt_count.i.i.i.i122.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load volatile i32, ptr %preempt_count.i.i.i.i122.i.i.i, align 4
  %add.i.i.i123.i.i.i = add i32 %178, 1
  store volatile i32 %add.i.i.i123.i.i.i, ptr %preempt_count.i.i.i.i122.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !168
  %179 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i1.i.i124.i.i.i = and i32 %179, -16384
  %180 = inttoptr i32 %and.i.i.i1.i.i124.i.i.i to ptr
  %task.i.i.i.i125.i.i.i = getelementptr inbounds %struct.thread_info, ptr %180, i32 0, i32 2
  %181 = ptrtoint ptr %task.i.i.i.i125.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %task.i.i.i.i125.i.i.i, align 8
  %pagefault_disabled.i.i.i.i126.i.i.i = getelementptr inbounds %struct.task_struct, ptr %182, i32 0, i32 213
  %183 = ptrtoint ptr %pagefault_disabled.i.i.i.i126.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %pagefault_disabled.i.i.i.i126.i.i.i, align 8
  %inc.i.i.i.i127.i.i.i = add i32 %184, 1
  store i32 %inc.i.i.i.i127.i.i.i, ptr %pagefault_disabled.i.i.i.i126.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !169
  %call.i.i128.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %retval.0.i.i.i.i, i32 noundef %or.i120.i.i.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %185 = load i32, ptr @pgprot_kernel, align 4
  %or.i129.i.i.i = or i32 %185, 512
  %186 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i.i.i130.i.i.i = and i32 %186, -16384
  %187 = inttoptr i32 %and.i.i.i.i.i130.i.i.i to ptr
  %preempt_count.i.i.i.i131.i.i.i = getelementptr inbounds %struct.thread_info, ptr %187, i32 0, i32 1
  %188 = ptrtoint ptr %preempt_count.i.i.i.i131.i.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load volatile i32, ptr %preempt_count.i.i.i.i131.i.i.i, align 4
  %add.i.i.i132.i.i.i = add i32 %189, 1
  store volatile i32 %add.i.i.i132.i.i.i, ptr %preempt_count.i.i.i.i131.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !168
  %190 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i1.i.i133.i.i.i = and i32 %190, -16384
  %191 = inttoptr i32 %and.i.i.i1.i.i133.i.i.i to ptr
  %task.i.i.i.i134.i.i.i = getelementptr inbounds %struct.thread_info, ptr %191, i32 0, i32 2
  %192 = ptrtoint ptr %task.i.i.i.i134.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %task.i.i.i.i134.i.i.i, align 8
  %pagefault_disabled.i.i.i.i135.i.i.i = getelementptr inbounds %struct.task_struct, ptr %193, i32 0, i32 213
  %194 = ptrtoint ptr %pagefault_disabled.i.i.i.i135.i.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %pagefault_disabled.i.i.i.i135.i.i.i, align 8
  %inc.i.i.i.i136.i.i.i = add i32 %195, 1
  store i32 %inc.i.i.i.i136.i.i.i, ptr %pagefault_disabled.i.i.i.i135.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !169
  %call.i.i137.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %d_page.0188.i.i.i, i32 noundef %or.i129.i.i.i) #13
  %196 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %size.i.i.i, align 4
  %sub40.i.i.i = sub i32 %197, %add16196.i.i.i
  br label %if.end41.i.i.i

if.end41.i.i.i:                                   ; preds = %get_next_page.exit.i.i.i, %if.end20.i.i.i.if.end41.i.i.i_crit_edge
  %s_page.1.i.i.i = phi ptr [ %retval.0.i.i.i.i, %get_next_page.exit.i.i.i ], [ %s_page.0189.i.i.i, %if.end20.i.i.i.if.end41.i.i.i_crit_edge ]
  %s_addr.1.i.i.i = phi ptr [ %call.i.i128.i.i.i, %get_next_page.exit.i.i.i ], [ %s_addr.0191.i.i.i, %if.end20.i.i.i.if.end41.i.i.i_crit_edge ]
  %d_addr.1.i.i.i = phi ptr [ %call.i.i137.i.i.i, %get_next_page.exit.i.i.i ], [ %d_addr.0192.i.i.i, %if.end20.i.i.i.if.end41.i.i.i_crit_edge ]
  %s_size.2.i.i.i = phi i32 [ %sub40.i.i.i, %get_next_page.exit.i.i.i ], [ %sub22.i.i.i, %if.end20.i.i.i.if.end41.i.i.i_crit_edge ]
  %s_off.1.i.i.i = phi i32 [ 0, %get_next_page.exit.i.i.i ], [ %add21.i.i.i, %if.end20.i.i.i.if.end41.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add23.i.i.i)
  %cmp42.i.i.i = icmp ugt i32 %add23.i.i.i, 4095
  br i1 %cmp42.i.i.i, label %do.end47.i.i.i, label %if.end41.i.i.i.if.end54.i.i.i_crit_edge

if.end41.i.i.i.if.end54.i.i.i_crit_edge:          ; preds = %if.end41.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54.i.i.i

do.end47.i.i.i:                                   ; preds = %if.end41.i.i.i
  tail call void @kunmap_local_indexed(ptr noundef %d_addr.1.i.i.i) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !172
  %198 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i1.i138.i.i.i = and i32 %198, -16384
  %199 = inttoptr i32 %and.i.i.i1.i138.i.i.i to ptr
  %task.i.i.i139.i.i.i = getelementptr inbounds %struct.thread_info, ptr %199, i32 0, i32 2
  %200 = ptrtoint ptr %task.i.i.i139.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %task.i.i.i139.i.i.i, align 8
  %pagefault_disabled.i.i.i140.i.i.i = getelementptr inbounds %struct.task_struct, ptr %201, i32 0, i32 213
  %202 = ptrtoint ptr %pagefault_disabled.i.i.i140.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %pagefault_disabled.i.i.i140.i.i.i, align 8
  %dec.i.i.i141.i.i.i = add i32 %203, -1
  store i32 %dec.i.i.i141.i.i.i, ptr %pagefault_disabled.i.i.i140.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !173
  %204 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i.i142.i.i.i = and i32 %204, -16384
  %205 = inttoptr i32 %and.i.i.i.i142.i.i.i to ptr
  %preempt_count.i.i.i143.i.i.i = getelementptr inbounds %struct.thread_info, ptr %205, i32 0, i32 1
  %206 = ptrtoint ptr %preempt_count.i.i.i143.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load volatile i32, ptr %preempt_count.i.i.i143.i.i.i, align 4
  %sub.i.i144.i.i.i = add i32 %207, -1
  store volatile i32 %sub.i.i144.i.i.i, ptr %preempt_count.i.i.i143.i.i.i, align 4
  %private.i.i145.i.i.i = getelementptr inbounds %struct.page, ptr %d_page.0188.i.i.i, i32 0, i32 1, i32 0, i32 3
  %208 = ptrtoint ptr %private.i.i145.i.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %private.i.i145.i.i.i, align 4
  %210 = inttoptr i32 %209 to ptr
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_load4_noabort(i32 %211)
  %bf.load.i.i146.i.i.i = load i32, ptr %210, align 4
  %212 = and i32 %bf.load.i.i146.i.i.i, 130560
  call void @__sanitizer_cov_trace_const_cmp4(i32 45056, i32 %212)
  %cmp.not.i.i147.i.i.i = icmp eq i32 %212, 45056
  br i1 %cmp.not.i.i147.i.i.i, label %get_zspage.exit.i150.i.i.i, label %do.body2.i.i148.i.i.i, !prof !164

do.body2.i.i148.i.i.i:                            ; preds = %do.end47.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 817, 0\0A.popsection", ""() #13, !srcloc !166
  unreachable

get_zspage.exit.i150.i.i.i:                       ; preds = %do.end47.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load.i.i146.i.i.i)
  %tobool.i.i149.i.i.i = icmp slt i32 %bf.load.i.i146.i.i.i, 0
  br i1 %tobool.i.i149.i.i.i, label %get_zspage.exit.i150.i.i.i.get_next_page.exit154.i.i.i_crit_edge, label %if.end.i152.i.i.i, !prof !170

get_zspage.exit.i150.i.i.i.get_next_page.exit154.i.i.i_crit_edge: ; preds = %get_zspage.exit.i150.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_next_page.exit154.i.i.i

if.end.i152.i.i.i:                                ; preds = %get_zspage.exit.i150.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %index.i151.i.i.i = getelementptr inbounds %struct.page, ptr %d_page.0188.i.i.i, i32 0, i32 1, i32 0, i32 2
  %213 = ptrtoint ptr %index.i151.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %index.i151.i.i.i, align 4
  %215 = inttoptr i32 %214 to ptr
  br label %get_next_page.exit154.i.i.i

get_next_page.exit154.i.i.i:                      ; preds = %if.end.i152.i.i.i, %get_zspage.exit.i150.i.i.i.get_next_page.exit154.i.i.i_crit_edge
  %retval.0.i153.i.i.i = phi ptr [ %215, %if.end.i152.i.i.i ], [ null, %get_zspage.exit.i150.i.i.i.get_next_page.exit154.i.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %216 = load i32, ptr @pgprot_kernel, align 4
  %or.i155.i.i.i = or i32 %216, 512
  %217 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i.i.i156.i.i.i = and i32 %217, -16384
  %218 = inttoptr i32 %and.i.i.i.i.i156.i.i.i to ptr
  %preempt_count.i.i.i.i157.i.i.i = getelementptr inbounds %struct.thread_info, ptr %218, i32 0, i32 1
  %219 = ptrtoint ptr %preempt_count.i.i.i.i157.i.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load volatile i32, ptr %preempt_count.i.i.i.i157.i.i.i, align 4
  %add.i.i.i158.i.i.i = add i32 %220, 1
  store volatile i32 %add.i.i.i158.i.i.i, ptr %preempt_count.i.i.i.i157.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !168
  %221 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i1.i.i159.i.i.i = and i32 %221, -16384
  %222 = inttoptr i32 %and.i.i.i1.i.i159.i.i.i to ptr
  %task.i.i.i.i160.i.i.i = getelementptr inbounds %struct.thread_info, ptr %222, i32 0, i32 2
  %223 = ptrtoint ptr %task.i.i.i.i160.i.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %task.i.i.i.i160.i.i.i, align 8
  %pagefault_disabled.i.i.i.i161.i.i.i = getelementptr inbounds %struct.task_struct, ptr %224, i32 0, i32 213
  %225 = ptrtoint ptr %pagefault_disabled.i.i.i.i161.i.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %pagefault_disabled.i.i.i.i161.i.i.i, align 8
  %inc.i.i.i.i162.i.i.i = add i32 %226, 1
  store i32 %inc.i.i.i.i162.i.i.i, ptr %pagefault_disabled.i.i.i.i161.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !169
  %call.i.i163.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %retval.0.i153.i.i.i, i32 noundef %or.i155.i.i.i) #13
  %227 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %size.i.i.i, align 4
  %sub53.i.i.i = sub i32 %228, %add16196.i.i.i
  br label %if.end54.i.i.i

if.end54.i.i.i:                                   ; preds = %get_next_page.exit154.i.i.i, %if.end41.i.i.i.if.end54.i.i.i_crit_edge
  %d_page.1.i.i.i = phi ptr [ %retval.0.i153.i.i.i, %get_next_page.exit154.i.i.i ], [ %d_page.0188.i.i.i, %if.end41.i.i.i.if.end54.i.i.i_crit_edge ]
  %d_off.1.i.i.i = phi i32 [ 0, %get_next_page.exit154.i.i.i ], [ %add23.i.i.i, %if.end41.i.i.i.if.end54.i.i.i_crit_edge ]
  %d_addr.2.i.i.i = phi ptr [ %call.i.i163.i.i.i, %get_next_page.exit154.i.i.i ], [ %d_addr.1.i.i.i, %if.end41.i.i.i.if.end54.i.i.i_crit_edge ]
  %d_size.2.i.i.i = phi i32 [ %sub53.i.i.i, %get_next_page.exit154.i.i.i ], [ %sub24.i.i.i, %if.end41.i.i.i.if.end54.i.i.i_crit_edge ]
  %229 = tail call i32 @llvm.smin.i32(i32 %s_size.2.i.i.i, i32 %d_size.2.i.i.i) #13
  %add.ptr.i66.i.i = getelementptr i8, ptr %d_addr.2.i.i.i, i32 %d_off.1.i.i.i
  %add.ptr15.i.i.i = getelementptr i8, ptr %s_addr.1.i.i.i, i32 %s_off.1.i.i.i
  %230 = call ptr @memcpy(ptr %add.ptr.i66.i.i, ptr %add.ptr15.i.i.i, i32 %229)
  %add16.i.i.i = add i32 %229, %add16196.i.i.i
  %231 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %size.i.i.i, align 4
  %cmp18.i.i.i = icmp eq i32 %add16.i.i.i, %232
  br i1 %cmp18.i.i.i, label %if.end54.i.i.i.zs_object_copy.exit.i.i_crit_edge, label %if.end54.i.i.i.if.end20.i.i.i_crit_edge

if.end54.i.i.i.if.end20.i.i.i_crit_edge:          ; preds = %if.end54.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20.i.i.i

if.end54.i.i.i.zs_object_copy.exit.i.i_crit_edge: ; preds = %if.end54.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %zs_object_copy.exit.i.i

zs_object_copy.exit.i.i:                          ; preds = %if.end54.i.i.i.zs_object_copy.exit.i.i_crit_edge, %get_zspage.exit39.i.i.zs_object_copy.exit.i.i_crit_edge
  %s_addr.0.lcssa.i.i.i = phi ptr [ %call.i.i.i52.i.i, %get_zspage.exit39.i.i.zs_object_copy.exit.i.i_crit_edge ], [ %s_addr.1.i.i.i, %if.end54.i.i.i.zs_object_copy.exit.i.i_crit_edge ]
  %d_addr.0.lcssa.i.i.i = phi ptr [ %call.i.i112.i.i.i, %get_zspage.exit39.i.i.zs_object_copy.exit.i.i_crit_edge ], [ %d_addr.2.i.i.i, %if.end54.i.i.i.zs_object_copy.exit.i.i_crit_edge ]
  tail call void @kunmap_local_indexed(ptr noundef %d_addr.0.lcssa.i.i.i) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !172
  %233 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i1.i164.i.i.i = and i32 %233, -16384
  %234 = inttoptr i32 %and.i.i.i1.i164.i.i.i to ptr
  %task.i.i.i165.i.i.i = getelementptr inbounds %struct.thread_info, ptr %234, i32 0, i32 2
  %235 = ptrtoint ptr %task.i.i.i165.i.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %task.i.i.i165.i.i.i, align 8
  %pagefault_disabled.i.i.i166.i.i.i = getelementptr inbounds %struct.task_struct, ptr %236, i32 0, i32 213
  %237 = ptrtoint ptr %pagefault_disabled.i.i.i166.i.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %pagefault_disabled.i.i.i166.i.i.i, align 8
  %dec.i.i.i167.i.i.i = add i32 %238, -1
  store i32 %dec.i.i.i167.i.i.i, ptr %pagefault_disabled.i.i.i166.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !173
  %239 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i.i168.i.i.i = and i32 %239, -16384
  %240 = inttoptr i32 %and.i.i.i.i168.i.i.i to ptr
  %preempt_count.i.i.i169.i.i.i = getelementptr inbounds %struct.thread_info, ptr %240, i32 0, i32 1
  %241 = ptrtoint ptr %preempt_count.i.i.i169.i.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load volatile i32, ptr %preempt_count.i.i.i169.i.i.i, align 4
  %sub.i.i170.i.i.i = add i32 %242, -1
  store volatile i32 %sub.i.i170.i.i.i, ptr %preempt_count.i.i.i169.i.i.i, align 4
  tail call void @kunmap_local_indexed(ptr noundef %s_addr.0.lcssa.i.i.i) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !172
  %243 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i1.i171.i.i.i = and i32 %243, -16384
  %244 = inttoptr i32 %and.i.i.i1.i171.i.i.i to ptr
  %task.i.i.i172.i.i.i = getelementptr inbounds %struct.thread_info, ptr %244, i32 0, i32 2
  %245 = ptrtoint ptr %task.i.i.i172.i.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %task.i.i.i172.i.i.i, align 8
  %pagefault_disabled.i.i.i173.i.i.i = getelementptr inbounds %struct.task_struct, ptr %246, i32 0, i32 213
  %247 = ptrtoint ptr %pagefault_disabled.i.i.i173.i.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %pagefault_disabled.i.i.i173.i.i.i, align 8
  %dec.i.i.i174.i.i.i = add i32 %248, -1
  store i32 %dec.i.i.i174.i.i.i, ptr %pagefault_disabled.i.i.i173.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !173
  %249 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i.i175.i.i.i = and i32 %249, -16384
  %250 = inttoptr i32 %and.i.i.i.i175.i.i.i to ptr
  %preempt_count.i.i.i176.i.i.i = getelementptr inbounds %struct.thread_info, ptr %250, i32 0, i32 1
  %251 = ptrtoint ptr %preempt_count.i.i.i176.i.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load volatile i32, ptr %preempt_count.i.i.i176.i.i.i, align 4
  %sub.i.i177.i.i.i = add i32 %252, -1
  store volatile i32 %sub.i.i177.i.i.i, ptr %preempt_count.i.i.i176.i.i.i, align 4
  %inc.i.i = add i32 %index.023.i.i.i, 1
  %253 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 %call14.i.i, ptr %112, align 4
  %254 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %size.i.i.i, align 4
  tail call fastcc void @obj_free(i32 noundef %255, i32 noundef %114) #13
  br label %while.cond.i.i

if.end12.i:                                       ; preds = %get_zspage.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call13.i = tail call fastcc i32 @putback_zspage(ptr noundef nonnull %1, ptr noundef nonnull %add.ptr.lcssa.i85.i) #13
  tail call void @_raw_write_unlock(ptr noundef %lock.i101.i) #13
  br label %while.cond4.i

if.end18.i:                                       ; preds = %get_next_page.exit.i.i.if.end18.i_crit_edge, %get_zspage.exit.i.i.i.if.end18.i_crit_edge
  %call19.i = tail call fastcc i32 @putback_zspage(ptr noundef nonnull %1, ptr noundef nonnull %add.ptr.lcssa.i85.i) #13
  tail call void @_raw_write_unlock(ptr noundef %lock.i101.i) #13
  %call20.i = tail call fastcc i32 @putback_zspage(ptr noundef nonnull %1, ptr noundef nonnull %add.ptr.lcssa.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp21.i = icmp eq i32 %call20.i, 0
  tail call void @_raw_write_unlock(ptr noundef %lock.i.i) #13
  br i1 %cmp21.i, label %if.then22.i, label %if.end18.i.if.end23.i_crit_edge

if.end18.i.if.end23.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.i

if.then22.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @free_zspage(ptr noundef %pool, ptr noundef nonnull %1, ptr noundef nonnull %add.ptr.lcssa.i.i) #13
  %256 = ptrtoint ptr %pages_per_zspage.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %pages_per_zspage.i.i, align 4
  %add.i = add i32 %257, %pages_freed.0.i
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then22.i, %if.end18.i.if.end23.i_crit_edge
  %pages_freed.1.i = phi i32 [ %add.i, %if.then22.i ], [ %pages_freed.0.i, %if.end18.i.if.end23.i_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull %1) #13
  tail call void @_raw_write_unlock(ptr noundef %migrate_lock.i) #13
  tail call void @__might_resched(ptr noundef nonnull @.str.6, i32 noundef 2098, i32 noundef 0) #13
  %call.i.i13 = tail call i32 @__cond_resched() #13
  tail call void @_raw_write_lock(ptr noundef %migrate_lock.i) #13
  tail call void @_raw_spin_lock(ptr noundef nonnull %1) #13
  br label %while.cond.i

if.then31.i:                                      ; preds = %for.cond.i81.i.if.then31.i_crit_edge, %zs_can_compact.exit.i.if.then31.i_crit_edge, %while.body.i.if.then31.i_crit_edge
  %call32.i = tail call fastcc i32 @putback_zspage(ptr noundef nonnull %1, ptr noundef nonnull %add.ptr.lcssa.i.i) #13
  tail call void @_raw_write_unlock(ptr noundef %lock.i.i) #13
  br label %__zs_compact.exit

__zs_compact.exit:                                ; preds = %if.then31.i, %for.cond.i.i.__zs_compact.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull %1) #13
  tail call void @_raw_write_unlock(ptr noundef %migrate_lock.i) #13
  %add = add i32 %pages_freed.0.i, %pages_freed.0134
  br label %for.inc

for.inc:                                          ; preds = %__zs_compact.exit, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %pages_freed.1 = phi i32 [ %pages_freed.0134, %if.end.for.inc_crit_edge ], [ %add, %__zs_compact.exit ], [ %pages_freed.0134, %for.body.for.inc_crit_edge ]
  %dec = add nsw i32 %i.0132, -1
  %cmp = icmp sgt i32 %i.0132, 0
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  %stats = getelementptr inbounds %struct.zs_pool, ptr %pool, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %stats, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %stats, i32 1, i32 3, i32 1) #13
  %258 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %stats, ptr %stats, i32 %pages_freed.1, ptr elementtype(i32) %stats) #13, !srcloc !176
  ret i32 %pages_freed.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @zs_pool_stats(ptr nocapture noundef readonly %pool, ptr nocapture noundef writeonly %stats) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %stats1 = getelementptr inbounds %struct.zs_pool, ptr %pool, i32 0, i32 5
  %0 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stats1, align 4
  %2 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %stats, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @zs_create_pool(ptr noundef %name) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1172) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup56_crit_edge, label %if.end

entry.cleanup56_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup56

if.end:                                           ; preds = %entry
  %free_work.i = getelementptr inbounds %struct.zs_pool, ptr %call7.i.i, i32 0, i32 9
  tail call void @__init_work(ptr noundef %free_work.i, i32 noundef 0) #13
  %1 = ptrtoint ptr %free_work.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -64, ptr %free_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.zs_pool, ptr %call7.i.i, i32 0, i32 9, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @init_deferred_free.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry4.i = getelementptr inbounds %struct.zs_pool, ptr %call7.i.i, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %entry4.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %entry4.i, ptr %entry4.i, align 8
  %prev.i.i = getelementptr inbounds %struct.zs_pool, ptr %call7.i.i, i32 0, i32 9, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry4.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.zs_pool, ptr %call7.i.i, i32 0, i32 9, i32 2
  %4 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @async_free_zspage, ptr %func.i, align 8
  %migrate_lock = getelementptr inbounds %struct.zs_pool, ptr %call7.i.i, i32 0, i32 10
  tail call void @__rwlock_init(ptr noundef %migrate_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @zs_create_pool.__key) #13
  %call1 = tail call noalias ptr @kstrdup(ptr noundef %name, i32 noundef 3264) #13
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1, ptr %call7.i.i, align 8
  %tobool4.not = icmp eq ptr %call1, null
  br i1 %tobool4.not, label %if.end.err_crit_edge, label %if.end6

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

if.end6:                                          ; preds = %if.end
  %call.i = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.23, i32 noundef 4, i32 noundef 0, i32 noundef 0, ptr noundef null) #13
  %handle_cachep.i = getelementptr inbounds %struct.zs_pool, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %handle_cachep.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %handle_cachep.i, align 8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end6.err_crit_edge, label %if.end.i

if.end6.err_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

if.end.i:                                         ; preds = %if.end6
  %call2.i = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.24, i32 noundef 68, i32 noundef 0, i32 noundef 0, ptr noundef null) #13
  %zspage_cachep.i = getelementptr inbounds %struct.zs_pool, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %zspage_cachep.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call2.i, ptr %zspage_cachep.i, align 4
  %tobool4.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end.i.for.body_crit_edge

if.end.i.for.body_crit_edge:                      ; preds = %if.end.i
  br label %for.body

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %handle_cachep.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %handle_cachep.i, align 8
  tail call void @kmem_cache_destroy(ptr noundef %9) #13
  br label %err.sink.split

for.body:                                         ; preds = %for.inc49.for.body_crit_edge, %if.end.i.for.body_crit_edge
  %prev_class.0131 = phi ptr [ %prev_class.1.ph, %for.inc49.for.body_crit_edge ], [ null, %if.end.i.for.body_crit_edge ]
  %i.0128 = phi i32 [ %dec, %for.inc49.for.body_crit_edge ], [ 254, %if.end.i.for.body_crit_edge ]
  %mul = shl i32 %i.0128, 4
  %add = add nuw nsw i32 %mul, 32
  %rem.i116.rhs.trunc = trunc i32 %add to i16
  %rem.i116117 = urem i16 4096, %rem.i116.rhs.trunc
  %rem.i116.zext = zext i16 %rem.i116117 to i32
  %sub.i = sub nuw nsw i32 4096, %rem.i116.zext
  %mul1.i = mul nuw nsw i32 %sub.i, 100
  %div1317.i = lshr i32 %mul1.i, 12
  %rem.1.i118119 = urem i16 8192, %rem.i116.rhs.trunc
  %narrow = sub nuw nsw i16 8192, %rem.1.i118119
  %sub.1.i = zext i16 %narrow to i32
  %mul1.1.i = mul nuw nsw i32 %sub.1.i, 100
  %div.11418.i = lshr i32 %mul1.1.i, 13
  call void @__sanitizer_cov_trace_cmp4(i32 %div.11418.i, i32 %div1317.i)
  %cmp2.1.i = icmp ugt i32 %div.11418.i, %div1317.i
  %spec.select.1.i = select i1 %cmp2.1.i, i32 2, i32 1
  %10 = tail call i32 @llvm.smax.i32(i32 %div.11418.i, i32 %div1317.i) #13
  %rem.2.i120121 = urem i16 12288, %rem.i116.rhs.trunc
  %narrow125 = sub nuw nsw i16 12288, %rem.2.i120121
  %sub.2.i = zext i16 %narrow125 to i32
  %mul1.2.i = mul nuw nsw i32 %sub.2.i, 100
  %div.215.i = udiv i32 %mul1.2.i, 12288
  call void @__sanitizer_cov_trace_cmp4(i32 %div.215.i, i32 %10)
  %cmp2.2.i = icmp ugt i32 %div.215.i, %10
  %spec.select.2.i = select i1 %cmp2.2.i, i32 3, i32 %spec.select.1.i
  %11 = tail call i32 @llvm.smax.i32(i32 %div.215.i, i32 %10) #13
  %rem.3.i122123 = urem i16 16384, %rem.i116.rhs.trunc
  %narrow126 = sub nuw nsw i16 16384, %rem.3.i122123
  %sub.3.i = zext i16 %narrow126 to i32
  %mul1.3.i = mul nuw nsw i32 %sub.3.i, 100
  %div.31619.i = lshr i32 %mul1.3.i, 14
  call void @__sanitizer_cov_trace_cmp4(i32 %div.31619.i, i32 %11)
  %cmp2.3.i = icmp ugt i32 %div.31619.i, %11
  %spec.select.3.i = select i1 %cmp2.3.i, i32 4, i32 %spec.select.2.i
  %spec.select.3.i.tr = trunc i32 %spec.select.3.i to i16
  %div.lhs.trunc = shl nuw nsw i16 %spec.select.3.i.tr, 12
  %div124 = udiv i16 %div.lhs.trunc, %rem.i116.rhs.trunc
  %div.zext = zext i16 %div124 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select.3.i)
  %cmp16.not = icmp eq i32 %spec.select.3.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %div124)
  %cmp17.not = icmp eq i16 %div124, 1
  %or.cond = select i1 %cmp16.not, i1 true, i1 %cmp17.not
  br i1 %or.cond, label %for.body.if.end21_crit_edge, label %land.lhs.true18

for.body.if.end21_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

land.lhs.true18:                                  ; preds = %for.body
  %12 = load i32, ptr @huge_class_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool19.not = icmp eq i32 %12, 0
  br i1 %tobool19.not, label %if.then20, label %land.lhs.true18.if.end21_crit_edge

land.lhs.true18.if.end21_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then20:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #15
  %sub = add nsw i32 %mul, 29
  store i32 %sub, ptr @huge_class_size, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %land.lhs.true18.if.end21_crit_edge, %for.body.if.end21_crit_edge
  %tobool22.not = icmp eq ptr %prev_class.0131, null
  br i1 %tobool22.not, label %if.end21.if.end27_crit_edge, label %if.then23

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then23:                                        ; preds = %if.end21
  %pages_per_zspage1.i = getelementptr inbounds %struct.size_class, ptr %prev_class.0131, i32 0, i32 4
  %13 = ptrtoint ptr %pages_per_zspage1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pages_per_zspage1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %spec.select.3.i)
  %cmp.i = icmp eq i32 %14, %spec.select.3.i
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then23.if.end27_crit_edge

if.then23.if.end27_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

land.lhs.true.i:                                  ; preds = %if.then23
  %objs_per_zspage2.i = getelementptr inbounds %struct.size_class, ptr %prev_class.0131, i32 0, i32 3
  %15 = ptrtoint ptr %objs_per_zspage2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %objs_per_zspage2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %div.zext)
  %cmp3.i = icmp eq i32 %16, %div.zext
  br i1 %cmp3.i, label %if.then25, label %land.lhs.true.i.if.end27_crit_edge

land.lhs.true.i.if.end27_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then25:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr %struct.zs_pool, ptr %call7.i.i, i32 0, i32 1, i32 %i.0128
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %prev_class.0131, ptr %arrayidx, align 4
  br label %for.inc49

if.end27:                                         ; preds = %land.lhs.true.i.if.end27_crit_edge, %if.then23.if.end27_crit_edge, %if.end21.if.end27_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i100 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 116) #16
  %tobool29.not = icmp eq ptr %call7.i.i100, null
  br i1 %tobool29.not, label %if.end27.err_crit_edge, label %if.end31

if.end27.err_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

if.end31:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %size32 = getelementptr inbounds %struct.size_class, ptr %call7.i.i100, i32 0, i32 2
  %19 = ptrtoint ptr %size32 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add, ptr %size32, align 4
  %index = getelementptr inbounds %struct.size_class, ptr %call7.i.i100, i32 0, i32 5
  %20 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %i.0128, ptr %index, align 8
  %pages_per_zspage33 = getelementptr inbounds %struct.size_class, ptr %call7.i.i100, i32 0, i32 4
  %21 = ptrtoint ptr %pages_per_zspage33 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.select.3.i, ptr %pages_per_zspage33, align 4
  %objs_per_zspage34 = getelementptr inbounds %struct.size_class, ptr %call7.i.i100, i32 0, i32 3
  %22 = ptrtoint ptr %objs_per_zspage34 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div.zext, ptr %objs_per_zspage34, align 8
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i100, ptr noundef nonnull @.str.3, ptr noundef nonnull @zs_create_pool.__key.2, i16 noundef signext 3) #13
  %arrayidx40 = getelementptr %struct.zs_pool, ptr %call7.i.i, i32 0, i32 1, i32 %i.0128
  %23 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i100, ptr %arrayidx40, align 4
  %arrayidx44 = getelementptr %struct.size_class, ptr %call7.i.i100, i32 0, i32 1, i32 0
  %24 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %arrayidx44, ptr %arrayidx44, align 4
  %prev.i = getelementptr %struct.size_class, ptr %call7.i.i100, i32 0, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx44, ptr %prev.i, align 8
  %arrayidx44.1 = getelementptr %struct.size_class, ptr %call7.i.i100, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %arrayidx44.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %arrayidx44.1, ptr %arrayidx44.1, align 4
  %prev.i.1 = getelementptr %struct.size_class, ptr %call7.i.i100, i32 0, i32 1, i32 1, i32 1
  %27 = ptrtoint ptr %prev.i.1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %arrayidx44.1, ptr %prev.i.1, align 8
  %arrayidx44.2 = getelementptr %struct.size_class, ptr %call7.i.i100, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %arrayidx44.2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %arrayidx44.2, ptr %arrayidx44.2, align 4
  %prev.i.2 = getelementptr %struct.size_class, ptr %call7.i.i100, i32 0, i32 1, i32 2, i32 1
  %29 = ptrtoint ptr %prev.i.2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %arrayidx44.2, ptr %prev.i.2, align 8
  %arrayidx44.3 = getelementptr %struct.size_class, ptr %call7.i.i100, i32 0, i32 1, i32 3
  %30 = ptrtoint ptr %arrayidx44.3 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %arrayidx44.3, ptr %arrayidx44.3, align 4
  %prev.i.3 = getelementptr %struct.size_class, ptr %call7.i.i100, i32 0, i32 1, i32 3, i32 1
  %31 = ptrtoint ptr %prev.i.3 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %arrayidx44.3, ptr %prev.i.3, align 8
  br label %for.inc49

for.inc49:                                        ; preds = %if.end31, %if.then25
  %prev_class.1.ph = phi ptr [ %prev_class.0131, %if.then25 ], [ %call7.i.i100, %if.end31 ]
  %dec = add nsw i32 %i.0128, -1
  %cmp = icmp sgt i32 %i.0128, 0
  br i1 %cmp, label %for.inc49.for.body_crit_edge, label %for.end50

for.inc49.for.body_crit_edge:                     ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end50:                                        ; preds = %for.inc49
  %32 = load ptr, ptr @zs_stat_root, align 4
  %tobool.not.i101 = icmp eq ptr %32, null
  br i1 %tobool.not.i101, label %do.end.i, label %if.end.i103

do.end.i:                                         ; preds = %for.end50
  call void @__sanitizer_cov_trace_pc() #15
  %call.i102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %name) #17
  br label %zs_pool_stat_create.exit

if.end.i103:                                      ; preds = %for.end50
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i = tail call ptr @debugfs_create_dir(ptr noundef %name, ptr noundef nonnull %32) #13
  %stat_dentry.i = getelementptr inbounds %struct.zs_pool, ptr %call7.i.i, i32 0, i32 7
  %33 = ptrtoint ptr %stat_dentry.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call1.i, ptr %stat_dentry.i, align 4
  %call3.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.27, i16 noundef zeroext -32476, ptr noundef %call1.i, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @zs_stats_size_fops) #13
  br label %zs_pool_stat_create.exit

zs_pool_stat_create.exit:                         ; preds = %if.end.i103, %do.end.i
  %34 = load ptr, ptr @zsmalloc_mnt, align 4
  %mnt_sb.i = getelementptr inbounds %struct.vfsmount, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %mnt_sb.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mnt_sb.i, align 4
  %call.i104 = tail call ptr @alloc_anon_inode(ptr noundef %36) #13
  %inode.i = getelementptr inbounds %struct.zs_pool, ptr %call7.i.i, i32 0, i32 8
  %37 = ptrtoint ptr %inode.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i104, ptr %inode.i, align 8
  %cmp.i.i = icmp ugt ptr %call.i104, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %zs_pool_stat_create.exit.err.sink.split_crit_edge, label %if.end54

zs_pool_stat_create.exit.err.sink.split_crit_edge: ; preds = %zs_pool_stat_create.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %err.sink.split

if.end54:                                         ; preds = %zs_pool_stat_create.exit
  call void @__sanitizer_cov_trace_pc() #15
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %call.i104, i32 0, i32 9
  %38 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i_mapping.i, align 8
  %private_data.i = getelementptr inbounds %struct.address_space, ptr %39, i32 0, i32 14
  %40 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call7.i.i, ptr %private_data.i, align 4
  %41 = ptrtoint ptr %inode.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %inode.i, align 8
  %i_mapping6.i = getelementptr inbounds %struct.inode, ptr %42, i32 0, i32 9
  %43 = ptrtoint ptr %i_mapping6.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i_mapping6.i, align 8
  %a_ops.i = getelementptr inbounds %struct.address_space, ptr %44, i32 0, i32 9
  %45 = ptrtoint ptr %a_ops.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @zsmalloc_aops, ptr %a_ops.i, align 4
  %shrinker.i = getelementptr inbounds %struct.zs_pool, ptr %call7.i.i, i32 0, i32 6
  %scan_objects.i = getelementptr inbounds %struct.zs_pool, ptr %call7.i.i, i32 0, i32 6, i32 1
  %46 = ptrtoint ptr %scan_objects.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @zs_shrinker_scan, ptr %scan_objects.i, align 4
  %47 = ptrtoint ptr %shrinker.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @zs_shrinker_count, ptr %shrinker.i, align 8
  %batch.i = getelementptr inbounds %struct.zs_pool, ptr %call7.i.i, i32 0, i32 6, i32 2
  %48 = ptrtoint ptr %batch.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %batch.i, align 8
  %seeks.i = getelementptr inbounds %struct.zs_pool, ptr %call7.i.i, i32 0, i32 6, i32 3
  %49 = ptrtoint ptr %seeks.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 2, ptr %seeks.i, align 4
  %call.i107 = tail call i32 @register_shrinker(ptr noundef %shrinker.i) #13
  br label %cleanup56

err.sink.split:                                   ; preds = %zs_pool_stat_create.exit.err.sink.split_crit_edge, %if.then5.i
  %handle_cachep.i.sink = phi ptr [ %handle_cachep.i, %if.then5.i ], [ %inode.i, %zs_pool_stat_create.exit.err.sink.split_crit_edge ]
  %50 = ptrtoint ptr %handle_cachep.i.sink to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %handle_cachep.i.sink, align 8
  br label %err

err:                                              ; preds = %err.sink.split, %if.end27.err_crit_edge, %if.end6.err_crit_edge, %if.end.err_crit_edge
  tail call void @zs_destroy_pool(ptr noundef nonnull %call7.i.i)
  br label %cleanup56

cleanup56:                                        ; preds = %err, %if.end54, %entry.cleanup56_crit_edge
  %retval.0 = phi ptr [ null, %err ], [ %call7.i.i, %if.end54 ], [ null, %entry.cleanup56_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zs_destroy_pool(ptr noundef %pool) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %shrinker.i = getelementptr inbounds %struct.zs_pool, ptr %pool, i32 0, i32 6
  tail call void @unregister_shrinker(ptr noundef %shrinker.i) #13
  %free_work.i = getelementptr inbounds %struct.zs_pool, ptr %pool, i32 0, i32 9
  %call.i = tail call zeroext i1 @flush_work(ptr noundef %free_work.i) #13
  %inode.i = getelementptr inbounds %struct.zs_pool, ptr %pool, i32 0, i32 8
  %0 = ptrtoint ptr %inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode.i, align 4
  tail call void @iput(ptr noundef %1) #13
  %stat_dentry.i = getelementptr inbounds %struct.zs_pool, ptr %pool, i32 0, i32 7
  %2 = ptrtoint ptr %stat_dentry.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stat_dentry.i, align 4
  tail call void @debugfs_remove(ptr noundef %3) #13
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.033 = phi i32 [ 0, %entry ], [ %inc14, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.zs_pool, ptr %pool, i32 0, i32 1, i32 %i.033
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %for.body
  %index = getelementptr inbounds %struct.size_class, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %i.033)
  %cmp1.not = icmp eq i32 %7, %i.033
  br i1 %cmp1.not, label %for.cond4.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond4.preheader:                              ; preds = %if.end
  %size = getelementptr inbounds %struct.size_class, ptr %5, i32 0, i32 2
  %arrayidx7 = getelementptr %struct.size_class, ptr %5, i32 0, i32 1, i32 0
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %arrayidx7, align 4
  %cmp.i.not = icmp eq ptr %9, %arrayidx7
  br i1 %cmp.i.not, label %for.cond4.preheader.for.inc_crit_edge, label %do.end

for.cond4.preheader.for.inc_crit_edge:            ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

do.end:                                           ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %11, i32 noundef 0) #17
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.cond4.preheader.for.inc_crit_edge
  %arrayidx7.1 = getelementptr %struct.size_class, ptr %5, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %arrayidx7.1, align 4
  %cmp.i.not.1 = icmp eq ptr %13, %arrayidx7.1
  br i1 %cmp.i.not.1, label %for.inc.for.inc.1_crit_edge, label %do.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

do.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 4
  %call10.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %15, i32 noundef 1) #17
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.end.1, %for.inc.for.inc.1_crit_edge
  %arrayidx7.2 = getelementptr %struct.size_class, ptr %5, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %arrayidx7.2, align 4
  %cmp.i.not.2 = icmp eq ptr %17, %arrayidx7.2
  br i1 %cmp.i.not.2, label %for.inc.1.for.inc.2_crit_edge, label %do.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

do.end.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size, align 4
  %call10.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %19, i32 noundef 2) #17
  br label %for.inc.2

for.inc.2:                                        ; preds = %do.end.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx7.3 = getelementptr %struct.size_class, ptr %5, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %arrayidx7.3, align 4
  %cmp.i.not.3 = icmp eq ptr %21, %arrayidx7.3
  br i1 %cmp.i.not.3, label %for.inc.2.for.inc.3_crit_edge, label %do.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3

do.end.3:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size, align 4
  %call10.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %23, i32 noundef 3) #17
  br label %for.inc.3

for.inc.3:                                        ; preds = %do.end.3, %for.inc.2.for.inc.3_crit_edge
  tail call void @kfree(ptr noundef nonnull %5) #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.3, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc14 = add nuw nsw i32 %i.033, 1
  %exitcond.not = icmp eq i32 %inc14, 255
  br i1 %exitcond.not, label %for.end15, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end15:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  %handle_cachep.i = getelementptr inbounds %struct.zs_pool, ptr %pool, i32 0, i32 2
  %24 = ptrtoint ptr %handle_cachep.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %handle_cachep.i, align 4
  tail call void @kmem_cache_destroy(ptr noundef %25) #13
  %zspage_cachep.i = getelementptr inbounds %struct.zs_pool, ptr %pool, i32 0, i32 3
  %26 = ptrtoint ptr %zspage_cachep.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %zspage_cachep.i, align 4
  tail call void @kmem_cache_destroy(ptr noundef %27) #13
  %28 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pool, align 4
  tail call void @kfree(ptr noundef %29) #13
  tail call void @kfree(ptr noundef %pool) #13
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @zs_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @zpool_unregister_driver(ptr noundef nonnull @zs_zpool_driver) #13
  %0 = load ptr, ptr @zsmalloc_mnt, align 4
  tail call void @kern_unmount(ptr noundef %0) #13
  tail call void @__cpuhp_remove_state(i32 noundef 63, i1 noundef zeroext true) #13
  %1 = load ptr, ptr @zs_stat_root, align 4
  tail call void @debugfs_remove(ptr noundef %1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zpool_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @zs_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @kern_mount(ptr noundef nonnull @zsmalloc_fs) #13
  store ptr %call.i, ptr @zsmalloc_mnt, align 4
  %cmp.i.i.not = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %0 = ptrtoint ptr %call.i to i32
  br i1 %cmp.i.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i7 = tail call i32 @__cpuhp_setup_state(i32 noundef 63, ptr noundef nonnull @.str.49, i1 noundef zeroext true, ptr noundef nonnull @zs_cpu_prepare, ptr noundef nonnull @zs_cpu_dead, i1 noundef zeroext false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7)
  %tobool2.not = icmp eq i32 %call.i7, 0
  br i1 %tobool2.not, label %if.end4, label %hp_setup_fail

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @zpool_register_driver(ptr noundef nonnull @zs_zpool_driver) #13
  tail call fastcc void @zs_stat_init() #18
  br label %cleanup

hp_setup_fail:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %1 = load ptr, ptr @zsmalloc_mnt, align 4
  tail call void @kern_unmount(ptr noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %hp_setup_fail, %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %0, %entry.cleanup_crit_edge ], [ %call.i7, %hp_setup_fail ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dec_zone_page_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_zone_page_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__free_zspage(ptr noundef %pool, ptr noundef %class, ptr noundef %zspage) unnamed_addr #2 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %zspage to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load.i = load i32, ptr %zspage, align 4
  %1 = and i32 %bf.load.i, 130560
  call void @__sanitizer_cov_trace_const_cmp4(i32 45056, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 45056
  br i1 %cmp.not.i, label %get_zspage_mapping.exit, label %do.body2.i, !prof !164

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 509, 0\0A.popsection", ""() #13, !srcloc !179
  unreachable

get_zspage_mapping.exit:                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %2 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %2)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %class, align 4
  %3 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %do.body10, !prof !170

do.body4:                                         ; preds = %get_zspage_mapping.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 929, 0\0A.popsection", ""() #13, !srcloc !191
  unreachable

do.body10:                                        ; preds = %get_zspage_mapping.exit
  %inuse.i = getelementptr inbounds %struct.zspage, ptr %zspage, i32 0, i32 1
  %4 = ptrtoint ptr %inuse.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %inuse.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool12.not = icmp eq i32 %5, 0
  br i1 %tobool12.not, label %do.body29, label %do.body20, !prof !164

do.body20:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 931, 0\0A.popsection", ""() #13, !srcloc !192
  unreachable

do.body29:                                        ; preds = %do.body10
  %6 = and i32 %bf.load.i, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %do.end45, label %do.body37, !prof !164

do.body37:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 932, 0\0A.popsection", ""() #13, !srcloc !193
  unreachable

do.end45:                                         ; preds = %do.body29
  %first_page1.i = getelementptr inbounds %struct.zspage, ptr %zspage, i32 0, i32 3
  %7 = ptrtoint ptr %first_page1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %first_page1.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i.not.i.i.i = icmp eq i32 %10, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %is_first_page.exit.i, !prof !170

if.then.i.i.i:                                    ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.12) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #13, !srcloc !177
  unreachable

is_first_page.exit.i:                             ; preds = %do.end45
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %8, align 4
  %13 = and i32 %12, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.then.i87, label %is_first_page.exit.i.do.body47_crit_edge, !prof !170

is_first_page.exit.i.do.body47_crit_edge:         ; preds = %is_first_page.exit.i
  br label %do.body47

if.then.i87:                                      ; preds = %is_first_page.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.11) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 481, 0\0A.popsection", ""() #13, !srcloc !178
  unreachable

do.body47:                                        ; preds = %put_page.exit.do.body47_crit_edge, %is_first_page.exit.i.do.body47_crit_edge
  %page.0 = phi ptr [ %retval.0.i, %put_page.exit.do.body47_crit_edge ], [ %8, %is_first_page.exit.i.do.body47_crit_edge ]
  %14 = getelementptr inbounds %struct.page, ptr %page.0, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %and.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !164

if.then.i.i:                                      ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = add i32 %16, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %page.0 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %17, %if.end.i.i ]
  %18 = inttoptr i32 %retval.0.i.i to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp.i.not.i = icmp eq i32 %20, -1
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %14, align 4
  %and.i16.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !170

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !164

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i18.i = add i32 %22, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %page.0 to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %23, %if.end.i20.i ]
  %24 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %24, ptr noundef nonnull @.str.18) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #13, !srcloc !194
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !164

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i25.i = add i32 %22, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %page.0 to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %25, %if.end.i27.i ]
  %26 = inttoptr i32 %retval.0.i28.i to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  %and1.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool50.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool50.not, label %if.then59, label %do.end68, !prof !170

if.then59:                                        ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %page.0, ptr noundef nonnull @.str.17) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 936, 0\0A.popsection", ""() #13, !srcloc !195
  unreachable

do.end68:                                         ; preds = %PageLocked.exit
  %private.i.i = getelementptr inbounds %struct.page, ptr %page.0, i32 0, i32 1, i32 0, i32 3
  %29 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %private.i.i, align 4
  %31 = inttoptr i32 %30 to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %bf.load.i.i = load i32, ptr %31, align 4
  %33 = and i32 %bf.load.i.i, 130560
  call void @__sanitizer_cov_trace_const_cmp4(i32 45056, i32 %33)
  %cmp.not.i.i = icmp eq i32 %33, 45056
  br i1 %cmp.not.i.i, label %get_zspage.exit.i, label %do.body2.i.i, !prof !164

do.body2.i.i:                                     ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 817, 0\0A.popsection", ""() #13, !srcloc !166
  unreachable

get_zspage.exit.i:                                ; preds = %do.end68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load.i.i)
  %tobool.i.i = icmp slt i32 %bf.load.i.i, 0
  br i1 %tobool.i.i, label %get_zspage.exit.i.get_next_page.exit_crit_edge, label %if.end.i, !prof !170

get_zspage.exit.i.get_next_page.exit_crit_edge:   ; preds = %get_zspage.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_next_page.exit

if.end.i:                                         ; preds = %get_zspage.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %index.i = getelementptr inbounds %struct.page, ptr %page.0, i32 0, i32 1, i32 0, i32 2
  %34 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %index.i, align 4
  %36 = inttoptr i32 %35 to ptr
  br label %get_next_page.exit

get_next_page.exit:                               ; preds = %if.end.i, %get_zspage.exit.i.get_next_page.exit_crit_edge
  %retval.0.i = phi ptr [ %36, %if.end.i ], [ null, %get_zspage.exit.i.get_next_page.exit_crit_edge ]
  tail call void @__ClearPageMovable(ptr noundef %page.0) #13
  %37 = ptrtoint ptr %page.0 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %page.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp.i.not.i.i = icmp eq i32 %38, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i89, label %reset_page.exit, !prof !170

if.then.i.i89:                                    ; preds = %get_next_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %page.0, ptr noundef nonnull @.str.12) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #13, !srcloc !196
  unreachable

reset_page.exit:                                  ; preds = %get_next_page.exit
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %page.0) #13
  %39 = ptrtoint ptr %private.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %private.i.i, align 4
  %40 = getelementptr inbounds %struct.page, ptr %page.0, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %40, i32 noundef 4) #13
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 -1, ptr %40, align 4
  %index.i90 = getelementptr inbounds %struct.page, ptr %page.0, i32 0, i32 1, i32 0, i32 2
  %42 = ptrtoint ptr %index.i90 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %index.i90, align 4
  tail call void @unlock_page(ptr noundef %page.0) #13
  tail call void @dec_zone_page_state(ptr noundef %page.0, i32 noundef 9) #13
  %43 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %14, align 4
  %and.i.i91 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i91)
  %tobool.not.i.i92 = icmp eq i32 %and.i.i91, 0
  br i1 %tobool.not.i.i92, label %if.end.i.i95, label %if.then.i.i94, !prof !164

if.then.i.i94:                                    ; preds = %reset_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i93 = add i32 %44, -1
  br label %_compound_head.exit.i97

if.end.i.i95:                                     ; preds = %reset_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %page.0 to i32
  br label %_compound_head.exit.i97

_compound_head.exit.i97:                          ; preds = %if.end.i.i95, %if.then.i.i94
  %retval.0.i.i96 = phi i32 [ %sub.i.i93, %if.then.i.i94 ], [ %45, %if.end.i.i95 ]
  %46 = inttoptr i32 %retval.0.i.i96 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %46, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #13
  %47 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.i.i.i.i = icmp eq i32 %48, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !170

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i97
  call void @__sanitizer_cov_trace_pc() #15
  %49 = inttoptr i32 %retval.0.i.i96 to ptr
  tail call void @dump_page(ptr noundef %49, ptr noundef nonnull @.str.19) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #13, !srcloc !197
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i97
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !198
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #13
  %50 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #13, !srcloc !199
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %50, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !200
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@__free_zspage, %if.then.i.i.i.i.i)) #13
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !201

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %46, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #13
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__put_page(ptr noundef %46) #13
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %cmp71.not = icmp eq ptr %retval.0.i, null
  br i1 %cmp71.not, label %do.end72, label %put_page.exit.do.body47_crit_edge

put_page.exit.do.body47_crit_edge:                ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body47

do.end72:                                         ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  %zspage_cachep.i = getelementptr inbounds %struct.zs_pool, ptr %pool, i32 0, i32 3
  %51 = ptrtoint ptr %zspage_cachep.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %zspage_cachep.i, align 4
  tail call void @kmem_cache_free(ptr noundef %52, ptr noundef %zspage) #13
  %objs_per_zspage = getelementptr inbounds %struct.size_class, ptr %class, i32 0, i32 3
  %53 = ptrtoint ptr %objs_per_zspage to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %objs_per_zspage, align 4
  %arrayidx.i = getelementptr %struct.size_class, ptr %class, i32 0, i32 6, i32 0, i32 4
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i, align 4
  %sub.i = sub i32 %56, %54
  store i32 %sub.i, ptr %arrayidx.i, align 4
  %pages_per_zspage = getelementptr inbounds %struct.size_class, ptr %class, i32 0, i32 4
  %57 = ptrtoint ptr %pages_per_zspage to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pages_per_zspage, align 4
  %pages_allocated = getelementptr inbounds %struct.zs_pool, ptr %pool, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pages_allocated, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %pages_allocated, i32 1, i32 3, i32 1) #13
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pages_allocated, ptr %pages_allocated, i32 %58, ptr elementtype(i32) %pages_allocated) #13, !srcloc !202
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ClearPageMovable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__SetPageMovable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @putback_zspage(ptr noundef %class, ptr noundef %zspage) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %inuse.i.i = getelementptr inbounds %struct.zspage, ptr %zspage, i32 0, i32 1
  %0 = ptrtoint ptr %inuse.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %inuse.i.i, align 4
  %objs_per_zspage1.i = getelementptr inbounds %struct.size_class, ptr %class, i32 0, i32 3
  %2 = ptrtoint ptr %objs_per_zspage1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %objs_per_zspage1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %entry.get_fullness_group.exit_crit_edge, label %if.else.i

entry.get_fullness_group.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_fullness_group.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp2.i = icmp eq i32 %1, %3
  br i1 %cmp2.i, label %if.else.i.get_fullness_group.exit_crit_edge, label %if.else4.i

if.else.i.get_fullness_group.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_fullness_group.exit

if.else4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %mul.i = mul i32 %3, 3
  %div.i = sdiv i32 %mul.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %div.i)
  %cmp5.not.i = icmp sgt i32 %1, %div.i
  %..i = select i1 %cmp5.not.i, i32 2, i32 1
  br label %get_fullness_group.exit

get_fullness_group.exit:                          ; preds = %if.else4.i, %if.else.i.get_fullness_group.exit_crit_edge, %entry.get_fullness_group.exit_crit_edge
  %fg.0.i = phi i32 [ 0, %entry.get_fullness_group.exit_crit_edge ], [ 3, %if.else.i.get_fullness_group.exit_crit_edge ], [ %..i, %if.else4.i ]
  %stats.i.i = getelementptr inbounds %struct.size_class, ptr %class, i32 0, i32 6
  %arrayidx.i.i = getelementptr [6 x i32], ptr %stats.i.i, i32 0, i32 %fg.0.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %5, 1
  store i32 %add.i.i, ptr %arrayidx.i.i, align 4
  %arrayidx.i = getelementptr %struct.size_class, ptr %class, i32 0, i32 1, i32 %fg.0.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.not.i = icmp eq ptr %7, %arrayidx.i
  %add.ptr.i = getelementptr i8, ptr %7, i32 -16
  %tobool.not25.i = icmp eq ptr %add.ptr.i, null
  %tobool.not.i = or i1 %cmp.not.i, %tobool.not25.i
  br i1 %tobool.not.i, label %get_fullness_group.exit.if.else.i8_crit_edge, label %land.lhs.true.i

get_fullness_group.exit.if.else.i8_crit_edge:     ; preds = %get_fullness_group.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i8

land.lhs.true.i:                                  ; preds = %get_fullness_group.exit
  %8 = ptrtoint ptr %inuse.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %inuse.i.i, align 4
  %inuse.i19.i = getelementptr i8, ptr %7, i32 -12
  %10 = ptrtoint ptr %inuse.i19.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %inuse.i19.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp4.i = icmp slt i32 %9, %11
  br i1 %cmp4.i, label %if.then.i, label %land.lhs.true.i.if.else.i8_crit_edge

land.lhs.true.i.if.else.i8_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i8

if.then.i:                                        ; preds = %land.lhs.true.i
  %list.i = getelementptr inbounds %struct.zspage, ptr %zspage, i32 0, i32 4
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %7, ptr noundef %13) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.insert_zspage.exit_crit_edge

if.then.i.insert_zspage.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %insert_zspage.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list.i, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.zspage, ptr %zspage, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %7, ptr %prev3.i.i.i, align 4
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %list.i, ptr %7, align 4
  br label %insert_zspage.exit

if.else.i8:                                       ; preds = %land.lhs.true.i.if.else.i8_crit_edge, %get_fullness_group.exit.if.else.i8_crit_edge
  %list6.i = getelementptr inbounds %struct.zspage, ptr %zspage, i32 0, i32 4
  %call.i.i20.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list6.i, ptr noundef %arrayidx.i, ptr noundef %7) #13
  br i1 %call.i.i20.i, label %if.end.i.i23.i, label %if.else.i8.insert_zspage.exit_crit_edge

if.else.i8.insert_zspage.exit_crit_edge:          ; preds = %if.else.i8
  call void @__sanitizer_cov_trace_pc() #15
  br label %insert_zspage.exit

if.end.i.i23.i:                                   ; preds = %if.else.i8
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i21.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i21.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %list6.i, ptr %prev1.i.i21.i, align 4
  %19 = ptrtoint ptr %list6.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %7, ptr %list6.i, align 4
  %prev3.i.i22.i = getelementptr inbounds %struct.zspage, ptr %zspage, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %prev3.i.i22.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx.i, ptr %prev3.i.i22.i, align 4
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %list6.i, ptr %arrayidx.i, align 4
  br label %insert_zspage.exit

insert_zspage.exit:                               ; preds = %if.end.i.i23.i, %if.else.i8.insert_zspage.exit_crit_edge, %if.end.i.i.i, %if.then.i.insert_zspage.exit_crit_edge
  %index = getelementptr inbounds %struct.size_class, ptr %class, i32 0, i32 5
  %22 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %index, align 4
  %24 = ptrtoint ptr %zspage to i32
  call void @__asan_load4_noabort(i32 %24)
  %bf.load.i = load i32, ptr %zspage, align 4
  %bf.value.i = shl i32 %23, 20
  %bf.shl.i = and i32 %bf.value.i, 535822336
  %bf.clear.i = and i32 %bf.load.i, -2146435073
  %bf.value2.i = shl nuw nsw i32 %fg.0.i, 29
  %bf.set.i = or i32 %bf.shl.i, %bf.value2.i
  %bf.set5.i = or i32 %bf.set.i, %bf.clear.i
  store i32 %bf.set5.i, ptr %zspage, align 4
  ret i32 %fg.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @async_free_zspage(ptr noundef %work) #2 align 64 {
entry:
  %free_pages = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %free_pages) #13
  %0 = getelementptr inbounds %struct.list_head, ptr %free_pages, i32 0, i32 1
  %1 = ptrtoint ptr %free_pages to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %free_pages, ptr %free_pages, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %free_pages, ptr %0, align 4
  %size_class = getelementptr i8, ptr %work, i32 -1080
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.067 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [255 x ptr], ptr %size_class, i32 0, i32 %i.067
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %index = getelementptr inbounds %struct.size_class, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %i.067)
  %cmp2.not = icmp eq i32 %6, %i.067
  br i1 %cmp2.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @_raw_spin_lock(ptr noundef %4) #13
  %fullness_list = getelementptr inbounds %struct.size_class, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %fullness_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %fullness_list, align 4
  %cmp.i.not.i = icmp eq ptr %8, %fullness_list
  br i1 %cmp.i.not.i, label %if.end.list_splice_init.exit_crit_edge, label %if.then.i

if.end.list_splice_init.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %free_pages to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %free_pages, align 4
  %prev2.i.i = getelementptr inbounds %struct.size_class, ptr %4, i32 0, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %free_pages, ptr %prev3.i.i, align 4
  store ptr %8, ptr %free_pages, align 4
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %10, ptr %12, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev6.i.i, align 4
  %16 = ptrtoint ptr %fullness_list to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %fullness_list, ptr %fullness_list, align 4
  store ptr %fullness_list, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %if.end.list_splice_init.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %4) #13
  br label %for.inc

for.inc:                                          ; preds = %list_splice_init.exit, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.067, 1
  %exitcond.not = icmp eq i32 %inc, 255
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  %add.ptr = getelementptr i8, ptr %work, i32 -1084
  %17 = ptrtoint ptr %free_pages to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %free_pages, align 4
  %cmp15.not70 = icmp eq ptr %18, %free_pages
  br i1 %cmp15.not70, label %for.end.for.end39_crit_edge, label %for.end.for.body16_crit_edge

for.end.for.body16_crit_edge:                     ; preds = %for.end
  br label %for.body16

for.end.for.end39_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end39

for.body16:                                       ; preds = %do.end28.for.body16_crit_edge, %for.end.for.body16_crit_edge
  %.pn.in71 = phi ptr [ %.pn73, %do.end28.for.body16_crit_edge ], [ %18, %for.end.for.body16_crit_edge ]
  %zspage.072 = getelementptr i8, ptr %.pn.in71, i32 -16
  %19 = ptrtoint ptr %.pn.in71 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn73 = load ptr, ptr %.pn.in71, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in71) #13
  br i1 %call.i.i, label %if.end.i.i, label %for.body16.list_del.exit_crit_edge

for.body16.list_del.exit_crit_edge:               ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in71, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %.pn.in71 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %.pn.in71, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body16.list_del.exit_crit_edge
  %26 = ptrtoint ptr %.pn.in71 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in71, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in71, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %first_page1.i.i = getelementptr i8, ptr %.pn.in71, i32 -4
  %28 = ptrtoint ptr %first_page1.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %first_page1.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp.i.not.i.i.i.i = icmp eq i32 %31, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i, label %is_first_page.exit.i.i, !prof !170

if.then.i.i.i.i:                                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @dump_page(ptr noundef %29, ptr noundef nonnull @.str.12) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #13, !srcloc !177
  unreachable

is_first_page.exit.i.i:                           ; preds = %list_del.exit
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %29, align 4
  %34 = and i32 %33, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %is_first_page.exit.i.i.do.body.i_crit_edge, !prof !170

is_first_page.exit.i.i.do.body.i_crit_edge:       ; preds = %is_first_page.exit.i.i
  br label %do.body.i

if.then.i.i:                                      ; preds = %is_first_page.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @dump_page(ptr noundef %29, ptr noundef nonnull @.str.11) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 481, 0\0A.popsection", ""() #13, !srcloc !178
  unreachable

do.body.i:                                        ; preds = %get_next_page.exit.i.do.body.i_crit_edge, %is_first_page.exit.i.i.do.body.i_crit_edge
  %page.0.i = phi ptr [ %54, %get_next_page.exit.i.do.body.i_crit_edge ], [ %29, %is_first_page.exit.i.i.do.body.i_crit_edge ]
  call void @__might_sleep(ptr noundef nonnull @.str.22, i32 noundef 788) #13
  %35 = getelementptr inbounds %struct.page, ptr %page.0.i, i32 0, i32 1
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %35, align 4
  %and.i.i.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !164

if.then.i.i.i:                                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i.i = add i32 %37, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %page.0.i to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %38, %if.end.i.i.i ]
  %39 = inttoptr i32 %retval.0.i.i.i to ptr
  %40 = getelementptr inbounds %struct.page, ptr %39, i32 0, i32 1
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %40, align 4
  %and.i.i.i.i.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_flags.exit.i.i.i, label %if.then.i.i.i3.i, !prof !164

if.then.i.i.i3.i:                                 ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %43 = inttoptr i32 %retval.0.i.i.i to ptr
  call void @dump_page(ptr noundef %43, ptr noundef nonnull @.str.15) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #13, !srcloc !184
  unreachable

folio_flags.exit.i.i.i:                           ; preds = %_compound_head.exit.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %39, i32 noundef 4) #13
  %44 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %39, align 4
  %and.i.i4.i.i.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i4.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %folio_trylock.exit.i.i, label %folio_flags.exit.i.i.i.if.then.i4.i_crit_edge

folio_flags.exit.i.i.i.if.then.i4.i_crit_edge:    ; preds = %folio_flags.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i4.i

folio_trylock.exit.i.i:                           ; preds = %folio_flags.exit.i.i.i
  call void @llvm.prefetch.p0(ptr %39, i32 1, i32 3, i32 1) #13
  %46 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %39, ptr %39, i32 1, ptr elementtype(i32) %39) #13, !srcloc !185
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %46, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !186
  %and1.i.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %phi.cmp.i.i.i.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i.i, label %folio_trylock.exit.i.i.lock_page.exit.i_crit_edge, label %folio_trylock.exit.i.i.if.then.i4.i_crit_edge

folio_trylock.exit.i.i.if.then.i4.i_crit_edge:    ; preds = %folio_trylock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i4.i

folio_trylock.exit.i.i.lock_page.exit.i_crit_edge: ; preds = %folio_trylock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lock_page.exit.i

if.then.i4.i:                                     ; preds = %folio_trylock.exit.i.i.if.then.i4.i_crit_edge, %folio_flags.exit.i.i.i.if.then.i4.i_crit_edge
  call void @__folio_lock(ptr noundef %39) #13
  br label %lock_page.exit.i

lock_page.exit.i:                                 ; preds = %if.then.i4.i, %folio_trylock.exit.i.i.lock_page.exit.i_crit_edge
  %private.i.i.i = getelementptr inbounds %struct.page, ptr %page.0.i, i32 0, i32 1, i32 0, i32 3
  %47 = ptrtoint ptr %private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %private.i.i.i, align 4
  %49 = inttoptr i32 %48 to ptr
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %bf.load.i.i.i = load i32, ptr %49, align 4
  %51 = and i32 %bf.load.i.i.i, 130560
  call void @__sanitizer_cov_trace_const_cmp4(i32 45056, i32 %51)
  %cmp.not.i.i.i = icmp eq i32 %51, 45056
  br i1 %cmp.not.i.i.i, label %get_zspage.exit.i.i, label %do.body2.i.i.i, !prof !164

do.body2.i.i.i:                                   ; preds = %lock_page.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 817, 0\0A.popsection", ""() #13, !srcloc !166
  unreachable

get_zspage.exit.i.i:                              ; preds = %lock_page.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load.i.i.i)
  %tobool.i.i.i = icmp slt i32 %bf.load.i.i.i, 0
  br i1 %tobool.i.i.i, label %get_zspage.exit.i.i.lock_zspage.exit_crit_edge, label %get_next_page.exit.i, !prof !170

get_zspage.exit.i.i.lock_zspage.exit_crit_edge:   ; preds = %get_zspage.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lock_zspage.exit

get_next_page.exit.i:                             ; preds = %get_zspage.exit.i.i
  %index.i.i = getelementptr inbounds %struct.page, ptr %page.0.i, i32 0, i32 1, i32 0, i32 2
  %52 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %index.i.i, align 4
  %54 = inttoptr i32 %53 to ptr
  %cmp.not.i = icmp eq i32 %53, 0
  br i1 %cmp.not.i, label %get_next_page.exit.i.lock_zspage.exit_crit_edge, label %get_next_page.exit.i.do.body.i_crit_edge

get_next_page.exit.i.do.body.i_crit_edge:         ; preds = %get_next_page.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

get_next_page.exit.i.lock_zspage.exit_crit_edge:  ; preds = %get_next_page.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lock_zspage.exit

lock_zspage.exit:                                 ; preds = %get_next_page.exit.i.lock_zspage.exit_crit_edge, %get_zspage.exit.i.i.lock_zspage.exit_crit_edge
  %55 = ptrtoint ptr %zspage.072 to i32
  call void @__asan_load4_noabort(i32 %55)
  %bf.load.i = load i32, ptr %zspage.072, align 4
  %56 = and i32 %bf.load.i, 130560
  call void @__sanitizer_cov_trace_const_cmp4(i32 45056, i32 %56)
  %cmp.not.i58 = icmp eq i32 %56, 45056
  br i1 %cmp.not.i58, label %get_zspage_mapping.exit, label %do.body2.i, !prof !164

do.body2.i:                                       ; preds = %lock_zspage.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 509, 0\0A.popsection", ""() #13, !srcloc !179
  unreachable

get_zspage_mapping.exit:                          ; preds = %lock_zspage.exit
  %57 = and i32 %bf.load.i, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp18.not = icmp eq i32 %57, 0
  br i1 %cmp18.not, label %do.end28, label %do.body22, !prof !164

do.body22:                                        ; preds = %get_zspage_mapping.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1993, 0\0A.popsection", ""() #13, !srcloc !203
  unreachable

do.end28:                                         ; preds = %get_zspage_mapping.exit
  %bf.lshr10.i = lshr i32 %bf.load.i, 20
  %bf.clear11.i = and i32 %bf.lshr10.i, 511
  %arrayidx30 = getelementptr [255 x ptr], ptr %size_class, i32 0, i32 %bf.clear11.i
  %58 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx30, align 4
  call void @_raw_spin_lock(ptr noundef %59) #13
  call fastcc void @__free_zspage(ptr noundef %add.ptr, ptr noundef %59, ptr noundef %zspage.072)
  call void @_raw_spin_unlock(ptr noundef %59) #13
  %cmp15.not = icmp eq ptr %.pn73, %free_pages
  br i1 %cmp15.not, label %do.end28.for.end39_crit_edge, label %do.end28.for.body16_crit_edge

do.end28.for.body16_crit_edge:                    ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body16

do.end28.for.end39_crit_edge:                     ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end39

for.end39:                                        ; preds = %do.end28.for.end39_crit_edge, %for.end.for.end39_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %free_pages) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zs_stats_size_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @zs_stats_size_show, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zs_stats_size_show(ptr noundef %s, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37) #13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %total_freeable.059 = phi i32 [ 0, %entry ], [ %total_freeable.1, %for.inc.for.body_crit_edge ]
  %total_pages.058 = phi i32 [ 0, %entry ], [ %total_pages.1, %for.inc.for.body_crit_edge ]
  %total_used_objs.057 = phi i32 [ 0, %entry ], [ %total_used_objs.1, %for.inc.for.body_crit_edge ]
  %total_objs.056 = phi i32 [ 0, %entry ], [ %total_objs.1, %for.inc.for.body_crit_edge ]
  %total_class_almost_empty.055 = phi i32 [ 0, %entry ], [ %total_class_almost_empty.1, %for.inc.for.body_crit_edge ]
  %total_class_almost_full.054 = phi i32 [ 0, %entry ], [ %total_class_almost_full.1, %for.inc.for.body_crit_edge ]
  %i.052 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.zs_pool, ptr %1, i32 0, i32 1, i32 %i.052
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %index = getelementptr inbounds %struct.size_class, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %i.052)
  %cmp1.not = icmp eq i32 %5, %i.052
  br i1 %cmp1.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %for.body
  tail call void @_raw_spin_lock(ptr noundef %3) #13
  %arrayidx.i = getelementptr %struct.size_class, ptr %3, i32 0, i32 6, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %arrayidx.i47 = getelementptr %struct.size_class, ptr %3, i32 0, i32 6, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx.i47 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i47, align 4
  %arrayidx.i49 = getelementptr %struct.size_class, ptr %3, i32 0, i32 6, i32 0, i32 4
  %10 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i49, align 4
  %arrayidx.i51 = getelementptr %struct.size_class, ptr %3, i32 0, i32 6, i32 0, i32 5
  %12 = ptrtoint ptr %arrayidx.i51 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i51, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.not.i = icmp ugt i32 %11, %13
  br i1 %cmp.not.i, label %if.end.i, label %if.end.zs_can_compact.exit_crit_edge

if.end.zs_can_compact.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %zs_can_compact.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i = sub i32 %11, %13
  %objs_per_zspage.i = getelementptr inbounds %struct.size_class, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %objs_per_zspage.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %objs_per_zspage.i, align 4
  %div.i = udiv i32 %sub.i, %15
  %pages_per_zspage.i = getelementptr inbounds %struct.size_class, ptr %3, i32 0, i32 4
  %16 = ptrtoint ptr %pages_per_zspage.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pages_per_zspage.i, align 4
  %mul.i = mul i32 %17, %div.i
  br label %zs_can_compact.exit

zs_can_compact.exit:                              ; preds = %if.end.i, %if.end.zs_can_compact.exit_crit_edge
  %retval.0.i = phi i32 [ %mul.i, %if.end.i ], [ 0, %if.end.zs_can_compact.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %3) #13
  %objs_per_zspage7 = getelementptr inbounds %struct.size_class, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %objs_per_zspage7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %objs_per_zspage7, align 4
  %div = udiv i32 %11, %19
  %pages_per_zspage = getelementptr inbounds %struct.size_class, ptr %3, i32 0, i32 4
  %20 = ptrtoint ptr %pages_per_zspage to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pages_per_zspage, align 4
  %mul = mul i32 %21, %div
  %size = getelementptr inbounds %struct.size_class, ptr %3, i32 0, i32 2
  %22 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.38, i32 noundef %i.052, i32 noundef %23, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %mul, i32 noundef %21, i32 noundef %retval.0.i) #13
  %add = add i32 %7, %total_class_almost_full.054
  %add9 = add i32 %9, %total_class_almost_empty.055
  %add10 = add i32 %11, %total_objs.056
  %add11 = add i32 %13, %total_used_objs.057
  %add12 = add i32 %mul, %total_pages.058
  %add13 = add i32 %retval.0.i, %total_freeable.059
  br label %for.inc

for.inc:                                          ; preds = %zs_can_compact.exit, %for.body.for.inc_crit_edge
  %total_class_almost_full.1 = phi i32 [ %total_class_almost_full.054, %for.body.for.inc_crit_edge ], [ %add, %zs_can_compact.exit ]
  %total_class_almost_empty.1 = phi i32 [ %total_class_almost_empty.055, %for.body.for.inc_crit_edge ], [ %add9, %zs_can_compact.exit ]
  %total_objs.1 = phi i32 [ %total_objs.056, %for.body.for.inc_crit_edge ], [ %add10, %zs_can_compact.exit ]
  %total_used_objs.1 = phi i32 [ %total_used_objs.057, %for.body.for.inc_crit_edge ], [ %add11, %zs_can_compact.exit ]
  %total_pages.1 = phi i32 [ %total_pages.058, %for.body.for.inc_crit_edge ], [ %add12, %zs_can_compact.exit ]
  %total_freeable.1 = phi i32 [ %total_freeable.059, %for.body.for.inc_crit_edge ], [ %add13, %zs_can_compact.exit ]
  %inc = add nuw nsw i32 %i.052, 1
  %exitcond.not = icmp eq i32 %inc, 255
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.39) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef %total_class_almost_full.1, i32 noundef %total_class_almost_empty.1, i32 noundef %total_objs.1, i32 noundef %total_used_objs.1, i32 noundef %total_pages.1, ptr noundef nonnull @.str.42, i32 noundef %total_freeable.1) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_anon_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zs_page_migrate(ptr nocapture noundef readonly %mapping, ptr noundef %newpage, ptr noundef %page, i32 noundef %mode) #2 align 64 {
entry:
  %pages.i = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mode)
  %cmp = icmp eq i32 %mode, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %entry
  %call = tail call i32 @PageMovable(ptr noundef %page) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then4, label %do.body12, !prof !170

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.43) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1860, 0\0A.popsection", ""() #13, !srcloc !204
  unreachable

do.body12:                                        ; preds = %do.body
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i.not.i = icmp eq i32 %1, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PageIsolated.exit, !prof !170

if.then.i:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.12) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 921, 0\0A.popsection", ""() #13, !srcloc !205
  unreachable

PageIsolated.exit:                                ; preds = %do.body12
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %page, align 4
  %4 = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool14.not = icmp eq i32 %4, 0
  br i1 %tobool14.not, label %if.then23, label %do.end32, !prof !170

if.then23:                                        ; preds = %PageIsolated.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.44) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1861, 0\0A.popsection", ""() #13, !srcloc !206
  unreachable

do.end32:                                         ; preds = %PageIsolated.exit
  %private_data = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 14
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private_data, align 4
  %migrate_lock = getelementptr inbounds %struct.zs_pool, ptr %6, i32 0, i32 10
  tail call void @_raw_write_lock(ptr noundef %migrate_lock) #13
  %private.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %7 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %private.i, align 4
  %9 = inttoptr i32 %8 to ptr
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load.i = load i32, ptr %9, align 4
  %11 = and i32 %bf.load.i, 130560
  call void @__sanitizer_cov_trace_const_cmp4(i32 45056, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 45056
  br i1 %cmp.not.i, label %get_zspage.exit, label %do.body2.i, !prof !164

do.body2.i:                                       ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 817, 0\0A.popsection", ""() #13, !srcloc !166
  unreachable

get_zspage.exit:                                  ; preds = %do.end32
  %bf.lshr.i = lshr i32 %bf.load.i, 20
  %bf.clear.i = and i32 %bf.lshr.i, 511
  %arrayidx.i = getelementptr %struct.zs_pool, ptr %6, i32 0, i32 1, i32 %bf.clear.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  tail call void @_raw_spin_lock(ptr noundef %13) #13
  %lock.i = getelementptr inbounds %struct.zspage, ptr %9, i32 0, i32 5
  tail call void @_raw_write_lock(ptr noundef %lock.i) #13
  %14 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %17 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %17, 512
  %18 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %21, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !168
  %22 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i1.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 213
  %26 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %27, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !169
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %page, i32 noundef %or.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %28 = load i32, ptr @pgprot_kernel, align 4
  %or.i109 = or i32 %28, 512
  %29 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i.i.i110 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i110 to ptr
  %preempt_count.i.i.i.i111 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i111 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i111, align 4
  %add.i.i.i112 = add i32 %32, 1
  store volatile i32 %add.i.i.i112, ptr %preempt_count.i.i.i.i111, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !168
  %33 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i1.i.i113 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i1.i.i113 to ptr
  %task.i.i.i.i114 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task.i.i.i.i114 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task.i.i.i.i114, align 8
  %pagefault_disabled.i.i.i.i115 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 213
  %37 = ptrtoint ptr %pagefault_disabled.i.i.i.i115 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pagefault_disabled.i.i.i.i115, align 8
  %inc.i.i.i.i116 = add i32 %38, 1
  store i32 %inc.i.i.i.i116, ptr %pagefault_disabled.i.i.i.i115, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !169
  %call.i.i117 = tail call ptr @__kmap_local_page_prot(ptr noundef %newpage, i32 noundef %or.i109) #13
  %39 = call ptr @memcpy(ptr %call.i.i117, ptr %call.i.i, i32 4096)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i117) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !172
  %40 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i1.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 213
  %44 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %45, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !173
  %46 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %49, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 %16
  %add.ptr44 = getelementptr i8, ptr %call.i.i, i32 4096
  %cmp45163 = icmp ult ptr %add.ptr, %add.ptr44
  br i1 %cmp45163, label %for.body.lr.ph, label %get_zspage.exit.do.end55_crit_edge

get_zspage.exit.do.end55_crit_edge:               ; preds = %get_zspage.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end55

for.body.lr.ph:                                   ; preds = %get_zspage.exit
  %index.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %sub.ptr.lhs.cast.i = ptrtoint ptr %newpage to i32
  %size = getelementptr inbounds %struct.size_class, ptr %13, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %addr.0164 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr51, %for.inc.for.body_crit_edge ]
  %50 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %private.i, align 4
  %52 = inttoptr i32 %51 to ptr
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %bf.load.i.i = load i32, ptr %52, align 4
  %54 = and i32 %bf.load.i.i, 130560
  call void @__sanitizer_cov_trace_const_cmp4(i32 45056, i32 %54)
  %cmp.not.i.i = icmp eq i32 %54, 45056
  br i1 %cmp.not.i.i, label %get_zspage.exit.i, label %do.body2.i.i, !prof !164

do.body2.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 817, 0\0A.popsection", ""() #13, !srcloc !166
  unreachable

get_zspage.exit.i:                                ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load.i.i)
  %tobool.i.i = icmp slt i32 %bf.load.i.i, 0
  br i1 %tobool.i.i, label %do.body.i, label %get_zspage.exit.i.if.end20.i_crit_edge, !prof !170

get_zspage.exit.i.if.end20.i_crit_edge:           ; preds = %get_zspage.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20.i

do.body.i:                                        ; preds = %get_zspage.exit.i
  %55 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %56)
  %cmp.i.not.i.i.i = icmp eq i32 %56, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %is_first_page.exit.i, !prof !170

if.then.i.i.i:                                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.12) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #13, !srcloc !177
  unreachable

is_first_page.exit.i:                             ; preds = %do.body.i
  %57 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %page, align 4
  %59 = and i32 %58, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool4.not.i = icmp eq i32 %59, 0
  br i1 %tobool4.not.i, label %if.then13.i, label %is_first_page.exit.i.if.end20.i_crit_edge, !prof !170

is_first_page.exit.i.if.end20.i_crit_edge:        ; preds = %is_first_page.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20.i

if.then13.i:                                      ; preds = %is_first_page.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.20) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 878, 0\0A.popsection", ""() #13, !srcloc !189
  unreachable

if.end20.i:                                       ; preds = %is_first_page.exit.i.if.end20.i_crit_edge, %get_zspage.exit.i.if.end20.i_crit_edge
  %handle.0.in.i = phi ptr [ %addr.0164, %get_zspage.exit.i.if.end20.i_crit_edge ], [ %index.i, %is_first_page.exit.i.if.end20.i_crit_edge ]
  %60 = ptrtoint ptr %handle.0.in.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %handle.0.i = load i32, ptr %handle.0.in.i, align 4
  %and.i = and i32 %handle.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool21.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool21.not.i, label %if.end20.i.for.inc_crit_edge, label %if.then47

if.end20.i.for.inc_crit_edge:                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then47:                                        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  %and24.i = and i32 %handle.0.i, -2
  %61 = inttoptr i32 %and24.i to ptr
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %64 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %65 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %and.i118 = and i32 %63, 4094
  %sub.ptr.rhs.cast.i = ptrtoint ptr %64 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  %add.i = add i32 %sub.ptr.div.i, %65
  %66 = shl i32 %add.i, 12
  %shl1.i = or i32 %66, %and.i118
  store i32 %shl1.i, ptr %61, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then47, %if.end20.i.for.inc_crit_edge
  %67 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %size, align 4
  %add.ptr51 = getelementptr i8, ptr %addr.0164, i32 %68
  %cmp45 = icmp ult ptr %add.ptr51, %add.ptr44
  br i1 %cmp45, label %for.inc.for.body_crit_edge, label %for.inc.do.end55_crit_edge

for.inc.do.end55_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end55

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

do.end55:                                         ; preds = %for.inc.do.end55_crit_edge, %get_zspage.exit.do.end55_crit_edge
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !172
  %69 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i1.i120 = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i1.i120 to ptr
  %task.i.i.i121 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %task.i.i.i121 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %task.i.i.i121, align 8
  %pagefault_disabled.i.i.i122 = getelementptr inbounds %struct.task_struct, ptr %72, i32 0, i32 213
  %73 = ptrtoint ptr %pagefault_disabled.i.i.i122 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %pagefault_disabled.i.i.i122, align 8
  %dec.i.i.i123 = add i32 %74, -1
  store i32 %dec.i.i.i123, ptr %pagefault_disabled.i.i.i122, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !173
  %75 = tail call i32 @llvm.read_register.i32(metadata !154) #13
  %and.i.i.i.i124 = and i32 %75, -16384
  %76 = inttoptr i32 %and.i.i.i.i124 to ptr
  %preempt_count.i.i.i125 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %preempt_count.i.i.i125 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %preempt_count.i.i.i125, align 4
  %sub.i.i126 = add i32 %78, -1
  store volatile i32 %sub.i.i126, ptr %preempt_count.i.i.i125, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pages.i) #13
  %79 = call ptr @memset(ptr %pages.i, i32 0, i32 16)
  %first_page1.i.i = getelementptr inbounds %struct.zspage, ptr %9, i32 0, i32 3
  %80 = ptrtoint ptr %first_page1.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %first_page1.i.i, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %83)
  %cmp.i.not.i.i.i.i = icmp eq i32 %83, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i, label %is_first_page.exit.i.i, !prof !170

if.then.i.i.i.i:                                  ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %81, ptr noundef nonnull @.str.12) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #13, !srcloc !177
  unreachable

is_first_page.exit.i.i:                           ; preds = %do.end55
  %84 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %81, align 4
  %86 = and i32 %85, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.not.i.i = icmp eq i32 %86, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %is_first_page.exit.i.i.do.body.i127_crit_edge, !prof !170

is_first_page.exit.i.i.do.body.i127_crit_edge:    ; preds = %is_first_page.exit.i.i
  br label %do.body.i127

if.then.i.i:                                      ; preds = %is_first_page.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %81, ptr noundef nonnull @.str.11) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 481, 0\0A.popsection", ""() #13, !srcloc !178
  unreachable

do.body.i127:                                     ; preds = %get_next_page.exit.i.do.body.i127_crit_edge, %is_first_page.exit.i.i.do.body.i127_crit_edge
  %page.0.i = phi ptr [ %96, %get_next_page.exit.i.do.body.i127_crit_edge ], [ %81, %is_first_page.exit.i.i.do.body.i127_crit_edge ]
  %idx.0.i = phi i32 [ %inc.i, %get_next_page.exit.i.do.body.i127_crit_edge ], [ 0, %is_first_page.exit.i.i.do.body.i127_crit_edge ]
  %cmp.i = icmp eq ptr %page.0.i, %page
  %spec.select.i = select i1 %cmp.i, ptr %newpage, ptr %page.0.i
  %87 = getelementptr [4 x ptr], ptr %pages.i, i32 0, i32 %idx.0.i
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %spec.select.i, ptr %87, align 4
  %inc.i = add i32 %idx.0.i, 1
  %private.i.i.i = getelementptr inbounds %struct.page, ptr %page.0.i, i32 0, i32 1, i32 0, i32 3
  %89 = ptrtoint ptr %private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %private.i.i.i, align 4
  %91 = inttoptr i32 %90 to ptr
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %bf.load.i.i.i = load i32, ptr %91, align 4
  %93 = and i32 %bf.load.i.i.i, 130560
  call void @__sanitizer_cov_trace_const_cmp4(i32 45056, i32 %93)
  %cmp.not.i.i.i = icmp eq i32 %93, 45056
  br i1 %cmp.not.i.i.i, label %get_zspage.exit.i.i, label %do.body2.i.i.i, !prof !164

do.body2.i.i.i:                                   ; preds = %do.body.i127
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 817, 0\0A.popsection", ""() #13, !srcloc !166
  unreachable

get_zspage.exit.i.i:                              ; preds = %do.body.i127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load.i.i.i)
  %tobool.i.i.i = icmp slt i32 %bf.load.i.i.i, 0
  br i1 %tobool.i.i.i, label %get_zspage.exit.i.i.do.end.i_crit_edge, label %get_next_page.exit.i, !prof !170

get_zspage.exit.i.i.do.end.i_crit_edge:           ; preds = %get_zspage.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

get_next_page.exit.i:                             ; preds = %get_zspage.exit.i.i
  %index.i.i = getelementptr inbounds %struct.page, ptr %page.0.i, i32 0, i32 1, i32 0, i32 2
  %94 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %index.i.i, align 4
  %96 = inttoptr i32 %95 to ptr
  %cmp3.not.i = icmp eq i32 %95, 0
  br i1 %cmp3.not.i, label %get_next_page.exit.i.do.end.i_crit_edge, label %get_next_page.exit.i.do.body.i127_crit_edge

get_next_page.exit.i.do.body.i127_crit_edge:      ; preds = %get_next_page.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i127

get_next_page.exit.i.do.end.i_crit_edge:          ; preds = %get_next_page.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

do.end.i:                                         ; preds = %get_next_page.exit.i.do.end.i_crit_edge, %get_zspage.exit.i.i.do.end.i_crit_edge
  %pages_per_zspage.i.i = getelementptr inbounds %struct.size_class, ptr %13, i32 0, i32 4
  %97 = ptrtoint ptr %pages_per_zspage.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %pages_per_zspage.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp21.i.i = icmp sgt i32 %98, 0
  br i1 %cmp21.i.i, label %if.then.peel.i.i, label %do.end.i.create_page_chain.exit.i_crit_edge

do.end.i.create_page_chain.exit.i_crit_edge:      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %create_page_chain.exit.i

if.then.peel.i.i:                                 ; preds = %do.end.i
  %99 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pages.i, align 4
  %private1.i.peel.i.i = getelementptr inbounds %struct.page, ptr %100, i32 0, i32 1, i32 0, i32 3
  %101 = ptrtoint ptr %private1.i.peel.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %8, ptr %private1.i.peel.i.i, align 4
  %index.peel.i.i = getelementptr inbounds %struct.page, ptr %100, i32 0, i32 1, i32 0, i32 2
  %102 = ptrtoint ptr %index.peel.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %index.peel.i.i, align 4
  %103 = ptrtoint ptr %first_page1.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %100, ptr %first_page1.i.i, align 4
  %104 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %100, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %105)
  %cmp.i.not.i.peel.i.i = icmp eq i32 %105, -1
  br i1 %cmp.i.not.i.peel.i.i, label %if.then.i.i.i128, label %SetPagePrivate.exit.peel.i.i, !prof !170

SetPagePrivate.exit.peel.i.i:                     ; preds = %if.then.peel.i.i
  %objs_per_zspage.i.i = getelementptr inbounds %struct.size_class, ptr %13, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 13, ptr noundef %100) #13
  %106 = ptrtoint ptr %objs_per_zspage.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %objs_per_zspage.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %107)
  %cmp2.peel.i.i = icmp eq i32 %107, 1
  br i1 %cmp2.peel.i.i, label %land.rhs.peel.i.i, label %SetPagePrivate.exit.peel.i.i.if.end8.peel.i.i_crit_edge

SetPagePrivate.exit.peel.i.i.if.end8.peel.i.i_crit_edge: ; preds = %SetPagePrivate.exit.peel.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.peel.i.i

land.rhs.peel.i.i:                                ; preds = %SetPagePrivate.exit.peel.i.i
  %108 = ptrtoint ptr %pages_per_zspage.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %pages_per_zspage.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %109)
  %cmp4.peel.i.i = icmp eq i32 %109, 1
  br i1 %cmp4.peel.i.i, label %if.then6.peel.i.i, label %land.rhs.peel.i.i.if.end8.peel.i.i_crit_edge, !prof !170

land.rhs.peel.i.i.if.end8.peel.i.i_crit_edge:     ; preds = %land.rhs.peel.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.peel.i.i

if.then6.peel.i.i:                                ; preds = %land.rhs.peel.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %110 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %110)
  %bf.load.i.peel.i.i = load i32, ptr %9, align 4
  %bf.set.i.peel.i.i = or i32 %bf.load.i.peel.i.i, -2147483648
  store i32 %bf.set.i.peel.i.i, ptr %9, align 4
  br label %if.end8.peel.i.i

if.end8.peel.i.i:                                 ; preds = %if.then6.peel.i.i, %land.rhs.peel.i.i.if.end8.peel.i.i_crit_edge, %SetPagePrivate.exit.peel.i.i.if.end8.peel.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %98)
  %exitcond.peel.not.i.i = icmp eq i32 %98, 1
  br i1 %exitcond.peel.not.i.i, label %if.end8.peel.i.i.create_page_chain.exit.i_crit_edge, label %if.end8.peel.i.i.if.end8.i.i_crit_edge

if.end8.peel.i.i.if.end8.i.i_crit_edge:           ; preds = %if.end8.peel.i.i
  br label %if.end8.i.i

if.end8.peel.i.i.create_page_chain.exit.i_crit_edge: ; preds = %if.end8.peel.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %create_page_chain.exit.i

if.then.i.i.i128:                                 ; preds = %if.then.peel.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %100, ptr noundef nonnull @.str.12) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #13, !srcloc !181
  unreachable

if.end8.i.i:                                      ; preds = %if.end8.i.i.if.end8.i.i_crit_edge, %if.end8.peel.i.i.if.end8.i.i_crit_edge
  %prev_page.023.i.i = phi ptr [ %112, %if.end8.i.i.if.end8.i.i_crit_edge ], [ %100, %if.end8.peel.i.i.if.end8.i.i_crit_edge ]
  %i.022.i.i = phi i32 [ %inc.i.i, %if.end8.i.i.if.end8.i.i_crit_edge ], [ 1, %if.end8.peel.i.i.if.end8.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr ptr, ptr %pages.i, i32 %i.022.i.i
  %111 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx.i.i, align 4
  %private1.i.i.i = getelementptr inbounds %struct.page, ptr %112, i32 0, i32 1, i32 0, i32 3
  %113 = ptrtoint ptr %private1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %8, ptr %private1.i.i.i, align 4
  %index.i23.i = getelementptr inbounds %struct.page, ptr %112, i32 0, i32 1, i32 0, i32 2
  %114 = ptrtoint ptr %index.i23.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %index.i23.i, align 4
  %115 = ptrtoint ptr %112 to i32
  %index7.i.i = getelementptr inbounds %struct.page, ptr %prev_page.023.i.i, i32 0, i32 1, i32 0, i32 2
  %116 = ptrtoint ptr %index7.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %index7.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.022.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %98
  br i1 %exitcond.not.i.i, label %if.end8.i.i.create_page_chain.exit.i_crit_edge, label %if.end8.i.i.if.end8.i.i_crit_edge, !llvm.loop !182

if.end8.i.i.if.end8.i.i_crit_edge:                ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i

if.end8.i.i.create_page_chain.exit.i_crit_edge:   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %create_page_chain.exit.i

create_page_chain.exit.i:                         ; preds = %if.end8.i.i.create_page_chain.exit.i_crit_edge, %if.end8.peel.i.i.create_page_chain.exit.i_crit_edge, %do.end.i.create_page_chain.exit.i_crit_edge
  %117 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %14, align 4
  %119 = getelementptr inbounds %struct.page, ptr %newpage, i32 0, i32 2
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %118, ptr %119, align 4
  %121 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %121)
  %bf.load.i.i129 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load.i.i129)
  %tobool.i.i130 = icmp slt i32 %bf.load.i.i129, 0
  br i1 %tobool.i.i130, label %if.then7.i, label %create_page_chain.exit.i.replace_sub_page.exit_crit_edge, !prof !170

create_page_chain.exit.i.replace_sub_page.exit_crit_edge: ; preds = %create_page_chain.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %replace_sub_page.exit

if.then7.i:                                       ; preds = %create_page_chain.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %index.i131 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %122 = ptrtoint ptr %index.i131 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %index.i131, align 4
  %index8.i = getelementptr inbounds %struct.page, ptr %newpage, i32 0, i32 1, i32 0, i32 2
  %124 = ptrtoint ptr %index8.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %index8.i, align 4
  br label %replace_sub_page.exit

replace_sub_page.exit:                            ; preds = %if.then7.i, %create_page_chain.exit.i.replace_sub_page.exit_crit_edge
  %call10.i = tail call ptr @page_mapping(ptr noundef %page) #13
  tail call void @__SetPageMovable(ptr noundef %newpage, ptr noundef %call10.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pages.i) #13
  tail call void @_raw_write_unlock(ptr noundef %migrate_lock) #13
  tail call void @_raw_spin_unlock(ptr noundef %13) #13
  %125 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %125)
  %bf.load.i132 = load i32, ptr %9, align 4
  %126 = and i32 %bf.load.i132, 917504
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp.i133 = icmp eq i32 %126, 0
  br i1 %cmp.i133, label %do.body2.i134, label %dec_zspage_isolation.exit, !prof !170

do.body2.i134:                                    ; preds = %replace_sub_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1793, 0\0A.popsection", ""() #13, !srcloc !207
  unreachable

dec_zspage_isolation.exit:                        ; preds = %replace_sub_page.exit
  %127 = add i32 %bf.load.i132, 917504
  %bf.shl.i = and i32 %127, 917504
  %bf.clear10.i = and i32 %bf.load.i132, -917505
  %bf.set.i = or i32 %bf.shl.i, %bf.clear10.i
  %128 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %bf.set.i, ptr %9, align 4
  tail call void @_raw_write_unlock(ptr noundef %lock.i) #13
  %129 = getelementptr inbounds %struct.page, ptr %newpage, i32 0, i32 1
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile i32, ptr %129, align 4
  %and.i.i = and i32 %131, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i136 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i136, label %if.end.i.i, label %if.then.i.i138, !prof !164

if.then.i.i138:                                   ; preds = %dec_zspage_isolation.exit
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i137 = add i32 %131, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %dec_zspage_isolation.exit
  call void @__sanitizer_cov_trace_pc() #15
  %132 = ptrtoint ptr %newpage to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i138
  %retval.0.i.i = phi i32 [ %sub.i.i137, %if.then.i.i138 ], [ %132, %if.end.i.i ]
  %133 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %133, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #13
  %134 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %135, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !170

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %133, ptr noundef nonnull @.str.45) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #13, !srcloc !208
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #13
  %136 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #13, !srcloc !176
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@zs_page_migrate, %if.then.i.i.i.i139)) #13
          to label %get_page.exit [label %if.then.i.i.i.i139], !srcloc !201

if.then.i.i.i.i139:                               ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__page_ref_mod(ptr noundef %133, i32 noundef 1) #13
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i139, %do.end5.i.i
  %137 = ptrtoint ptr %newpage to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load volatile i32, ptr %newpage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %138)
  %cmp.i.not.i.i = icmp eq i32 %138, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i140, label %page_zone.exit, !prof !170

if.then.i.i140:                                   ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %newpage, ptr noundef nonnull @.str.46) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #13, !srcloc !209
  unreachable

page_zone.exit:                                   ; preds = %get_page.exit
  %139 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %140)
  %cmp.i.not.i.i143 = icmp eq i32 %140, -1
  br i1 %cmp.i.not.i.i143, label %if.then.i.i144, label %page_zone.exit147, !prof !170

if.then.i.i144:                                   ; preds = %page_zone.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.46) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #13, !srcloc !209
  unreachable

page_zone.exit147:                                ; preds = %page_zone.exit
  %shr.i.i141 = lshr i32 %138, 30
  %arrayidx.i142 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %shr.i.i141
  %shr.i.i145 = lshr i32 %140, 30
  %arrayidx.i146 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %shr.i.i145
  %cmp62.not = icmp eq ptr %arrayidx.i142, %arrayidx.i146
  br i1 %cmp62.not, label %page_zone.exit147.if.end64_crit_edge, label %if.then63

page_zone.exit147.if.end64_crit_edge:             ; preds = %page_zone.exit147
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64

if.then63:                                        ; preds = %page_zone.exit147
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dec_zone_page_state(ptr noundef %page, i32 noundef 9) #13
  tail call void @inc_zone_page_state(ptr noundef %newpage, i32 noundef 9) #13
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %page_zone.exit147.if.end64_crit_edge
  tail call void @__ClearPageMovable(ptr noundef %page) #13
  %141 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %142)
  %cmp.i.not.i.i148 = icmp eq i32 %142, -1
  br i1 %cmp.i.not.i.i148, label %if.then.i.i149, label %reset_page.exit, !prof !170

if.then.i.i149:                                   ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.12) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #13, !srcloc !196
  unreachable

reset_page.exit:                                  ; preds = %if.end64
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %page) #13
  %143 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 0, ptr %private.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %14, i32 noundef 4) #13
  %144 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %144)
  store volatile i32 -1, ptr %14, align 4
  %index.i150 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %145 = ptrtoint ptr %index.i150 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 0, ptr %index.i150, align 4
  %146 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load volatile i32, ptr %146, align 4
  %and.i.i151 = and i32 %148, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i151)
  %tobool.not.i.i152 = icmp eq i32 %and.i.i151, 0
  br i1 %tobool.not.i.i152, label %if.end.i.i155, label %if.then.i.i154, !prof !164

if.then.i.i154:                                   ; preds = %reset_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i153 = add i32 %148, -1
  br label %_compound_head.exit.i157

if.end.i.i155:                                    ; preds = %reset_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  %149 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i157

_compound_head.exit.i157:                         ; preds = %if.end.i.i155, %if.then.i.i154
  %retval.0.i.i156 = phi i32 [ %sub.i.i153, %if.then.i.i154 ], [ %149, %if.end.i.i155 ]
  %150 = inttoptr i32 %retval.0.i.i156 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %150, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #13
  %151 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %cmp.i.i.i.i = icmp eq i32 %152, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i158, label %do.end5.i.i.i.i, !prof !170

if.then.i.i.i.i158:                               ; preds = %_compound_head.exit.i157
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %150, ptr noundef nonnull @.str.19) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #13, !srcloc !197
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i157
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !198
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #13
  %153 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #13, !srcloc !199
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %153, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !200
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@zs_page_migrate, %if.then.i.i.i.i.i)) #13
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !201

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %150, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #13
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__put_page(ptr noundef %150) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ 0, %if.then.i4.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @zs_page_isolate(ptr noundef %page, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @PageMovable(ptr noundef %page) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %do.body10, !prof !170

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.43) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1828, 0\0A.popsection", ""() #13, !srcloc !210
  unreachable

do.body10:                                        ; preds = %entry
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i.not.i = icmp eq i32 %1, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PageIsolated.exit, !prof !170

if.then.i:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.12) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 921, 0\0A.popsection", ""() #13, !srcloc !205
  unreachable

PageIsolated.exit:                                ; preds = %do.body10
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %page, align 4
  %4 = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool12.not = icmp eq i32 %4, 0
  br i1 %tobool12.not, label %do.end28, label %if.then19, !prof !164

if.then19:                                        ; preds = %PageIsolated.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.47) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1829, 0\0A.popsection", ""() #13, !srcloc !211
  unreachable

do.end28:                                         ; preds = %PageIsolated.exit
  %private.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %5 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %private.i, align 4
  %7 = inttoptr i32 %6 to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load.i = load i32, ptr %7, align 4
  %9 = and i32 %bf.load.i, 130560
  call void @__sanitizer_cov_trace_const_cmp4(i32 45056, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 45056
  br i1 %cmp.not.i, label %get_zspage.exit, label %do.body2.i, !prof !164

do.body2.i:                                       ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 817, 0\0A.popsection", ""() #13, !srcloc !166
  unreachable

get_zspage.exit:                                  ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #15
  %lock.i = getelementptr inbounds %struct.zspage, ptr %7, i32 0, i32 5
  tail call void @_raw_write_lock(ptr noundef %lock.i) #13
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load.i36 = load i32, ptr %7, align 4
  %11 = add i32 %bf.load.i36, 131072
  %bf.shl.i = and i32 %11, 917504
  %bf.clear2.i = and i32 %bf.load.i36, -917505
  %bf.set.i = or i32 %bf.shl.i, %bf.clear2.i
  store i32 %bf.set.i, ptr %7, align 4
  tail call void @_raw_write_unlock(ptr noundef %lock.i) #13
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zs_page_putback(ptr noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @PageMovable(ptr noundef %page) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %do.body10, !prof !170

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.43) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1929, 0\0A.popsection", ""() #13, !srcloc !212
  unreachable

do.body10:                                        ; preds = %entry
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i.not.i = icmp eq i32 %1, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PageIsolated.exit, !prof !170

if.then.i:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.12) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 921, 0\0A.popsection", ""() #13, !srcloc !205
  unreachable

PageIsolated.exit:                                ; preds = %do.body10
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %page, align 4
  %4 = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool12.not = icmp eq i32 %4, 0
  br i1 %tobool12.not, label %if.then21, label %do.end30, !prof !170

if.then21:                                        ; preds = %PageIsolated.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.44) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1930, 0\0A.popsection", ""() #13, !srcloc !213
  unreachable

do.end30:                                         ; preds = %PageIsolated.exit
  %private.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %5 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %private.i, align 4
  %7 = inttoptr i32 %6 to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load.i = load i32, ptr %7, align 4
  %9 = and i32 %bf.load.i, 130560
  call void @__sanitizer_cov_trace_const_cmp4(i32 45056, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 45056
  br i1 %cmp.not.i, label %get_zspage.exit, label %do.body2.i, !prof !164

do.body2.i:                                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 817, 0\0A.popsection", ""() #13, !srcloc !166
  unreachable

get_zspage.exit:                                  ; preds = %do.end30
  %lock.i = getelementptr inbounds %struct.zspage, ptr %7, i32 0, i32 5
  tail call void @_raw_write_lock(ptr noundef %lock.i) #13
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load.i38 = load i32, ptr %7, align 4
  %11 = and i32 %bf.load.i38, 917504
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp eq i32 %11, 0
  br i1 %cmp.i, label %do.body2.i39, label %dec_zspage_isolation.exit, !prof !170

do.body2.i39:                                     ; preds = %get_zspage.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/zsmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1793, 0\0A.popsection", ""() #13, !srcloc !207
  unreachable

dec_zspage_isolation.exit:                        ; preds = %get_zspage.exit
  call void @__sanitizer_cov_trace_pc() #15
  %12 = add i32 %bf.load.i38, 917504
  %bf.shl.i = and i32 %12, 917504
  %bf.clear10.i = and i32 %bf.load.i38, -917505
  %bf.set.i = or i32 %bf.shl.i, %bf.clear10.i
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %bf.set.i, ptr %7, align 4
  tail call void @_raw_write_unlock(ptr noundef %lock.i) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @PageMovable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_mapping(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zs_shrinker_scan(ptr noundef %shrinker, ptr nocapture noundef readnone %sc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %shrinker, i32 -1040
  %call = tail call i32 @zs_compact(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %spec.select = select i1 %tobool.not, i32 -1, i32 %call
  ret i32 %spec.select
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @zs_shrinker_count(ptr nocapture noundef readonly %shrinker, ptr nocapture noundef readnone %sc) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %size_class = getelementptr i8, ptr %shrinker, i32 -1036
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.011 = phi i32 [ 254, %entry ], [ %dec, %for.inc.for.body_crit_edge ]
  %pages_to_free.010 = phi i32 [ 0, %entry ], [ %pages_to_free.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [255 x ptr], ptr %size_class, i32 0, i32 %i.011
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %for.body
  %index = getelementptr inbounds %struct.size_class, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %i.011)
  %cmp1.not = icmp eq i32 %3, %i.011
  br i1 %cmp1.not, label %if.end3, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end3:                                          ; preds = %if.end
  %arrayidx.i.i = getelementptr %struct.size_class, ptr %1, i32 0, i32 6, i32 0, i32 4
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i11.i = getelementptr %struct.size_class, ptr %1, i32 0, i32 6, i32 0, i32 5
  %6 = ptrtoint ptr %arrayidx.i11.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i11.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not.i = icmp ugt i32 %5, %7
  br i1 %cmp.not.i, label %if.end.i, label %if.end3.zs_can_compact.exit_crit_edge

if.end3.zs_can_compact.exit_crit_edge:            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %zs_can_compact.exit

if.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i = sub i32 %5, %7
  %objs_per_zspage.i = getelementptr inbounds %struct.size_class, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %objs_per_zspage.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %objs_per_zspage.i, align 4
  %div.i = udiv i32 %sub.i, %9
  %pages_per_zspage.i = getelementptr inbounds %struct.size_class, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %pages_per_zspage.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pages_per_zspage.i, align 4
  %mul.i = mul i32 %11, %div.i
  br label %zs_can_compact.exit

zs_can_compact.exit:                              ; preds = %if.end.i, %if.end3.zs_can_compact.exit_crit_edge
  %retval.0.i = phi i32 [ %mul.i, %if.end.i ], [ 0, %if.end3.zs_can_compact.exit_crit_edge ]
  %add = add i32 %retval.0.i, %pages_to_free.010
  br label %for.inc

for.inc:                                          ; preds = %zs_can_compact.exit, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %pages_to_free.1 = phi i32 [ %pages_to_free.010, %if.end.for.inc_crit_edge ], [ %add, %zs_can_compact.exit ], [ %pages_to_free.010, %for.body.for.inc_crit_edge ]
  %dec = add nsw i32 %i.011, -1
  %cmp.not = icmp eq i32 %i.011, 0
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  ret i32 %pages_to_free.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_shrinker(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_shrinker(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @zs_zpool_create(ptr noundef %name, i32 noundef %gfp, ptr nocapture noundef readnone %zpool_ops, ptr nocapture noundef readnone %zpool) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @zs_create_pool(ptr noundef %name)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zs_zpool_destroy(ptr noundef %pool) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @zs_destroy_pool(ptr noundef %pool)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zs_zpool_malloc(ptr noundef %pool, i32 noundef %size, i32 noundef %gfp, ptr nocapture noundef writeonly %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @zs_malloc(ptr noundef %pool, i32 noundef %size, i32 noundef %gfp)
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %handle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %cond = sext i1 %tobool.not to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zs_zpool_free(ptr noundef %pool, i32 noundef %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @zs_free(ptr noundef %pool, i32 noundef %handle)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @zs_zpool_map(ptr noundef %pool, i32 noundef %handle, i32 noundef %mm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mm)
  %switch.selectcmp = icmp eq i32 %mm, 2
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mm)
  %switch.selectcmp3 = icmp eq i32 %mm, 1
  %switch.select4 = select i1 %switch.selectcmp3, i32 1, i32 %switch.select
  %call = tail call ptr @zs_map_object(ptr noundef %pool, i32 noundef %handle, i32 noundef %switch.select4)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zs_zpool_unmap(ptr nocapture noundef readonly %pool, i32 noundef %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @zs_unmap_object(ptr noundef %pool, i32 noundef %handle)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @zs_zpool_total_size(ptr noundef %pool) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pages_allocated.i = getelementptr inbounds %struct.zs_pool, ptr %pool, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pages_allocated.i, i32 noundef 4) #13
  %0 = ptrtoint ptr %pages_allocated.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %pages_allocated.i, align 4
  %shl = shl i32 %1, 12
  %conv = zext i32 %shl to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kern_unmount(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cpuhp_remove_state(i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zs_cpu_prepare(i32 noundef %cpu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @zs_map_area to i32)
  %2 = inttoptr i32 %add to ptr
  %vm_buf.i = getelementptr inbounds %struct.mapping_area, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %vm_buf.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vm_buf.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.__zs_cpu_up.exit_crit_edge

entry.__zs_cpu_up.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %__zs_cpu_up.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 4096) #16
  %6 = ptrtoint ptr %vm_buf.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %vm_buf.i, align 4
  %tobool3.not.i = icmp eq ptr %call7.i.i, null
  %..i = select i1 %tobool3.not.i, i32 -12, i32 0
  br label %__zs_cpu_up.exit

__zs_cpu_up.exit:                                 ; preds = %if.end.i, %entry.__zs_cpu_up.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.__zs_cpu_up.exit_crit_edge ], [ %..i, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zs_cpu_dead(i32 noundef %cpu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @zs_map_area to i32)
  %2 = inttoptr i32 %add to ptr
  %vm_buf.i = getelementptr inbounds %struct.mapping_area, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %vm_buf.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vm_buf.i, align 4
  tail call void @kfree(ptr noundef %4) #13
  %5 = ptrtoint ptr %vm_buf.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %vm_buf.i, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @zpool_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zs_stat_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @debugfs_initialized() #13
  br i1 %call, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #17
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.48, ptr noundef null) #13
  store ptr %call2, ptr @zs_stat_root, align 4
  br label %return

return:                                           ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kern_mount(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zs_init_fs_context(ptr noundef %fc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @init_pseudo(ptr noundef %fc, i32 noundef 1479104553) #13
  %tobool.not = icmp eq ptr %call, null
  %cond = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_anon_super(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @init_pseudo(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @debugfs_initialized() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }
attributes #18 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27, !28, !30, !32, !33, !34, !35, !36, !38, !40, !42, !44, !45, !47, !49, !51, !52, !54, !55, !56, !58, !60, !62, !64, !65, !67, !69, !71, !73, !75, !77, !79, !81, !82, !84, !86, !88, !90, !91, !92, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !152, !153}
!llvm.named.register.sp = !{!154}
!llvm.module.flags = !{!155, !156, !157, !158, !159, !160, !161, !162}
!llvm.ident = !{!163}

!0 = !{ptr @__UNIQUE_ID_alias256, !1, !"__UNIQUE_ID_alias256", i1 false, i1 false}
!1 = !{!"../mm/zsmalloc.c", i32 452, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../mm/zsmalloc.c", i32 457, i32 10}
!4 = !{ptr @zs_map_area, !5, !"zs_map_area", i1 false, i1 false}
!5 = !{!"../mm/zsmalloc.c", i32 456, i32 8}
!6 = !{ptr @__ksymtab_zs_get_total_pages, !7, !"__ksymtab_zs_get_total_pages", i1 false, i1 false}
!7 = !{!"../mm/zsmalloc.c", i32 1221, i32 1}
!8 = !{ptr @__ksymtab_zs_map_object, !9, !"__ksymtab_zs_map_object", i1 false, i1 false}
!9 = !{!"../mm/zsmalloc.c", i32 1298, i32 1}
!10 = !{ptr @__ksymtab_zs_unmap_object, !11, !"__ksymtab_zs_unmap_object", i1 false, i1 false}
!11 = !{!"../mm/zsmalloc.c", i32 1332, i32 1}
!12 = !{ptr @__ksymtab_zs_huge_class_size, !13, !"__ksymtab_zs_huge_class_size", i1 false, i1 false}
!13 = !{!"../mm/zsmalloc.c", i32 1351, i32 1}
!14 = !{ptr @__ksymtab_zs_malloc, !15, !"__ksymtab_zs_malloc", i1 false, i1 false}
!15 = !{!"../mm/zsmalloc.c", i32 1463, i32 1}
!16 = !{ptr @__ksymtab_zs_free, !17, !"__ksymtab_zs_free", i1 false, i1 false}
!17 = !{!"../mm/zsmalloc.c", i32 1525, i32 1}
!18 = !{ptr @__ksymtab_zs_compact, !19, !"__ksymtab_zs_compact", i1 false, i1 false}
!19 = !{!"../mm/zsmalloc.c", i32 2132, i32 1}
!20 = !{ptr @__ksymtab_zs_pool_stats, !21, !"__ksymtab_zs_pool_stats", i1 false, i1 false}
!21 = !{!"../mm/zsmalloc.c", i32 2138, i32 1}
!22 = !{ptr @zs_create_pool.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../mm/zsmalloc.c", i32 2215, i32 2}
!24 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @zs_create_pool.__key.2, !26, !"__key", i1 false, i1 false}
!26 = !{!"../mm/zsmalloc.c", i32 2286, i32 3}
!27 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @__ksymtab_zs_create_pool, !29, !"__ksymtab_zs_create_pool", i1 false, i1 false}
!29 = !{!"../mm/zsmalloc.c", i32 2315, i32 1}
!30 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../mm/zsmalloc.c", i32 2337, i32 5}
!32 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @zs_destroy_pool._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @zs_destroy_pool._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @__ksymtab_zs_destroy_pool, !37, !"__ksymtab_zs_destroy_pool", i1 false, i1 false}
!37 = !{!"../mm/zsmalloc.c", i32 2348, i32 1}
!38 = !{ptr @__initcall__kmod_zsmalloc__280_2388_zs_init6, !39, !"__initcall__kmod_zsmalloc__280_2388_zs_init6", i1 false, i1 false}
!39 = !{!"../mm/zsmalloc.c", i32 2388, i32 1}
!40 = !{ptr @__exitcall_zs_exit, !41, !"__exitcall_zs_exit", i1 false, i1 false}
!41 = !{!"../mm/zsmalloc.c", i32 2389, i32 1}
!42 = !{ptr @__UNIQUE_ID_file281, !43, !"__UNIQUE_ID_file281", i1 false, i1 false}
!43 = !{!"../mm/zsmalloc.c", i32 2391, i32 1}
!44 = !{ptr @__UNIQUE_ID_license282, !43, !"__UNIQUE_ID_license282", i1 false, i1 false}
!45 = !{ptr @__UNIQUE_ID_author283, !46, !"__UNIQUE_ID_author283", i1 false, i1 false}
!46 = !{!"../mm/zsmalloc.c", i32 2392, i32 1}
!47 = !{ptr @zs_stat_root, !48, !"zs_stat_root", i1 false, i1 false}
!48 = !{!"../mm/zsmalloc.c", i32 177, i32 23}
!49 = !{ptr @huge_class_size, !50, !"huge_class_size", i1 false, i1 false}
!50 = !{!"../mm/zsmalloc.c", i32 199, i32 15}
!51 = !{ptr @__pcpu_unique_zs_map_area, !5, !"__pcpu_unique_zs_map_area", i1 false, i1 false}
!52 = !{ptr @.str.7, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../include/linux/local_lock_internal.h", i32 30, i32 2}
!54 = !{ptr @.str.8, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.9, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.10, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/linux/local_lock_internal.h", i32 36, i32 2}
!58 = !{ptr @.str.11, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../mm/zsmalloc.c", i32 481, i32 2}
!60 = !{ptr @.str.12, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!62 = !{ptr @migrate_lock_init.__key, !63, !"__key", i1 false, i1 false}
!63 = !{!"../mm/zsmalloc.c", i32 1757, i32 2}
!64 = !{ptr @.str.13, !63, !"<string literal>", i1 false, i1 false}
!65 = distinct !{null, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!67 = !{ptr @.str.15, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!69 = distinct !{null, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!71 = !{ptr @.str.17, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../mm/zsmalloc.c", i32 936, i32 3}
!73 = !{ptr @.str.18, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../include/linux/page-flags.h", i32 414, i32 1}
!75 = !{ptr @.str.19, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../include/linux/mm.h", i32 717, i32 2}
!77 = !{ptr @.str.20, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../mm/zsmalloc.c", i32 878, i32 3}
!79 = !{ptr @init_deferred_free.__key, !80, !"__key", i1 false, i1 false}
!80 = !{!"../mm/zsmalloc.c", i32 2008, i32 2}
!81 = !{ptr @.str.21, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.22, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!84 = !{ptr @.str.23, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../mm/zsmalloc.c", i32 327, i32 42}
!86 = !{ptr @.str.24, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../mm/zsmalloc.c", i32 332, i32 42}
!88 = !{ptr @.str.25, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../mm/zsmalloc.c", i32 649, i32 3}
!90 = !{ptr @.str.26, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @zs_pool_stat_create._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @zs_pool_stat_create._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.27, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../mm/zsmalloc.c", i32 655, i32 22}
!95 = !{ptr @zs_stats_size_fops, !96, !"zs_stats_size_fops", i1 false, i1 false}
!96 = !{!"../mm/zsmalloc.c", i32 644, i32 1}
!97 = !{ptr @.str.28, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../mm/zsmalloc.c", i32 599, i32 16}
!99 = !{ptr @.str.29, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../mm/zsmalloc.c", i32 600, i32 4}
!101 = !{ptr @.str.30, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../mm/zsmalloc.c", i32 600, i32 13}
!103 = !{ptr @.str.31, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../mm/zsmalloc.c", i32 600, i32 21}
!105 = !{ptr @.str.32, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../mm/zsmalloc.c", i32 600, i32 36}
!107 = !{ptr @.str.33, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../mm/zsmalloc.c", i32 601, i32 4}
!109 = !{ptr @.str.34, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../mm/zsmalloc.c", i32 601, i32 21}
!111 = !{ptr @.str.35, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../mm/zsmalloc.c", i32 601, i32 33}
!113 = !{ptr @.str.36, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../mm/zsmalloc.c", i32 602, i32 4}
!115 = !{ptr @.str.37, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../mm/zsmalloc.c", i32 602, i32 24}
!117 = !{ptr @.str.38, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../mm/zsmalloc.c", i32 622, i32 17}
!119 = !{ptr @.str.39, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../mm/zsmalloc.c", i32 636, i32 14}
!121 = !{ptr @.str.40, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../mm/zsmalloc.c", i32 637, i32 16}
!123 = !{ptr @.str.41, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../mm/zsmalloc.c", i32 638, i32 4}
!125 = !{ptr @.str.42, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../mm/zsmalloc.c", i32 638, i32 13}
!127 = !{ptr @zsmalloc_mnt, !128, !"zsmalloc_mnt", i1 false, i1 false}
!128 = !{!"../mm/zsmalloc.c", i32 181, i32 25}
!129 = !{ptr @zsmalloc_aops, !130, !"zsmalloc_aops", i1 false, i1 false}
!130 = !{!"../mm/zsmalloc.c", i32 1938, i32 46}
!131 = !{ptr @.str.43, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../mm/zsmalloc.c", i32 1860, i32 2}
!133 = !{ptr @.str.44, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../mm/zsmalloc.c", i32 1861, i32 2}
!135 = !{ptr @.str.45, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!137 = !{ptr @.str.46, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../include/linux/mm.h", i32 1368, i32 10}
!139 = !{ptr @.str.47, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../mm/zsmalloc.c", i32 1829, i32 2}
!141 = !{ptr @.str.48, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../mm/zsmalloc.c", i32 440, i32 14}
!143 = !{ptr @zs_zpool_driver, !144, !"zs_zpool_driver", i1 false, i1 false}
!144 = !{!"../mm/zsmalloc.c", i32 439, i32 28}
!145 = !{ptr @.str.49, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../mm/zsmalloc.c", i32 2358, i32 47}
!147 = !{ptr @zsmalloc_fs, !148, !"zsmalloc_fs", i1 false, i1 false}
!148 = !{!"../mm/zsmalloc.c", i32 1733, i32 32}
!149 = !{ptr @.str.50, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../mm/zsmalloc.c", i32 573, i32 3}
!151 = !{ptr @.str.51, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @zs_stat_init._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @zs_stat_init._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{!"sp"}
!155 = !{i32 1, !"wchar_size", i32 2}
!156 = !{i32 1, !"min_enum_size", i32 4}
!157 = !{i32 8, !"branch-target-enforcement", i32 0}
!158 = !{i32 8, !"sign-return-address", i32 0}
!159 = !{i32 8, !"sign-return-address-all", i32 0}
!160 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!161 = !{i32 7, !"uwtable", i32 1}
!162 = !{i32 7, !"frame-pointer", i32 2}
!163 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!164 = !{!"branch_weights", i32 2000, i32 1}
!165 = !{i64 2154790732, i64 2154791211, i64 2154790769, i64 2154790825, i64 2154790859, i64 2154790883, i64 2154790924, i64 2154790945, i64 2154790973, i64 2154791007}
!166 = !{i64 2154754178, i64 2154754656, i64 2154754215, i64 2154754271, i64 2154754305, i64 2154754329, i64 2154754370, i64 2154754391, i64 2154754419, i64 2154754453}
!167 = !{i64 2154792428}
!168 = !{i64 2153818262}
!169 = !{i64 2152479841}
!170 = !{!"branch_weights", i32 1, i32 2000}
!171 = !{i64 2154794589, i64 2154795068, i64 2154794626, i64 2154794682, i64 2154794716, i64 2154794740, i64 2154794781, i64 2154794802, i64 2154794830, i64 2154794864}
!172 = !{i64 2152480048}
!173 = !{i64 2153821033}
!174 = !{i64 2154800416, i64 2154800895, i64 2154800453, i64 2154800509, i64 2154800543, i64 2154800567, i64 2154800608, i64 2154800629, i64 2154800657, i64 2154800691}
!175 = !{i64 2154802892}
!176 = !{i64 2148396737, i64 2148396763, i64 2148396792, i64 2148396826, i64 2148396857, i64 2148396880}
!177 = !{i64 2150681459, i64 2150681950, i64 2150681496, i64 2150681552, i64 2150681586, i64 2150681610, i64 2150681651, i64 2150681672, i64 2150681700, i64 2150681734}
!178 = !{i64 2154731385, i64 2154731863, i64 2154731422, i64 2154731478, i64 2154731512, i64 2154731536, i64 2154731577, i64 2154731598, i64 2154731626, i64 2154731660}
!179 = !{i64 2154733646, i64 2154734124, i64 2154733683, i64 2154733739, i64 2154733773, i64 2154733797, i64 2154733838, i64 2154733859, i64 2154733887, i64 2154733921}
!180 = !{i64 2154752441, i64 2154752919, i64 2154752478, i64 2154752534, i64 2154752568, i64 2154752592, i64 2154752633, i64 2154752654, i64 2154752682, i64 2154752716}
!181 = !{i64 2150686710, i64 2150686883, i64 2150686898, i64 2150686950, i64 2150687009, i64 2150687033, i64 2150687074, i64 2150687095, i64 2150687123, i64 2150687155}
!182 = distinct !{!182, !183}
!183 = !{!"llvm.loop.peeled.count", i32 1}
!184 = !{i64 2150218692, i64 2150219183, i64 2150218729, i64 2150218785, i64 2150218819, i64 2150218843, i64 2150218884, i64 2150218905, i64 2150218933, i64 2150218967}
!185 = !{i64 2148405595, i64 2148405627, i64 2148405656, i64 2148405690, i64 2148405721, i64 2148405744}
!186 = !{i64 2148494700}
!187 = !{i64 2154769546, i64 2154770024, i64 2154769583, i64 2154769639, i64 2154769673, i64 2154769697, i64 2154769738, i64 2154769759, i64 2154769787, i64 2154769821}
!188 = !{i64 2154771173, i64 2154771651, i64 2154771210, i64 2154771266, i64 2154771300, i64 2154771324, i64 2154771365, i64 2154771386, i64 2154771414, i64 2154771448}
!189 = !{i64 2154757030, i64 2154757508, i64 2154757067, i64 2154757123, i64 2154757157, i64 2154757181, i64 2154757222, i64 2154757243, i64 2154757271, i64 2154757305}
!190 = !{i32 0, i32 -1}
!191 = !{i64 2154758880, i64 2154759358, i64 2154758917, i64 2154758973, i64 2154759007, i64 2154759031, i64 2154759072, i64 2154759093, i64 2154759121, i64 2154759155}
!192 = !{i64 2154760504, i64 2154760982, i64 2154760541, i64 2154760597, i64 2154760631, i64 2154760655, i64 2154760696, i64 2154760717, i64 2154760745, i64 2154760779}
!193 = !{i64 2154762098, i64 2154762576, i64 2154762135, i64 2154762191, i64 2154762225, i64 2154762249, i64 2154762290, i64 2154762311, i64 2154762339, i64 2154762373}
!194 = !{i64 2150230186, i64 2150230677, i64 2150230223, i64 2150230279, i64 2150230313, i64 2150230337, i64 2150230378, i64 2150230399, i64 2150230427, i64 2150230461}
!195 = !{i64 2154763849, i64 2154764327, i64 2154763886, i64 2154763942, i64 2154763976, i64 2154764000, i64 2154764041, i64 2154764062, i64 2154764090, i64 2154764124}
!196 = !{i64 2150691289, i64 2150691462, i64 2150691477, i64 2150691529, i64 2150691588, i64 2150691612, i64 2150691653, i64 2150691674, i64 2150691702, i64 2150691734}
!197 = !{i64 2153405651, i64 2153406134, i64 2153405688, i64 2153405744, i64 2153405778, i64 2153405802, i64 2153405843, i64 2153405864, i64 2153405892, i64 2153405926}
!198 = !{i64 2148485213}
!199 = !{i64 2148399922, i64 2148399954, i64 2148399983, i64 2148400017, i64 2148400048, i64 2148400071}
!200 = !{i64 2148485442}
!201 = !{i64 2149010114, i64 2149010119, i64 2149010132, i64 2149010176, i64 2149010210, i64 2149010231}
!202 = !{i64 2148399202, i64 2148399228, i64 2148399257, i64 2148399291, i64 2148399322, i64 2148399345}
!203 = !{i64 2154856492, i64 2154856971, i64 2154856529, i64 2154856585, i64 2154856619, i64 2154856643, i64 2154856684, i64 2154856705, i64 2154856733, i64 2154856767}
!204 = !{i64 2154838924, i64 2154839403, i64 2154838961, i64 2154839017, i64 2154839051, i64 2154839075, i64 2154839116, i64 2154839137, i64 2154839165, i64 2154839199}
!205 = !{i64 2151038683, i64 2151039174, i64 2151038720, i64 2151038776, i64 2151038810, i64 2151038834, i64 2151038875, i64 2151038896, i64 2151038924, i64 2151038958}
!206 = !{i64 2154840688, i64 2154841167, i64 2154840725, i64 2154840781, i64 2154840815, i64 2154840839, i64 2154840880, i64 2154840901, i64 2154840929, i64 2154840963}
!207 = !{i64 2154833505, i64 2154833984, i64 2154833542, i64 2154833598, i64 2154833632, i64 2154833656, i64 2154833697, i64 2154833718, i64 2154833746, i64 2154833780}
!208 = !{i64 2153425563, i64 2153426047, i64 2153425600, i64 2153425656, i64 2153425690, i64 2153425714, i64 2153425755, i64 2153425776, i64 2153425804, i64 2153425838}
!209 = !{i64 2153431345, i64 2153431829, i64 2153431382, i64 2153431438, i64 2153431472, i64 2153431496, i64 2153431537, i64 2153431558, i64 2153431586, i64 2153431620}
!210 = !{i64 2154835403, i64 2154835882, i64 2154835440, i64 2154835496, i64 2154835530, i64 2154835554, i64 2154835595, i64 2154835616, i64 2154835644, i64 2154835678}
!211 = !{i64 2154837162, i64 2154837641, i64 2154837199, i64 2154837255, i64 2154837289, i64 2154837313, i64 2154837354, i64 2154837375, i64 2154837403, i64 2154837437}
!212 = !{i64 2154846111, i64 2154846590, i64 2154846148, i64 2154846204, i64 2154846238, i64 2154846262, i64 2154846303, i64 2154846324, i64 2154846352, i64 2154846386}
!213 = !{i64 2154847875, i64 2154848354, i64 2154847912, i64 2154847968, i64 2154848002, i64 2154848026, i64 2154848067, i64 2154848088, i64 2154848116, i64 2154848150}
