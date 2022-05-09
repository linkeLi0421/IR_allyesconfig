; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/drm_auth.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_auth.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+drm_is_current_master\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_is_current_master\09\09\09\09"
module asm "\09.long\09__crc_drm_is_current_master\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_is_current_master:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_is_current_master\22\09\09\09\09\09"
module asm "__kstrtabns_drm_is_current_master:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_master_get\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_master_get\09\09\09\09"
module asm "\09.long\09__crc_drm_master_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_master_get:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_master_get\22\09\09\09\09\09"
module asm "__kstrtabns_drm_master_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_file_get_master\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_file_get_master\09\09\09\09"
module asm "\09.long\09__crc_drm_file_get_master\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_file_get_master:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_file_get_master\22\09\09\09\09\09"
module asm "__kstrtabns_drm_file_get_master:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_master_put\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_master_put\09\09\09\09"
module asm "\09.long\09__crc_drm_master_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_master_put:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_master_put\22\09\09\09\09\09"
module asm "__kstrtabns_drm_master_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_master_internal_acquire\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_master_internal_acquire\09\09\09\09"
module asm "\09.long\09__crc_drm_master_internal_acquire\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_master_internal_acquire:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_master_internal_acquire\22\09\09\09\09\09"
module asm "__kstrtabns_drm_master_internal_acquire:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_master_internal_release\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_master_internal_release\09\09\09\09"
module asm "\09.long\09__crc_drm_master_internal_release\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_master_internal_release:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_master_internal_release\22\09\09\09\09\09"
module asm "__kstrtabns_drm_master_internal_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.67, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.72, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.67 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.72 = type { i32, ptr }
%struct.drm_master = type { %struct.kref, ptr, ptr, i32, %struct.idr, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.idr, %struct.idr, %struct.drm_lock_data }
%struct.drm_lock_data = type { ptr, ptr, %struct.wait_queue_head, i32, %struct.spinlock, i32, i32, i32 }
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
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }

@__kstrtab_drm_is_current_master = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_is_current_master = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_is_current_master = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_is_current_master to i32), ptr @__kstrtab_drm_is_current_master, ptr @__kstrtabns_drm_is_current_master }, section "___ksymtab+drm_is_current_master", align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Attempt to set lessee %d as master\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Attempt to drop lessee %d as master\0A\00", [59 x i8] zeroinitializer }, align 32
@__kstrtab_drm_master_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_master_get = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_master_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_master_get to i32), ptr @__kstrtab_drm_master_get, ptr @__kstrtabns_drm_master_get }, section "___ksymtab+drm_master_get", align 4
@__kstrtab_drm_file_get_master = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_file_get_master = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_file_get_master = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_file_get_master to i32), ptr @__kstrtab_drm_file_get_master, ptr @__kstrtabns_drm_file_get_master }, section "___ksymtab+drm_file_get_master", align 4
@__kstrtab_drm_master_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_master_put = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_master_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_master_put to i32), ptr @__kstrtab_drm_master_put, ptr @__kstrtabns_drm_master_put }, section "___ksymtab+drm_master_put", align 4
@__kstrtab_drm_master_internal_acquire = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_master_internal_acquire = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_master_internal_acquire = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_master_internal_acquire to i32), ptr @__kstrtab_drm_master_internal_acquire, ptr @__kstrtabns_drm_master_internal_acquire }, section "___ksymtab+drm_master_internal_acquire", align 4
@__kstrtab_drm_master_internal_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_master_internal_release = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_master_internal_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_master_internal_release to i32), ptr @__kstrtab_drm_master_internal_release, ptr @__kstrtabns_drm_master_internal_release }, section "___ksymtab+drm_master_internal_release", align 4
@drm_is_current_master_locked.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/gpu/drm/drm_auth.c\00", [37 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@drm_new_set_master.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 109, i32 2 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 277, i32 3 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 320, i32 3 }
@___asan_gen_.15 = private constant [30 x i8] c"../drivers/gpu/drm/drm_auth.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 66, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 378, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__ksymtab_drm_file_get_master, ptr @__ksymtab_drm_is_current_master, ptr @__ksymtab_drm_master_get, ptr @__ksymtab_drm_master_internal_acquire, ptr @__ksymtab_drm_master_internal_release, ptr @__ksymtab_drm_master_put, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @xa_init_flags.__key, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @drm_is_current_master(ptr noundef %fpriv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master_lookup_lock = getelementptr inbounds %struct.drm_file, ptr %fpriv, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %master_lookup_lock) #7
  %call = tail call fastcc zeroext i1 @drm_is_current_master_locked(ptr noundef %fpriv)
  tail call void @_raw_spin_unlock(ptr noundef %master_lookup_lock) #7
  ret i1 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @drm_is_current_master_locked(ptr noundef %fpriv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end36_crit_edge, label %land.rhs

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.drm_file, ptr %fpriv, i32 0, i32 9, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %lor.rhs, label %land.rhs.if.end36_crit_edge

land.rhs.if.end36_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

lor.rhs:                                          ; preds = %land.rhs
  %minor = getelementptr inbounds %struct.drm_file, ptr %fpriv, i32 0, i32 13
  %1 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %minor, align 4
  %dev = getelementptr inbounds %struct.drm_minor, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %dep_map2 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 15, i32 5
  %call.i63 = tail call i32 @lock_is_held_type(ptr noundef %dep_map2, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %tobool4 = icmp eq i32 %call.i63, 0
  br i1 %tobool4, label %land.rhs8, label %lor.rhs.if.end36_crit_edge

lor.rhs.if.end36_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

land.rhs8:                                        ; preds = %lor.rhs
  %.b59 = load i1, ptr @drm_is_current_master_locked.__already_done, align 1
  br i1 %.b59, label %land.rhs8.if.end36_crit_edge, label %if.then, !prof !36

land.rhs8.if.end36_crit_edge:                     ; preds = %land.rhs8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then:                                          ; preds = %land.rhs8
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @drm_is_current_master_locked.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 67, i32 noundef 9, ptr noundef null) #7
  br label %if.end36

if.end36:                                         ; preds = %if.then, %land.rhs8.if.end36_crit_edge, %lor.rhs.if.end36_crit_edge, %land.rhs.if.end36_crit_edge, %entry.if.end36_crit_edge
  %is_master = getelementptr inbounds %struct.drm_file, ptr %fpriv, i32 0, i32 7
  %5 = ptrtoint ptr %is_master to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_master, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool46.not = icmp eq i8 %6, 0
  br i1 %tobool46.not, label %if.end36.land.end52_crit_edge, label %land.rhs47

if.end36.land.end52_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end52

land.rhs47:                                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %master = getelementptr inbounds %struct.drm_file, ptr %fpriv, i32 0, i32 8
  %7 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %master, align 4
  %call48 = tail call ptr @drm_lease_owner(ptr noundef %8) #7
  %minor49 = getelementptr inbounds %struct.drm_file, ptr %fpriv, i32 0, i32 13
  %9 = ptrtoint ptr %minor49 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %minor49, align 4
  %dev50 = getelementptr inbounds %struct.drm_minor, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev50, align 4
  %master51 = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %master51 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %master51, align 4
  %cmp = icmp eq ptr %call48, %14
  br label %land.end52

land.end52:                                       ; preds = %land.rhs47, %if.end36.land.end52_crit_edge
  %15 = phi i1 [ false, %if.end36.land.end52_crit_edge ], [ %cmp, %land.rhs47 ]
  ret i1 %15
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_getmagic(ptr noundef %dev, ptr nocapture noundef %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master_mutex = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %master_mutex, i32 noundef 0) #7
  %magic = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 11
  %0 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %magic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then:                                          ; preds = %entry
  %master = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 8
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  %magic_map = getelementptr inbounds %struct.drm_master, ptr %3, i32 0, i32 4
  %call = tail call i32 @idr_alloc(ptr noundef %magic_map, ptr noundef %file_priv, i32 noundef 1, i32 noundef 0, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then1, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %magic, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %ret.0 = phi i32 [ 0, %entry.if.end3_crit_edge ], [ %call, %if.then1 ], [ %call, %if.then.if.end3_crit_edge ]
  %5 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %magic, align 4
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %data, align 4
  tail call void @mutex_unlock(ptr noundef %master_mutex) #7
  %tobool7.not = icmp eq ptr %dev, null
  br i1 %tobool7.not, label %if.end3.cond.end_crit_edge, label %cond.true

if.end3.cond.end_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %dev8 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %8 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev8, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end3.cond.end_crit_edge
  %cond = phi ptr [ %9, %cond.true ], [ null, %if.end3.cond.end_crit_edge ]
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %11) #7
  %12 = tail call i32 @llvm.smin.i32(i32 %ret.0, i32 0)
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_authmagic(ptr noundef %dev, ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %1, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %3) #7
  %master_mutex = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %master_mutex, i32 noundef 0) #7
  %master = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 8
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %magic_map = getelementptr inbounds %struct.drm_master, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data, align 4
  %call = tail call ptr @idr_find(ptr noundef %magic_map, i32 noundef %7) #7
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %call, align 4
  %9 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %master, align 4
  %magic_map5 = getelementptr inbounds %struct.drm_master, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data, align 4
  %call7 = tail call ptr @idr_replace(ptr noundef %magic_map5, ptr noundef null, i32 noundef %12) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  %cond10 = phi i32 [ 0, %if.then ], [ -22, %cond.end.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %master_mutex) #7
  ret i32 %cond10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_replace(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @drm_master_create(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 344) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef 4) #7
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 1, ptr %call7.i.i, align 8
  tail call void @drm_master_legacy_init(ptr noundef nonnull %call7.i.i) #7
  %magic_map = getelementptr inbounds %struct.drm_master, ptr %call7.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %magic_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #7
  %xa_flags.i.i.i = getelementptr inbounds %struct.drm_master, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 1
  %2 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 67108868, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.drm_master, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 2
  %3 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %xa_head.i.i.i, align 8
  %idr_base.i.i = getelementptr inbounds %struct.drm_master, ptr %call7.i.i, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %idr_base.i.i, align 4
  %idr_next.i.i = getelementptr inbounds %struct.drm_master, ptr %call7.i.i, i32 0, i32 4, i32 2
  %5 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %idr_next.i.i, align 8
  %dev1 = getelementptr inbounds %struct.drm_master, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %dev1, align 4
  %lessees = getelementptr inbounds %struct.drm_master, ptr %call7.i.i, i32 0, i32 9
  %7 = ptrtoint ptr %lessees to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %lessees, ptr %lessees, align 8
  %prev.i = getelementptr inbounds %struct.drm_master, ptr %call7.i.i, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %lessees, ptr %prev.i, align 4
  %lessee_list = getelementptr inbounds %struct.drm_master, ptr %call7.i.i, i32 0, i32 8
  %9 = ptrtoint ptr %lessee_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %lessee_list, ptr %lessee_list, align 8
  %prev.i11 = getelementptr inbounds %struct.drm_master, ptr %call7.i.i, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %prev.i11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %lessee_list, ptr %prev.i11, align 4
  %leases = getelementptr inbounds %struct.drm_master, ptr %call7.i.i, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %leases, ptr noundef nonnull @.str.4, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #7
  %xa_flags.i.i.i12 = getelementptr inbounds %struct.drm_master, ptr %call7.i.i, i32 0, i32 10, i32 0, i32 1
  %11 = ptrtoint ptr %xa_flags.i.i.i12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 67108868, ptr %xa_flags.i.i.i12, align 4
  %xa_head.i.i.i13 = getelementptr inbounds %struct.drm_master, ptr %call7.i.i, i32 0, i32 10, i32 0, i32 2
  %12 = ptrtoint ptr %xa_head.i.i.i13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %xa_head.i.i.i13, align 8
  %idr_base.i.i14 = getelementptr inbounds %struct.drm_master, ptr %call7.i.i, i32 0, i32 10, i32 1
  %13 = ptrtoint ptr %idr_base.i.i14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %idr_base.i.i14, align 4
  %idr_next.i.i15 = getelementptr inbounds %struct.drm_master, ptr %call7.i.i, i32 0, i32 10, i32 2
  %14 = ptrtoint ptr %idr_next.i.i15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %idr_next.i.i15, align 8
  %lessee_idr = getelementptr inbounds %struct.drm_master, ptr %call7.i.i, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %lessee_idr, ptr noundef nonnull @.str.4, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #7
  %xa_flags.i.i.i16 = getelementptr inbounds %struct.drm_master, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 1
  %15 = ptrtoint ptr %xa_flags.i.i.i16 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 67108868, ptr %xa_flags.i.i.i16, align 8
  %xa_head.i.i.i17 = getelementptr inbounds %struct.drm_master, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 2
  %16 = ptrtoint ptr %xa_head.i.i.i17 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %xa_head.i.i.i17, align 4
  %idr_base.i.i18 = getelementptr inbounds %struct.drm_master, ptr %call7.i.i, i32 0, i32 11, i32 1
  %17 = ptrtoint ptr %idr_base.i.i18 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %idr_base.i.i18, align 8
  %idr_next.i.i19 = getelementptr inbounds %struct.drm_master, ptr %call7.i.i, i32 0, i32 11, i32 2
  %18 = ptrtoint ptr %idr_next.i.i19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %idr_next.i.i19, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_master_legacy_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_setmaster_ioctl(ptr noundef %dev, ptr nocapture noundef readnone %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master_mutex = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %master_mutex, i32 noundef 0) #7
  %pid.i = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 10
  %0 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pid.i, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 8
  %thread_pid.i.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 78
  %6 = ptrtoint ptr %thread_pid.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %thread_pid.i.i, align 16
  %cmp.i = icmp eq ptr %1, %7
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %was_master.i = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 6
  %8 = ptrtoint ptr %was_master.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %was_master.i, align 2, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %call2.i = tail call zeroext i1 @capable(i32 noundef 21) #7
  br i1 %call2.i, label %if.end.i.if.end_crit_edge, label %if.end.i.out_unlock_crit_edge

if.end.i.out_unlock_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge
  %call1 = tail call fastcc zeroext i1 @drm_is_current_master_locked(ptr noundef %file_priv)
  br i1 %call1, label %if.end.out_unlock_crit_edge, label %if.end3

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end3:                                          ; preds = %if.end
  %master = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 9
  %10 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %master, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %if.end6, label %if.end3.out_unlock_crit_edge

if.end3.out_unlock_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end6:                                          ; preds = %if.end3
  %master7 = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 8
  %12 = ptrtoint ptr %master7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %master7, align 4
  %tobool8.not = icmp eq ptr %13, null
  br i1 %tobool8.not, label %if.end6.out_unlock_crit_edge, label %if.end10

if.end6.out_unlock_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end10:                                         ; preds = %if.end6
  %is_master = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 7
  %14 = ptrtoint ptr %is_master to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %is_master, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool11.not = icmp eq i8 %15, 0
  br i1 %tobool11.not, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call fastcc i32 @drm_new_set_master(ptr noundef %dev, ptr noundef %file_priv)
  br label %out_unlock

if.end14:                                         ; preds = %if.end10
  %lessor = getelementptr inbounds %struct.drm_master, ptr %13, i32 0, i32 6
  %16 = ptrtoint ptr %lessor to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lessor, align 4
  %cmp.not = icmp eq ptr %17, null
  br i1 %cmp.not, label %if.end20, label %if.then16

if.then16:                                        ; preds = %if.end14
  %tobool17.not = icmp eq ptr %dev, null
  br i1 %tobool17.not, label %if.then16.cond.end_crit_edge, label %cond.true

if.then16.cond.end_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  %dev18 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %18 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev18, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then16.cond.end_crit_edge
  %cond = phi ptr [ %19, %cond.true ], [ null, %if.then16.cond.end_crit_edge ]
  %lessee_id = getelementptr inbounds %struct.drm_master, ptr %13, i32 0, i32 7
  %20 = ptrtoint ptr %lessee_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lessee_id, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond, i32 noundef 128, ptr noundef nonnull @.str.1, i32 noundef %21) #7
  br label %out_unlock

if.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @drm_set_master(ptr noundef %dev, ptr noundef %file_priv, i1 noundef zeroext false)
  br label %out_unlock

out_unlock:                                       ; preds = %if.end20, %cond.end, %if.then12, %if.end6.out_unlock_crit_edge, %if.end3.out_unlock_crit_edge, %if.end.out_unlock_crit_edge, %if.end.i.out_unlock_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.out_unlock_crit_edge ], [ -22, %cond.end ], [ 0, %if.end20 ], [ %call13, %if.then12 ], [ -16, %if.end3.out_unlock_crit_edge ], [ -22, %if.end6.out_unlock_crit_edge ], [ -13, %if.end.i.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %master_mutex) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @drm_new_set_master(ptr noundef %dev, ptr noundef %fpriv) unnamed_addr #0 align 64 {
entry:
  %old_master = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old_master) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end32_crit_edge, label %land.rhs

entry.if.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 15, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %land.rhs4, label %land.rhs.if.end32_crit_edge

land.rhs.if.end32_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

land.rhs4:                                        ; preds = %land.rhs
  %.b97 = load i1, ptr @drm_new_set_master.__already_done, align 1
  br i1 %.b97, label %land.rhs4.if.end32_crit_edge, label %if.then, !prof !36

land.rhs4.if.end32_crit_edge:                     ; preds = %land.rhs4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then:                                          ; preds = %land.rhs4
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @drm_new_set_master.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 170, i32 noundef 9, ptr noundef null) #7
  br label %if.end32

if.end32:                                         ; preds = %if.then, %land.rhs4.if.end32_crit_edge, %land.rhs.if.end32_crit_edge, %entry.if.end32_crit_edge
  %is_master = getelementptr inbounds %struct.drm_file, ptr %fpriv, i32 0, i32 7
  %1 = ptrtoint ptr %is_master to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %is_master, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool43.not = icmp eq i8 %2, 0
  br i1 %tobool43.not, label %if.end32.if.end65_crit_edge, label %do.end59, !prof !36

if.end32.if.end65_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

do.end59:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 172, i32 noundef 9, ptr noundef null) #7
  br label %if.end65

if.end65:                                         ; preds = %do.end59, %if.end32.if.end65_crit_edge
  %master = getelementptr inbounds %struct.drm_file, ptr %fpriv, i32 0, i32 8
  %3 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %master, align 4
  %5 = ptrtoint ptr %old_master to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %old_master, align 4
  %call73 = tail call ptr @drm_master_create(ptr noundef %dev)
  %tobool74.not = icmp eq ptr %call73, null
  br i1 %tobool74.not, label %if.end65.cleanup_crit_edge, label %if.end76

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end76:                                         ; preds = %if.end65
  %master_lookup_lock = getelementptr inbounds %struct.drm_file, ptr %fpriv, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %master_lookup_lock) #7
  %6 = ptrtoint ptr %master to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call73, ptr %master, align 4
  tail call void @_raw_spin_unlock(ptr noundef %master_lookup_lock) #7
  %7 = ptrtoint ptr %is_master to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %is_master, align 1
  %8 = ptrtoint ptr %fpriv to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %fpriv, align 4
  %9 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %master, align 4
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %10, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %10, i32 1, i32 3, i32 1) #7
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #7, !srcloc !38
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end76.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !39

if.end76.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.end76
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %12 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %.not.i.i.i.i.i.i = icmp sgt i32 %12, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.drm_master_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !36

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.drm_master_get.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_master_get.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.end76.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.end76.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %10, i32 noundef %.sink.i.i.i.i.i.i) #7
  br label %drm_master_get.exit.i

drm_master_get.exit.i:                            ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.drm_master_get.exit.i_crit_edge
  %master1.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 9
  %13 = ptrtoint ptr %master1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %master1.i, align 4
  %driver.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %14 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver.i, align 4
  %master_set.i = getelementptr inbounds %struct.drm_driver, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %master_set.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %master_set.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %drm_master_get.exit.i.drm_set_master.exit_crit_edge, label %if.then.i

drm_master_get.exit.i.drm_set_master.exit_crit_edge: ; preds = %drm_master_get.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_set_master.exit

if.then.i:                                        ; preds = %drm_master_get.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %17(ptr noundef %dev, ptr noundef %fpriv, i1 noundef zeroext true) #7
  br label %drm_set_master.exit

drm_set_master.exit:                              ; preds = %if.then.i, %drm_master_get.exit.i.drm_set_master.exit_crit_edge
  %was_master.i = getelementptr inbounds %struct.drm_file, ptr %fpriv, i32 0, i32 6
  %18 = ptrtoint ptr %was_master.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %was_master.i, align 2
  %tobool80.not = icmp eq ptr %4, null
  br i1 %tobool80.not, label %drm_set_master.exit.cleanup_crit_edge, label %if.then81

drm_set_master.exit.cleanup_crit_edge:            ; preds = %drm_set_master.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then81:                                        ; preds = %drm_set_master.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @drm_master_put(ptr noundef nonnull %old_master)
  br label %cleanup

cleanup:                                          ; preds = %if.then81, %drm_set_master.exit.cleanup_crit_edge, %if.end65.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end65.cleanup_crit_edge ], [ 0, %if.then81 ], [ 0, %drm_set_master.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_master) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @drm_set_master(ptr noundef %dev, ptr noundef %fpriv, i1 noundef zeroext %new_master) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.drm_file, ptr %fpriv, i32 0, i32 8
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #7, !srcloc !38
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !39

entry.if.end15.sink.split.i.i.i.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %entry
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.drm_master_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !36

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.drm_master_get.exit_crit_edge:  ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_master_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef %.sink.i.i.i.i.i) #7
  br label %drm_master_get.exit

drm_master_get.exit:                              ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.drm_master_get.exit_crit_edge
  %master1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 9
  %4 = ptrtoint ptr %master1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %master1, align 4
  %driver = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %5 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver, align 4
  %master_set = getelementptr inbounds %struct.drm_driver, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %master_set to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %master_set, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %drm_master_get.exit.if.end_crit_edge, label %if.then

drm_master_get.exit.if.end_crit_edge:             ; preds = %drm_master_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %drm_master_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %8(ptr noundef %dev, ptr noundef %fpriv, i1 noundef zeroext %new_master) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %drm_master_get.exit.if.end_crit_edge
  %was_master = getelementptr inbounds %struct.drm_file, ptr %fpriv, i32 0, i32 6
  %9 = ptrtoint ptr %was_master to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %was_master, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_dropmaster_ioctl(ptr noundef %dev, ptr nocapture noundef readnone %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master_mutex = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %master_mutex, i32 noundef 0) #7
  %pid.i = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 10
  %0 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pid.i, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 8
  %thread_pid.i.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 78
  %6 = ptrtoint ptr %thread_pid.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %thread_pid.i.i, align 16
  %cmp.i = icmp eq ptr %1, %7
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %was_master.i = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 6
  %8 = ptrtoint ptr %was_master.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %was_master.i, align 2, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %call2.i = tail call zeroext i1 @capable(i32 noundef 21) #7
  br i1 %call2.i, label %if.end.i.if.end_crit_edge, label %if.end.i.out_unlock_crit_edge

if.end.i.out_unlock_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge
  %call1 = tail call fastcc zeroext i1 @drm_is_current_master_locked(ptr noundef %file_priv)
  br i1 %call1, label %if.end3, label %if.end.out_unlock_crit_edge

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end3:                                          ; preds = %if.end
  %master = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 9
  %10 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %master, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %if.end3.out_unlock_crit_edge, label %if.end6

if.end3.out_unlock_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end6:                                          ; preds = %if.end3
  %master7 = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 8
  %12 = ptrtoint ptr %master7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %master7, align 4
  %lessor = getelementptr inbounds %struct.drm_master, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %lessor to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lessor, align 4
  %cmp.not = icmp eq ptr %15, null
  br i1 %cmp.not, label %if.end12, label %if.then8

if.then8:                                         ; preds = %if.end6
  %tobool9.not = icmp eq ptr %dev, null
  br i1 %tobool9.not, label %if.then8.cond.end_crit_edge, label %cond.true

if.then8.cond.end_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %dev10 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %16 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev10, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then8.cond.end_crit_edge
  %cond = phi ptr [ %17, %cond.true ], [ null, %if.then8.cond.end_crit_edge ]
  %lessee_id = getelementptr inbounds %struct.drm_master, ptr %13, i32 0, i32 7
  %18 = ptrtoint ptr %lessee_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lessee_id, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond, i32 noundef 128, ptr noundef nonnull @.str.2, i32 noundef %19) #7
  br label %out_unlock

if.end12:                                         ; preds = %if.end6
  %driver.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %20 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver.i, align 4
  %master_drop.i = getelementptr inbounds %struct.drm_driver, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %master_drop.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %master_drop.i, align 4
  %tobool.not.i25 = icmp eq ptr %23, null
  br i1 %tobool.not.i25, label %if.end12.drm_drop_master.exit_crit_edge, label %if.then.i

if.end12.drm_drop_master.exit_crit_edge:          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_drop_master.exit

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %23(ptr noundef %dev, ptr noundef %file_priv) #7
  br label %drm_drop_master.exit

drm_drop_master.exit:                             ; preds = %if.then.i, %if.end12.drm_drop_master.exit_crit_edge
  tail call void @drm_master_put(ptr noundef %master) #7
  br label %out_unlock

out_unlock:                                       ; preds = %drm_drop_master.exit, %cond.end, %if.end3.out_unlock_crit_edge, %if.end.out_unlock_crit_edge, %if.end.i.out_unlock_crit_edge
  %ret.0 = phi i32 [ -22, %cond.end ], [ 0, %drm_drop_master.exit ], [ -22, %if.end.out_unlock_crit_edge ], [ -22, %if.end3.out_unlock_crit_edge ], [ -13, %if.end.i.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %master_mutex) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_master_open(ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %minor = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 13
  %0 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %minor, align 4
  %dev1 = getelementptr inbounds %struct.drm_minor, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %master_mutex = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %master_mutex, i32 noundef 0) #7
  %master = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call fastcc i32 @drm_new_set_master(ptr noundef %3, ptr noundef %file_priv)
  br label %if.end

if.else:                                          ; preds = %entry
  %master_lookup_lock = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %master_lookup_lock) #7
  %6 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %7, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %7, i32 1, i32 3, i32 1) #7
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #7, !srcloc !38
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.else.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !39

if.else.if.end15.sink.split.i.i.i.i.i_crit_edge:  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.else
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.drm_master_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !36

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.drm_master_get.exit_crit_edge:  ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_master_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.else.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.else.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %7, i32 noundef %.sink.i.i.i.i.i) #7
  br label %drm_master_get.exit

drm_master_get.exit:                              ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.drm_master_get.exit_crit_edge
  %master4 = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 8
  %10 = ptrtoint ptr %master4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %master4, align 4
  tail call void @_raw_spin_unlock(ptr noundef %master_lookup_lock) #7
  br label %if.end

if.end:                                           ; preds = %drm_master_get.exit, %if.then
  %ret.0 = phi i32 [ 0, %drm_master_get.exit ], [ %call, %if.then ]
  tail call void @mutex_unlock(ptr noundef %master_mutex) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @drm_master_get(ptr noundef returned %master) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %master, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %master, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %master, ptr %master, i32 1, ptr elementtype(i32) %master) #7, !srcloc !38
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !39

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !36

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %master, i32 noundef %.sink.i.i.i.i) #7
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  ret ptr %master
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_master_release(ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %minor = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 13
  %0 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %minor, align 4
  %dev1 = getelementptr inbounds %struct.drm_minor, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %master_mutex = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %master_mutex, i32 noundef 0) #7
  %master2 = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 8
  %4 = ptrtoint ptr %master2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master2, align 4
  %magic = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 11
  %6 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %magic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %magic_map = getelementptr inbounds %struct.drm_master, ptr %5, i32 0, i32 4
  %call = tail call ptr @idr_remove(ptr noundef %magic_map, i32 noundef %7) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call5 = tail call fastcc zeroext i1 @drm_is_current_master_locked(ptr noundef %file_priv)
  br i1 %call5, label %if.end7, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end7:                                          ; preds = %if.end
  tail call void @drm_legacy_lock_master_cleanup(ptr noundef %3, ptr noundef %5) #7
  %master8 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 9
  %8 = ptrtoint ptr %master8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %master8, align 4
  %10 = ptrtoint ptr %master2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %master2, align 4
  %cmp = icmp eq ptr %9, %11
  br i1 %cmp, label %if.then10, label %if.end7.out_crit_edge

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then10:                                        ; preds = %if.end7
  %driver.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver.i, align 4
  %master_drop.i = getelementptr inbounds %struct.drm_driver, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %master_drop.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %master_drop.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.then10.drm_drop_master.exit_crit_edge, label %if.then.i

if.then10.drm_drop_master.exit_crit_edge:         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_drop_master.exit

if.then.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %15(ptr noundef %3, ptr noundef %file_priv) #7
  br label %drm_drop_master.exit

drm_drop_master.exit:                             ; preds = %if.then.i, %if.then10.drm_drop_master.exit_crit_edge
  tail call void @drm_master_put(ptr noundef %master8) #7
  br label %out

out:                                              ; preds = %drm_drop_master.exit, %if.end7.out_crit_edge, %if.end.out_crit_edge
  %driver.i.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 4
  %16 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i = getelementptr inbounds %struct.drm_driver, ptr %17, i32 0, i32 24
  %18 = ptrtoint ptr %driver_features.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %driver_features.i.i, align 4
  %driver_features1.i.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 10
  %20 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i = and i32 %19, 2
  %and2.i.i = and i32 %and.i.i, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %cmp.i.i.not = icmp eq i32 %and2.i.i, 0
  br i1 %cmp.i.i.not, label %out.if.end15_crit_edge, label %land.lhs.true

out.if.end15_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

land.lhs.true:                                    ; preds = %out
  %is_master = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 7
  %22 = ptrtoint ptr %is_master to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %is_master, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool13.not = icmp eq i8 %23, 0
  br i1 %tobool13.not, label %land.lhs.true.if.end15_crit_edge, label %if.then14

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_lease_revoke(ptr noundef %5) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %land.lhs.true.if.end15_crit_edge, %out.if.end15_crit_edge
  %24 = ptrtoint ptr %master2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %master2, align 4
  %tobool17.not = icmp eq ptr %25, null
  br i1 %tobool17.not, label %if.end15.if.end20_crit_edge, label %if.then18

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_master_put(ptr noundef %master2)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end15.if.end20_crit_edge
  tail call void @mutex_unlock(ptr noundef %master_mutex) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_legacy_lock_master_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_lease_revoke(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_master_put(ptr nocapture noundef %master) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !40
  tail call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #7, !srcloc !41
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !36

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef 3) #7
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !42
  %dev1.i.i = getelementptr inbounds %struct.drm_master, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1.i.i, align 4
  %driver.i.i.i.i = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %driver.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver.i.i.i.i, align 4
  %driver_features.i.i.i.i = getelementptr inbounds %struct.drm_driver, ptr %6, i32 0, i32 24
  %7 = ptrtoint ptr %driver_features.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %driver_features.i.i.i.i, align 4
  %driver_features1.i.i.i.i = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 10
  %9 = ptrtoint ptr %driver_features1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %driver_features1.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %8, 2
  %and2.i.i.i.i = and i32 %and.i.i.i.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %cmp.i.i.not.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %cmp.i.i.not.i.i, label %if.then.i.drm_master_destroy.exit.i_crit_edge, label %if.then.i.i

if.then.i.drm_master_destroy.exit.i_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_master_destroy.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_lease_destroy(ptr noundef %1) #7
  br label %drm_master_destroy.exit.i

drm_master_destroy.exit.i:                        ; preds = %if.then.i.i, %if.then.i.drm_master_destroy.exit.i_crit_edge
  tail call void @drm_legacy_master_rmmaps(ptr noundef %4, ptr noundef %1) #7
  %magic_map.i.i = getelementptr inbounds %struct.drm_master, ptr %1, i32 0, i32 4
  tail call void @idr_destroy(ptr noundef %magic_map.i.i) #7
  %leases.i.i = getelementptr inbounds %struct.drm_master, ptr %1, i32 0, i32 10
  tail call void @idr_destroy(ptr noundef %leases.i.i) #7
  %lessee_idr.i.i = getelementptr inbounds %struct.drm_master, ptr %1, i32 0, i32 11
  tail call void @idr_destroy(ptr noundef %lessee_idr.i.i) #7
  %unique.i.i = getelementptr inbounds %struct.drm_master, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %unique.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %unique.i.i, align 4
  tail call void @kfree(ptr noundef %12) #7
  tail call void @kfree(ptr noundef %1) #7
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %drm_master_destroy.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %13 = ptrtoint ptr %master to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %master, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @drm_file_get_master(ptr noundef %file_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master_lookup_lock = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %master_lookup_lock) #7
  %master1 = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 8
  %0 = ptrtoint ptr %master1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end:                                           ; preds = %entry
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #7, !srcloc !38
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !39

if.end.if.end15.sink.split.i.i.i.i.i_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.unlock_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !36

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.unlock_crit_edge:               ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef %.sink.i.i.i.i.i) #7
  br label %unlock

unlock:                                           ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.unlock_crit_edge, %entry.unlock_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %master_lookup_lock) #7
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @drm_master_internal_acquire(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master_mutex = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %master_mutex, i32 noundef 0) #7
  %master = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %master_mutex) #7
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_master_internal_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master_mutex = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %master_mutex) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_lease_owner(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_lease_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_legacy_master_rmmaps(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !23, !24}
!llvm.named.register.sp = !{!26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @__ksymtab_drm_is_current_master, !1, !"__ksymtab_drm_is_current_master", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/drm_auth.c", i32 92, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/drm_auth.c", i32 109, i32 2}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/drm_auth.c", i32 277, i32 3}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/drm_auth.c", i32 320, i32 3}
!8 = !{ptr @__ksymtab_drm_master_get, !9, !"__ksymtab_drm_master_get", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/drm_auth.c", i32 396, i32 1}
!10 = !{ptr @__ksymtab_drm_file_get_master, !11, !"__ksymtab_drm_file_get_master", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/drm_auth.c", i32 421, i32 1}
!12 = !{ptr @__ksymtab_drm_master_put, !13, !"__ksymtab_drm_master_put", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/drm_auth.c", i32 452, i32 1}
!14 = !{ptr @__ksymtab_drm_master_internal_acquire, !15, !"__ksymtab_drm_master_internal_acquire", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/drm_auth.c", i32 465, i32 1}
!16 = !{ptr @__ksymtab_drm_master_internal_release, !17, !"__ksymtab_drm_master_internal_release", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/drm_auth.c", i32 472, i32 1}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/drm_auth.c", i32 66, i32 2}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @xa_init_flags.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/drm_auth.c", i32 170, i32 2}
!26 = !{!"sp"}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"branch_weights", i32 2000, i32 1}
!37 = !{i8 0, i8 2}
!38 = !{i64 2148593332, i64 2148593364, i64 2148593393, i64 2148593427, i64 2148593458, i64 2148593481}
!39 = !{!"branch_weights", i32 1, i32 2000}
!40 = !{i64 2148681357}
!41 = !{i64 2148595797, i64 2148595829, i64 2148595858, i64 2148595892, i64 2148595923, i64 2148595946}
!42 = !{i64 2149879130}
