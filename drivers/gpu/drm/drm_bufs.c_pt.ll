; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/drm_bufs.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_bufs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+drm_legacy_addmap\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_legacy_addmap\09\09\09\09"
module asm "\09.long\09__crc_drm_legacy_addmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_legacy_addmap:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_legacy_addmap\22\09\09\09\09\09"
module asm "__kstrtabns_drm_legacy_addmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_legacy_findmap\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_legacy_findmap\09\09\09\09"
module asm "\09.long\09__crc_drm_legacy_findmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_legacy_findmap:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_legacy_findmap\22\09\09\09\09\09"
module asm "__kstrtabns_drm_legacy_findmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_legacy_rmmap_locked\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_legacy_rmmap_locked\09\09\09\09"
module asm "\09.long\09__crc_drm_legacy_rmmap_locked\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_legacy_rmmap_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_legacy_rmmap_locked\22\09\09\09\09\09"
module asm "__kstrtabns_drm_legacy_rmmap_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_legacy_rmmap\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_legacy_rmmap\09\09\09\09"
module asm "\09.long\09__crc_drm_legacy_rmmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_legacy_rmmap:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_legacy_rmmap\22\09\09\09\09\09"
module asm "__kstrtabns_drm_legacy_rmmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_legacy_addbufs_pci\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_legacy_addbufs_pci\09\09\09\09"
module asm "\09.long\09__crc_drm_legacy_addbufs_pci\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_legacy_addbufs_pci:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_legacy_addbufs_pci\22\09\09\09\09\09"
module asm "__kstrtabns_drm_legacy_addbufs_pci:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_legacy_getsarea\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_legacy_getsarea\09\09\09\09"
module asm "\09.long\09__crc_drm_legacy_getsarea\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_legacy_getsarea:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_legacy_getsarea\22\09\09\09\09\09"
module asm "__kstrtabns_drm_legacy_getsarea:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_map_list = type { %struct.list_head, %struct.drm_hash_item, ptr, i64, ptr }
%struct.list_head = type { ptr, ptr }
%struct.drm_hash_item = type { %struct.hlist_node, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_local_map = type { i32, i32, i32, i32, ptr, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.67, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.73, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.67 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.73 = type { i32, ptr }
%struct.drm_master = type { %struct.kref, ptr, ptr, i32, %struct.idr, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.idr, %struct.idr, %struct.drm_lock_data }
%struct.drm_lock_data = type { ptr, ptr, %struct.wait_queue_head, i32, %struct.spinlock, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_agp_head = type { %struct.agp_kern_info, %struct.list_head, i32, ptr, i32, i32, i32, i32, i32, i32 }
%struct.agp_kern_info = type { %struct.agp_version, ptr, i32, i32, i32, i32, i32, i32, i8, i32, ptr }
%struct.agp_version = type { i16, i16 }
%struct.drm_sg_mem = type { i32, ptr, i32, ptr, ptr }
%struct.drm_map = type { i32, i32, i32, i32, ptr, i32 }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_buf_desc = type { i32, i32, i32, i32, i32, i32 }
%struct.drm_buf_entry = type { i32, i32, ptr, i32, i32, ptr, i32, i32 }
%struct.drm_device_dma = type { [23 x %struct.drm_buf_entry], i32, ptr, i32, i32, ptr, i32, i32 }
%struct.drm_dma_handle = type { i32, ptr, i32 }
%struct.drm_buf = type { i32, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.drm_buf_info = type { i32, ptr }
%struct.drm_buf_free = type { i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.drm_buf_map = type { i32, ptr, ptr }
%struct.drm_buf_pub = type { i32, i32, i32, ptr }

@__kstrtab_drm_legacy_addmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_legacy_addmap = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_legacy_addmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_legacy_addmap to i32), ptr @__kstrtab_drm_legacy_addmap, ptr @__kstrtabns_drm_legacy_addmap }, section "___ksymtab+drm_legacy_addmap", align 4
@__kstrtab_drm_legacy_findmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_legacy_findmap = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_legacy_findmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_legacy_findmap to i32), ptr @__kstrtab_drm_legacy_findmap, ptr @__kstrtabns_drm_legacy_findmap }, section "___ksymtab+drm_legacy_findmap", align 4
@__kstrtab_drm_legacy_rmmap_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_legacy_rmmap_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_legacy_rmmap_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_legacy_rmmap_locked to i32), ptr @__kstrtab_drm_legacy_rmmap_locked, ptr @__kstrtabns_drm_legacy_rmmap_locked }, section "___ksymtab+drm_legacy_rmmap_locked", align 4
@__kstrtab_drm_legacy_rmmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_legacy_rmmap = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_legacy_rmmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_legacy_rmmap to i32), ptr @__kstrtab_drm_legacy_rmmap, ptr @__kstrtabns_drm_legacy_rmmap }, section "___ksymtab+drm_legacy_rmmap", align 4
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"count=%d, size=%d (%d), order=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pagelist: %d entries\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"page %d @ 0x%08lx\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"buffer %d @ %p\0A\00", [16 x i8] zeroinitializer }, align 32
@__kstrtab_drm_legacy_addbufs_pci = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_legacy_addbufs_pci = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_legacy_addbufs_pci = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_legacy_addbufs_pci to i32), ptr @__kstrtab_drm_legacy_addbufs_pci, ptr @__kstrtabns_drm_legacy_addbufs_pci }, section "___ksymtab+drm_legacy_addbufs_pci", align 4
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"count = %d\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%d %d %d %d %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%d, %d, %d\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Index %d (of %d max)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Process %d freeing buffer not owned\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%d buffers, retcode = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@__kstrtab_drm_legacy_getsarea = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_legacy_getsarea = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_legacy_getsarea = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_legacy_getsarea to i32), ptr @__kstrtab_drm_legacy_getsarea, ptr @__kstrtabns_drm_legacy_getsarea }, section "___ksymtab+drm_legacy_getsarea", align 4
@.str.11 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"offset = 0x%08llx, size = 0x%08lx, type = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Matching maps of type %d with mismatched sizes, (%ld vs %ld)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%lu %d %p\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"AGP offset = 0x%08llx, size = 0x%08lx\0A\00", [57 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"count:      %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"order:      %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"size:       %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"agp_offset: %lu\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"alignment:  %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"page_order: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"total:      %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"byte_count: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dma->buf_count : %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"entry->buf_count : %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 5]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 915, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 978, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1018, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1054, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1347, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1356, i32 5 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1424, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1472, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1477, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1484, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1572, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 174, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 208, i32 5 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 253, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 311, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1143, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1144, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1145, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1146, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1147, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1148, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1149, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1222, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1245, i32 2 }
@___asan_gen_.103 = private constant [30 x i8] c"../drivers/gpu/drm/drm_bufs.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1246, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 174, i32 2 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__ksymtab_drm_legacy_addbufs_pci, ptr @__ksymtab_drm_legacy_addmap, ptr @__ksymtab_drm_legacy_findmap, ptr @__ksymtab_drm_legacy_getsarea, ptr @__ksymtab_drm_legacy_rmmap, ptr @__ksymtab_drm_legacy_rmmap_locked, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.27], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_addmap(ptr noundef %dev, i32 noundef %offset, i32 noundef %size, i32 noundef %type, i32 noundef %flags, ptr nocapture noundef writeonly %map_ptr) #0 align 64 {
entry:
  %list = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %list) #10
  %0 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %list, align 4, !annotation !79
  %call = call fastcc i32 @drm_addmap_core(ptr noundef %dev, i32 noundef %offset, i32 noundef %size, i32 noundef %type, i32 noundef %flags, ptr noundef nonnull %list)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %list, align 4
  %map = getelementptr inbounds %struct.drm_map_list, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map, align 4
  %5 = ptrtoint ptr %map_ptr to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %map_ptr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %list) #10
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @drm_addmap_core(ptr noundef %dev, i32 noundef %offset, i32 noundef %size, i32 noundef %type, i32 noundef %flags, ptr nocapture noundef writeonly %maplist) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 24) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup292_crit_edge, label %if.end

entry.cleanup292_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup292

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %offset, ptr %call7.i, align 8
  %size2 = getelementptr inbounds %struct.drm_local_map, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %size2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %size, ptr %size2, align 4
  %flags3 = getelementptr inbounds %struct.drm_local_map, ptr %call7.i, i32 0, i32 3
  %3 = ptrtoint ptr %flags3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %flags, ptr %flags3, align 4
  %type4 = getelementptr inbounds %struct.drm_local_map, ptr %call7.i, i32 0, i32 2
  %4 = ptrtoint ptr %type4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %type, ptr %type4, align 8
  %and = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp.not = icmp eq i32 %type, 2
  %or.cond = or i1 %cmp.not, %tobool6.not
  br i1 %or.cond, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup292

if.end9:                                          ; preds = %if.end
  %conv = zext i32 %offset to i64
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.11, i64 noundef %conv, i32 noundef %size, i32 noundef %type) #10
  %5 = ptrtoint ptr %type4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp14 = icmp eq i32 %6, 2
  br i1 %cmp14, label %if.then16, label %if.end9.if.end20_crit_edge

if.end9.if.end20_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %size2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size2, align 4
  %add = add i32 %8, 4095
  %and18 = and i32 %add, -4096
  store i32 %and18, ptr %size2, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.end9.if.end20_crit_edge
  %9 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call7.i, align 8
  %and22 = and i32 %10, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %lor.lhs.false, label %if.end20.if.then27_crit_edge

if.end20.if.then27_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

lor.lhs.false:                                    ; preds = %if.end20
  %11 = ptrtoint ptr %size2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size2, align 4
  %and25 = and i32 %12, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end28, label %lor.lhs.false.if.then27_crit_edge

lor.lhs.false.if.then27_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

if.then27:                                        ; preds = %lor.lhs.false.if.then27_crit_edge, %if.end20.if.then27_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup292

if.end28:                                         ; preds = %lor.lhs.false
  %mtrr = getelementptr inbounds %struct.drm_local_map, ptr %call7.i, i32 0, i32 5
  %13 = ptrtoint ptr %mtrr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %mtrr, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %call7.i, i32 0, i32 4
  %14 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %handle, align 8
  %15 = ptrtoint ptr %type4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type4, align 8
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %sw.default [
    i32 1, label %if.end28.sw.bb_crit_edge
    i32 0, label %if.end28.sw.bb_crit_edge463
    i32 2, label %sw.bb84
    i32 3, label %sw.bb165
    i32 4, label %sw.bb228
    i32 5, label %sw.bb235
  ]

if.end28.sw.bb_crit_edge463:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end28.sw.bb_crit_edge:                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %if.end28.sw.bb_crit_edge, %if.end28.sw.bb_crit_edge463
  %call30 = tail call fastcc ptr @drm_find_matching_map(ptr noundef %dev, ptr noundef nonnull %call7.i)
  %cmp31.not = icmp eq ptr %call30, null
  br i1 %cmp31.not, label %if.end48, label %if.then33

if.then33:                                        ; preds = %sw.bb
  %map34 = getelementptr inbounds %struct.drm_map_list, ptr %call30, i32 0, i32 2
  %18 = ptrtoint ptr %map34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %map34, align 4
  %size35 = getelementptr inbounds %struct.drm_local_map, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %size35 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %12)
  %cmp37.not = icmp eq i32 %21, %12
  br i1 %cmp37.not, label %if.then33.if.end47_crit_edge, label %if.then39

if.then33.if.end47_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then39:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.12, i32 noundef %16, i32 noundef %12, i32 noundef %21) #10
  %22 = ptrtoint ptr %size2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size2, align 4
  %24 = ptrtoint ptr %map34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %map34, align 4
  %size46 = getelementptr inbounds %struct.drm_local_map, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %size46 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %23, ptr %size46, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then39, %if.then33.if.end47_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  %27 = ptrtoint ptr %maplist to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call30, ptr %maplist, align 4
  br label %cleanup292

if.end48:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp50 = icmp eq i32 %16, 0
  br i1 %cmp50, label %if.end48.if.then56_crit_edge, label %lor.lhs.false52

if.end48.if.then56_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then56

lor.lhs.false52:                                  ; preds = %if.end48
  %28 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags3, align 4
  %and54 = and i32 %29, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %lor.lhs.false52.if.end61_crit_edge, label %lor.lhs.false52.if.then56_crit_edge

lor.lhs.false52.if.then56_crit_edge:              ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then56

lor.lhs.false52.if.end61_crit_edge:               ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then56:                                        ; preds = %lor.lhs.false52.if.then56_crit_edge, %if.end48.if.then56_crit_edge
  %30 = ptrtoint ptr %mtrr to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %mtrr, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then56, %lor.lhs.false52.if.end61_crit_edge
  %31 = ptrtoint ptr %type4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %type4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp63 = icmp eq i32 %32, 1
  br i1 %cmp63, label %if.then65, label %if.end61.sw.epilog_crit_edge

if.end61.sw.epilog_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then65:                                        ; preds = %if.end61
  %33 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags3, align 4
  %and67 = and i32 %34, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  %35 = ptrtoint ptr %size2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %size2, align 4
  br i1 %tobool68.not, label %if.else, label %if.then69

if.then69:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  %call72 = tail call ptr @ioremap_wc(i32 noundef %10, i32 noundef %36) #10
  br label %if.end78

if.else:                                          ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  %call76 = tail call ptr @ioremap(i32 noundef %10, i32 noundef %36) #10
  br label %if.end78

if.end78:                                         ; preds = %if.else, %if.then69
  %storemerge = phi ptr [ %call76, %if.else ], [ %call72, %if.then69 ]
  %37 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %storemerge, ptr %handle, align 8
  %tobool80.not = icmp eq ptr %storemerge, null
  br i1 %tobool80.not, label %if.then81, label %if.end78.sw.epilog_crit_edge

if.end78.sw.epilog_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then81:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup292

sw.bb84:                                          ; preds = %if.end28
  %call85 = tail call fastcc ptr @drm_find_matching_map(ptr noundef %dev, ptr noundef nonnull %call7.i)
  %cmp86.not = icmp eq ptr %call85, null
  br i1 %cmp86.not, label %if.end103, label %if.then88

if.then88:                                        ; preds = %sw.bb84
  %map89 = getelementptr inbounds %struct.drm_map_list, ptr %call85, i32 0, i32 2
  %38 = ptrtoint ptr %map89 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %map89, align 4
  %size90 = getelementptr inbounds %struct.drm_local_map, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %size90 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size90, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %12)
  %cmp92.not = icmp eq i32 %41, %12
  br i1 %cmp92.not, label %if.then88.if.end102_crit_edge, label %if.then94

if.then88.if.end102_crit_edge:                    ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

if.then94:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.12, i32 noundef 2, i32 noundef %12, i32 noundef %41) #10
  %42 = ptrtoint ptr %size2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %size2, align 4
  %44 = ptrtoint ptr %map89 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %map89, align 4
  %size101 = getelementptr inbounds %struct.drm_local_map, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %size101 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %43, ptr %size101, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then94, %if.then88.if.end102_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  %47 = ptrtoint ptr %maplist to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call85, ptr %maplist, align 4
  br label %cleanup292

if.end103:                                        ; preds = %sw.bb84
  %call105 = tail call noalias ptr @vmalloc_user(i32 noundef %12) #14
  %48 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call105, ptr %handle, align 8
  %49 = ptrtoint ptr %size2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %size2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp.i = icmp ugt i32 %50, 1
  %sub.i452 = add i32 %50, -1
  %51 = tail call i32 @llvm.ctlz.i32(i32 %sub.i452, i1 false) #10, !range !80
  %add.i = sub nuw nsw i32 32, %51
  %cond142 = select i1 %cmp.i, i32 %add.i, i32 0
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.13, i32 noundef %50, i32 noundef %cond142, ptr noundef %call105) #10
  %52 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %handle, align 8
  %tobool145.not = icmp eq ptr %53, null
  br i1 %tobool145.not, label %if.then146, label %if.end147

if.then146:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup292

if.end147:                                        ; preds = %if.end103
  %54 = ptrtoint ptr %53 to i32
  %55 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %call7.i, align 8
  %56 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags3, align 4
  %and151 = and i32 %57, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool152.not = icmp eq i32 %and151, 0
  br i1 %tobool152.not, label %if.end147.sw.epilog_crit_edge, label %if.then153

if.end147.sw.epilog_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then153:                                       ; preds = %if.end147
  %master = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 9
  %58 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %master, align 4
  %lock = getelementptr inbounds %struct.drm_master, ptr %59, i32 0, i32 12
  %60 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %lock, align 4
  %cmp154.not = icmp eq ptr %61, null
  br i1 %cmp154.not, label %if.end158, label %if.then156

if.then156:                                       ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @vfree(ptr noundef nonnull %53) #10
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup292

if.end158:                                        ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %53, ptr %lock, align 4
  %lock163 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 51, i32 1
  %63 = ptrtoint ptr %lock163 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %53, ptr %lock163, align 4
  br label %sw.epilog

sw.bb165:                                         ; preds = %if.end28
  %agp = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 38
  %64 = ptrtoint ptr %agp to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %agp, align 4
  %tobool167.not = icmp eq ptr %65, null
  br i1 %tobool167.not, label %if.then168, label %if.end169

if.then168:                                       ; preds = %sw.bb165
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup292

if.end169:                                        ; preds = %sw.bb165
  %base = getelementptr inbounds %struct.drm_agp_head, ptr %65, i32 0, i32 6
  %66 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %base, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %67)
  %cmp172 = icmp ult i32 %10, %67
  br i1 %cmp172, label %if.end169.if.then184_crit_edge, label %lor.lhs.false174

if.end169.if.then184_crit_edge:                   ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then184

lor.lhs.false174:                                 ; preds = %if.end169
  %aper_size = getelementptr inbounds %struct.agp_kern_info, ptr %65, i32 0, i32 5
  %68 = ptrtoint ptr %aper_size to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %aper_size, align 4
  %mul179 = shl i32 %69, 20
  %add180 = add i32 %67, -1
  %sub181 = add i32 %add180, %mul179
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %sub181)
  %cmp182 = icmp ugt i32 %10, %sub181
  br i1 %cmp182, label %lor.lhs.false174.if.then184_crit_edge, label %lor.lhs.false174.if.end189_crit_edge

lor.lhs.false174.if.end189_crit_edge:             ; preds = %lor.lhs.false174
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end189

lor.lhs.false174.if.then184_crit_edge:            ; preds = %lor.lhs.false174
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then184

if.then184:                                       ; preds = %lor.lhs.false174.if.then184_crit_edge, %if.end169.if.then184_crit_edge
  %add188 = add i32 %67, %10
  %70 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %add188, ptr %call7.i, align 8
  br label %if.end189

if.end189:                                        ; preds = %if.then184, %lor.lhs.false174.if.end189_crit_edge
  %agp_mtrr = getelementptr inbounds %struct.drm_agp_head, ptr %65, i32 0, i32 7
  %71 = ptrtoint ptr %agp_mtrr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %agp_mtrr, align 4
  %73 = ptrtoint ptr %mtrr to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %mtrr, align 4
  %memory = getelementptr inbounds %struct.drm_agp_head, ptr %65, i32 0, i32 1
  %74 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %74)
  %.pn456 = load ptr, ptr %memory, align 4
  %cmp195.not457 = icmp eq ptr %.pn456, %memory
  br i1 %cmp195.not457, label %if.end189.for.end_crit_edge, label %for.body.lr.ph

if.end189.for.end_crit_edge:                      ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end189
  %75 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %call7.i, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn458 = phi ptr [ %.pn456, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %bound = getelementptr i8, ptr %.pn458, i32 -8
  %77 = ptrtoint ptr %bound to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %bound, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %78)
  %cmp198.not = icmp ult i32 %76, %78
  br i1 %cmp198.not, label %for.body.for.inc_crit_edge, label %land.lhs.true200

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true200:                                 ; preds = %for.body
  %79 = ptrtoint ptr %size2 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %size2, align 4
  %add203 = add i32 %80, %76
  %pages = getelementptr i8, ptr %.pn458, i32 -4
  %81 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %pages, align 4
  %mul205 = shl i32 %82, 12
  %add206 = add i32 %mul205, %78
  call void @__sanitizer_cov_trace_cmp4(i32 %add203, i32 %add206)
  %cmp207.not = icmp ugt i32 %add203, %add206
  br i1 %cmp207.not, label %land.lhs.true200.for.inc_crit_edge, label %for.end.thread

land.lhs.true200.for.inc_crit_edge:               ; preds = %land.lhs.true200
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.end.thread:                                   ; preds = %land.lhs.true200
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile ptr, ptr %memory, align 4
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true200.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %85 = ptrtoint ptr %.pn458 to i32
  call void @__asan_load4_noabort(i32 %85)
  %.pn = load ptr, ptr %.pn458, align 4
  %cmp195.not = icmp eq ptr %.pn, %memory
  br i1 %cmp195.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end189.for.end_crit_edge
  %86 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile ptr, ptr %memory, align 4
  %cmp.i453.not.not = icmp eq ptr %87, %memory
  br i1 %cmp.i453.not.not, label %for.end.cleanup_crit_edge, label %if.then222

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then222:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup292

cleanup:                                          ; preds = %for.end.cleanup_crit_edge, %for.end.thread
  %88 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %call7.i, align 8
  %conv225 = zext i32 %89 to i64
  %90 = ptrtoint ptr %size2 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %size2, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.14, i64 noundef %conv225, i32 noundef %91) #10
  br label %sw.epilog

sw.bb228:                                         ; preds = %if.end28
  %sg = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 54
  %92 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %sg, align 4
  %tobool229.not = icmp eq ptr %93, null
  br i1 %tobool229.not, label %if.then230, label %if.end231

if.then230:                                       ; preds = %sw.bb228
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup292

if.end231:                                        ; preds = %sw.bb228
  call void @__sanitizer_cov_trace_pc() #12
  %virtual = getelementptr inbounds %struct.drm_sg_mem, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %virtual to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %virtual, align 4
  %96 = ptrtoint ptr %95 to i32
  %add234 = add i32 %10, %96
  %97 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %add234, ptr %call7.i, align 8
  br label %sw.epilog

sw.bb235:                                         ; preds = %if.end28
  %dev236 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %98 = ptrtoint ptr %dev236 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev236, align 4
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %99, i32 noundef %12, ptr noundef nonnull %call7.i, i32 noundef 3264, i32 noundef 0) #10
  %100 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call.i, ptr %handle, align 8
  %tobool242.not = icmp eq ptr %call.i, null
  br i1 %tobool242.not, label %if.then243, label %sw.bb235.sw.epilog_crit_edge

sw.bb235.sw.epilog_crit_edge:                     ; preds = %sw.bb235
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then243:                                       ; preds = %sw.bb235
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup292

sw.default:                                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup292

sw.epilog:                                        ; preds = %sw.bb235.sw.epilog_crit_edge, %if.end231, %cleanup, %if.end158, %if.end147.sw.epilog_crit_edge, %if.end78.sw.epilog_crit_edge, %if.end61.sw.epilog_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %101 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %101, i32 noundef 3520, i32 noundef 40) #13
  %tobool246.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool246.not, label %if.then247, label %if.end254

if.then247:                                       ; preds = %sw.epilog
  %102 = ptrtoint ptr %type4 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %type4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %103)
  %cmp249 = icmp eq i32 %103, 1
  br i1 %cmp249, label %if.then251, label %if.then247.if.end253_crit_edge

if.then247.if.end253_crit_edge:                   ; preds = %if.then247
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end253

if.then251:                                       ; preds = %if.then247
  call void @__sanitizer_cov_trace_pc() #12
  %104 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %handle, align 8
  tail call void @iounmap(ptr noundef %105) #10
  br label %if.end253

if.end253:                                        ; preds = %if.then251, %if.then247.if.end253_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup292

if.end254:                                        ; preds = %sw.epilog
  %map255 = getelementptr inbounds %struct.drm_map_list, ptr %call7.i.i, i32 0, i32 2
  %106 = ptrtoint ptr %map255 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call7.i, ptr %map255, align 4
  %struct_mutex = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %struct_mutex, i32 noundef 0) #10
  %maplist257 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 42
  %107 = ptrtoint ptr %maplist257 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %maplist257, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %maplist257, ptr noundef %108) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end254.list_add.exit_crit_edge

if.end254.list_add.exit_crit_edge:                ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %110 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %108, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %111 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %maplist257, ptr %prev3.i.i, align 4
  %112 = ptrtoint ptr %maplist257 to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %call7.i.i, ptr %maplist257, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end254.list_add.exit_crit_edge
  %113 = ptrtoint ptr %type4 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %type4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %114)
  %cmp259 = icmp eq i32 %114, 2
  br i1 %cmp259, label %cond.true261, label %cond.false263

cond.true261:                                     ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  %115 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %handle, align 8
  %117 = ptrtoint ptr %116 to i32
  br label %cond.end265

cond.false263:                                    ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  %118 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %call7.i, align 8
  br label %cond.end265

cond.end265:                                      ; preds = %cond.false263, %cond.true261
  %cond266 = phi i32 [ %117, %cond.true261 ], [ %119, %cond.false263 ]
  %hash = getelementptr inbounds %struct.drm_map_list, ptr %call7.i.i, i32 0, i32 1
  %conv269 = zext i1 %cmp259 to i32
  %call270 = tail call fastcc i32 @drm_map_handle(ptr noundef %dev, ptr noundef %hash, i32 noundef %cond266, i32 noundef %conv269)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call270)
  %tobool271.not = icmp eq i32 %call270, 0
  br i1 %tobool271.not, label %if.end280, label %if.then272

if.then272:                                       ; preds = %cond.end265
  %120 = ptrtoint ptr %type4 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %type4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %121)
  %cmp274 = icmp eq i32 %121, 1
  br i1 %cmp274, label %if.then276, label %if.then272.if.end278_crit_edge

if.then272.if.end278_crit_edge:                   ; preds = %if.then272
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end278

if.then276:                                       ; preds = %if.then272
  call void @__sanitizer_cov_trace_pc() #12
  %122 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %handle, align 8
  tail call void @iounmap(ptr noundef %123) #10
  br label %if.end278

if.end278:                                        ; preds = %if.then276, %if.then272.if.end278_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  tail call void @mutex_unlock(ptr noundef %struct_mutex) #10
  br label %cleanup292

if.end280:                                        ; preds = %cond.end265
  %key = getelementptr inbounds %struct.drm_map_list, ptr %call7.i.i, i32 0, i32 1, i32 1
  %124 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %key, align 8
  %shl = shl i32 %125, 12
  %conv282 = zext i32 %shl to i64
  %user_token283 = getelementptr inbounds %struct.drm_map_list, ptr %call7.i.i, i32 0, i32 3
  %126 = ptrtoint ptr %user_token283 to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 %conv282, ptr %user_token283, align 8
  tail call void @mutex_unlock(ptr noundef %struct_mutex) #10
  %127 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %flags3, align 4
  %and286 = and i32 %128, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and286)
  %tobool287.not = icmp eq i32 %and286, 0
  br i1 %tobool287.not, label %if.then288, label %if.end280.if.end291_crit_edge

if.end280.if.end291_crit_edge:                    ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end291

if.then288:                                       ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #12
  %master289 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 9
  %129 = ptrtoint ptr %master289 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %master289, align 4
  %master290 = getelementptr inbounds %struct.drm_map_list, ptr %call7.i.i, i32 0, i32 4
  %131 = ptrtoint ptr %master290 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %130, ptr %master290, align 8
  br label %if.end291

if.end291:                                        ; preds = %if.then288, %if.end280.if.end291_crit_edge
  %132 = ptrtoint ptr %maplist to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %call7.i.i, ptr %maplist, align 4
  br label %cleanup292

cleanup292:                                       ; preds = %if.end291, %if.end278, %if.end253, %sw.default, %if.then243, %if.then230, %if.then222, %if.then168, %if.then156, %if.then146, %if.end102, %if.then81, %if.end47, %if.then27, %if.then8, %entry.cleanup292_crit_edge
  %retval.1 = phi i32 [ -22, %if.then8 ], [ -22, %if.then27 ], [ -22, %sw.default ], [ %call270, %if.end278 ], [ 0, %if.end291 ], [ -22, %if.end253 ], [ -12, %if.then243 ], [ -22, %if.then230 ], [ 0, %if.end102 ], [ -16, %if.then156 ], [ -12, %if.then146 ], [ 0, %if.end47 ], [ -12, %if.then81 ], [ -12, %entry.cleanup292_crit_edge ], [ -22, %if.then168 ], [ -1, %if.then222 ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @drm_legacy_findmap(ptr noundef readonly %dev, i32 noundef %token) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %maplist = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 42
  %conv = zext i32 %token to i64
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %_entry.0.in = phi ptr [ %maplist, %entry ], [ %_entry.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %_entry.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %_entry.0 = load ptr, ptr %_entry.0.in, align 4
  %cmp.not = icmp eq ptr %_entry.0, %maplist
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %user_token = getelementptr inbounds %struct.drm_map_list, ptr %_entry.0, i32 0, i32 3
  %1 = ptrtoint ptr %user_token to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %user_token, align 8
  %cmp2 = icmp eq i64 %2, %conv
  br i1 %cmp2, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %map = getelementptr inbounds %struct.drm_map_list, ptr %_entry.0, i32 0, i32 2
  %3 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %4, %if.then ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_addmap_ioctl(ptr noundef %dev, ptr nocapture noundef %data, ptr nocapture noundef readnone %file_priv) local_unnamed_addr #0 align 64 {
entry:
  %maplist = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %maplist) #10
  %0 = ptrtoint ptr %maplist to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %maplist, align 4, !annotation !79
  %call = tail call zeroext i1 @capable(i32 noundef 21) #10
  br i1 %call, label %entry.if.end_crit_edge, label %lor.lhs.false

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.drm_map, ptr %data, i32 0, i32 2
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  %3 = and i32 %2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch = icmp eq i32 %3, 2
  br i1 %switch, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %driver.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %4 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 24
  %6 = ptrtoint ptr %driver_features.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_features.i.i, align 4
  %driver_features1.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 10
  %8 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i = and i32 %9, %7
  %10 = and i32 %and.i.i, -2080374784
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data, align 4
  %size = getelementptr inbounds %struct.drm_map, ptr %data, i32 0, i32 1
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 4
  %type8 = getelementptr inbounds %struct.drm_map, ptr %data, i32 0, i32 2
  %16 = ptrtoint ptr %type8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type8, align 4
  %flags = getelementptr inbounds %struct.drm_map, ptr %data, i32 0, i32 3
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %call9 = call fastcc i32 @drm_addmap_core(ptr noundef %dev, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, ptr noundef nonnull %maplist)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %maplist to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %maplist, align 4
  %user_token = getelementptr inbounds %struct.drm_map_list, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %user_token to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %user_token, align 8
  %conv = trunc i64 %23 to i32
  %24 = inttoptr i32 %conv to ptr
  %handle = getelementptr inbounds %struct.drm_map, ptr %data, i32 0, i32 4
  %25 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %handle, align 4
  %mtrr = getelementptr inbounds %struct.drm_map, ptr %data, i32 0, i32 5
  %26 = ptrtoint ptr %mtrr to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %mtrr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ %call9, %if.end7.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %maplist) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_getmap_ioctl(ptr noundef %dev, ptr nocapture noundef %data, ptr nocapture noundef readnone %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i = getelementptr inbounds %struct.drm_driver, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %driver_features.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_features.i.i, align 4
  %driver_features1.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 10
  %4 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i = and i32 %5, %3
  %6 = and i32 %and.i.i, -2080374784
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %struct_mutex = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %struct_mutex, i32 noundef 0) #10
  %maplist = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 42
  %10 = ptrtoint ptr %maplist to i32
  call void @__asan_load4_noabort(i32 %10)
  %list.066 = load ptr, ptr %maplist, align 4
  %cmp.i.not67 = icmp eq ptr %list.066, %maplist
  br i1 %cmp.i.not67, label %if.end3.cleanup.sink.split_crit_edge, label %if.end3.for.body_crit_edge

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  br label %for.body

if.end3.cleanup.sink.split_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.068, 1
  %11 = ptrtoint ptr %list.069 to i32
  call void @__asan_load4_noabort(i32 %11)
  %list.0 = load ptr, ptr %list.069, align 4
  %cmp.i.not = icmp eq ptr %list.0, %maplist
  br i1 %cmp.i.not, label %for.cond.cleanup.sink.split_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.cleanup.sink.split_crit_edge:            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end3.for.body_crit_edge
  %list.069 = phi ptr [ %list.0, %for.cond.for.body_crit_edge ], [ %list.066, %if.end3.for.body_crit_edge ]
  %i.068 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end3.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.068, i32 %9)
  %cmp6 = icmp eq i32 %i.068, %9
  br i1 %cmp6, label %for.end, label %for.cond

for.end:                                          ; preds = %for.body
  %tobool10.not = icmp eq ptr %list.069, null
  br i1 %tobool10.not, label %for.end.cleanup.sink.split_crit_edge, label %lor.lhs.false

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %for.end
  %map11 = getelementptr inbounds %struct.drm_map_list, ptr %list.069, i32 0, i32 2
  %12 = ptrtoint ptr %map11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map11, align 4
  %tobool12.not = icmp eq ptr %13, null
  br i1 %tobool12.not, label %lor.lhs.false.cleanup.sink.split_crit_edge, label %if.end15

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end15:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %data, align 4
  %17 = ptrtoint ptr %map11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %map11, align 4
  %size = getelementptr inbounds %struct.drm_local_map, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size, align 4
  %size20 = getelementptr inbounds %struct.drm_map, ptr %data, i32 0, i32 1
  %21 = ptrtoint ptr %size20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %size20, align 4
  %22 = load ptr, ptr %map11, align 4
  %type = getelementptr inbounds %struct.drm_local_map, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type, align 4
  %type22 = getelementptr inbounds %struct.drm_map, ptr %data, i32 0, i32 2
  %25 = ptrtoint ptr %type22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %type22, align 4
  %26 = load ptr, ptr %map11, align 4
  %flags = getelementptr inbounds %struct.drm_local_map, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 4
  %flags24 = getelementptr inbounds %struct.drm_map, ptr %data, i32 0, i32 3
  %29 = ptrtoint ptr %flags24 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %flags24, align 4
  %user_token = getelementptr inbounds %struct.drm_map_list, ptr %list.069, i32 0, i32 3
  %30 = ptrtoint ptr %user_token to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %user_token, align 8
  %conv = trunc i64 %31 to i32
  %32 = inttoptr i32 %conv to ptr
  %handle = getelementptr inbounds %struct.drm_map, ptr %data, i32 0, i32 4
  %33 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %handle, align 4
  %mtrr27 = getelementptr inbounds %struct.drm_map, ptr %data, i32 0, i32 5
  %34 = ptrtoint ptr %mtrr27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %mtrr27, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end15, %lor.lhs.false.cleanup.sink.split_crit_edge, %for.end.cleanup.sink.split_crit_edge, %for.cond.cleanup.sink.split_crit_edge, %if.end3.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end15 ], [ -22, %if.end3.cleanup.sink.split_crit_edge ], [ -22, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ -22, %for.end.cleanup.sink.split_crit_edge ], [ -22, %for.cond.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %struct_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_rmmap_locked(ptr noundef %dev, ptr noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %maplist = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 42
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %r_list.0.in = phi ptr [ %maplist, %entry ], [ %r_list.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %r_list.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %r_list.0 = load ptr, ptr %r_list.0.in, align 4
  %cmp.not = icmp eq ptr %r_list.0, %maplist
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %map7 = getelementptr inbounds %struct.drm_map_list, ptr %r_list.0, i32 0, i32 2
  %1 = ptrtoint ptr %map7 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %map7, align 4
  %cmp8 = icmp eq ptr %2, %map
  br i1 %cmp8, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then:                                          ; preds = %for.body
  %master9 = getelementptr inbounds %struct.drm_map_list, ptr %r_list.0, i32 0, i32 4
  %3 = ptrtoint ptr %master9 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %master9, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %r_list.0) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then.if.end17_crit_edge

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %r_list.0, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %r_list.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %r_list.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.end.i.i, %if.then.if.end17_crit_edge
  %11 = ptrtoint ptr %r_list.0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %r_list.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %r_list.0, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %map_hash = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 43
  %user_token = getelementptr inbounds %struct.drm_map_list, ptr %r_list.0, i32 0, i32 3
  %13 = ptrtoint ptr %user_token to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %user_token, align 8
  %shr = lshr i64 %14, 12
  %conv = trunc i64 %shr to i32
  %call = tail call i32 @drm_ht_remove_key(ptr noundef %map_hash, i32 noundef %conv) #10
  tail call void @kfree(ptr noundef %r_list.0) #10
  %type = getelementptr inbounds %struct.drm_local_map, ptr %map, i32 0, i32 2
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %16, label %if.end17.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 5, label %sw.bb36
    i32 2, label %sw.bb19
  ]

if.end17.sw.epilog_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %map, i32 0, i32 4
  %18 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %handle, align 4
  tail call void @iounmap(ptr noundef %19) #10
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end17
  %handle20 = getelementptr inbounds %struct.drm_local_map, ptr %map, i32 0, i32 4
  %20 = ptrtoint ptr %handle20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %handle20, align 4
  tail call void @vfree(ptr noundef %21) #10
  %tobool21.not = icmp eq ptr %4, null
  br i1 %tobool21.not, label %sw.bb19.sw.epilog_crit_edge, label %if.then22

sw.bb19.sw.epilog_crit_edge:                      ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then22:                                        ; preds = %sw.bb19
  %lock = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 51, i32 1
  %22 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lock, align 4
  %lock23 = getelementptr inbounds %struct.drm_master, ptr %4, i32 0, i32 12
  %24 = ptrtoint ptr %lock23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lock23, align 4
  %cmp24 = icmp eq ptr %23, %25
  br i1 %cmp24, label %if.then26, label %if.then22.if.end29_crit_edge

if.then22.if.end29_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then26:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %lock, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.then22.if.end29_crit_edge
  %27 = ptrtoint ptr %lock23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %lock23, align 4
  %file_priv = getelementptr inbounds %struct.drm_master, ptr %4, i32 0, i32 12, i32 1
  %28 = ptrtoint ptr %file_priv to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %file_priv, align 4
  %lock_queue = getelementptr inbounds %struct.drm_master, ptr %4, i32 0, i32 12, i32 2
  tail call void @__wake_up(ptr noundef %lock_queue, i32 noundef 1, i32 noundef 0, ptr noundef null) #10
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %dev37 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %29 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev37, align 4
  %size = getelementptr inbounds %struct.drm_local_map, ptr %map, i32 0, i32 1
  %31 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size, align 4
  %handle38 = getelementptr inbounds %struct.drm_local_map, ptr %map, i32 0, i32 4
  %33 = ptrtoint ptr %handle38 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %handle38, align 4
  %35 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %map, align 4
  tail call void @dma_free_attrs(ptr noundef %30, i32 noundef %32, ptr noundef %34, i32 noundef %36, i32 noundef 0) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb36, %if.end29, %sw.bb19.sw.epilog_crit_edge, %sw.bb, %if.end17.sw.epilog_crit_edge
  tail call void @kfree(ptr noundef %map) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_ht_remove_key(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_legacy_rmmap(ptr noundef %dev, ptr noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i = getelementptr inbounds %struct.drm_driver, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %driver_features.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_features.i.i, align 4
  %driver_features1.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 10
  %4 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i = and i32 %5, %3
  %6 = and i32 %and.i.i, -2080374784
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %struct_mutex = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %struct_mutex, i32 noundef 0) #10
  %call2 = tail call i32 @drm_legacy_rmmap_locked(ptr noundef %dev, ptr noundef %map)
  tail call void @mutex_unlock(ptr noundef %struct_mutex) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_legacy_master_rmmaps(ptr noundef %dev, ptr noundef readnone %master) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i = getelementptr inbounds %struct.drm_driver, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %driver_features.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_features.i.i, align 4
  %driver_features1.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 10
  %4 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i = and i32 %3, 67108864
  %and2.i.i = and i32 %and.i.i, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %and2.i.i)
  %cmp.i.i = icmp eq i32 %and2.i.i, 67108864
  br i1 %cmp.i.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %struct_mutex = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %struct_mutex, i32 noundef 0) #10
  %maplist = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 42
  %6 = ptrtoint ptr %maplist to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %maplist, align 4
  %cmp.not29 = icmp eq ptr %7, %maplist
  br i1 %cmp.not29, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %r_list.030 = phi ptr [ %list_temp.031, %for.inc.for.body_crit_edge ], [ %7, %if.end.for.body_crit_edge ]
  %8 = ptrtoint ptr %r_list.030 to i32
  call void @__asan_load4_noabort(i32 %8)
  %list_temp.031 = load ptr, ptr %r_list.030, align 8
  %master7 = getelementptr inbounds %struct.drm_map_list, ptr %r_list.030, i32 0, i32 4
  %9 = ptrtoint ptr %master7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %master7, align 8
  %cmp8 = icmp eq ptr %10, %master
  br i1 %cmp8, label %if.then9, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %map = getelementptr inbounds %struct.drm_map_list, ptr %r_list.030, i32 0, i32 2
  %11 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map, align 4
  %call10 = tail call i32 @drm_legacy_rmmap_locked(ptr noundef %dev, ptr noundef %12)
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %list_temp.031, %maplist
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %struct_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_legacy_rmmaps(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %maplist = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 42
  %0 = ptrtoint ptr %maplist to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %maplist, align 4
  %cmp.not17 = icmp eq ptr %1, %maplist
  br i1 %cmp.not17, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %driver.i.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %driver_features1.i.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 10
  %struct_mutex.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %drm_legacy_rmmap.exit.for.body_crit_edge, %for.body.lr.ph
  %r_list.018 = phi ptr [ %1, %for.body.lr.ph ], [ %list_temp.0, %drm_legacy_rmmap.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %r_list.018 to i32
  call void @__asan_load4_noabort(i32 %2)
  %list_temp.0 = load ptr, ptr %r_list.018, align 8
  %3 = ptrtoint ptr %driver.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver.i.i.i, align 4
  %driver_features.i.i.i = getelementptr inbounds %struct.drm_driver, ptr %4, i32 0, i32 24
  %5 = ptrtoint ptr %driver_features.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %driver_features.i.i.i, align 4
  %7 = ptrtoint ptr %driver_features1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %driver_features1.i.i.i, align 4
  %and.i.i.i = and i32 %6, -2080374784
  %9 = and i32 %and.i.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %for.body.drm_legacy_rmmap.exit_crit_edge, label %if.end.i

for.body.drm_legacy_rmmap.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_legacy_rmmap.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %map = getelementptr inbounds %struct.drm_map_list, ptr %r_list.018, i32 0, i32 2
  %11 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map, align 4
  tail call void @mutex_lock_nested(ptr noundef %struct_mutex.i, i32 noundef 0) #10
  %call2.i = tail call i32 @drm_legacy_rmmap_locked(ptr noundef %dev, ptr noundef %12) #10
  tail call void @mutex_unlock(ptr noundef %struct_mutex.i) #10
  br label %drm_legacy_rmmap.exit

drm_legacy_rmmap.exit:                            ; preds = %if.end.i, %for.body.drm_legacy_rmmap.exit_crit_edge
  %cmp.not = icmp eq ptr %list_temp.0, %maplist
  br i1 %cmp.not, label %drm_legacy_rmmap.exit.for.end_crit_edge, label %drm_legacy_rmmap.exit.for.body_crit_edge

drm_legacy_rmmap.exit.for.body_crit_edge:         ; preds = %drm_legacy_rmmap.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

drm_legacy_rmmap.exit.for.end_crit_edge:          ; preds = %drm_legacy_rmmap.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %drm_legacy_rmmap.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_rmmap_ioctl(ptr noundef %dev, ptr nocapture noundef readonly %data, ptr nocapture noundef readnone %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i = getelementptr inbounds %struct.drm_driver, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %driver_features.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_features.i.i, align 4
  %driver_features1.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 10
  %4 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i = and i32 %5, %3
  %6 = and i32 %and.i.i, -2080374784
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %struct_mutex = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %struct_mutex, i32 noundef 0) #10
  %maplist = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 42
  %8 = ptrtoint ptr %maplist to i32
  call void @__asan_load4_noabort(i32 %8)
  %r_list.068 = load ptr, ptr %maplist, align 4
  %cmp.not69 = icmp eq ptr %r_list.068, %maplist
  br i1 %cmp.not69, label %if.end.for.end.thread_crit_edge, label %for.body.lr.ph

if.end.for.end.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

for.body.lr.ph:                                   ; preds = %if.end
  %handle = getelementptr inbounds %struct.drm_map, ptr %data, i32 0, i32 4
  br label %for.body

for.end.thread:                                   ; preds = %for.inc.for.end.thread_crit_edge, %if.end.for.end.thread_crit_edge
  %9 = ptrtoint ptr %maplist to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %maplist, align 4
  br label %cleanup.sink.split

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %r_list.070 = phi ptr [ %r_list.068, %for.body.lr.ph ], [ %r_list.0, %for.inc.for.body_crit_edge ]
  %map3 = getelementptr inbounds %struct.drm_map_list, ptr %r_list.070, i32 0, i32 2
  %11 = ptrtoint ptr %map3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map3, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true4:                                   ; preds = %for.body
  %user_token = getelementptr inbounds %struct.drm_map_list, ptr %r_list.070, i32 0, i32 3
  %13 = ptrtoint ptr %user_token to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %user_token, align 8
  %15 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %handle, align 4
  %17 = ptrtoint ptr %16 to i32
  %conv = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %conv)
  %cmp5 = icmp eq i64 %14, %conv
  br i1 %cmp5, label %land.lhs.true7, label %land.lhs.true4.for.inc_crit_edge

land.lhs.true4.for.inc_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true7:                                   ; preds = %land.lhs.true4
  %flags = getelementptr inbounds %struct.drm_local_map, ptr %12, i32 0, i32 3
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %and = and i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %land.lhs.true7.for.inc_crit_edge, label %for.end

land.lhs.true7.for.inc_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true7.for.inc_crit_edge, %land.lhs.true4.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %20 = ptrtoint ptr %r_list.070 to i32
  call void @__asan_load4_noabort(i32 %20)
  %r_list.0 = load ptr, ptr %r_list.070, align 4
  %cmp.not = icmp eq ptr %r_list.0, %maplist
  br i1 %cmp.not, label %for.inc.for.end.thread_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

for.end:                                          ; preds = %land.lhs.true7
  %21 = ptrtoint ptr %maplist to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %maplist, align 4
  %cmp.i = icmp eq ptr %22, %maplist
  br i1 %cmp.i, label %for.end.cleanup.sink.split_crit_edge, label %if.end24

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end24:                                         ; preds = %for.end
  %type = getelementptr inbounds %struct.drm_local_map, ptr %12, i32 0, i32 2
  %23 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %switch = icmp ult i32 %24, 2
  br i1 %switch, label %if.end24.cleanup.sink.split_crit_edge, label %if.end33

if.end24.cleanup.sink.split_crit_edge:            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end33:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %call34 = tail call i32 @drm_legacy_rmmap_locked(ptr noundef %dev, ptr noundef nonnull %12)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end33, %if.end24.cleanup.sink.split_crit_edge, %for.end.cleanup.sink.split_crit_edge, %for.end.thread
  %retval.0.ph = phi i32 [ %call34, %if.end33 ], [ -22, %for.end.thread ], [ -22, %for.end.cleanup.sink.split_crit_edge ], [ 0, %if.end24.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %struct_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_addbufs_pci(ptr noundef %dev, ptr nocapture noundef %request) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 45
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1, align 4
  %driver.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i = getelementptr inbounds %struct.drm_driver, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %driver_features.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_features.i.i, align 4
  %driver_features1.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 10
  %6 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i = and i32 %5, 134217728
  %and2.i.i = and i32 %and.i.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %and2.i.i)
  %cmp.i.i = icmp eq i32 %and2.i.i, 134217728
  br i1 %cmp.i.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call zeroext i1 @capable(i32 noundef 21) #10
  br i1 %call5, label %if.end7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %8 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %request, align 4
  %size9 = getelementptr inbounds %struct.drm_buf_desc, ptr %request, i32 0, i32 1
  %10 = ptrtoint ptr %size9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i = icmp ugt i32 %11, 1
  %sub.i470 = add i32 %11, -1
  %12 = tail call i32 @llvm.ctlz.i32(i32 %sub.i470, i1 false) #10, !range !80
  %add.i = sub nuw nsw i32 32, %12
  %cond36 = select i1 %cmp.i, i32 %add.i, i32 0
  %shl = shl nuw i32 1, %cond36
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %9, i32 noundef %11, i32 noundef %shl, i32 noundef %cond36) #10
  %13 = add nsw i32 %cond36, -23
  call void @__sanitizer_cov_trace_const_cmp4(i32 -18, i32 %13)
  %14 = icmp ult i32 %13, -18
  br i1 %14, label %if.end7.cleanup_crit_edge, label %if.end45

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end45:                                         ; preds = %if.end7
  %flags = getelementptr inbounds %struct.drm_buf_desc, ptr %request, i32 0, i32 4
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %and = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool46.not = icmp eq i32 %and, 0
  %add48 = add nuw i32 %shl, 4095
  %and49 = and i32 %add48, -4096
  %cond52 = select i1 %tobool46.not, i32 %shl, i32 %and49
  %17 = tail call i32 @llvm.smax.i32(i32 %cond36, i32 12)
  %18 = add nsw i32 %17, -12
  %shl61 = shl nuw nsw i32 1, %17
  %buf_lock = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 48
  tail call void @_raw_spin_lock(ptr noundef %buf_lock) #10
  %buf_use = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 49
  %19 = ptrtoint ptr %buf_use to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool62.not = icmp eq i32 %20, 0
  br i1 %tobool62.not, label %if.end65, label %if.then63

if.then63:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %buf_lock) #10
  br label %cleanup

if.end65:                                         ; preds = %if.end45
  %buf_alloc = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 50
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %buf_alloc, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %buf_alloc, i32 1, i32 3, i32 1) #10
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %buf_alloc, ptr %buf_alloc, i32 1, ptr elementtype(i32) %buf_alloc) #10, !srcloc !81
  tail call void @_raw_spin_unlock(ptr noundef %buf_lock) #10
  %struct_mutex = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %struct_mutex, i32 noundef 0) #10
  %arrayidx = getelementptr [23 x %struct.drm_buf_entry], ptr %1, i32 0, i32 %cond36
  %buf_count = getelementptr [23 x %struct.drm_buf_entry], ptr %1, i32 0, i32 %cond36, i32 1
  %22 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buf_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool67.not = icmp eq i32 %23, 0
  br i1 %tobool67.not, label %if.end71, label %if.then68

if.then68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %struct_mutex) #10
  %call.i.i460 = tail call zeroext i1 @__kasan_check_write(ptr noundef %buf_alloc, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %buf_alloc, i32 1, i32 3, i32 1) #10
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %buf_alloc, ptr %buf_alloc, i32 1, ptr elementtype(i32) %buf_alloc) #10, !srcloc !82
  br label %cleanup

if.end71:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %9)
  %25 = icmp ugt i32 %9, 4096
  br i1 %25, label %if.then77, label %kcalloc.exit.thread

if.then77:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %struct_mutex) #10
  %call.i.i461 = tail call zeroext i1 @__kasan_check_write(ptr noundef %buf_alloc, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %buf_alloc, i32 1, i32 3, i32 1) #10
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %buf_alloc, ptr %buf_alloc, i32 1, ptr elementtype(i32) %buf_alloc) #10, !srcloc !82
  br label %cleanup

kcalloc.exit.thread:                              ; preds = %if.end71
  %27 = shl nuw nsw i32 %9, 6
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %27, i32 noundef 3520) #14
  %buflist589 = getelementptr [23 x %struct.drm_buf_entry], ptr %1, i32 0, i32 %cond36, i32 2
  %28 = ptrtoint ptr %buflist589 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call8.i.i, ptr %buflist589, align 4
  %tobool83.not590 = icmp eq ptr %call8.i.i, null
  br i1 %tobool83.not590, label %if.then84, label %if.end7.i.i501

if.then84:                                        ; preds = %kcalloc.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %struct_mutex) #10
  %call.i.i462 = tail call zeroext i1 @__kasan_check_write(ptr noundef %buf_alloc, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %buf_alloc, i32 1, i32 3, i32 1) #10
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %buf_alloc, ptr %buf_alloc, i32 1, ptr elementtype(i32) %buf_alloc) #10, !srcloc !82
  br label %cleanup

if.end7.i.i501:                                   ; preds = %kcalloc.exit.thread
  %30 = shl nuw nsw i32 %9, 2
  %call8.i.i500 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %30, i32 noundef 3520) #14
  %seglist = getelementptr [23 x %struct.drm_buf_entry], ptr %1, i32 0, i32 %cond36, i32 5
  %31 = ptrtoint ptr %seglist to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call8.i.i500, ptr %seglist, align 4
  %tobool90.not = icmp eq ptr %call8.i.i500, null
  br i1 %tobool90.not, label %if.then91, label %if.end95

if.then91:                                        ; preds = %if.end7.i.i501
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %buflist589 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buflist589, align 4
  tail call void @kfree(ptr noundef %33) #10
  tail call void @mutex_unlock(ptr noundef %struct_mutex) #10
  %call.i.i463 = tail call zeroext i1 @__kasan_check_write(ptr noundef %buf_alloc, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %buf_alloc, i32 1, i32 3, i32 1) #10
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %buf_alloc, ptr %buf_alloc, i32 1, ptr elementtype(i32) %buf_alloc) #10, !srcloc !82
  br label %cleanup

if.end95:                                         ; preds = %if.end7.i.i501
  %page_count96 = getelementptr inbounds %struct.drm_device_dma, ptr %1, i32 0, i32 4
  %35 = ptrtoint ptr %page_count96 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %page_count96, align 4
  %shl97 = shl nuw nsw i32 %9, %18
  %add98 = add i32 %36, %shl97
  %37 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add98, i32 4) #10
  %38 = extractvalue { i32, i1 } %37, 1
  br i1 %38, label %if.end95.if.then101_crit_edge, label %if.end7.i, !prof !83

if.end95.if.then101_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then101

if.end7.i:                                        ; preds = %if.end95
  %39 = extractvalue { i32, i1 } %37, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %39, i32 noundef 3264) #14
  %tobool100.not = icmp eq ptr %call8.i, null
  br i1 %tobool100.not, label %if.end7.i.if.then101_crit_edge, label %if.end106

if.end7.i.if.then101_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then101

if.then101:                                       ; preds = %if.end7.i.if.then101_crit_edge, %if.end95.if.then101_crit_edge
  %40 = ptrtoint ptr %buflist589 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buflist589, align 4
  tail call void @kfree(ptr noundef %41) #10
  %42 = ptrtoint ptr %seglist to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %seglist, align 4
  tail call void @kfree(ptr noundef %43) #10
  tail call void @mutex_unlock(ptr noundef %struct_mutex) #10
  %call.i.i464 = tail call zeroext i1 @__kasan_check_write(ptr noundef %buf_alloc, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %buf_alloc, i32 1, i32 3, i32 1) #10
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %buf_alloc, ptr %buf_alloc, i32 1, ptr elementtype(i32) %buf_alloc) #10, !srcloc !82
  br label %cleanup

if.end106:                                        ; preds = %if.end7.i
  %pagelist = getelementptr inbounds %struct.drm_device_dma, ptr %1, i32 0, i32 5
  %45 = ptrtoint ptr %pagelist to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pagelist, align 4
  %47 = ptrtoint ptr %page_count96 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %page_count96, align 4
  %mul = shl i32 %48, 2
  %49 = call ptr @memcpy(ptr %call8.i, ptr %46, i32 %mul)
  %50 = load i32, ptr %page_count96, align 4
  %add110 = add i32 %50, %shl97
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %add110) #10
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %shl, ptr %arrayidx, align 4
  %page_order111 = getelementptr [23 x %struct.drm_buf_entry], ptr %1, i32 0, i32 %cond36, i32 4
  %52 = ptrtoint ptr %page_order111 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %18, ptr %page_order111, align 4
  %53 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %buf_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %9)
  %cmp113572 = icmp slt i32 %54, %9
  br i1 %cmp113572, label %while.body.lr.ph, label %if.end106.while.end_crit_edge

if.end106.while.end_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end106
  %dev123 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %seg_count135 = getelementptr [23 x %struct.drm_buf_entry], ptr %1, i32 0, i32 %cond36, i32 3
  %shl137 = shl nuw nsw i32 1, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %shl61)
  %cmp155.not570 = icmp ugt i32 %shl, %shl61
  %buf_count164 = getelementptr inbounds %struct.drm_device_dma, ptr %1, i32 0, i32 1
  %byte_count169 = getelementptr inbounds %struct.drm_device_dma, ptr %1, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %for.end193.while.body_crit_edge, %while.body.lr.ph
  %page_count.0575 = phi i32 [ 0, %while.body.lr.ph ], [ %inc149, %for.end193.while.body_crit_edge ]
  %byte_count.0573 = phi i32 [ 0, %while.body.lr.ph ], [ %add195, %for.end193.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %55 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %55, i32 noundef 3264, i32 noundef 12) #13
  %tobool116.not = icmp eq ptr %call7.i, null
  br i1 %tobool116.not, label %if.then117, label %if.end121

if.then117:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %buf_count to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %9, ptr %buf_count, align 4
  %57 = ptrtoint ptr %seg_count135 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %9, ptr %seg_count135, align 4
  tail call fastcc void @drm_cleanup_buf_error(ptr noundef %dev, ptr noundef %arrayidx)
  tail call void @kfree(ptr noundef nonnull %call8.i) #10
  tail call void @mutex_unlock(ptr noundef %struct_mutex) #10
  %call.i.i465 = tail call zeroext i1 @__kasan_check_write(ptr noundef %buf_alloc, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %buf_alloc, i32 1, i32 3, i32 1) #10
  %58 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %buf_alloc, ptr %buf_alloc, i32 1, ptr elementtype(i32) %buf_alloc) #10, !srcloc !82
  br label %cleanup

if.end121:                                        ; preds = %while.body
  %size122 = getelementptr inbounds %struct.drm_dma_handle, ptr %call7.i, i32 0, i32 2
  %59 = ptrtoint ptr %size122 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %shl61, ptr %size122, align 8
  %60 = ptrtoint ptr %dev123 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev123, align 4
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %61, i32 noundef %shl61, ptr noundef nonnull %call7.i, i32 noundef 3264, i32 noundef 0) #10
  %vaddr = getelementptr inbounds %struct.drm_dma_handle, ptr %call7.i, i32 0, i32 1
  %62 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i, ptr %vaddr, align 4
  %tobool127.not = icmp eq ptr %call.i, null
  br i1 %tobool127.not, label %if.then128, label %if.end133

if.then128:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  %63 = ptrtoint ptr %buf_count to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %9, ptr %buf_count, align 4
  %64 = ptrtoint ptr %seg_count135 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %9, ptr %seg_count135, align 4
  tail call fastcc void @drm_cleanup_buf_error(ptr noundef %dev, ptr noundef %arrayidx)
  tail call void @kfree(ptr noundef nonnull %call8.i) #10
  tail call void @mutex_unlock(ptr noundef %struct_mutex) #10
  %call.i.i466 = tail call zeroext i1 @__kasan_check_write(ptr noundef %buf_alloc, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %buf_alloc, i32 1, i32 3, i32 1) #10
  %65 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %buf_alloc, ptr %buf_alloc, i32 1, ptr elementtype(i32) %buf_alloc) #10, !srcloc !82
  br label %cleanup

if.end133:                                        ; preds = %if.end121
  %66 = ptrtoint ptr %seglist to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %seglist, align 4
  %68 = ptrtoint ptr %seg_count135 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %seg_count135, align 4
  %inc = add i32 %69, 1
  store i32 %inc, ptr %seg_count135, align 4
  %arrayidx136 = getelementptr ptr, ptr %67, i32 %69
  %70 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call7.i, ptr %arrayidx136, align 4
  br label %for.body

for.cond153.preheader:                            ; preds = %for.body
  br i1 %cmp155.not570, label %for.cond153.preheader.for.end193_crit_edge, label %for.cond153.preheader.land.rhs_crit_edge

for.cond153.preheader.land.rhs_crit_edge:         ; preds = %for.cond153.preheader
  br label %land.rhs

for.cond153.preheader.for.end193_crit_edge:       ; preds = %for.cond153.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end193

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end133
  %page_count.1569 = phi i32 [ %inc149, %for.body.for.body_crit_edge ], [ %page_count.0575, %if.end133 ]
  %i.0568 = phi i32 [ %inc152, %for.body.for.body_crit_edge ], [ 0, %if.end133 ]
  %71 = ptrtoint ptr %page_count96 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %page_count96, align 4
  %add141 = add i32 %72, %page_count.1569
  %73 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %vaddr, align 4
  %75 = ptrtoint ptr %74 to i32
  %mul143 = shl i32 %i.0568, 12
  %add144 = add i32 %mul143, %75
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %add141, i32 noundef %add144) #10
  %76 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %vaddr, align 4
  %78 = ptrtoint ptr %77 to i32
  %add147 = add i32 %mul143, %78
  %79 = ptrtoint ptr %page_count96 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %page_count96, align 4
  %inc149 = add i32 %page_count.1569, 1
  %add150 = add i32 %80, %page_count.1569
  %arrayidx151 = getelementptr i32, ptr %call8.i, i32 %add150
  %81 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %add147, ptr %arrayidx151, align 4
  %inc152 = add nuw nsw i32 %i.0568, 1
  %exitcond.not = icmp eq i32 %inc152, %shl137
  br i1 %exitcond.not, label %for.cond153.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

land.rhs:                                         ; preds = %if.end186.land.rhs_crit_edge, %for.cond153.preheader.land.rhs_crit_edge
  %offset.0571 = phi i32 [ %add190, %if.end186.land.rhs_crit_edge ], [ 0, %for.cond153.preheader.land.rhs_crit_edge ]
  %82 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %buf_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %9)
  %cmp158 = icmp slt i32 %83, %9
  br i1 %cmp158, label %for.body160, label %land.rhs.for.end193_crit_edge

land.rhs.for.end193_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end193

for.body160:                                      ; preds = %land.rhs
  %84 = ptrtoint ptr %buflist589 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %buflist589, align 4
  %arrayidx163 = getelementptr %struct.drm_buf, ptr %85, i32 %83
  %86 = ptrtoint ptr %buf_count164 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %buf_count164, align 4
  %add166 = add i32 %87, %83
  %88 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %add166, ptr %arrayidx163, align 4
  %total167 = getelementptr %struct.drm_buf, ptr %85, i32 %83, i32 1
  %89 = ptrtoint ptr %total167 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %cond52, ptr %total167, align 4
  %order168 = getelementptr %struct.drm_buf, ptr %85, i32 %83, i32 2
  %90 = ptrtoint ptr %order168 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %cond36, ptr %order168, align 4
  %used = getelementptr %struct.drm_buf, ptr %85, i32 %83, i32 3
  %91 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %used, align 4
  %92 = ptrtoint ptr %byte_count169 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %byte_count169, align 4
  %add170 = add i32 %offset.0571, %byte_count.0573
  %add171 = add i32 %add170, %93
  %offset172 = getelementptr %struct.drm_buf, ptr %85, i32 %83, i32 4
  %94 = ptrtoint ptr %offset172 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %add171, ptr %offset172, align 4
  %95 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %vaddr, align 4
  %add.ptr = getelementptr i8, ptr %96, i32 %offset.0571
  %address = getelementptr %struct.drm_buf, ptr %85, i32 %83, i32 5
  %97 = ptrtoint ptr %address to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %add.ptr, ptr %address, align 4
  %98 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %call7.i, align 8
  %add175 = add i32 %99, %offset.0571
  %bus_address = getelementptr %struct.drm_buf, ptr %85, i32 %83, i32 6
  %100 = ptrtoint ptr %bus_address to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %add175, ptr %bus_address, align 4
  %next = getelementptr %struct.drm_buf, ptr %85, i32 %83, i32 7
  %101 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %next, align 4
  %waiting = getelementptr %struct.drm_buf, ptr %85, i32 %83, i32 8
  %102 = ptrtoint ptr %waiting to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile i32 0, ptr %waiting, align 4
  %pending = getelementptr %struct.drm_buf, ptr %85, i32 %83, i32 9
  %103 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile i32 0, ptr %pending, align 4
  %file_priv = getelementptr %struct.drm_buf, ptr %85, i32 %83, i32 10
  %104 = ptrtoint ptr %file_priv to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %file_priv, align 4
  %105 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %driver.i.i, align 4
  %dev_priv_size = getelementptr inbounds %struct.drm_driver, ptr %106, i32 0, i32 40
  %107 = ptrtoint ptr %dev_priv_size to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %dev_priv_size, align 4
  %dev_priv_size176 = getelementptr %struct.drm_buf, ptr %85, i32 %83, i32 14
  %109 = ptrtoint ptr %dev_priv_size176 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %dev_priv_size176, align 4
  %call9.i.i534 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %108, i32 noundef 3520) #14
  %dev_private = getelementptr %struct.drm_buf, ptr %85, i32 %83, i32 15
  %110 = ptrtoint ptr %dev_private to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call9.i.i534, ptr %dev_private, align 4
  %tobool180.not = icmp eq ptr %call9.i.i534, null
  br i1 %tobool180.not, label %if.then181, label %if.end186

if.then181:                                       ; preds = %for.body160
  call void @__sanitizer_cov_trace_pc() #12
  %111 = ptrtoint ptr %buf_count to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %9, ptr %buf_count, align 4
  %112 = ptrtoint ptr %seg_count135 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %9, ptr %seg_count135, align 4
  tail call fastcc void @drm_cleanup_buf_error(ptr noundef %dev, ptr noundef %arrayidx)
  tail call void @kfree(ptr noundef nonnull %call8.i) #10
  tail call void @mutex_unlock(ptr noundef %struct_mutex) #10
  %call.i.i467 = tail call zeroext i1 @__kasan_check_write(ptr noundef %buf_alloc, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %buf_alloc, i32 1, i32 3, i32 1) #10
  %113 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %buf_alloc, ptr %buf_alloc, i32 1, ptr elementtype(i32) %buf_alloc) #10, !srcloc !82
  br label %cleanup

if.end186:                                        ; preds = %for.body160
  %114 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %buf_count, align 4
  %116 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %address, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef %115, ptr noundef %117) #10
  %add190 = add i32 %offset.0571, %cond52
  %118 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %buf_count, align 4
  %inc192 = add i32 %119, 1
  store i32 %inc192, ptr %buf_count, align 4
  %add154 = add i32 %add190, %shl
  %cmp155.not = icmp ugt i32 %add154, %shl61
  br i1 %cmp155.not, label %if.end186.for.end193_crit_edge, label %if.end186.land.rhs_crit_edge

if.end186.land.rhs_crit_edge:                     ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

if.end186.for.end193_crit_edge:                   ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end193

for.end193:                                       ; preds = %if.end186.for.end193_crit_edge, %land.rhs.for.end193_crit_edge, %for.cond153.preheader.for.end193_crit_edge
  %add195 = add i32 %byte_count.0573, %shl61
  %120 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %buf_count, align 4
  %cmp113 = icmp slt i32 %121, %9
  br i1 %cmp113, label %for.end193.while.body_crit_edge, label %for.end193.while.end_crit_edge

for.end193.while.end_crit_edge:                   ; preds = %for.end193
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

for.end193.while.body_crit_edge:                  ; preds = %for.end193
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %for.end193.while.end_crit_edge, %if.end106.while.end_crit_edge
  %.lcssa = phi i32 [ %54, %if.end106.while.end_crit_edge ], [ %121, %for.end193.while.end_crit_edge ]
  %buflist196 = getelementptr inbounds %struct.drm_device_dma, ptr %1, i32 0, i32 2
  %122 = ptrtoint ptr %buflist196 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %buflist196, align 4
  %buf_count197 = getelementptr inbounds %struct.drm_device_dma, ptr %1, i32 0, i32 1
  %124 = ptrtoint ptr %buf_count197 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %buf_count197, align 4
  %add199 = add i32 %125, %.lcssa
  %mul200 = shl i32 %add199, 2
  %call201 = tail call noalias ptr @krealloc(ptr noundef %123, i32 noundef %mul200, i32 noundef 3264) #15
  %tobool202.not = icmp eq ptr %call201, null
  br i1 %tobool202.not, label %if.then203, label %if.end206

if.then203:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @drm_cleanup_buf_error(ptr noundef %dev, ptr noundef %arrayidx)
  tail call void @kfree(ptr noundef nonnull %call8.i) #10
  tail call void @mutex_unlock(ptr noundef %struct_mutex) #10
  %call.i.i468 = tail call zeroext i1 @__kasan_check_write(ptr noundef %buf_alloc, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %buf_alloc, i32 1, i32 3, i32 1) #10
  %126 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %buf_alloc, ptr %buf_alloc, i32 1, ptr elementtype(i32) %buf_alloc) #10, !srcloc !82
  br label %cleanup

if.end206:                                        ; preds = %while.end
  %127 = ptrtoint ptr %buflist196 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call201, ptr %buflist196, align 4
  %128 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %buf_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp210577 = icmp sgt i32 %129, 0
  br i1 %cmp210577, label %if.end206.for.body212_crit_edge, label %if.end206.for.end221_crit_edge

if.end206.for.end221_crit_edge:                   ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end221

if.end206.for.body212_crit_edge:                  ; preds = %if.end206
  br label %for.body212

for.body212:                                      ; preds = %for.body212.for.body212_crit_edge, %if.end206.for.body212_crit_edge
  %i.1578 = phi i32 [ %inc220, %for.body212.for.body212_crit_edge ], [ 0, %if.end206.for.body212_crit_edge ]
  %130 = ptrtoint ptr %buflist589 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %buflist589, align 4
  %arrayidx214 = getelementptr %struct.drm_buf, ptr %131, i32 %i.1578
  %132 = ptrtoint ptr %buflist196 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %buflist196, align 4
  %134 = ptrtoint ptr %buf_count197 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %buf_count197, align 4
  %add217 = add i32 %135, %i.1578
  %arrayidx218 = getelementptr ptr, ptr %133, i32 %add217
  %136 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %arrayidx214, ptr %arrayidx218, align 4
  %inc220 = add nuw nsw i32 %i.1578, 1
  %137 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %buf_count, align 4
  %cmp210 = icmp slt i32 %inc220, %138
  br i1 %cmp210, label %for.body212.for.body212_crit_edge, label %for.body212.for.end221_crit_edge

for.body212.for.end221_crit_edge:                 ; preds = %for.body212
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end221

for.body212.for.body212_crit_edge:                ; preds = %for.body212
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body212

for.end221:                                       ; preds = %for.body212.for.end221_crit_edge, %if.end206.for.end221_crit_edge
  %139 = ptrtoint ptr %page_count96 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %page_count96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool223.not = icmp eq i32 %140, 0
  br i1 %tobool223.not, label %for.end221.if.end226_crit_edge, label %if.then224

for.end221.if.end226_crit_edge:                   ; preds = %for.end221
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end226

if.then224:                                       ; preds = %for.end221
  call void @__sanitizer_cov_trace_pc() #12
  %141 = ptrtoint ptr %pagelist to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %pagelist, align 4
  tail call void @kfree(ptr noundef %142) #10
  br label %if.end226

if.end226:                                        ; preds = %if.then224, %for.end221.if.end226_crit_edge
  %143 = ptrtoint ptr %pagelist to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %call8.i, ptr %pagelist, align 4
  %144 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %buf_count, align 4
  %146 = ptrtoint ptr %buf_count197 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %buf_count197, align 4
  %add230 = add i32 %147, %145
  store i32 %add230, ptr %buf_count197, align 4
  %seg_count231 = getelementptr [23 x %struct.drm_buf_entry], ptr %1, i32 0, i32 %cond36, i32 3
  %148 = ptrtoint ptr %seg_count231 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %seg_count231, align 4
  %seg_count232 = getelementptr inbounds %struct.drm_device_dma, ptr %1, i32 0, i32 3
  %150 = ptrtoint ptr %seg_count232 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %seg_count232, align 4
  %add233 = add i32 %151, %149
  store i32 %add233, ptr %seg_count232, align 4
  %shl235 = shl i32 %149, %18
  %152 = ptrtoint ptr %page_count96 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %page_count96, align 4
  %add237 = add i32 %153, %shl235
  store i32 %add237, ptr %page_count96, align 4
  %154 = load i32, ptr %seg_count231, align 4
  %shl239 = shl i32 %154, %18
  %mul240 = shl i32 %shl239, 12
  %byte_count241 = getelementptr inbounds %struct.drm_device_dma, ptr %1, i32 0, i32 6
  %155 = ptrtoint ptr %byte_count241 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %byte_count241, align 4
  %add242 = add i32 %mul240, %156
  store i32 %add242, ptr %byte_count241, align 4
  tail call void @mutex_unlock(ptr noundef %struct_mutex) #10
  %157 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %buf_count, align 4
  %159 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %request, align 4
  %160 = ptrtoint ptr %size9 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %shl, ptr %size9, align 4
  %161 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %flags, align 4
  %and248 = and i32 %162, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and248)
  %tobool249.not = icmp eq i32 %and248, 0
  br i1 %tobool249.not, label %if.end226.if.end252_crit_edge, label %if.then250

if.end226.if.end252_crit_edge:                    ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end252

if.then250:                                       ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #12
  %flags251 = getelementptr inbounds %struct.drm_device_dma, ptr %1, i32 0, i32 7
  %163 = ptrtoint ptr %flags251 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 8, ptr %flags251, align 4
  br label %if.end252

if.end252:                                        ; preds = %if.then250, %if.end226.if.end252_crit_edge
  %call.i.i469 = tail call zeroext i1 @__kasan_check_write(ptr noundef %buf_alloc, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %buf_alloc, i32 1, i32 3, i32 1) #10
  %164 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %buf_alloc, ptr %buf_alloc, i32 1, ptr elementtype(i32) %buf_alloc) #10, !srcloc !82
  br label %cleanup

cleanup:                                          ; preds = %if.end252, %if.then203, %if.then181, %if.then128, %if.then117, %if.then101, %if.then91, %if.then84, %if.then77, %if.then68, %if.then63, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then63 ], [ -12, %if.then68 ], [ -22, %if.then77 ], [ -12, %if.then181 ], [ -12, %if.then128 ], [ -12, %if.then117 ], [ 0, %if.end252 ], [ -12, %if.then203 ], [ -12, %if.then101 ], [ -12, %if.then91 ], [ -12, %if.then84 ], [ -95, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -1, %if.end4.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @drm_cleanup_buf_error(ptr nocapture noundef readonly %dev, ptr nocapture noundef %entry1) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %seg_count = getelementptr inbounds %struct.drm_buf_entry, ptr %entry1, i32 0, i32 3
  %0 = ptrtoint ptr %seg_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %seg_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %for.cond.preheader

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %seg_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %seg_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp43 = icmp sgt i32 %3, 0
  br i1 %cmp43, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %seglist = getelementptr inbounds %struct.drm_buf_entry, ptr %entry1, i32 0, i32 5
  %dev7 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.044 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %seglist to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %seglist, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.044
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %for.body.for.inc_crit_edge, label %if.then4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev7, align 4
  %size = getelementptr inbounds %struct.drm_dma_handle, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  %vaddr = getelementptr inbounds %struct.drm_dma_handle, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vaddr, align 4
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %7, align 4
  tail call void @dma_free_attrs(ptr noundef %9, i32 noundef %11, ptr noundef %13, i32 noundef %15, i32 noundef 0) #10
  tail call void @kfree(ptr noundef nonnull %7) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.044, 1
  %16 = ptrtoint ptr %seg_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %seg_count, align 4
  %cmp = icmp slt i32 %inc, %17
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %seglist8 = getelementptr inbounds %struct.drm_buf_entry, ptr %entry1, i32 0, i32 5
  %18 = ptrtoint ptr %seglist8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %seglist8, align 4
  tail call void @kfree(ptr noundef %19) #10
  %20 = ptrtoint ptr %seg_count to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %seg_count, align 4
  br label %if.end10

if.end10:                                         ; preds = %for.end, %entry.if.end10_crit_edge
  %buf_count = getelementptr inbounds %struct.drm_buf_entry, ptr %entry1, i32 0, i32 1
  %21 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buf_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool11.not = icmp eq i32 %22, 0
  br i1 %tobool11.not, label %if.end10.if.end23_crit_edge, label %for.cond13.preheader

if.end10.if.end23_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

for.cond13.preheader:                             ; preds = %if.end10
  %23 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buf_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp1545 = icmp sgt i32 %24, 0
  br i1 %cmp1545, label %for.body16.lr.ph, label %for.cond13.preheader.for.end20_crit_edge

for.cond13.preheader.for.end20_crit_edge:         ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end20

for.body16.lr.ph:                                 ; preds = %for.cond13.preheader
  %buflist = getelementptr inbounds %struct.drm_buf_entry, ptr %entry1, i32 0, i32 2
  br label %for.body16

for.body16:                                       ; preds = %for.body16.for.body16_crit_edge, %for.body16.lr.ph
  %i.146 = phi i32 [ 0, %for.body16.lr.ph ], [ %inc19, %for.body16.for.body16_crit_edge ]
  %25 = ptrtoint ptr %buflist to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buflist, align 4
  %dev_private = getelementptr %struct.drm_buf, ptr %26, i32 %i.146, i32 15
  %27 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_private, align 4
  tail call void @kfree(ptr noundef %28) #10
  %inc19 = add nuw nsw i32 %i.146, 1
  %29 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %buf_count, align 4
  %cmp15 = icmp slt i32 %inc19, %30
  br i1 %cmp15, label %for.body16.for.body16_crit_edge, label %for.body16.for.end20_crit_edge

for.body16.for.end20_crit_edge:                   ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end20

for.body16.for.body16_crit_edge:                  ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body16

for.end20:                                        ; preds = %for.body16.for.end20_crit_edge, %for.cond13.preheader.for.end20_crit_edge
  %buflist21 = getelementptr inbounds %struct.drm_buf_entry, ptr %entry1, i32 0, i32 2
  %31 = ptrtoint ptr %buflist21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buflist21, align 4
  tail call void @kfree(ptr noundef %32) #10
  %33 = ptrtoint ptr %buf_count to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %buf_count, align 4
  br label %if.end23

if.end23:                                         ; preds = %for.end20, %if.end10.if.end23_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_addbufs(ptr noundef %dev, ptr nocapture noundef %data, ptr nocapture noundef readnone %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i = getelementptr inbounds %struct.drm_driver, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %driver_features.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_features.i.i, align 4
  %driver_features1.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 10
  %4 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i = and i32 %5, %3
  %6 = and i32 %and.i.i, 603979776
  call void @__sanitizer_cov_trace_const_cmp4(i32 603979776, i32 %6)
  %.not = icmp eq i32 %6, 603979776
  br i1 %.not, label %if.end3, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.drm_buf_desc, ptr %data, i32 0, i32 4
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end3
  %dma1.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 45
  %9 = ptrtoint ptr %dma1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dma1.i, align 4
  %and2.i.i.i = and i32 %and.i.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %cmp.i.i.i.not = icmp eq i32 %and2.i.i.i, 0
  br i1 %cmp.i.i.i.not, label %if.then4.cleanup_crit_edge, label %if.end.i

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.then4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = tail call zeroext i1 @capable(i32 noundef 21) #10
  br i1 %call5.i, label %if.end7.i, label %if.end4.i.cleanup_crit_edge

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.i:                                        ; preds = %if.end4.i
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data, align 4
  %size9.i = getelementptr inbounds %struct.drm_buf_desc, ptr %data, i32 0, i32 1
  %13 = ptrtoint ptr %size9.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.i.i27 = icmp ugt i32 %14, 1
  %sub.i298.i = add i32 %14, -1
  %15 = tail call i32 @llvm.ctlz.i32(i32 %sub.i298.i, i1 false) #10, !range !80
  %add.i.i = sub nuw nsw i32 32, %15
  %cond36.i = select i1 %cmp.i.i27, i32 %add.i.i, i32 0
  %shl.i = shl nuw i32 1, %cond36.i
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %and.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool37.not.i = icmp eq i32 %and.i, 0
  %add39.i = add nuw i32 %shl.i, 4095
  %and40.i = and i32 %add39.i, -4096
  %cond43.i = select i1 %tobool37.not.i, i32 %shl.i, i32 %and40.i
  %18 = tail call i32 @llvm.smax.i32(i32 %cond36.i, i32 12) #10
  %19 = add nsw i32 %18, -12
  %shl52.i = shl i32 4096, %19
  %agp_start.i = getelementptr inbounds %struct.drm_buf_desc, ptr %data, i32 0, i32 5
  %20 = ptrtoint ptr %agp_start.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %agp_start.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.15, i32 noundef %12) #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.16, i32 noundef %cond36.i) #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.17, i32 noundef %shl.i) #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.18, i32 noundef %21) #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.19, i32 noundef %cond43.i) #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.20, i32 noundef %19) #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.21, i32 noundef %shl52.i) #10
  %22 = add nsw i32 %cond36.i, -23
  call void @__sanitizer_cov_trace_const_cmp4(i32 -18, i32 %22)
  %23 = icmp ult i32 %22, -18
  br i1 %23, label %if.end7.i.cleanup_crit_edge, label %if.end59.i

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end59.i:                                       ; preds = %if.end7.i
  %buf_lock.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 48
  tail call void @_raw_spin_lock(ptr noundef %buf_lock.i) #10
  %buf_use.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 49
  %24 = ptrtoint ptr %buf_use.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %buf_use.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool60.not.i = icmp eq i32 %25, 0
  br i1 %tobool60.not.i, label %if.end63.i, label %if.then61.i

if.then61.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %buf_lock.i) #10
  br label %cleanup

if.end63.i:                                       ; preds = %if.end59.i
  %buf_alloc.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 50
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %buf_alloc.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %buf_alloc.i, i32 1, i32 3, i32 1) #10
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %buf_alloc.i, ptr %buf_alloc.i, i32 1, ptr elementtype(i32) %buf_alloc.i) #10, !srcloc !81
  tail call void @_raw_spin_unlock(ptr noundef %buf_lock.i) #10
  %struct_mutex.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %struct_mutex.i, i32 noundef 0) #10
  %arrayidx.i = getelementptr [23 x %struct.drm_buf_entry], ptr %10, i32 0, i32 %cond36.i
  %buf_count.i = getelementptr [23 x %struct.drm_buf_entry], ptr %10, i32 0, i32 %cond36.i, i32 1
  %27 = ptrtoint ptr %buf_count.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %buf_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool65.not.i = icmp eq i32 %28, 0
  br i1 %tobool65.not.i, label %if.end69.i, label %if.then66.i

if.then66.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %struct_mutex.i) #10
  %call.i.i292.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %buf_alloc.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %buf_alloc.i, i32 1, i32 3, i32 1) #10
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %buf_alloc.i, ptr %buf_alloc.i, i32 1, ptr elementtype(i32) %buf_alloc.i) #10, !srcloc !82
  br label %cleanup

if.end69.i:                                       ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %12)
  %30 = icmp ugt i32 %12, 4096
  br i1 %30, label %if.then75.i, label %if.end7.i.i.i

if.then75.i:                                      ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %struct_mutex.i) #10
  %call.i.i293.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %buf_alloc.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %buf_alloc.i, i32 1, i32 3, i32 1) #10
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %buf_alloc.i, ptr %buf_alloc.i, i32 1, ptr elementtype(i32) %buf_alloc.i) #10, !srcloc !82
  br label %cleanup

if.end7.i.i.i:                                    ; preds = %if.end69.i
  %32 = shl nuw nsw i32 %12, 6
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %32, i32 noundef 3520) #14
  %buflist.i = getelementptr [23 x %struct.drm_buf_entry], ptr %10, i32 0, i32 %cond36.i, i32 2
  %33 = ptrtoint ptr %buflist.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call8.i.i.i, ptr %buflist.i, align 4
  %tobool81.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool81.not.i, label %if.then82.i, label %if.end85.i

if.then82.i:                                      ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %struct_mutex.i) #10
  %call.i.i294.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %buf_alloc.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %buf_alloc.i, i32 1, i32 3, i32 1) #10
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %buf_alloc.i, ptr %buf_alloc.i, i32 1, ptr elementtype(i32) %buf_alloc.i) #10, !srcloc !82
  br label %cleanup

if.end85.i:                                       ; preds = %if.end7.i.i.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %shl.i, ptr %arrayidx.i, align 4
  %page_order86.i = getelementptr [23 x %struct.drm_buf_entry], ptr %10, i32 0, i32 %cond36.i, i32 4
  %36 = ptrtoint ptr %page_order86.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %19, ptr %page_order86.i, align 4
  %37 = ptrtoint ptr %buf_count.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %buf_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %12)
  %cmp88317.i = icmp slt i32 %38, %12
  br i1 %cmp88317.i, label %while.body.lr.ph.i, label %if.end85.i.while.end.i_crit_edge

if.end85.i.while.end.i_crit_edge:                 ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end85.i
  %buf_count93.i = getelementptr inbounds %struct.drm_device_dma, ptr %10, i32 0, i32 1
  %byte_count98.i = getelementptr inbounds %struct.drm_device_dma, ptr %10, i32 0, i32 6
  %sg.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 54
  br label %while.body.i

while.body.i:                                     ; preds = %if.end113.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %39 = phi i32 [ %38, %while.body.lr.ph.i ], [ %inc.i, %if.end113.i.while.body.i_crit_edge ]
  %byte_count.0319.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add119.i, %if.end113.i.while.body.i_crit_edge ]
  %offset.0318.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add116.i, %if.end113.i.while.body.i_crit_edge ]
  %40 = ptrtoint ptr %buflist.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buflist.i, align 4
  %arrayidx92.i = getelementptr %struct.drm_buf, ptr %41, i32 %39
  %42 = ptrtoint ptr %buf_count93.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %buf_count93.i, align 4
  %add95.i = add i32 %43, %39
  %44 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add95.i, ptr %arrayidx92.i, align 4
  %total96.i = getelementptr %struct.drm_buf, ptr %41, i32 %39, i32 1
  %45 = ptrtoint ptr %total96.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %cond43.i, ptr %total96.i, align 4
  %order97.i = getelementptr %struct.drm_buf, ptr %41, i32 %39, i32 2
  %46 = ptrtoint ptr %order97.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %cond36.i, ptr %order97.i, align 4
  %used.i = getelementptr %struct.drm_buf, ptr %41, i32 %39, i32 3
  %47 = ptrtoint ptr %used.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %used.i, align 4
  %48 = ptrtoint ptr %byte_count98.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %byte_count98.i, align 4
  %add99.i = add i32 %49, %offset.0318.i
  %offset100.i = getelementptr %struct.drm_buf, ptr %41, i32 %39, i32 4
  %50 = ptrtoint ptr %offset100.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %add99.i, ptr %offset100.i, align 4
  %add101.i = add i32 %offset.0318.i, %21
  %bus_address.i = getelementptr %struct.drm_buf, ptr %41, i32 %39, i32 6
  %51 = ptrtoint ptr %bus_address.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %add101.i, ptr %bus_address.i, align 4
  %52 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sg.i, align 4
  %virtual.i = getelementptr inbounds %struct.drm_sg_mem, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %virtual.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %virtual.i, align 4
  %56 = ptrtoint ptr %55 to i32
  %add103.i = add i32 %add101.i, %56
  %57 = inttoptr i32 %add103.i to ptr
  %address.i = getelementptr %struct.drm_buf, ptr %41, i32 %39, i32 5
  %58 = ptrtoint ptr %address.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %address.i, align 4
  %next.i = getelementptr %struct.drm_buf, ptr %41, i32 %39, i32 7
  %59 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %next.i, align 4
  %waiting.i = getelementptr %struct.drm_buf, ptr %41, i32 %39, i32 8
  %60 = ptrtoint ptr %waiting.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile i32 0, ptr %waiting.i, align 4
  %pending.i = getelementptr %struct.drm_buf, ptr %41, i32 %39, i32 9
  %61 = ptrtoint ptr %pending.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 0, ptr %pending.i, align 4
  %file_priv.i = getelementptr %struct.drm_buf, ptr %41, i32 %39, i32 10
  %62 = ptrtoint ptr %file_priv.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %file_priv.i, align 4
  %63 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %driver.i.i, align 4
  %dev_priv_size.i = getelementptr inbounds %struct.drm_driver, ptr %64, i32 0, i32 40
  %65 = ptrtoint ptr %dev_priv_size.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %dev_priv_size.i, align 4
  %dev_priv_size104.i = getelementptr %struct.drm_buf, ptr %41, i32 %39, i32 14
  %67 = ptrtoint ptr %dev_priv_size104.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %dev_priv_size104.i, align 4
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %66, i32 noundef 3520) #14
  %dev_private.i = getelementptr %struct.drm_buf, ptr %41, i32 %39, i32 15
  %68 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call9.i.i.i, ptr %dev_private.i, align 4
  %tobool108.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool108.not.i, label %if.then109.i, label %if.end113.i

if.then109.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %buf_count.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %12, ptr %buf_count.i, align 4
  tail call fastcc void @drm_cleanup_buf_error(ptr noundef %dev, ptr noundef %arrayidx.i) #10
  tail call void @mutex_unlock(ptr noundef %struct_mutex.i) #10
  %call.i.i295.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %buf_alloc.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %buf_alloc.i, i32 1, i32 3, i32 1) #10
  %70 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %buf_alloc.i, ptr %buf_alloc.i, i32 1, ptr elementtype(i32) %buf_alloc.i) #10, !srcloc !82
  br label %cleanup

if.end113.i:                                      ; preds = %while.body.i
  %71 = ptrtoint ptr %buf_count.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %buf_count.i, align 4
  %73 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %address.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef %72, ptr noundef %74) #10
  %add116.i = add i32 %offset.0318.i, %cond43.i
  %75 = ptrtoint ptr %buf_count.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %buf_count.i, align 4
  %inc.i = add i32 %76, 1
  store i32 %inc.i, ptr %buf_count.i, align 4
  %add119.i = add i32 %byte_count.0319.i, %shl52.i
  %cmp88.i = icmp slt i32 %inc.i, %12
  br i1 %cmp88.i, label %if.end113.i.while.body.i_crit_edge, label %if.end113.i.while.end.i_crit_edge

if.end113.i.while.end.i_crit_edge:                ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

if.end113.i.while.body.i_crit_edge:               ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.end.i:                                      ; preds = %if.end113.i.while.end.i_crit_edge, %if.end85.i.while.end.i_crit_edge
  %byte_count.0.lcssa.i = phi i32 [ 0, %if.end85.i.while.end.i_crit_edge ], [ %add119.i, %if.end113.i.while.end.i_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.22, i32 noundef %byte_count.0.lcssa.i) #10
  %buflist120.i = getelementptr inbounds %struct.drm_device_dma, ptr %10, i32 0, i32 2
  %77 = ptrtoint ptr %buflist120.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %buflist120.i, align 4
  %buf_count121.i = getelementptr inbounds %struct.drm_device_dma, ptr %10, i32 0, i32 1
  %79 = ptrtoint ptr %buf_count121.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %buf_count121.i, align 4
  %81 = ptrtoint ptr %buf_count.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %buf_count.i, align 4
  %add123.i = add i32 %82, %80
  %mul.i = shl i32 %add123.i, 2
  %call124.i = tail call noalias ptr @krealloc(ptr noundef %78, i32 noundef %mul.i, i32 noundef 3264) #15
  %tobool125.not.i = icmp eq ptr %call124.i, null
  br i1 %tobool125.not.i, label %if.then126.i, label %if.end129.i

if.then126.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @drm_cleanup_buf_error(ptr noundef %dev, ptr noundef %arrayidx.i) #10
  tail call void @mutex_unlock(ptr noundef %struct_mutex.i) #10
  %call.i.i296.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %buf_alloc.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %buf_alloc.i, i32 1, i32 3, i32 1) #10
  %83 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %buf_alloc.i, ptr %buf_alloc.i, i32 1, ptr elementtype(i32) %buf_alloc.i) #10, !srcloc !82
  br label %cleanup

if.end129.i:                                      ; preds = %while.end.i
  %84 = ptrtoint ptr %buflist120.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call124.i, ptr %buflist120.i, align 4
  %85 = ptrtoint ptr %buf_count.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %buf_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp132320.i = icmp sgt i32 %86, 0
  br i1 %cmp132320.i, label %if.end129.i.for.body.i_crit_edge, label %if.end129.i.for.end.i_crit_edge

if.end129.i.for.end.i_crit_edge:                  ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.end129.i.for.body.i_crit_edge:                 ; preds = %if.end129.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end129.i.for.body.i_crit_edge
  %i.0321.i = phi i32 [ %inc140.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end129.i.for.body.i_crit_edge ]
  %87 = ptrtoint ptr %buflist.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %buflist.i, align 4
  %arrayidx135.i = getelementptr %struct.drm_buf, ptr %88, i32 %i.0321.i
  %89 = ptrtoint ptr %buflist120.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %buflist120.i, align 4
  %91 = ptrtoint ptr %buf_count121.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %buf_count121.i, align 4
  %add138.i = add i32 %92, %i.0321.i
  %arrayidx139.i = getelementptr ptr, ptr %90, i32 %add138.i
  %93 = ptrtoint ptr %arrayidx139.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %arrayidx135.i, ptr %arrayidx139.i, align 4
  %inc140.i = add nuw nsw i32 %i.0321.i, 1
  %94 = ptrtoint ptr %buf_count.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %buf_count.i, align 4
  %cmp132.i = icmp slt i32 %inc140.i, %95
  br i1 %cmp132.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end129.i.for.end.i_crit_edge
  %.lcssa.i = phi i32 [ %86, %if.end129.i.for.end.i_crit_edge ], [ %95, %for.body.i.for.end.i_crit_edge ]
  %96 = ptrtoint ptr %buf_count121.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %buf_count121.i, align 4
  %add143.i = add i32 %97, %.lcssa.i
  store i32 %add143.i, ptr %buf_count121.i, align 4
  %seg_count.i = getelementptr [23 x %struct.drm_buf_entry], ptr %10, i32 0, i32 %cond36.i, i32 3
  %98 = ptrtoint ptr %seg_count.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %seg_count.i, align 4
  %seg_count144.i = getelementptr inbounds %struct.drm_device_dma, ptr %10, i32 0, i32 3
  %100 = ptrtoint ptr %seg_count144.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %seg_count144.i, align 4
  %add145.i = add i32 %101, %99
  store i32 %add145.i, ptr %seg_count144.i, align 4
  %shr.i = ashr exact i32 %byte_count.0.lcssa.i, 12
  %page_count.i = getelementptr inbounds %struct.drm_device_dma, ptr %10, i32 0, i32 4
  %102 = ptrtoint ptr %page_count.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %page_count.i, align 4
  %add146.i = add i32 %103, %shr.i
  store i32 %add146.i, ptr %page_count.i, align 4
  %byte_count147.i = getelementptr inbounds %struct.drm_device_dma, ptr %10, i32 0, i32 6
  %104 = ptrtoint ptr %byte_count147.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %byte_count147.i, align 4
  %add148.i = add i32 %105, %byte_count.0.lcssa.i
  store i32 %add148.i, ptr %byte_count147.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.23, i32 noundef %add143.i) #10
  %106 = ptrtoint ptr %buf_count.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %buf_count.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.24, i32 noundef %107) #10
  tail call void @mutex_unlock(ptr noundef %struct_mutex.i) #10
  %108 = ptrtoint ptr %buf_count.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %buf_count.i, align 4
  %110 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %data, align 4
  %111 = ptrtoint ptr %size9.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %shl.i, ptr %size9.i, align 4
  %flags155.i = getelementptr inbounds %struct.drm_device_dma, ptr %10, i32 0, i32 7
  %112 = ptrtoint ptr %flags155.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 2, ptr %flags155.i, align 4
  %call.i.i297.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %buf_alloc.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %buf_alloc.i, i32 1, i32 3, i32 1) #10
  %113 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %buf_alloc.i, ptr %buf_alloc.i, i32 1, ptr elementtype(i32) %buf_alloc.i) #10, !srcloc !82
  br label %cleanup

if.else:                                          ; preds = %if.end3
  %and7 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else10, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 @drm_legacy_addbufs_pci(ptr noundef %dev, ptr noundef %data)
  br label %cleanup

cleanup:                                          ; preds = %if.else10, %if.else.cleanup_crit_edge, %for.end.i, %if.then126.i, %if.then109.i, %if.then82.i, %if.then75.i, %if.then66.i, %if.then61.i, %if.end7.i.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %call11, %if.else10 ], [ -22, %if.else.cleanup_crit_edge ], [ -16, %if.then61.i ], [ -12, %if.then66.i ], [ -22, %if.then75.i ], [ -12, %if.then109.i ], [ 0, %for.end.i ], [ -12, %if.then126.i ], [ -12, %if.then82.i ], [ -95, %if.then4.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -1, %if.end4.i.cleanup_crit_edge ], [ -22, %if.end7.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__drm_legacy_infobufs(ptr noundef %dev, ptr noundef %data, ptr nocapture noundef %p, ptr nocapture noundef readonly %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 45
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1, align 4
  %driver.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i = getelementptr inbounds %struct.drm_driver, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %driver_features.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_features.i.i, align 4
  %driver_features1.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 10
  %6 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i = and i32 %7, %5
  %8 = and i32 %and.i.i, 603979776
  call void @__sanitizer_cov_trace_const_cmp4(i32 603979776, i32 %8)
  %.not = icmp eq i32 %8, 603979776
  br i1 %.not, label %if.end4, label %entry.cleanup47_crit_edge

entry.cleanup47_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup47

if.end4:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end4.cleanup47_crit_edge, label %if.end6

if.end4.cleanup47_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup47

if.end6:                                          ; preds = %if.end4
  %buf_lock = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 48
  tail call void @_raw_spin_lock(ptr noundef %buf_lock) #10
  %buf_alloc = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 50
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %buf_alloc, i32 noundef 4) #10
  %9 = ptrtoint ptr %buf_alloc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %buf_alloc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool8.not = icmp eq i32 %10, 0
  br i1 %tobool8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %buf_lock) #10
  br label %cleanup47

if.end11:                                         ; preds = %if.end6
  %buf_use = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 49
  %11 = ptrtoint ptr %buf_use to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %buf_use, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %buf_use, align 4
  tail call void @_raw_spin_unlock(ptr noundef %buf_lock) #10
  %buf_count = getelementptr [23 x %struct.drm_buf_entry], ptr %1, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buf_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool13.not = icmp ne i32 %14, 0
  %inc15 = zext i1 %tobool13.not to i32
  %buf_count.1 = getelementptr [23 x %struct.drm_buf_entry], ptr %1, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %buf_count.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %buf_count.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool13.not.1 = icmp ne i32 %16, 0
  %inc15.1 = zext i1 %tobool13.not.1 to i32
  %spec.select.1 = add nuw nsw i32 %inc15, %inc15.1
  %buf_count.2 = getelementptr [23 x %struct.drm_buf_entry], ptr %1, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %buf_count.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %buf_count.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool13.not.2 = icmp ne i32 %18, 0
  %inc15.2 = zext i1 %tobool13.not.2 to i32
  %spec.select.2 = add nuw nsw i32 %spec.select.1, %inc15.2
  %buf_count.3 = getelementptr [23 x %struct.drm_buf_entry], ptr %1, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %buf_count.3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_count.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool13.not.3 = icmp ne i32 %20, 0
  %inc15.3 = zext i1 %tobool13.not.3 to i32
  %spec.select.3 = add nuw nsw i32 %spec.select.2, %inc15.3
  %buf_count.4 = getelementptr [23 x %struct.drm_buf_entry], ptr %1, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %buf_count.4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buf_count.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool13.not.4 = icmp ne i32 %22, 0
  %inc15.4 = zext i1 %tobool13.not.4 to i32
  %spec.select.4 = add nuw nsw i32 %spec.select.3, %inc15.4
  %buf_count.5 = getelementptr [23 x %struct.drm_buf_entry], ptr %1, i32 0, i32 5, i32 1
  %23 = ptrtoint ptr %buf_count.5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buf_count.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool13.not.5 = icmp ne i32 %24, 0
  %inc15.5 = zext i1 %tobool13.not.5 to i32
  %spec.select.5 = add nuw nsw i32 %spec.select.4, %inc15.5
  %buf_count.6 = getelementptr [23 x %struct.drm_buf_entry], ptr %1, i32 0, i32 6, i32 1
  %25 = ptrtoint ptr %buf_count.6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buf_count.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool13.not.6 = icmp ne i32 %26, 0
  %inc15.6 = zext i1 %tobool13.not.6 to i32
  %spec.select.6 = add nuw nsw i32 %spec.select.5, %inc15.6
  %buf_count.7 = getelementptr [23 x %struct.drm_buf_entry], ptr %1, i32 0, i32 7, i32 1
  %27 = ptrtoint ptr %buf_count.7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %buf_count.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool13.not.7 = icmp ne i32 %28, 0
  %inc15.7 = zext i1 %tobool13.not.7 to i32
  %spec.select.7 = add nuw nsw i32 %spec.select.6, %inc15.7
  %buf_count.8 = getelementptr [23 x %struct.drm_buf_entry], ptr %1, i32 0, i32 8, i32 1
  %29 = ptrtoint ptr %buf_count.8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %buf_count.8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool13.not.8 = icmp ne i32 %30, 0
  %inc15.8 = zext i1 %tobool13.not.8 to i32
  %spec.select.8 = add nuw nsw i32 %spec.select.7, %inc15.8
  %buf_count.9 = getelementptr [23 x %struct.drm_buf_entry], ptr %1, i32 0, i32 9, i32 1
  %31 = ptrtoint ptr %buf_count.9 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %buf_count.9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool13.not.9 = icmp ne i32 %32, 0
  %inc15.9 = zext i1 %tobool13.not.9 to i32
  %spec.select.9 = add nuw nsw i32 %spec.select.8, %inc15.9
  %buf_count.10 = getelementptr [23 x %struct.drm_buf_entry], ptr %1, i32 0, i32 10, i32 1
  %33 = ptrtoint ptr %buf_count.10 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %buf_count.10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool13.not.10 = icmp ne i32 %34, 0
  %inc15.10 = zext i1 %tobool13.not.10 to i32
  %spec.select.10 = add nuw nsw i32 %spec.select.9, %inc15.10
  %buf_count.11 = getelementptr [23 x %struct.drm_buf_entry], ptr %1, i32 0, i32 11, i32 1
  %35 = ptrtoint ptr %buf_count.11 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %buf_count.11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool13.not.11 = icmp ne i32 %36, 0
  %inc15.11 = zext i1 %tobool13.not.11 to i32
  %spec.select.11 = add nuw nsw i32 %spec.select.10, %inc15.11
  %buf_count.12 = getelementptr [23 x %struct.drm_buf_entry], ptr %1, i32 0, i32 12, i32 1
  %37 = ptrtoint ptr %buf_count.12 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %buf_count.12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool13.not.12 = icmp ne i32 %38, 0
  %inc15.12 = zext i1 %tobool13.not.12 to i32
  %spec.select.12 = add nuw nsw i32 %spec.select.11, %inc15.12
  %buf_count.13 = getelementptr [23 x %struct.drm_buf_entry], ptr %1, i32 0, i32 13, i32 1
  %39 = ptrtoint ptr %buf_count.13 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %buf_count.13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool13.not.13 = icmp ne i32 %40, 0
  %inc15.13 = zext i1 %tobool13.not.13 to i32
  %spec.select.13 = add nuw nsw i32 %spec.select.12, %inc15.13
  %buf_count.14 = getelementptr [23 x %struct.drm_buf_entry], ptr %1, i32 0, i32 14, i32 1
  %41 = ptrtoint ptr %buf_count.14 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %buf_count.14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool13.not.14 = icmp ne i32 %42, 0
  %inc15.14 = zext i1 %tobool13.not.14 to i32
  %spec.select.14 = add nuw nsw i32 %spec.select.13, %inc15.14
  %buf_count.15 = getelementptr [23 x %struct.drm_buf_entry], ptr %1, i32 0, i32 15, i32 1
  %43 = ptrtoint ptr %buf_count.15 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %buf_count.15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool13.not.15 = icmp ne i32 %44, 0
  %inc15.15 = zext i1 %tobool13.not.15 to i32
  %spec.select.15 = add nuw nsw i32 %spec.select.14, %inc15.15
  %buf_count.16 = getelementptr [23 x %struct.drm_buf_entry], ptr %1, i32 0, i32 16, i32 1
  %45 = ptrtoint ptr %buf_count.16 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %buf_count.16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool13.not.16 = icmp ne i32 %46, 0
  %inc15.16 = zext i1 %tobool13.not.16 to i32
  %spec.select.16 = add nuw nsw i32 %spec.select.15, %inc15.16
  %buf_count.17 = getelementptr [23 x %struct.drm_buf_entry], ptr %1, i32 0, i32 17, i32 1
  %47 = ptrtoint ptr %buf_count.17 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %buf_count.17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool13.not.17 = icmp ne i32 %48, 0
  %inc15.17 = zext i1 %tobool13.not.17 to i32
  %spec.select.17 = add nuw nsw i32 %spec.select.16, %inc15.17
  %buf_count.18 = getelementptr [23 x %struct.drm_buf_entry], ptr %1, i32 0, i32 18, i32 1
  %49 = ptrtoint ptr %buf_count.18 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %buf_count.18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool13.not.18 = icmp ne i32 %50, 0
  %inc15.18 = zext i1 %tobool13.not.18 to i32
  %spec.select.18 = add nuw nsw i32 %spec.select.17, %inc15.18
  %buf_count.19 = getelementptr [23 x %struct.drm_buf_entry], ptr %1, i32 0, i32 19, i32 1
  %51 = ptrtoint ptr %buf_count.19 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %buf_count.19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool13.not.19 = icmp ne i32 %52, 0
  %inc15.19 = zext i1 %tobool13.not.19 to i32
  %spec.select.19 = add nuw nsw i32 %spec.select.18, %inc15.19
  %buf_count.20 = getelementptr [23 x %struct.drm_buf_entry], ptr %1, i32 0, i32 20, i32 1
  %53 = ptrtoint ptr %buf_count.20 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %buf_count.20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool13.not.20 = icmp ne i32 %54, 0
  %inc15.20 = zext i1 %tobool13.not.20 to i32
  %spec.select.20 = add nuw nsw i32 %spec.select.19, %inc15.20
  %buf_count.21 = getelementptr [23 x %struct.drm_buf_entry], ptr %1, i32 0, i32 21, i32 1
  %55 = ptrtoint ptr %buf_count.21 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %buf_count.21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool13.not.21 = icmp ne i32 %56, 0
  %inc15.21 = zext i1 %tobool13.not.21 to i32
  %spec.select.21 = add nuw nsw i32 %spec.select.20, %inc15.21
  %buf_count.22 = getelementptr [23 x %struct.drm_buf_entry], ptr %1, i32 0, i32 22, i32 1
  %57 = ptrtoint ptr %buf_count.22 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %buf_count.22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool13.not.22 = icmp ne i32 %58, 0
  %inc15.22 = zext i1 %tobool13.not.22 to i32
  %spec.select.22 = add nuw nsw i32 %spec.select.21, %inc15.22
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef %spec.select.22) #10
  %59 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %spec.select.22)
  %cmp18.not = icmp slt i32 %60, %spec.select.22
  br i1 %cmp18.not, label %if.end11.if.end46_crit_edge, label %if.end11.for.body22_crit_edge

if.end11.for.body22_crit_edge:                    ; preds = %if.end11
  br label %for.body22

if.end11.if.end46_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

for.body22:                                       ; preds = %for.inc43.for.body22_crit_edge, %if.end11.for.body22_crit_edge
  %count.294 = phi i32 [ %count.4.ph, %for.inc43.for.body22_crit_edge ], [ 0, %if.end11.for.body22_crit_edge ]
  %i.192 = phi i32 [ %inc44, %for.inc43.for.body22_crit_edge ], [ 0, %if.end11.for.body22_crit_edge ]
  %arrayidx24 = getelementptr [23 x %struct.drm_buf_entry], ptr %1, i32 0, i32 %i.192
  %buf_count25 = getelementptr [23 x %struct.drm_buf_entry], ptr %1, i32 0, i32 %i.192, i32 1
  %61 = ptrtoint ptr %buf_count25 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %buf_count25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool26.not = icmp eq i32 %62, 0
  br i1 %tobool26.not, label %for.body22.for.inc43_crit_edge, label %if.then27

for.body22.for.inc43_crit_edge:                   ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc43

if.then27:                                        ; preds = %for.body22
  %call28 = tail call i32 %f(ptr noundef %data, i32 noundef %count.294, ptr noundef %arrayidx24) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then27.cleanup47_crit_edge, label %if.end31

if.then27.cleanup47_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup47

if.end31:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %buf_count25 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %buf_count25, align 4
  %65 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx24, align 4
  %low_mark = getelementptr [23 x %struct.drm_buf_entry], ptr %1, i32 0, i32 %i.192, i32 6
  %67 = ptrtoint ptr %low_mark to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %low_mark, align 4
  %high_mark = getelementptr [23 x %struct.drm_buf_entry], ptr %1, i32 0, i32 %i.192, i32 7
  %69 = ptrtoint ptr %high_mark to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %high_mark, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef %i.192, i32 noundef %64, i32 noundef %66, i32 noundef %68, i32 noundef %70) #10
  %inc41 = add i32 %count.294, 1
  br label %for.inc43

for.inc43:                                        ; preds = %if.end31, %for.body22.for.inc43_crit_edge
  %count.4.ph = phi i32 [ %count.294, %for.body22.for.inc43_crit_edge ], [ %inc41, %if.end31 ]
  %inc44 = add nuw nsw i32 %i.192, 1
  %exitcond.not = icmp eq i32 %inc44, 23
  br i1 %exitcond.not, label %for.inc43.if.end46_crit_edge, label %for.inc43.for.body22_crit_edge

for.inc43.for.body22_crit_edge:                   ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body22

for.inc43.if.end46_crit_edge:                     ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.end46:                                         ; preds = %for.inc43.if.end46_crit_edge, %if.end11.if.end46_crit_edge
  %count.5 = phi i32 [ %spec.select.22, %if.end11.if.end46_crit_edge ], [ %count.4.ph, %for.inc43.if.end46_crit_edge ]
  %71 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %count.5, ptr %p, align 4
  br label %cleanup47

cleanup47:                                        ; preds = %if.end46, %if.then27.cleanup47_crit_edge, %if.then9, %if.end4.cleanup47_crit_edge, %entry.cleanup47_crit_edge
  %retval.2 = phi i32 [ -16, %if.then9 ], [ 0, %if.end46 ], [ -95, %entry.cleanup47_crit_edge ], [ -22, %if.end4.cleanup47_crit_edge ], [ -14, %if.then27.cleanup47_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_infobufs(ptr noundef %dev, ptr noundef %data, ptr nocapture noundef readnone %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__drm_legacy_infobufs(ptr noundef %dev, ptr noundef %data, ptr noundef %data, ptr noundef nonnull @copy_one_buf)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @copy_one_buf(ptr nocapture noundef readonly %data, i32 noundef %count, ptr nocapture noundef readonly %from) #0 align 64 {
entry:
  %v = alloca %struct.drm_buf_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %list = getelementptr inbounds %struct.drm_buf_info, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list, align 4
  %arrayidx = getelementptr %struct.drm_buf_desc, ptr %1, i32 %count
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v) #10
  %2 = getelementptr inbounds %struct.drm_buf_desc, ptr %v, i32 0, i32 1
  %3 = getelementptr inbounds %struct.drm_buf_desc, ptr %v, i32 0, i32 2
  %4 = getelementptr inbounds %struct.drm_buf_desc, ptr %v, i32 0, i32 3
  %5 = getelementptr inbounds %struct.drm_buf_desc, ptr %v, i32 0, i32 4
  %6 = getelementptr inbounds %struct.drm_buf_desc, ptr %v, i32 0, i32 5
  %buf_count = getelementptr inbounds %struct.drm_buf_entry, ptr %from, i32 0, i32 1
  %7 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buf_count, align 4
  %9 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %v, align 4
  %10 = ptrtoint ptr %from to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %from, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %2, align 4
  %low_mark2 = getelementptr inbounds %struct.drm_buf_entry, ptr %from, i32 0, i32 6
  %13 = ptrtoint ptr %low_mark2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %low_mark2, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %3, align 4
  %high_mark3 = getelementptr inbounds %struct.drm_buf_entry, ptr %from, i32 0, i32 7
  %16 = ptrtoint ptr %high_mark3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %high_mark3, align 4
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %4, align 4
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %5, align 4
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %6, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 174) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %entry.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

entry.copy_to_user.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %entry
  %21 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arrayidx, i32 16, i32 -1226833920) #16, !srcloc !84
  %asmresult.i.i = extractvalue { i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 16) #10
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %arrayidx, ptr noundef nonnull %v, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %entry.copy_to_user.exit.thread_crit_edge
  %22 = phi i32 [ -14, %entry.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v) #10
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_markbufs(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data, ptr nocapture noundef readnone %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 45
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1, align 4
  %driver.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i = getelementptr inbounds %struct.drm_driver, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %driver_features.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_features.i.i, align 4
  %driver_features1.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 10
  %6 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i = and i32 %7, %5
  %8 = and i32 %and.i.i, 603979776
  call void @__sanitizer_cov_trace_const_cmp4(i32 603979776, i32 %8)
  %.not = icmp eq i32 %8, 603979776
  br i1 %.not, label %if.end5, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end5.cleanup_crit_edge, label %if.end7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end5
  %size = getelementptr inbounds %struct.drm_buf_desc, ptr %data, i32 0, i32 1
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 4
  %low_mark = getelementptr inbounds %struct.drm_buf_desc, ptr %data, i32 0, i32 2
  %11 = ptrtoint ptr %low_mark to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %low_mark, align 4
  %high_mark = getelementptr inbounds %struct.drm_buf_desc, ptr %data, i32 0, i32 3
  %13 = ptrtoint ptr %high_mark to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %high_mark, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef %10, i32 noundef %12, i32 noundef %14) #10
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp.i = icmp ugt i32 %16, 1
  br i1 %cmp.i, label %cond.end34, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.end34:                                       ; preds = %if.end7
  %sub.i104 = add i32 %16, -1
  %17 = tail call i32 @llvm.ctlz.i32(i32 %sub.i104, i1 false) #10, !range !80
  %cond35 = sub nuw nsw i32 32, %17
  %18 = add nsw i32 %17, -28
  call void @__sanitizer_cov_trace_const_cmp4(i32 -18, i32 %18)
  %19 = icmp ult i32 %18, -18
  br i1 %19, label %cond.end34.cleanup_crit_edge, label %if.end42

cond.end34.cleanup_crit_edge:                     ; preds = %cond.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end42:                                         ; preds = %cond.end34
  %20 = ptrtoint ptr %low_mark to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %low_mark, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp44 = icmp slt i32 %21, 0
  br i1 %cmp44, label %if.end42.cleanup_crit_edge, label %lor.lhs.false46

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false46:                                  ; preds = %if.end42
  %buf_count = getelementptr [23 x %struct.drm_buf_entry], ptr %1, i32 0, i32 %cond35, i32 1
  %22 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buf_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp48 = icmp sgt i32 %21, %23
  br i1 %cmp48, label %lor.lhs.false46.cleanup_crit_edge, label %if.end51

lor.lhs.false46.cleanup_crit_edge:                ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end51:                                         ; preds = %lor.lhs.false46
  %24 = ptrtoint ptr %high_mark to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %high_mark, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp53 = icmp slt i32 %25, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %23)
  %cmp58 = icmp sgt i32 %25, %23
  %or.cond97 = select i1 %cmp53, i1 true, i1 %cmp58
  br i1 %or.cond97, label %if.end51.cleanup_crit_edge, label %if.end61

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end61:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %low_mark63 = getelementptr [23 x %struct.drm_buf_entry], ptr %1, i32 0, i32 %cond35, i32 6
  %26 = ptrtoint ptr %low_mark63 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %21, ptr %low_mark63, align 4
  %27 = ptrtoint ptr %high_mark to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %high_mark, align 4
  %high_mark65 = getelementptr [23 x %struct.drm_buf_entry], ptr %1, i32 0, i32 %cond35, i32 7
  %29 = ptrtoint ptr %high_mark65 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %high_mark65, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.end51.cleanup_crit_edge, %lor.lhs.false46.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %cond.end34.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end61 ], [ -95, %entry.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -22, %cond.end34.cleanup_crit_edge ], [ -22, %lor.lhs.false46.cleanup_crit_edge ], [ -22, %if.end42.cleanup_crit_edge ], [ -22, %if.end51.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_freebufs(ptr noundef %dev, ptr nocapture noundef readonly %data, ptr noundef readnone %file_priv) local_unnamed_addr #0 align 64 {
entry:
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 45
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #10
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %idx, align 4, !annotation !79
  %driver.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %3 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i = getelementptr inbounds %struct.drm_driver, ptr %4, i32 0, i32 24
  %5 = ptrtoint ptr %driver_features.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %driver_features.i.i, align 4
  %driver_features1.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 10
  %7 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i = and i32 %8, %6
  %9 = and i32 %and.i.i, 603979776
  call void @__sanitizer_cov_trace_const_cmp4(i32 603979776, i32 %9)
  %.not = icmp eq i32 %9, 603979776
  br i1 %.not, label %if.end4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end4.cleanup_crit_edge, label %if.end6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end4
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef %11) #10
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp57 = icmp sgt i32 %13, 0
  br i1 %cmp57, label %for.body.lr.ph, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end6
  %list = getelementptr inbounds %struct.drm_buf_free, ptr %data, i32 0, i32 1
  %buf_count = getelementptr inbounds %struct.drm_device_dma, ptr %1, i32 0, i32 1
  %buflist = getelementptr inbounds %struct.drm_device_dma, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end28.for.body_crit_edge, %for.body.lr.ph
  %i.058 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end28.for.body_crit_edge ]
  %14 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %list, align 4
  %arrayidx = getelementptr i32, ptr %15, i32 %i.058
  call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 156) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %for.body.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

for.body.if.then11.i.i_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %for.body
  %16 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arrayidx, i32 4, i32 -1226833920) #16, !srcloc !85
  %asmresult.i.i = extractvalue { i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i1.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !86

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %idx, i32 noundef 4) #10
  %17 = call i32 @llvm.read_register.i32(metadata !69) #10
  %and.i.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 4
  %19 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !87
  %and.i.i.i.i = and i32 %19, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !88
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !89
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %idx, ptr noundef %arrayidx, i32 noundef 4) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #10, !srcloc !88
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end11, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !86

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %for.body.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 4, %for.body.if.then11.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 4, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %idx, i32 %sub.i.i
  %20 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end11:                                         ; preds = %if.end.i.i
  %21 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp12 = icmp slt i32 %22, 0
  br i1 %cmp12, label %if.end11.if.then14_crit_edge, label %lor.lhs.false

if.end11.if.then14_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

lor.lhs.false:                                    ; preds = %if.end11
  %23 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buf_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp13.not = icmp slt i32 %22, %24
  br i1 %cmp13.not, label %if.end16, label %lor.lhs.false.if.then14_crit_edge

lor.lhs.false.if.then14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

if.then14:                                        ; preds = %lor.lhs.false.if.then14_crit_edge, %if.end11.if.then14_crit_edge
  %25 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buf_count, align 4
  %sub = add i32 %26, -1
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8, i32 noundef %22, i32 noundef %sub) #10
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false
  %27 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %22, i32 %24) #10, !srcloc !90
  %and = and i32 %27, %22
  %28 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and, ptr %idx, align 4
  %29 = ptrtoint ptr %buflist to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buflist, align 4
  %arrayidx22 = getelementptr ptr, ptr %30, i32 %and
  %31 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx22, align 4
  %file_priv23 = getelementptr inbounds %struct.drm_buf, ptr %32, i32 0, i32 10
  %33 = ptrtoint ptr %file_priv23 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %file_priv23, align 4
  %cmp24.not = icmp eq ptr %34, %file_priv
  br i1 %cmp24.not, label %if.end28, label %if.then25

if.then25:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %35 = call i32 @llvm.read_register.i32(metadata !69) #10
  %and.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 68
  %39 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pid.i, align 8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9, i32 noundef %40) #10
  br label %cleanup

if.end28:                                         ; preds = %if.end16
  call void @drm_legacy_free_buffer(ptr noundef %dev, ptr noundef %32) #10
  %inc = add nuw nsw i32 %i.058, 1
  %41 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %data, align 4
  %cmp = icmp slt i32 %inc, %42
  br i1 %cmp, label %if.end28.for.body_crit_edge, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %if.end28.cleanup_crit_edge, %if.then25, %if.then14, %if.then11.i.i, %if.end6.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then14 ], [ -22, %if.then25 ], [ -95, %entry.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ 0, %if.end6.cleanup_crit_edge ], [ 0, %if.end28.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_legacy_free_buffer(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__drm_legacy_mapbufs(ptr noundef %dev, ptr noundef %data, ptr nocapture noundef %p, ptr nocapture noundef writeonly %v, ptr nocapture noundef readonly %f, ptr nocapture noundef readonly %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 45
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1, align 4
  %driver.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i = getelementptr inbounds %struct.drm_driver, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %driver_features.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_features.i.i, align 4
  %driver_features1.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 10
  %6 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i = and i32 %7, %5
  %8 = and i32 %and.i.i, 603979776
  call void @__sanitizer_cov_trace_const_cmp4(i32 603979776, i32 %8)
  %.not = icmp eq i32 %8, 603979776
  br i1 %.not, label %if.end4, label %entry.cleanup42_crit_edge

entry.cleanup42_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup42

if.end4:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end4.cleanup42_crit_edge, label %if.end6

if.end4.cleanup42_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup42

if.end6:                                          ; preds = %if.end4
  %buf_lock = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 48
  tail call void @_raw_spin_lock(ptr noundef %buf_lock) #10
  %buf_alloc = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 50
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %buf_alloc, i32 noundef 4) #10
  %9 = ptrtoint ptr %buf_alloc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %buf_alloc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool8.not = icmp eq i32 %10, 0
  br i1 %tobool8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %buf_lock) #10
  br label %cleanup42

if.end11:                                         ; preds = %if.end6
  %buf_use = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 49
  %11 = ptrtoint ptr %buf_use to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %buf_use, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %buf_use, align 4
  tail call void @_raw_spin_unlock(ptr noundef %buf_lock) #10
  %13 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %p, align 4
  %buf_count = getelementptr inbounds %struct.drm_device_dma, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %buf_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp.not = icmp slt i32 %14, %16
  br i1 %cmp.not, label %if.end11.done_crit_edge, label %if.then13

if.end11.done_crit_edge:                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.then13:                                        ; preds = %if.end11
  %agp = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 38
  %17 = ptrtoint ptr %agp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %agp, align 4
  %tobool14.not = icmp eq ptr %18, null
  br i1 %tobool14.not, label %if.then13.lor.lhs.false_crit_edge, label %land.lhs.true

if.then13.lor.lhs.false_crit_edge:                ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then13
  %flags = getelementptr inbounds %struct.drm_device_dma, ptr %1, i32 0, i32 7
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %and = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.if.then21_crit_edge

land.lhs.true.if.then21_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %if.then13.lor.lhs.false_crit_edge
  %21 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i84 = getelementptr inbounds %struct.drm_driver, ptr %22, i32 0, i32 24
  %23 = ptrtoint ptr %driver_features.i.i84 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %driver_features.i.i84, align 4
  %25 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i86 = and i32 %24, 268435456
  %and2.i.i87 = and i32 %and.i.i86, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %and2.i.i87)
  %cmp.i.i88 = icmp eq i32 %and2.i.i87, 268435456
  br i1 %cmp.i.i88, label %land.lhs.true17, label %lor.lhs.false.if.else_crit_edge

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true17:                                  ; preds = %lor.lhs.false
  %flags18 = getelementptr inbounds %struct.drm_device_dma, ptr %1, i32 0, i32 7
  %27 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags18, align 4
  %and19 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %land.lhs.true17.if.else_crit_edge, label %land.lhs.true17.if.then21_crit_edge

land.lhs.true17.if.then21_crit_edge:              ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

land.lhs.true17.if.else_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then21:                                        ; preds = %land.lhs.true17.if.then21_crit_edge, %land.lhs.true.if.then21_crit_edge
  %agp_buffer_map = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 52
  %29 = ptrtoint ptr %agp_buffer_map to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %agp_buffer_map, align 4
  %tobool22.not = icmp eq ptr %30, null
  br i1 %tobool22.not, label %if.then21.done_crit_edge, label %cleanup.thread

if.then21.done_crit_edge:                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

cleanup.thread:                                   ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  %agp_buffer_token = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 53
  %31 = ptrtoint ptr %agp_buffer_token to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %agp_buffer_token, align 4
  %filp = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 18
  %33 = ptrtoint ptr %filp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %filp, align 4
  %size = getelementptr inbounds %struct.drm_local_map, ptr %30, i32 0, i32 1
  %35 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %size, align 4
  %call25 = tail call i32 @vm_mmap(ptr noundef %34, i32 noundef 0, i32 noundef %36, i32 noundef 3, i32 noundef 1, i32 noundef %32) #10
  br label %if.end29

if.else:                                          ; preds = %land.lhs.true17.if.else_crit_edge, %lor.lhs.false.if.else_crit_edge
  %filp27 = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 18
  %37 = ptrtoint ptr %filp27 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %filp27, align 4
  %byte_count = getelementptr inbounds %struct.drm_device_dma, ptr %1, i32 0, i32 6
  %39 = ptrtoint ptr %byte_count to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %byte_count, align 4
  %call28 = tail call i32 @vm_mmap(ptr noundef %38, i32 noundef 0, i32 noundef %40, i32 noundef 3, i32 noundef 1, i32 noundef 0) #10
  br label %if.end29

if.end29:                                         ; preds = %if.else, %cleanup.thread
  %virtual.1 = phi i32 [ %call28, %if.else ], [ %call25, %cleanup.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1024, i32 %virtual.1)
  %cmp30 = icmp ugt i32 %virtual.1, -1024
  br i1 %cmp30, label %if.end29.done_crit_edge, label %if.end32

if.end29.done_crit_edge:                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end32:                                         ; preds = %if.end29
  %41 = inttoptr i32 %virtual.1 to ptr
  %42 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %v, align 4
  %buflist = getelementptr inbounds %struct.drm_device_dma, ptr %1, i32 0, i32 2
  %43 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %buf_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp3493 = icmp sgt i32 %44, 0
  br i1 %cmp3493, label %if.end32.for.body_crit_edge, label %if.end32.done_crit_edge

if.end32.done_crit_edge:                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end32.for.body_crit_edge:                      ; preds = %if.end32
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc39 = add nuw nsw i32 %i.094, 1
  %45 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %buf_count, align 4
  %cmp34 = icmp slt i32 %inc39, %46
  br i1 %cmp34, label %for.cond.for.body_crit_edge, label %for.cond.done_crit_edge

for.cond.done_crit_edge:                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end32.for.body_crit_edge
  %i.094 = phi i32 [ %inc39, %for.cond.for.body_crit_edge ], [ 0, %if.end32.for.body_crit_edge ]
  %47 = ptrtoint ptr %buflist to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %buflist, align 4
  %arrayidx = getelementptr ptr, ptr %48, i32 %i.094
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx, align 4
  %call35 = tail call i32 %f(ptr noundef %data, i32 noundef %i.094, i32 noundef %virtual.1, ptr noundef %50) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %for.body.done_crit_edge, label %for.cond

for.body.done_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

done:                                             ; preds = %for.body.done_crit_edge, %for.cond.done_crit_edge, %if.end32.done_crit_edge, %if.end29.done_crit_edge, %if.then21.done_crit_edge, %if.end11.done_crit_edge
  %retcode.2 = phi i32 [ 0, %if.end11.done_crit_edge ], [ %virtual.1, %if.end29.done_crit_edge ], [ -22, %if.then21.done_crit_edge ], [ 0, %if.end32.done_crit_edge ], [ 0, %for.cond.done_crit_edge ], [ -14, %for.body.done_crit_edge ]
  %51 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %buf_count, align 4
  %53 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %p, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.10, i32 noundef %52, i32 noundef %retcode.2) #10
  br label %cleanup42

cleanup42:                                        ; preds = %done, %if.then9, %if.end4.cleanup42_crit_edge, %entry.cleanup42_crit_edge
  %retval.0 = phi i32 [ -16, %if.then9 ], [ %retcode.2, %done ], [ -95, %entry.cleanup42_crit_edge ], [ -22, %if.end4.cleanup42_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_mmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_mapbufs(ptr noundef %dev, ptr noundef %data, ptr nocapture noundef readonly %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %virtual = getelementptr inbounds %struct.drm_buf_map, ptr %data, i32 0, i32 1
  %call = tail call i32 @__drm_legacy_mapbufs(ptr noundef %dev, ptr noundef %data, ptr noundef %data, ptr noundef %virtual, ptr noundef nonnull @map_one_buf, ptr noundef %file_priv)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @map_one_buf(ptr nocapture noundef readonly %data, i32 noundef %idx, i32 noundef %virtual, ptr noundef %buf) #0 align 64 {
entry:
  %address = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %address) #10
  %offset = getelementptr inbounds %struct.drm_buf, ptr %buf, i32 0, i32 4
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset, align 4
  %add = add i32 %1, %virtual
  %2 = ptrtoint ptr %address to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add, ptr %address, align 4
  %list = getelementptr inbounds %struct.drm_buf_map, ptr %data, i32 0, i32 2
  %3 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %list, align 4
  %arrayidx = getelementptr %struct.drm_buf_pub, ptr %4, i32 %idx
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 174) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %entry.cleanup_crit_edge, label %if.end.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arrayidx, i32 4, i32 -1226833920) #16, !srcloc !84
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %buf, i32 noundef 4) #10
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %arrayidx, ptr noundef %buf, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool.not, label %if.end, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %copy_to_user.exit
  %6 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list, align 4
  %total = getelementptr %struct.drm_buf_pub, ptr %7, i32 %idx, i32 1
  %total5 = getelementptr inbounds %struct.drm_buf, ptr %buf, i32 0, i32 1
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 174) #10
  %call.i.i36 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i36, label %if.end.cleanup_crit_edge, label %if.end.i.i39

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i39:                                     ; preds = %if.end
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %total, i32 4, i32 -1226833920) #16, !srcloc !84
  %asmresult.i.i37 = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i37)
  %cmp.i6.i38 = icmp eq i32 %asmresult.i.i37, 0
  br i1 %cmp.i6.i38, label %copy_to_user.exit44, label %if.end.i.i39.cleanup_crit_edge

if.end.i.i39.cleanup_crit_edge:                   ; preds = %if.end.i.i39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

copy_to_user.exit44:                              ; preds = %if.end.i.i39
  %call.i.i.i40 = tail call zeroext i1 @__kasan_check_read(ptr noundef %total5, i32 noundef 4) #10
  %call.i12.i.i41 = tail call i32 @arm_copy_to_user(ptr noundef %total, ptr noundef %total5, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i41)
  %tobool7.not = icmp eq i32 %call.i12.i.i41, 0
  br i1 %tobool7.not, label %if.end9, label %copy_to_user.exit44.cleanup_crit_edge

copy_to_user.exit44.cleanup_crit_edge:            ; preds = %copy_to_user.exit44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %copy_to_user.exit44
  %9 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %list, align 4
  %used = getelementptr %struct.drm_buf_pub, ptr %10, i32 %idx, i32 2
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %used, i32 4, i32 -1226833920) #16, !srcloc !91
  %asmresult.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %cmp.i = icmp eq i32 %asmresult.i, 0
  br i1 %cmp.i, label %clear_user.exit, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

clear_user.exit:                                  ; preds = %if.end9
  %12 = tail call i32 @llvm.read_register.i32(metadata !69) #10
  %and.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i) #9, !srcloc !87
  %and.i.i.i = and i32 %14, -13
  %or.i.i.i = or i32 %and.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i) #10, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !89
  %call1.i.i = tail call i32 @arm_clear_user(ptr noundef %used, i32 noundef 4) #10
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #10, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool13.not = icmp eq i32 %call1.i.i, 0
  br i1 %tobool13.not, label %if.end15, label %clear_user.exit.cleanup_crit_edge

clear_user.exit.cleanup_crit_edge:                ; preds = %clear_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %clear_user.exit
  %15 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %list, align 4
  %address18 = getelementptr %struct.drm_buf_pub, ptr %16, i32 %idx, i32 3
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 174) #10
  %call.i.i49 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i49, label %if.end15.cleanup_crit_edge, label %if.end.i.i52

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i52:                                     ; preds = %if.end15
  %17 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %address18, i32 4, i32 -1226833920) #16, !srcloc !84
  %asmresult.i.i50 = extractvalue { i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i50)
  %cmp.i6.i51 = icmp eq i32 %asmresult.i.i50, 0
  br i1 %cmp.i6.i51, label %copy_to_user.exit57, label %if.end.i.i52.cleanup_crit_edge

if.end.i.i52.cleanup_crit_edge:                   ; preds = %if.end.i.i52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

copy_to_user.exit57:                              ; preds = %if.end.i.i52
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i53 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %address, i32 noundef 4) #10
  %call.i12.i.i54 = call i32 @arm_copy_to_user(ptr noundef %address18, ptr noundef nonnull %address, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i54)
  %tobool20.not = icmp eq i32 %call.i12.i.i54, 0
  %spec.select = select i1 %tobool20.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit57, %if.end.i.i52.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %clear_user.exit.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %copy_to_user.exit44.cleanup_crit_edge, %if.end.i.i39.cleanup_crit_edge, %if.end.cleanup_crit_edge, %copy_to_user.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %copy_to_user.exit44.cleanup_crit_edge ], [ -14, %clear_user.exit.cleanup_crit_edge ], [ -14, %entry.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -14, %if.end.i.i39.cleanup_crit_edge ], [ -14, %if.end9.cleanup_crit_edge ], [ -14, %if.end15.cleanup_crit_edge ], [ -14, %if.end.i.i52.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit57 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %address) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_dma_ioctl(ptr noundef %dev, ptr noundef %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i = getelementptr inbounds %struct.drm_driver, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %driver_features.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_features.i.i, align 4
  %driver_features1.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 10
  %4 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i = and i32 %3, 67108864
  %and2.i.i = and i32 %and.i.i, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %and2.i.i)
  %cmp.i.i = icmp eq i32 %and2.i.i, 67108864
  br i1 %cmp.i.i, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %dma_ioctl = getelementptr inbounds %struct.drm_driver, ptr %1, i32 0, i32 30
  %6 = ptrtoint ptr %dma_ioctl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_ioctl, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.return_crit_edge, label %if.then1

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 %7(ptr noundef %dev, ptr noundef %data, ptr noundef %file_priv) #10
  br label %return

return:                                           ; preds = %if.then1, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then1 ], [ -95, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @drm_legacy_getsarea(ptr noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %maplist = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 42
  %0 = ptrtoint ptr %maplist to i32
  call void @__asan_load4_noabort(i32 %0)
  %entry1.020 = load ptr, ptr %maplist, align 4
  %cmp.not21 = icmp eq ptr %entry1.020, %maplist
  br i1 %cmp.not21, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %entry1.022 = phi ptr [ %entry1.0, %for.inc.for.body_crit_edge ], [ %entry1.020, %entry.for.body_crit_edge ]
  %map = getelementptr inbounds %struct.drm_map_list, ptr %entry1.022, i32 0, i32 2
  %1 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %map, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %type = getelementptr inbounds %struct.drm_local_map, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp4 = icmp eq i32 %4, 2
  br i1 %cmp4, label %land.lhs.true5, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true5:                                   ; preds = %land.lhs.true
  %flags = getelementptr inbounds %struct.drm_local_map, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %land.lhs.true5.for.inc_crit_edge, label %land.lhs.true5.cleanup_crit_edge

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true5.for.inc_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true5.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %7 = ptrtoint ptr %entry1.022 to i32
  call void @__asan_load4_noabort(i32 %7)
  %entry1.0 = load ptr, ptr %entry1.022, align 4
  %cmp.not = icmp eq ptr %entry1.0, %maplist
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %2, %land.lhs.true5.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @drm_find_matching_map(ptr noundef readonly %dev, ptr nocapture noundef readonly %map) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %maplist = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 42
  %flags = getelementptr inbounds %struct.drm_local_map, ptr %map, i32 0, i32 3
  %0 = ptrtoint ptr %maplist to i32
  call void @__asan_load4_noabort(i32 %0)
  %entry1.048 = load ptr, ptr %maplist, align 4
  %cmp.not49 = icmp eq ptr %entry1.048, %maplist
  br i1 %cmp.not49, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %type = getelementptr inbounds %struct.drm_local_map, ptr %map, i32 0, i32 2
  %master8 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %entry1.050 = phi ptr [ %entry1.048, %for.body.lr.ph ], [ %entry1.0, %for.inc.for.body_crit_edge ]
  %map3 = getelementptr inbounds %struct.drm_map_list, ptr %entry1.050, i32 0, i32 2
  %1 = ptrtoint ptr %map3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %map3, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  %type5 = getelementptr inbounds %struct.drm_local_map, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %type5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp6.not = icmp eq i32 %4, %6
  br i1 %cmp6.not, label %lor.lhs.false7, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %master = getelementptr inbounds %struct.drm_map_list, ptr %entry1.050, i32 0, i32 4
  %7 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %master, align 8
  %9 = ptrtoint ptr %master8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %master8, align 4
  %cmp9.not = icmp eq ptr %8, %10
  br i1 %cmp9.not, label %if.end, label %lor.lhs.false7.for.inc_crit_edge

lor.lhs.false7.for.inc_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false7
  %11 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %4, label %if.end.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %if.end.sw.bb14_crit_edge
    i32 0, label %if.end.sw.bb14_crit_edge54
  ]

if.end.sw.bb14_crit_edge54:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb14

if.end.sw.bb14_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb14

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %13)
  %cmp11.not = icmp eq i32 %13, 32
  br i1 %cmp11.not, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb14:                                          ; preds = %if.end.sw.bb14_crit_edge, %if.end.sw.bb14_crit_edge54
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %2, align 4
  %16 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %map, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp18 = icmp eq i32 %15, %17
  br i1 %cmp18, label %sw.bb14.cleanup_crit_edge, label %sw.bb14.sw.epilog_crit_edge

sw.bb14.sw.epilog_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb14.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %2, align 4
  %20 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %map, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp24 = icmp eq i32 %19, %21
  br i1 %cmp24, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.for.inc_crit_edge

sw.epilog.for.inc_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %sw.epilog.for.inc_crit_edge, %lor.lhs.false7.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %22 = ptrtoint ptr %entry1.050 to i32
  call void @__asan_load4_noabort(i32 %22)
  %entry1.0 = load ptr, ptr %entry1.050, align 4
  %cmp.not = icmp eq ptr %entry1.0, %maplist
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb14.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %entry1.050, %sw.epilog.cleanup_crit_edge ], [ %entry1.050, %sw.bb14.cleanup_crit_edge ], [ %entry1.050, %sw.bb.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc_user(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @drm_map_handle(ptr noundef %dev, ptr noundef %hash, i32 noundef %user_token, i32 noundef %shm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %user_token, 12
  %key = getelementptr inbounds %struct.drm_hash_item, ptr %hash, i32 0, i32 1
  %0 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %shr, ptr %key, align 4
  %map_hash = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 43
  %call = tail call i32 @drm_ht_insert_item(ptr noundef %map_hash, ptr noundef %hash) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call)
  %cmp.not = icmp eq i32 %call, -22
  br i1 %cmp.not, label %if.end2, label %entry.cleanup9_crit_edge

entry.cleanup9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup9

if.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shm)
  %tobool3.not = icmp eq i32 %shm, 0
  %and = and i32 %shr, 7
  %or = or i32 %and, 65536
  %shift.0 = select i1 %tobool3.not, i32 0, i32 3
  %add.0 = select i1 %tobool3.not, i32 65536, i32 %or
  %call8 = tail call i32 @drm_ht_just_insert_please(ptr noundef %map_hash, ptr noundef %hash, i32 noundef %user_token, i32 noundef 17, i32 noundef %shift.0, i32 noundef %add.0) #10
  br label %cleanup9

cleanup9:                                         ; preds = %if.end2, %entry.cleanup9_crit_edge
  %retval.1 = phi i32 [ %call8, %if.end2 ], [ %call, %entry.cleanup9_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_ht_insert_item(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_ht_just_insert_please(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_clear_user(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(1) }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !65, !67}
!llvm.named.register.sp = !{!69}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__ksymtab_drm_legacy_addmap, !1, !"__ksymtab_drm_legacy_addmap", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/drm_bufs.c", i32 391, i32 1}
!2 = !{ptr @__ksymtab_drm_legacy_findmap, !3, !"__ksymtab_drm_legacy_findmap", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/drm_bufs.c", i32 403, i32 1}
!4 = !{ptr @__ksymtab_drm_legacy_rmmap_locked, !5, !"__ksymtab_drm_legacy_rmmap_locked", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/drm_bufs.c", i32 569, i32 1}
!6 = !{ptr @__ksymtab_drm_legacy_rmmap, !7, !"__ksymtab_drm_legacy_rmmap", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/drm_bufs.c", i32 581, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/drm_bufs.c", i32 915, i32 2}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/drm_bufs.c", i32 978, i32 2}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/drm_bufs.c", i32 1018, i32 4}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/drm_bufs.c", i32 1054, i32 4}
!16 = !{ptr @__ksymtab_drm_legacy_addbufs_pci, !17, !"__ksymtab_drm_legacy_addbufs_pci", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/drm_bufs.c", i32 1102, i32 1}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/drm_bufs.c", i32 1347, i32 2}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/drm_bufs.c", i32 1356, i32 5}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/drm_bufs.c", i32 1424, i32 2}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/drm_bufs.c", i32 1472, i32 2}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/drm_bufs.c", i32 1477, i32 4}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/drm_bufs.c", i32 1484, i32 4}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/drm_bufs.c", i32 1572, i32 2}
!32 = !{ptr @__ksymtab_drm_legacy_getsarea, !33, !"__ksymtab_drm_legacy_getsarea", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/drm_bufs.c", i32 1631, i32 1}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/drm_bufs.c", i32 174, i32 2}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/drm_bufs.c", i32 208, i32 5}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/drm_bufs.c", i32 253, i32 3}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/drm_bufs.c", i32 311, i32 3}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/drm_bufs.c", i32 1143, i32 2}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/drm_bufs.c", i32 1144, i32 2}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/drm_bufs.c", i32 1145, i32 2}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/drm_bufs.c", i32 1146, i32 2}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/drm_bufs.c", i32 1147, i32 2}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/drm_bufs.c", i32 1148, i32 2}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/drm_bufs.c", i32 1149, i32 2}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/drm_bufs.c", i32 1222, i32 2}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/drm_bufs.c", i32 1245, i32 2}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/drm_bufs.c", i32 1246, i32 2}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!64 = distinct !{null, !63, !"<string literal>", i1 false, i1 false}
!65 = distinct !{null, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!69 = !{!"sp"}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{!"auto-init"}
!80 = !{i32 0, i32 33}
!81 = !{i64 2148215836, i64 2148215862, i64 2148215891, i64 2148215925, i64 2148215956, i64 2148215979}
!82 = !{i64 2148218301, i64 2148218327, i64 2148218356, i64 2148218390, i64 2148218421, i64 2148218444}
!83 = !{!"branch_weights", i32 1, i32 2000}
!84 = !{i64 2152767678, i64 2152767703}
!85 = !{i64 2152766997, i64 2152767022}
!86 = !{!"branch_weights", i32 2000, i32 1}
!87 = !{i64 5262552}
!88 = !{i64 5262749}
!89 = !{i64 2152747982}
!90 = !{i64 663841, i64 663858}
!91 = !{i64 2152763799, i64 2152763824}
