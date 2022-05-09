; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/drm_ioctl.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_ioctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+drm_noop\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_noop\09\09\09\09"
module asm "\09.long\09__crc_drm_noop\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_noop:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_noop\22\09\09\09\09\09"
module asm "__kstrtabns_drm_noop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_invalid_op\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_invalid_op\09\09\09\09"
module asm "\09.long\09__crc_drm_invalid_op\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_invalid_op:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_invalid_op\22\09\09\09\09\09"
module asm "__kstrtabns_drm_invalid_op:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_ioctl_kernel\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_ioctl_kernel\09\09\09\09"
module asm "\09.long\09__crc_drm_ioctl_kernel\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_ioctl_kernel:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_ioctl_kernel\22\09\09\09\09\09"
module asm "__kstrtabns_drm_ioctl_kernel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_ioctl\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_ioctl\09\09\09\09"
module asm "\09.long\09__crc_drm_ioctl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_ioctl\22\09\09\09\09\09"
module asm "__kstrtabns_drm_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_ioctl_flags\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_ioctl_flags\09\09\09\09"
module asm "\09.long\09__crc_drm_ioctl_flags\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_ioctl_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_ioctl_flags\22\09\09\09\09\09"
module asm "__kstrtabns_drm_ioctl_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_ioctl_desc = type { i32, i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.85, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.85 = type { i32, ptr }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.drm_master = type { %struct.kref, ptr, ptr, i32, %struct.idr, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.idr, %struct.idr, %struct.drm_lock_data }
%struct.drm_lock_data = type { ptr, ptr, %struct.wait_queue_head, i32, %struct.spinlock, i32, i32, i32 }
%struct.drm_unique = type { i32, ptr }
%struct.drm_client = type { i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_version = type { i32, i32, i32, i32, ptr, i32, ptr, i32, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
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
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.drm_set_version = type { i32, i32, i32, i32 }
%struct.drm_get_cap = type { i64, i64 }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_set_client_cap = type { i64, i64 }

@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@__kstrtab_drm_noop = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_noop = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_noop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_noop to i32), ptr @__kstrtab_drm_noop, ptr @__kstrtabns_drm_noop }, section "___ksymtab+drm_noop", align 4
@__kstrtab_drm_invalid_op = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_invalid_op = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_invalid_op = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_invalid_op to i32), ptr @__kstrtab_drm_invalid_op, ptr @__kstrtabns_drm_invalid_op }, section "___ksymtab+drm_invalid_op", align 4
@drm_global_mutex = external dso_local global %struct.mutex, align 4
@__kstrtab_drm_ioctl_kernel = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_ioctl_kernel = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_ioctl_kernel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_ioctl_kernel to i32), ptr @__kstrtab_drm_ioctl_kernel, ptr @__kstrtabns_drm_ioctl_kernel }, section "___ksymtab+drm_ioctl_kernel", align 4
@drm_ioctls = internal constant { [207 x %struct.drm_ioctl_desc], [816 x i8] } { [207 x %struct.drm_ioctl_desc] [%struct.drm_ioctl_desc { i32 -1071356928, i32 32, ptr @drm_version, ptr @.str.8 }, %struct.drm_ioctl_desc { i32 -1073191935, i32 0, ptr @drm_getunique, ptr @.str.9 }, %struct.drm_ioctl_desc { i32 -2147195902, i32 0, ptr @drm_getmagic, ptr @.str.10 }, %struct.drm_ioctl_desc { i32 -1072667645, i32 6, ptr @drm_legacy_irq_by_busid, ptr @.str.11 }, %struct.drm_ioctl_desc { i32 -1072143356, i32 0, ptr @drm_legacy_getmap_ioctl, ptr @.str.12 }, %struct.drm_ioctl_desc { i32 -1072143355, i32 0, ptr @drm_getclient, ptr @.str.13 }, %struct.drm_ioctl_desc { i32 -2139331578, i32 0, ptr @drm_getstats, ptr @.str.14 }, %struct.drm_ioctl_desc { i32 -1072667641, i32 2, ptr @drm_setversion, ptr @.str.15 }, %struct.drm_ioctl_desc { i32 1074291720, i32 0, ptr @drm_legacy_modeset_ctl_ioctl, ptr @.str.16 }, %struct.drm_ioctl_desc { i32 1074291721, i32 32, ptr @drm_gem_close_ioctl, ptr @.str.17 }, %struct.drm_ioctl_desc { i32 -1073191926, i32 1, ptr @drm_gem_flink_ioctl, ptr @.str.18 }, %struct.drm_ioctl_desc { i32 -1072667637, i32 1, ptr @drm_gem_open_ioctl, ptr @.str.19 }, %struct.drm_ioctl_desc { i32 -1072667636, i32 32, ptr @drm_getcap, ptr @.str.20 }, %struct.drm_ioctl_desc { i32 1074816013, i32 0, ptr @drm_setclientcap, ptr @.str.21 }, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc { i32 1074291728, i32 7, ptr @drm_invalid_op, ptr @.str.22 }, %struct.drm_ioctl_desc { i32 1074029585, i32 2, ptr @drm_authmagic, ptr @.str.23 }, %struct.drm_ioctl_desc { i32 -1073454062, i32 7, ptr @drm_noop, ptr @.str.24 }, %struct.drm_ioctl_desc { i32 -1073454061, i32 7, ptr @drm_noop, ptr @.str.25 }, %struct.drm_ioctl_desc { i32 1074291732, i32 7, ptr @drm_legacy_irq_control, ptr @.str.26 }, %struct.drm_ioctl_desc { i32 -1072143339, i32 7, ptr @drm_legacy_addmap_ioctl, ptr @.str.27 }, %struct.drm_ioctl_desc { i32 -1072143338, i32 7, ptr @drm_legacy_addbufs, ptr @.str.28 }, %struct.drm_ioctl_desc { i32 1075340311, i32 7, ptr @drm_legacy_markbufs, ptr @.str.29 }, %struct.drm_ioctl_desc { i32 -1073191912, i32 1, ptr @drm_legacy_infobufs, ptr @.str.30 }, %struct.drm_ioctl_desc { i32 -1072929767, i32 1, ptr @drm_legacy_mapbufs, ptr @.str.31 }, %struct.drm_ioctl_desc { i32 1074291738, i32 1, ptr @drm_legacy_freebufs, ptr @.str.32 }, %struct.drm_ioctl_desc { i32 1075340315, i32 1, ptr @drm_legacy_rmmap_ioctl, ptr @.str.33 }, %struct.drm_ioctl_desc { i32 1074291740, i32 7, ptr @drm_legacy_setsareactx, ptr @.str.34 }, %struct.drm_ioctl_desc { i32 -1073191907, i32 1, ptr @drm_legacy_getsareactx, ptr @.str.35 }, %struct.drm_ioctl_desc { i32 25630, i32 0, ptr @drm_setmaster_ioctl, ptr @.str.36 }, %struct.drm_ioctl_desc { i32 25631, i32 0, ptr @drm_dropmaster_ioctl, ptr @.str.37 }, %struct.drm_ioctl_desc { i32 -1073191904, i32 5, ptr @drm_legacy_addctx, ptr @.str.38 }, %struct.drm_ioctl_desc { i32 -1073191903, i32 7, ptr @drm_legacy_rmctx, ptr @.str.39 }, %struct.drm_ioctl_desc { i32 1074291746, i32 7, ptr @drm_noop, ptr @.str.40 }, %struct.drm_ioctl_desc { i32 -1073191901, i32 1, ptr @drm_legacy_getctx, ptr @.str.41 }, %struct.drm_ioctl_desc { i32 1074291748, i32 7, ptr @drm_legacy_switchctx, ptr @.str.42 }, %struct.drm_ioctl_desc { i32 1074291749, i32 7, ptr @drm_legacy_newctx, ptr @.str.43 }, %struct.drm_ioctl_desc { i32 -1073191898, i32 1, ptr @drm_legacy_resctx, ptr @.str.44 }, %struct.drm_ioctl_desc { i32 -1073454041, i32 7, ptr @drm_noop, ptr @.str.45 }, %struct.drm_ioctl_desc { i32 -1073454040, i32 7, ptr @drm_noop, ptr @.str.46 }, %struct.drm_ioctl_desc { i32 -1071094743, i32 1, ptr @drm_legacy_dma_ioctl, ptr @.str.47 }, %struct.drm_ioctl_desc { i32 1074291754, i32 1, ptr @drm_legacy_lock, ptr @.str.48 }, %struct.drm_ioctl_desc { i32 1074291755, i32 1, ptr @drm_legacy_unlock, ptr @.str.49 }, %struct.drm_ioctl_desc { i32 1074291756, i32 1, ptr @drm_noop, ptr @.str.50 }, %struct.drm_ioctl_desc { i32 -1072929747, i32 32, ptr @drm_prime_handle_to_fd_ioctl, ptr @.str.51 }, %struct.drm_ioctl_desc { i32 -1072929746, i32 32, ptr @drm_prime_fd_to_handle_ioctl, ptr @.str.52 }, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc { i32 -1073191880, i32 7, ptr @drm_legacy_sg_alloc, ptr @.str.53 }, %struct.drm_ioctl_desc { i32 1074291769, i32 7, ptr @drm_legacy_sg_free, ptr @.str.54 }, %struct.drm_ioctl_desc { i32 -1072667590, i32 16, ptr @drm_wait_vblank_ioctl, ptr @.str.55 }, %struct.drm_ioctl_desc { i32 -1072143301, i32 0, ptr @drm_crtc_get_sequence_ioctl, ptr @.str.56 }, %struct.drm_ioctl_desc { i32 -1072143300, i32 0, ptr @drm_crtc_queue_sequence_ioctl, ptr @.str.57 }, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc { i32 1075340351, i32 7, ptr @drm_noop, ptr @.str.58 }, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc { i32 -1069521760, i32 0, ptr @drm_mode_getresources, ptr @.str.59 }, %struct.drm_ioctl_desc { i32 -1066900319, i32 0, ptr @drm_mode_getcrtc, ptr @.str.60 }, %struct.drm_ioctl_desc { i32 -1066900318, i32 2, ptr @drm_mode_setcrtc, ptr @.str.61 }, %struct.drm_ioctl_desc { i32 -1071881053, i32 2, ptr @drm_mode_cursor_ioctl, ptr @.str.62 }, %struct.drm_ioctl_desc { i32 -1071618908, i32 0, ptr @drm_mode_gamma_get_ioctl, ptr @.str.63 }, %struct.drm_ioctl_desc { i32 -1071618907, i32 2, ptr @drm_mode_gamma_set_ioctl, ptr @.str.64 }, %struct.drm_ioctl_desc { i32 -1072405338, i32 0, ptr @drm_mode_getencoder, ptr @.str.65 }, %struct.drm_ioctl_desc { i32 -1068473177, i32 0, ptr @drm_mode_getconnector, ptr @.str.66 }, %struct.drm_ioctl_desc { i32 -1068997464, i32 2, ptr @drm_noop, ptr @.str.67 }, %struct.drm_ioctl_desc { i32 -1068997463, i32 2, ptr @drm_noop, ptr @.str.68 }, %struct.drm_ioctl_desc { i32 -1069521750, i32 0, ptr @drm_mode_getproperty_ioctl, ptr @.str.69 }, %struct.drm_ioctl_desc { i32 -1072667477, i32 2, ptr @drm_connector_property_set_ioctl, ptr @.str.70 }, %struct.drm_ioctl_desc { i32 -1072667476, i32 0, ptr @drm_mode_getblob_ioctl, ptr @.str.71 }, %struct.drm_ioctl_desc { i32 -1071881043, i32 0, ptr @drm_mode_getfb, ptr @.str.72 }, %struct.drm_ioctl_desc { i32 -1071881042, i32 0, ptr @drm_mode_addfb_ioctl, ptr @.str.73 }, %struct.drm_ioctl_desc { i32 -1073453905, i32 0, ptr @drm_mode_rmfb_ioctl, ptr @.str.74 }, %struct.drm_ioctl_desc { i32 -1072143184, i32 2, ptr @drm_mode_page_flip_ioctl, ptr @.str.75 }, %struct.drm_ioctl_desc { i32 -1072143183, i32 2, ptr @drm_mode_dirtyfb_ioctl, ptr @.str.76 }, %struct.drm_ioctl_desc { i32 -1071618894, i32 0, ptr @drm_mode_create_dumb_ioctl, ptr @.str.77 }, %struct.drm_ioctl_desc { i32 -1072667469, i32 0, ptr @drm_mode_mmap_dumb_ioctl, ptr @.str.78 }, %struct.drm_ioctl_desc { i32 -1073453900, i32 0, ptr @drm_mode_destroy_dumb_ioctl, ptr @.str.79 }, %struct.drm_ioctl_desc { i32 -1072667467, i32 0, ptr @drm_mode_getplane_res, ptr @.str.80 }, %struct.drm_ioctl_desc { i32 -1071618890, i32 0, ptr @drm_mode_getplane, ptr @.str.81 }, %struct.drm_ioctl_desc { i32 -1070570313, i32 2, ptr @drm_mode_setplane, ptr @.str.82 }, %struct.drm_ioctl_desc { i32 -1066900296, i32 0, ptr @drm_mode_addfb2_ioctl, ptr @.str.83 }, %struct.drm_ioctl_desc { i32 -1071618887, i32 0, ptr @drm_mode_obj_get_properties_ioctl, ptr @.str.84 }, %struct.drm_ioctl_desc { i32 -1072143174, i32 2, ptr @drm_mode_obj_set_property_ioctl, ptr @.str.85 }, %struct.drm_ioctl_desc { i32 -1071356741, i32 2, ptr @drm_mode_cursor2_ioctl, ptr @.str.86 }, %struct.drm_ioctl_desc { i32 -1070046020, i32 2, ptr @drm_mode_atomic_ioctl, ptr @.str.87 }, %struct.drm_ioctl_desc { i32 -1072667459, i32 0, ptr @drm_mode_createblob_ioctl, ptr @.str.88 }, %struct.drm_ioctl_desc { i32 -1073453890, i32 0, ptr @drm_mode_destroyblob_ioctl, ptr @.str.89 }, %struct.drm_ioctl_desc { i32 -1073191745, i32 32, ptr @drm_syncobj_create_ioctl, ptr @.str.90 }, %struct.drm_ioctl_desc { i32 -1073191744, i32 32, ptr @drm_syncobj_destroy_ioctl, ptr @.str.91 }, %struct.drm_ioctl_desc { i32 -1072667455, i32 32, ptr @drm_syncobj_handle_to_fd_ioctl, ptr @.str.92 }, %struct.drm_ioctl_desc { i32 -1072667454, i32 32, ptr @drm_syncobj_fd_to_handle_ioctl, ptr @.str.93 }, %struct.drm_ioctl_desc { i32 -1071618877, i32 32, ptr @drm_syncobj_wait_ioctl, ptr @.str.94 }, %struct.drm_ioctl_desc { i32 -1072667452, i32 32, ptr @drm_syncobj_reset_ioctl, ptr @.str.95 }, %struct.drm_ioctl_desc { i32 -1072667451, i32 32, ptr @drm_syncobj_signal_ioctl, ptr @.str.96 }, %struct.drm_ioctl_desc { i32 -1072143162, i32 2, ptr @drm_mode_create_lease_ioctl, ptr @.str.97 }, %struct.drm_ioctl_desc { i32 -1072667449, i32 2, ptr @drm_mode_list_lessees_ioctl, ptr @.str.98 }, %struct.drm_ioctl_desc { i32 -1072667448, i32 2, ptr @drm_mode_get_lease_ioctl, ptr @.str.99 }, %struct.drm_ioctl_desc { i32 -1073453879, i32 2, ptr @drm_mode_revoke_lease_ioctl, ptr @.str.100 }, %struct.drm_ioctl_desc { i32 -1071094582, i32 32, ptr @drm_syncobj_timeline_wait_ioctl, ptr @.str.101 }, %struct.drm_ioctl_desc { i32 -1072143157, i32 32, ptr @drm_syncobj_query_ioctl, ptr @.str.102 }, %struct.drm_ioctl_desc { i32 -1071618868, i32 32, ptr @drm_syncobj_transfer_ioctl, ptr @.str.103 }, %struct.drm_ioctl_desc { i32 -1072143155, i32 32, ptr @drm_syncobj_timeline_signal_ioctl, ptr @.str.104 }, %struct.drm_ioctl_desc { i32 -1066900274, i32 0, ptr @drm_mode_getfb2_ioctl, ptr @.str.105 }], [816 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"comm=\22%s\22 pid=%d, dev=0x%lx, auth=%d, %s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"no function\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"invalid ioctl: comm=\22%s\22, pid=%d, dev=0x%lx, auth=%d, cmd=0x%02x, nr=0x%02x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"comm=\22%s\22, pid=%d, ret=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@__kstrtab_drm_ioctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_ioctl = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_ioctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_ioctl to i32), ptr @__kstrtab_drm_ioctl, ptr @__kstrtabns_drm_ioctl }, section "___ksymtab+drm_ioctl", align 4
@__kstrtab_drm_ioctl_flags = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_ioctl_flags = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_ioctl_flags = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_ioctl_flags to i32), ptr @__kstrtab_drm_ioctl_flags, ptr @__kstrtabns_drm_ioctl_flags }, section "___ksymtab+drm_ioctl_flags", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DRM_IOCTL_VERSION\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DRM_IOCTL_GET_UNIQUE\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DRM_IOCTL_GET_MAGIC\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [267 x i8], [85 x i8] } { [267 x i8] c"(((2U|1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x03)) << 0) | (((((sizeof(struct drm_irq_busid) == sizeof(struct drm_irq_busid[1]) && sizeof(struct drm_irq_busid) < (1 << 14)) ? sizeof(struct drm_irq_busid) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", [85 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [243 x i8], [45 x i8] } { [243 x i8] c"(((2U|1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x04)) << 0) | (((((sizeof(struct drm_map) == sizeof(struct drm_map[1]) && sizeof(struct drm_map) < (1 << 14)) ? sizeof(struct drm_map) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DRM_IOCTL_GET_CLIENT\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DRM_IOCTL_GET_STATS\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DRM_IOCTL_SET_VERSION\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DRM_IOCTL_MODESET_CTL\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DRM_IOCTL_GEM_CLOSE\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DRM_IOCTL_GEM_FLINK\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DRM_IOCTL_GEM_OPEN\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DRM_IOCTL_GET_CAP\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DRM_IOCTL_SET_CLIENT_CAP\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DRM_IOCTL_SET_UNIQUE\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DRM_IOCTL_AUTH_MAGIC\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DRM_IOCTL_BLOCK\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DRM_IOCTL_UNBLOCK\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"(((1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x14)) << 0) | (((((sizeof(struct drm_control) == sizeof(struct drm_control[1]) && sizeof(struct drm_control) < (1 << 14)) ? sizeof(struct drm_control) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", [64 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [243 x i8], [45 x i8] } { [243 x i8] c"(((2U|1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x15)) << 0) | (((((sizeof(struct drm_map) == sizeof(struct drm_map[1]) && sizeof(struct drm_map) < (1 << 14)) ? sizeof(struct drm_map) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [263 x i8], [89 x i8] } { [263 x i8] c"(((2U|1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x16)) << 0) | (((((sizeof(struct drm_buf_desc) == sizeof(struct drm_buf_desc[1]) && sizeof(struct drm_buf_desc) < (1 << 14)) ? sizeof(struct drm_buf_desc) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", [89 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [260 x i8], [92 x i8] } { [260 x i8] c"(((1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x17)) << 0) | (((((sizeof(struct drm_buf_desc) == sizeof(struct drm_buf_desc[1]) && sizeof(struct drm_buf_desc) < (1 << 14)) ? sizeof(struct drm_buf_desc) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", [92 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [263 x i8], [89 x i8] } { [263 x i8] c"(((2U|1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x18)) << 0) | (((((sizeof(struct drm_buf_info) == sizeof(struct drm_buf_info[1]) && sizeof(struct drm_buf_info) < (1 << 14)) ? sizeof(struct drm_buf_info) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", [89 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [259 x i8], [93 x i8] } { [259 x i8] c"(((2U|1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x19)) << 0) | (((((sizeof(struct drm_buf_map) == sizeof(struct drm_buf_map[1]) && sizeof(struct drm_buf_map) < (1 << 14)) ? sizeof(struct drm_buf_map) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", [93 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [260 x i8], [92 x i8] } { [260 x i8] c"(((1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x1a)) << 0) | (((((sizeof(struct drm_buf_free) == sizeof(struct drm_buf_free[1]) && sizeof(struct drm_buf_free) < (1 << 14)) ? sizeof(struct drm_buf_free) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", [92 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [240 x i8], [48 x i8] } { [240 x i8] c"(((1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x1b)) << 0) | (((((sizeof(struct drm_map) == sizeof(struct drm_map[1]) && sizeof(struct drm_map) < (1 << 14)) ? sizeof(struct drm_map) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", [48 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [276 x i8], [76 x i8] } { [276 x i8] c"(((1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x1c)) << 0) | (((((sizeof(struct drm_ctx_priv_map) == sizeof(struct drm_ctx_priv_map[1]) && sizeof(struct drm_ctx_priv_map) < (1 << 14)) ? sizeof(struct drm_ctx_priv_map) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", [76 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [279 x i8], [73 x i8] } { [279 x i8] c"(((2U|1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x1d)) << 0) | (((((sizeof(struct drm_ctx_priv_map) == sizeof(struct drm_ctx_priv_map[1]) && sizeof(struct drm_ctx_priv_map) < (1 << 14)) ? sizeof(struct drm_ctx_priv_map) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", [73 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DRM_IOCTL_SET_MASTER\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DRM_IOCTL_DROP_MASTER\00", [42 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [243 x i8], [45 x i8] } { [243 x i8] c"(((2U|1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x20)) << 0) | (((((sizeof(struct drm_ctx) == sizeof(struct drm_ctx[1]) && sizeof(struct drm_ctx) < (1 << 14)) ? sizeof(struct drm_ctx) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [243 x i8], [45 x i8] } { [243 x i8] c"(((2U|1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x21)) << 0) | (((((sizeof(struct drm_ctx) == sizeof(struct drm_ctx[1]) && sizeof(struct drm_ctx) < (1 << 14)) ? sizeof(struct drm_ctx) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [240 x i8], [48 x i8] } { [240 x i8] c"(((1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x22)) << 0) | (((((sizeof(struct drm_ctx) == sizeof(struct drm_ctx[1]) && sizeof(struct drm_ctx) < (1 << 14)) ? sizeof(struct drm_ctx) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", [48 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [243 x i8], [45 x i8] } { [243 x i8] c"(((2U|1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x23)) << 0) | (((((sizeof(struct drm_ctx) == sizeof(struct drm_ctx[1]) && sizeof(struct drm_ctx) < (1 << 14)) ? sizeof(struct drm_ctx) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [240 x i8], [48 x i8] } { [240 x i8] c"(((1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x24)) << 0) | (((((sizeof(struct drm_ctx) == sizeof(struct drm_ctx[1]) && sizeof(struct drm_ctx) < (1 << 14)) ? sizeof(struct drm_ctx) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", [48 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [240 x i8], [48 x i8] } { [240 x i8] c"(((1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x25)) << 0) | (((((sizeof(struct drm_ctx) == sizeof(struct drm_ctx[1]) && sizeof(struct drm_ctx) < (1 << 14)) ? sizeof(struct drm_ctx) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", [48 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [259 x i8], [93 x i8] } { [259 x i8] c"(((2U|1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x26)) << 0) | (((((sizeof(struct drm_ctx_res) == sizeof(struct drm_ctx_res[1]) && sizeof(struct drm_ctx_res) < (1 << 14)) ? sizeof(struct drm_ctx_res) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", [93 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DRM_IOCTL_ADD_DRAW\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DRM_IOCTL_RM_DRAW\00", [46 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [243 x i8], [45 x i8] } { [243 x i8] c"(((2U|1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x29)) << 0) | (((((sizeof(struct drm_dma) == sizeof(struct drm_dma[1]) && sizeof(struct drm_dma) < (1 << 14)) ? sizeof(struct drm_dma) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [244 x i8], [44 x i8] } { [244 x i8] c"(((1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x2a)) << 0) | (((((sizeof(struct drm_lock) == sizeof(struct drm_lock[1]) && sizeof(struct drm_lock) < (1 << 14)) ? sizeof(struct drm_lock) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", [44 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [244 x i8], [44 x i8] } { [244 x i8] c"(((1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x2b)) << 0) | (((((sizeof(struct drm_lock) == sizeof(struct drm_lock[1]) && sizeof(struct drm_lock) < (1 << 14)) ? sizeof(struct drm_lock) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", [44 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DRM_IOCTL_FINISH\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DRM_IOCTL_PRIME_HANDLE_TO_FD\00", [35 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DRM_IOCTL_PRIME_FD_TO_HANDLE\00", [35 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [287 x i8], [65 x i8] } { [287 x i8] c"(((2U|1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x38)) << 0) | (((((sizeof(struct drm_scatter_gather) == sizeof(struct drm_scatter_gather[1]) && sizeof(struct drm_scatter_gather) < (1 << 14)) ? sizeof(struct drm_scatter_gather) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", [65 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [284 x i8], [68 x i8] } { [284 x i8] c"(((1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x39)) << 0) | (((((sizeof(struct drm_scatter_gather) == sizeof(struct drm_scatter_gather[1]) && sizeof(struct drm_scatter_gather) < (1 << 14)) ? sizeof(struct drm_scatter_gather) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", [68 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DRM_IOCTL_WAIT_VBLANK\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DRM_IOCTL_CRTC_GET_SEQUENCE\00", [36 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DRM_IOCTL_CRTC_QUEUE_SEQUENCE\00", [34 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DRM_IOCTL_UPDATE_DRAW\00", [42 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DRM_IOCTL_MODE_GETRESOURCES\00", [36 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DRM_IOCTL_MODE_GETCRTC\00", [41 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DRM_IOCTL_MODE_SETCRTC\00", [41 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DRM_IOCTL_MODE_CURSOR\00", [42 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DRM_IOCTL_MODE_GETGAMMA\00", [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DRM_IOCTL_MODE_SETGAMMA\00", [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DRM_IOCTL_MODE_GETENCODER\00", [38 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DRM_IOCTL_MODE_GETCONNECTOR\00", [36 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DRM_IOCTL_MODE_ATTACHMODE\00", [38 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DRM_IOCTL_MODE_DETACHMODE\00", [38 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DRM_IOCTL_MODE_GETPROPERTY\00", [37 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DRM_IOCTL_MODE_SETPROPERTY\00", [37 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DRM_IOCTL_MODE_GETPROPBLOB\00", [37 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DRM_IOCTL_MODE_GETFB\00", [43 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DRM_IOCTL_MODE_ADDFB\00", [43 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DRM_IOCTL_MODE_RMFB\00", [44 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DRM_IOCTL_MODE_PAGE_FLIP\00", [39 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DRM_IOCTL_MODE_DIRTYFB\00", [41 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DRM_IOCTL_MODE_CREATE_DUMB\00", [37 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DRM_IOCTL_MODE_MAP_DUMB\00", [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DRM_IOCTL_MODE_DESTROY_DUMB\00", [36 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DRM_IOCTL_MODE_GETPLANERESOURCES\00", [63 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DRM_IOCTL_MODE_GETPLANE\00", [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DRM_IOCTL_MODE_SETPLANE\00", [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DRM_IOCTL_MODE_ADDFB2\00", [42 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DRM_IOCTL_MODE_OBJ_GETPROPERTIES\00", [63 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DRM_IOCTL_MODE_OBJ_SETPROPERTY\00", [33 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DRM_IOCTL_MODE_CURSOR2\00", [41 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DRM_IOCTL_MODE_ATOMIC\00", [42 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DRM_IOCTL_MODE_CREATEPROPBLOB\00", [34 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DRM_IOCTL_MODE_DESTROYPROPBLOB\00", [33 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DRM_IOCTL_SYNCOBJ_CREATE\00", [39 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DRM_IOCTL_SYNCOBJ_DESTROY\00", [38 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DRM_IOCTL_SYNCOBJ_HANDLE_TO_FD\00", [33 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DRM_IOCTL_SYNCOBJ_FD_TO_HANDLE\00", [33 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DRM_IOCTL_SYNCOBJ_WAIT\00", [41 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DRM_IOCTL_SYNCOBJ_RESET\00", [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DRM_IOCTL_SYNCOBJ_SIGNAL\00", [39 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DRM_IOCTL_MODE_CREATE_LEASE\00", [36 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DRM_IOCTL_MODE_LIST_LESSEES\00", [36 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DRM_IOCTL_MODE_GET_LEASE\00", [39 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DRM_IOCTL_MODE_REVOKE_LEASE\00", [36 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DRM_IOCTL_SYNCOBJ_TIMELINE_WAIT\00", [32 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DRM_IOCTL_SYNCOBJ_QUERY\00", [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DRM_IOCTL_SYNCOBJ_TRANSFER\00", [37 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DRM_IOCTL_SYNCOBJ_TIMELINE_SIGNAL\00", [62 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DRM_IOCTL_MODE_GETFB2\00", [42 x i8] zeroinitializer }, align 32
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@.str.106 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/gpu/drm/drm_ioctl.c\00", [36 x i8] zeroinitializer }, align 32
@drm_setclientcap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.106, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016broken atomic modeset userspace detected, disabling atomic\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"drm_setclientcap\00", [47 x i8] zeroinitializer }, align 32
@drm_setclientcap._entry_ptr = internal global ptr @drm_setclientcap._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967295]
@__sancov_gen_cov_switch_values.109 = internal global [6 x i64] [i64 4, i64 64, i64 5, i64 6, i64 19, i64 20]
@__sancov_gen_cov_switch_values.110 = internal global [12 x i64] [i64 10, i64 64, i64 1, i64 2, i64 3, i64 4, i64 7, i64 8, i64 9, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.111 = internal global [7 x i64] [i64 5, i64 64, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 443, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [11 x i8] c"drm_ioctls\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 564, i32 36 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 853, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 862, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 891, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 899, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 230, i32 6 }
@___asan_gen_.134 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 214, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 174, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 565, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 566, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 567, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 568, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 571, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 573, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 574, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 577, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 640, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 644, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 645, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 646, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 575, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 576, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 579, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 582, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 580, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 581, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 615, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 584, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 609, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 610, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 611, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 612, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 613, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 585, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 587, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 588, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 590, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 591, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 593, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 594, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 595, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 596, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 597, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 598, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 599, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 601, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 602, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 614, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 604, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 605, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 607, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 650, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 651, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 635, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 636, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 638, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 707, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 708, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 642, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 648, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 654, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 655, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 658, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 659, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 660, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 661, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 662, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 663, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 664, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 665, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 666, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 667, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 668, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 670, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 672, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 673, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 674, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 675, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 676, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 677, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 653, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 656, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 657, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 671, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 678, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 679, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 680, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 681, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 682, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 683, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 685, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 687, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 689, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 691, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 695, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 699, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 701, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 709, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 710, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 711, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 712, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 697, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 705, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 693, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 703, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 669, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 160, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.442 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.443 = private constant [31 x i8] c"../drivers/gpu/drm/drm_ioctl.c\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 341, i32 4 }
@llvm.compiler.used = appending global [117 x ptr] [ptr @__ksymtab_drm_invalid_op, ptr @__ksymtab_drm_ioctl, ptr @__ksymtab_drm_ioctl_flags, ptr @__ksymtab_drm_ioctl_kernel, ptr @__ksymtab_drm_noop, ptr @drm_setclientcap._entry, ptr @drm_setclientcap._entry_ptr, ptr @.str, ptr @drm_ioctls, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108], section "llvm.metadata"
@0 = internal global [111 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_ioctls to i32), i32 3312, i32 4128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 267, i32 352, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 243, i32 288, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 243, i32 288, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 263, i32 352, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 260, i32 352, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 263, i32 352, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 259, i32 352, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 260, i32 352, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 276, i32 352, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 279, i32 352, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 243, i32 288, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 243, i32 288, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 243, i32 288, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 259, i32 352, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 243, i32 288, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 287, i32 352, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_setclientcap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_getunique(ptr noundef %dev, ptr nocapture noundef %data, ptr nocapture noundef readonly %file_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %master_mutex = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %master_mutex, i32 noundef 0) #11
  %master1 = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 8
  %0 = ptrtoint ptr %master1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master1, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %unique_len2 = getelementptr inbounds %struct.drm_master, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %unique_len2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %unique_len2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp ult i32 %3, %5
  br i1 %cmp.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then:                                          ; preds = %entry
  %unique = getelementptr inbounds %struct.drm_unique, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %unique to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %unique, align 4
  %unique3 = getelementptr inbounds %struct.drm_master, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %unique3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unique3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp9.i.i = icmp slt i32 %5, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.then
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !242

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then
  tail call void @__check_object_size(ptr noundef %9, i32 noundef %5, i1 noundef zeroext true) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 174) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %7, i32 %5, i32 -1226833920) #14, !srcloc !243
  %asmresult.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %9, i32 noundef %5) #11
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %7, ptr noundef %9, i32 noundef %5) #11
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %5, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %5, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool.not, label %copy_to_user.exit.if.end7_crit_edge, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

copy_to_user.exit.if.end7_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.end7:                                          ; preds = %copy_to_user.exit.if.end7_crit_edge, %entry.if.end7_crit_edge
  %11 = ptrtoint ptr %unique_len2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %unique_len2, align 4
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %copy_to_user.exit.cleanup_crit_edge, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %copy_to_user.exit.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %master_mutex) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_getclient(ptr nocapture readnone %dev, ptr nocapture noundef %data, ptr nocapture noundef readonly %file_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %file_priv to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %file_priv, align 4, !range !244
  %4 = zext i8 %3 to i32
  %auth = getelementptr inbounds %struct.drm_client, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %auth to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %auth, align 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !232) #11
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %call.i = tail call i32 @__task_pid_nr_ns(ptr noundef %9, i32 noundef 0, ptr noundef null) #11
  %pid = getelementptr inbounds %struct.drm_client, ptr %data, i32 0, i32 2
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call.i, ptr %pid, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @overflowuid to i32))
  %11 = load i32, ptr @overflowuid, align 4
  %uid = getelementptr inbounds %struct.drm_client, ptr %data, i32 0, i32 3
  %12 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %uid, align 4
  %magic = getelementptr inbounds %struct.drm_client, ptr %data, i32 0, i32 4
  %13 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %magic, align 4
  %iocs = getelementptr inbounds %struct.drm_client, ptr %data, i32 0, i32 5
  %14 = ptrtoint ptr %iocs to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %iocs, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_noop(ptr nocapture readnone %dev, ptr nocapture readnone %data, ptr nocapture readnone %file_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @drm_invalid_op(ptr nocapture readnone %dev, ptr nocapture readnone %data, ptr nocapture readnone %file_priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_version(ptr nocapture noundef readonly %dev, ptr nocapture noundef %data, ptr nocapture readnone %file_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %major = getelementptr inbounds %struct.drm_driver, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %major to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %major, align 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %data, align 4
  %5 = load ptr, ptr %driver, align 4
  %minor = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %minor, align 4
  %version_minor = getelementptr inbounds %struct.drm_version, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %version_minor to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %version_minor, align 4
  %9 = load ptr, ptr %driver, align 4
  %patchlevel = getelementptr inbounds %struct.drm_driver, ptr %9, i32 0, i32 20
  %10 = ptrtoint ptr %patchlevel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %patchlevel, align 4
  %version_patchlevel = getelementptr inbounds %struct.drm_version, ptr %data, i32 0, i32 2
  %12 = ptrtoint ptr %version_patchlevel to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %version_patchlevel, align 4
  %name = getelementptr inbounds %struct.drm_version, ptr %data, i32 0, i32 4
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 4
  %name_len = getelementptr inbounds %struct.drm_version, ptr %data, i32 0, i32 3
  %15 = load ptr, ptr %driver, align 4
  %name4 = getelementptr inbounds %struct.drm_driver, ptr %15, i32 0, i32 21
  %16 = ptrtoint ptr %name4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name4, align 4
  %call = tail call fastcc i32 @drm_copy_field(ptr noundef %14, ptr noundef %name_len, ptr noundef %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end:                                           ; preds = %entry
  %date = getelementptr inbounds %struct.drm_version, ptr %data, i32 0, i32 6
  %18 = ptrtoint ptr %date to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %date, align 4
  %date_len = getelementptr inbounds %struct.drm_version, ptr %data, i32 0, i32 5
  %20 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver, align 4
  %date6 = getelementptr inbounds %struct.drm_driver, ptr %21, i32 0, i32 23
  %22 = ptrtoint ptr %date6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %date6, align 4
  %call7 = tail call fastcc i32 @drm_copy_field(ptr noundef %19, ptr noundef %date_len, ptr noundef %23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %desc = getelementptr inbounds %struct.drm_version, ptr %data, i32 0, i32 8
  %24 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %desc, align 4
  %desc_len = getelementptr inbounds %struct.drm_version, ptr %data, i32 0, i32 7
  %26 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver, align 4
  %desc11 = getelementptr inbounds %struct.drm_driver, ptr %27, i32 0, i32 22
  %28 = ptrtoint ptr %desc11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %desc11, align 4
  %call12 = tail call fastcc i32 @drm_copy_field(ptr noundef %25, ptr noundef %desc_len, ptr noundef %29)
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end.if.end13_crit_edge, %entry.if.end13_crit_edge
  %err.1 = phi i32 [ %call7, %if.end.if.end13_crit_edge ], [ %call12, %if.then9 ], [ %call, %entry.if.end13_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @drm_copy_field(ptr noundef %buf, ptr nocapture noundef %buf_len, ptr noundef %value) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %value) #15
  %0 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buf_len, align 4
  %2 = tail call i32 @llvm.umin.i32(i32 %call, i32 %1)
  %3 = ptrtoint ptr %buf_len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call, ptr %buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %tobool2.not = icmp eq ptr %buf, null
  %or.cond = or i1 %tobool2.not, %tobool.not
  br i1 %or.cond, label %entry.if.end8_crit_edge, label %if.end8.i.i

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end8.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp9.i.i = icmp slt i32 %2, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !242

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end8.i.i
  tail call void @__check_object_size(ptr noundef %value, i32 noundef %2, i1 noundef zeroext true) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 174) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.i.i.i.cleanup_crit_edge, label %if.end.i.i

if.then.i.i.i.cleanup_crit_edge:                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %buf, i32 %2, i32 -1226833920) #14, !srcloc !243
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %value, i32 noundef %2) #11
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef nonnull %buf, ptr noundef %value, i32 noundef %2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool5.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool5.not, label %copy_to_user.exit.if.end8_crit_edge, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

copy_to_user.exit.if.end8_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end8:                                          ; preds = %copy_to_user.exit.if.end8_crit_edge, %entry.if.end8_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %copy_to_user.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.then.i.i.i.cleanup_crit_edge, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %if.then.i.i.i.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_ioctl_kernel(ptr nocapture noundef readonly %file, ptr nocapture noundef readonly %func, ptr noundef %kdata, i32 noundef %flags) #0 align 64 {
entry:
  %idx.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %minor = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %minor, align 4
  %dev1 = getelementptr inbounds %struct.drm_minor, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx.i) #11
  %6 = ptrtoint ptr %idx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %idx.i, align 4, !annotation !245
  %call.i = call zeroext i1 @drm_dev_enter(ptr noundef %5, ptr noundef nonnull %idx.i) #11
  br i1 %call.i, label %if.end, label %drm_dev_is_unplugged.exit.thread

drm_dev_is_unplugged.exit.thread:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx.i) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx.i, align 4
  call void @drm_dev_exit(i32 noundef %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx.i) #11
  %and.i = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %land.rhs.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end
  %call.i34 = call zeroext i1 @capable(i32 noundef 21) #11
  br i1 %call.i34, label %land.rhs.i.if.end.i_crit_edge, label %land.rhs.i.cleanup_crit_edge, !prof !242

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i:                                         ; preds = %land.rhs.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %and4.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end19.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end19.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %9 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %minor, align 4
  %type.i.i = getelementptr inbounds %struct.drm_minor, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp.i.i = icmp eq i32 %12, 2
  br i1 %cmp.i.i, label %land.lhs.true.i.if.end19.i_crit_edge, label %land.rhs7.i

land.lhs.true.i.if.end19.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

land.rhs7.i:                                      ; preds = %land.lhs.true.i
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %1, align 4, !range !244
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool8.not.i = icmp eq i8 %14, 0
  br i1 %tobool8.not.i, label %land.rhs7.i.cleanup_crit_edge, label %land.rhs7.i.if.end19.i_crit_edge, !prof !246

land.rhs7.i.if.end19.i_crit_edge:                 ; preds = %land.rhs7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

land.rhs7.i.cleanup_crit_edge:                    ; preds = %land.rhs7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end19.i:                                       ; preds = %land.rhs7.i.if.end19.i_crit_edge, %land.lhs.true.i.if.end19.i_crit_edge, %if.end.i.if.end19.i_crit_edge
  %and20.i = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %if.end19.i.if.end34.i_crit_edge, label %land.rhs22.i

if.end19.i.if.end34.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34.i

land.rhs22.i:                                     ; preds = %if.end19.i
  %call23.i = call zeroext i1 @drm_is_current_master(ptr noundef %1) #11
  br i1 %call23.i, label %land.rhs22.i.if.end34.i_crit_edge, label %land.rhs22.i.cleanup_crit_edge, !prof !242

land.rhs22.i.cleanup_crit_edge:                   ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.rhs22.i.if.end34.i_crit_edge:                ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34.i

if.end34.i:                                       ; preds = %land.rhs22.i.if.end34.i_crit_edge, %if.end19.i.if.end34.i_crit_edge
  %and35.i = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %land.end39.i, label %if.end34.i.if.end6_crit_edge

if.end34.i.if.end6_crit_edge:                     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

land.end39.i:                                     ; preds = %if.end34.i
  %15 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %minor, align 4
  %type.i56.i = getelementptr inbounds %struct.drm_minor, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %type.i56.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type.i56.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp.i57.i = icmp eq i32 %18, 2
  br i1 %cmp.i57.i, label %land.end39.i.cleanup_crit_edge, label %land.end39.i.if.end6_crit_edge

land.end39.i.if.end6_crit_edge:                   ; preds = %land.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

land.end39.i.cleanup_crit_edge:                   ; preds = %land.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %land.end39.i.if.end6_crit_edge, %if.end34.i.if.end6_crit_edge
  %driver.i.i = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 4
  %19 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i = getelementptr inbounds %struct.drm_driver, ptr %20, i32 0, i32 24
  %21 = ptrtoint ptr %driver_features.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %driver_features.i.i, align 4
  %driver_features1.i.i = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 10
  %23 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i = and i32 %22, 67108864
  %and2.i.i = and i32 %and.i.i, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %and2.i.i)
  %cmp.i.i35 = icmp eq i32 %and2.i.i, 67108864
  br i1 %cmp.i.i35, label %lor.lhs.false, label %if.end6.if.then17_crit_edge, !prof !246

if.end6.if.then17_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

lor.lhs.false:                                    ; preds = %if.end6
  %and = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.else, label %lor.lhs.false.if.then17_crit_edge

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %if.end6.if.then17_crit_edge
  %call18 = call i32 %func(ptr noundef %5, ptr noundef %kdata, ptr noundef %1) #11
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  call void @mutex_lock_nested(ptr noundef nonnull @drm_global_mutex, i32 noundef 0) #11
  %call19 = call i32 %func(ptr noundef %5, ptr noundef %kdata, ptr noundef %1) #11
  call void @mutex_unlock(ptr noundef nonnull @drm_global_mutex) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then17, %land.end39.i.cleanup_crit_edge, %land.rhs22.i.cleanup_crit_edge, %land.rhs7.i.cleanup_crit_edge, %land.rhs.i.cleanup_crit_edge, %drm_dev_is_unplugged.exit.thread
  %retval.0 = phi i32 [ %call18, %if.then17 ], [ %call19, %if.else ], [ -19, %drm_dev_is_unplugged.exit.thread ], [ -13, %land.rhs.i.cleanup_crit_edge ], [ -13, %land.rhs7.i.cleanup_crit_edge ], [ -13, %land.rhs22.i.cleanup_crit_edge ], [ -13, %land.end39.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_ioctl(ptr nocapture noundef readonly %filp, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %idx.i = alloca i32, align 4
  %stack_kdata = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %and = and i32 %cmd, 255
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %stack_kdata) #11
  %2 = call ptr @memset(ptr %stack_kdata, i32 255, i32 128)
  %minor = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %minor, align 4
  %dev1 = getelementptr inbounds %struct.drm_minor, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx.i) #11
  %7 = ptrtoint ptr %idx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %idx.i, align 4, !annotation !245
  %call.i = call zeroext i1 @drm_dev_enter(ptr noundef %6, ptr noundef nonnull %idx.i) #11
  br i1 %call.i, label %if.end, label %drm_dev_is_unplugged.exit.thread

drm_dev_is_unplugged.exit.thread:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx.i) #11
  br label %cleanup136

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx.i, align 4
  call void @drm_dev_exit(i32 noundef %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx.i) #11
  %10 = and i32 %cmd, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 25600, i32 %10)
  %cmp.not = icmp eq i32 %10, 25600
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup136_crit_edge

if.end.cleanup136_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup136

if.end5:                                          ; preds = %if.end
  %11 = add nsw i32 %and, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %11)
  %12 = icmp ult i32 %11, 96
  br i1 %12, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end5
  %driver = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 4
  %13 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver, align 4
  %num_ioctls = getelementptr inbounds %struct.drm_driver, ptr %14, i32 0, i32 26
  %15 = ptrtoint ptr %num_ioctls to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_ioctls, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %16)
  %cmp9.not = icmp ult i32 %11, %16
  br i1 %cmp9.not, label %cleanup.thread, label %if.then8.if.then104_crit_edge

if.then8.if.then104_crit_edge:                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then104

cleanup.thread:                                   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %17 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %11, i32 %16) #11, !srcloc !247
  %and18 = and i32 %17, %11
  %18 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver, align 4
  %ioctls = getelementptr inbounds %struct.drm_driver, ptr %19, i32 0, i32 25
  %20 = ptrtoint ptr %ioctls to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioctls, align 4
  %arrayidx = getelementptr %struct.drm_ioctl_desc, ptr %21, i32 %and18
  br label %if.end36

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 206, i32 %and)
  %cmp20 = icmp ugt i32 %and, 206
  br i1 %cmp20, label %if.else.if.then104_crit_edge, label %if.end22

if.else.if.then104_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then104

if.end22:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %22 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %and, i32 207) #11, !srcloc !247
  %and34 = and i32 %22, %and
  %arrayidx35 = getelementptr [207 x %struct.drm_ioctl_desc], ptr @drm_ioctls, i32 0, i32 %and34
  br label %if.end36

if.end36:                                         ; preds = %if.end22, %cleanup.thread
  %nr.0 = phi i32 [ %and34, %if.end22 ], [ %and, %cleanup.thread ]
  %ioctl.1 = phi ptr [ %arrayidx35, %if.end22 ], [ %arrayidx, %cleanup.thread ]
  %23 = ptrtoint ptr %ioctl.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ioctl.1, align 4
  %shr38 = lshr i32 %24, 16
  %and39 = and i32 %shr38, 16383
  %shr40 = lshr i32 %cmd, 16
  %and41 = and i32 %shr40, 16383
  %and43 = and i32 %24, %cmd
  %and44 = and i32 %and43, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %cmp45 = icmp eq i32 %and44, 0
  %spec.select201 = select i1 %cmp45, i32 0, i32 %and41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %cmp51.inv = icmp slt i32 %and43, 0
  %out_size.0 = select i1 %cmp51.inv, i32 %and41, i32 0
  %25 = call i32 @llvm.umax.i32(i32 %spec.select201, i32 %out_size.0)
  %26 = call i32 @llvm.umax.i32(i32 %25, i32 %and39)
  %27 = call i32 @llvm.read_register.i32(metadata !232) #11
  %and.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 101
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 68
  %31 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pid.i, align 8
  %33 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %minor, align 4
  %kdev = getelementptr inbounds %struct.drm_minor, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %kdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %kdev, align 4
  %devt = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 29
  %37 = ptrtoint ptr %devt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %devt, align 8
  %39 = lshr i32 %38, 12
  %shl.i = and i32 %39, 65280
  %.masked = and i32 %38, 65535
  %conv = or i32 %shl.i, %.masked
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %1, align 4, !range !244
  %42 = zext i8 %41 to i32
  %name = getelementptr inbounds %struct.drm_ioctl_desc, ptr %ioctl.1, i32 0, i32 3
  %43 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef %comm, i32 noundef %32, i32 noundef %conv, i32 noundef %42, ptr noundef %44) #11
  %func70 = getelementptr inbounds %struct.drm_ioctl_desc, ptr %ioctl.1, i32 0, i32 2
  %45 = ptrtoint ptr %func70 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %func70, align 4
  %tobool71.not = icmp eq ptr %46, null
  br i1 %tobool71.not, label %if.then75, label %if.end76, !prof !246

if.then75:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2) #11
  br label %err_i1

if.end76:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %26)
  %cmp77 = icmp ult i32 %26, 129
  br i1 %cmp77, label %if.end76.if.end86_crit_edge, label %if.end8.i

if.end76.if.end86_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end86

if.end8.i:                                        ; preds = %if.end76
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %26, i32 noundef 3264) #16
  %tobool83.not = icmp eq ptr %call9.i, null
  br i1 %tobool83.not, label %if.end8.i.err_i1_crit_edge, label %if.end8.i.if.end86_crit_edge

if.end8.i.if.end86_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end86

if.end8.i.err_i1_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_i1

if.end86:                                         ; preds = %if.end8.i.if.end86_crit_edge, %if.end76.if.end86_crit_edge
  %kdata.0 = phi ptr [ %call9.i, %if.end8.i.if.end86_crit_edge ], [ %stack_kdata, %if.end76.if.end86_crit_edge ]
  %47 = inttoptr i32 %arg to ptr
  call void @__check_object_size(ptr noundef nonnull %kdata.0, i32 noundef %spec.select201, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.end86.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end86.if.end.i.i_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end86
  %48 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %47, i32 %spec.select201, i32 -1226833920) #14, !srcloc !248
  %asmresult.i.i = extractvalue { i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !242

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %kdata.0, i32 noundef %spec.select201) #11
  %49 = call i32 @llvm.read_register.i32(metadata !232) #11
  %and.i.i.i.i.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 4
  %51 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !249
  %and.i.i.i.i = and i32 %51, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !250
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !251
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %kdata.0, ptr noundef %47, i32 noundef %spec.select201) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %51) #11, !srcloc !250
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !251
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end86.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %spec.select201, %if.end86.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %spec.select201, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end91, label %if.then11.i.i, !prof !242

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %spec.select201, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %kdata.0, i32 %sub.i.i
  %52 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %err_i1

if.end91:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %spec.select201)
  %cmp92 = icmp ugt i32 %26, %spec.select201
  br i1 %cmp92, label %if.then94, label %if.end91.if.end96_crit_edge

if.end91.if.end96_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end96

if.then94:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %kdata.0, i32 %spec.select201
  %sub95 = sub nsw i32 %26, %spec.select201
  %53 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub95)
  br label %if.end96

if.end96:                                         ; preds = %if.then94, %if.end91.if.end96_crit_edge
  %flags = getelementptr inbounds %struct.drm_ioctl_desc, ptr %ioctl.1, i32 0, i32 1
  %54 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags, align 4
  %call97 = call i32 @drm_ioctl_kernel(ptr noundef %filp, ptr noundef nonnull %46, ptr noundef nonnull %kdata.0, i32 noundef %55)
  call void @__check_object_size(ptr noundef nonnull %kdata.0, i32 noundef %out_size.0, i1 noundef zeroext true) #11
  call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 174) #11
  %call.i.i214 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i214, label %if.end96.copy_to_user.exit_crit_edge, label %if.end.i.i218

if.end96.copy_to_user.exit_crit_edge:             ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.end.i.i218:                                    ; preds = %if.end96
  %56 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %47, i32 %out_size.0, i32 -1226833920) #14, !srcloc !243
  %asmresult.i.i216 = extractvalue { i32, i32 } %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i216)
  %cmp.i6.i217 = icmp eq i32 %asmresult.i.i216, 0
  br i1 %cmp.i6.i217, label %if.then2.i.i, label %if.end.i.i218.copy_to_user.exit_crit_edge

if.end.i.i218.copy_to_user.exit_crit_edge:        ; preds = %if.end.i.i218
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i218
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i219 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %kdata.0, i32 noundef %out_size.0) #11
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %47, ptr noundef nonnull %kdata.0, i32 noundef %out_size.0) #11
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i218.copy_to_user.exit_crit_edge, %if.end96.copy_to_user.exit_crit_edge
  %n.addr.0.i220 = phi i32 [ %out_size.0, %if.end96.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %out_size.0, %if.end.i.i218.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i220)
  %cmp99.not = icmp eq i32 %n.addr.0.i220, 0
  %spec.select202 = select i1 %cmp99.not, i32 %call97, i32 -14
  br label %err_i1

err_i1:                                           ; preds = %copy_to_user.exit, %if.then11.i.i, %if.end8.i.err_i1_crit_edge, %if.then75
  %kdata.1 = phi ptr [ null, %if.then75 ], [ null, %if.end8.i.err_i1_crit_edge ], [ %kdata.0, %copy_to_user.exit ], [ %kdata.0, %if.then11.i.i ]
  %retcode.0 = phi i32 [ -22, %if.then75 ], [ -12, %if.end8.i.err_i1_crit_edge ], [ %spec.select202, %copy_to_user.exit ], [ -14, %if.then11.i.i ]
  %tobool103.not = icmp eq ptr %ioctl.1, null
  br i1 %tobool103.not, label %err_i1.if.then104_crit_edge, label %err_i1.if.end120_crit_edge

err_i1.if.end120_crit_edge:                       ; preds = %err_i1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end120

err_i1.if.then104_crit_edge:                      ; preds = %err_i1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then104

if.then104:                                       ; preds = %err_i1.if.then104_crit_edge, %if.else.if.then104_crit_edge, %if.then8.if.then104_crit_edge
  %nr.1244 = phi i32 [ %nr.0, %err_i1.if.then104_crit_edge ], [ %and, %if.else.if.then104_crit_edge ], [ %and, %if.then8.if.then104_crit_edge ]
  %retcode.0243 = phi i32 [ %retcode.0, %err_i1.if.then104_crit_edge ], [ -22, %if.else.if.then104_crit_edge ], [ -22, %if.then8.if.then104_crit_edge ]
  %kdata.1241 = phi ptr [ %kdata.1, %err_i1.if.then104_crit_edge ], [ null, %if.else.if.then104_crit_edge ], [ null, %if.then8.if.then104_crit_edge ]
  %57 = call i32 @llvm.read_register.i32(metadata !232) #11
  %and.i226 = and i32 %57, -16384
  %58 = inttoptr i32 %and.i226 to ptr
  %task106 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %task106 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %task106, align 8
  %comm107 = getelementptr inbounds %struct.task_struct, ptr %60, i32 0, i32 101
  %pid.i227 = getelementptr inbounds %struct.task_struct, ptr %60, i32 0, i32 68
  %61 = ptrtoint ptr %pid.i227 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pid.i227, align 8
  %63 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %minor, align 4
  %kdev113 = getelementptr inbounds %struct.drm_minor, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %kdev113 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %kdev113, align 4
  %devt114 = getelementptr inbounds %struct.device, ptr %66, i32 0, i32 29
  %67 = ptrtoint ptr %devt114 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %devt114, align 8
  %69 = lshr i32 %68, 12
  %shl.i222 = and i32 %69, 65280
  %.masked245 = and i32 %68, 65535
  %conv116 = or i32 %shl.i222, %.masked245
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %1, align 4, !range !244
  %72 = zext i8 %71 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef %comm107, i32 noundef %62, i32 noundef %conv116, i32 noundef %72, i32 noundef %cmd, i32 noundef %nr.1244) #11
  br label %if.end120

if.end120:                                        ; preds = %if.then104, %err_i1.if.end120_crit_edge
  %retcode.0242 = phi i32 [ %retcode.0243, %if.then104 ], [ %retcode.0, %err_i1.if.end120_crit_edge ]
  %kdata.1240 = phi ptr [ %kdata.1241, %if.then104 ], [ %kdata.1, %err_i1.if.end120_crit_edge ]
  %cmp122.not = icmp eq ptr %kdata.1240, %stack_kdata
  br i1 %cmp122.not, label %if.end120.if.end125_crit_edge, label %if.then124

if.end120.if.end125_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end125

if.then124:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef %kdata.1240) #11
  br label %if.end125

if.end125:                                        ; preds = %if.then124, %if.end120.if.end125_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retcode.0242)
  %tobool126.not = icmp eq i32 %retcode.0242, 0
  br i1 %tobool126.not, label %if.end125.cleanup136_crit_edge, label %if.then127

if.end125.cleanup136_crit_edge:                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup136

if.then127:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #13
  %73 = call i32 @llvm.read_register.i32(metadata !232) #11
  %and.i228 = and i32 %73, -16384
  %74 = inttoptr i32 %and.i228 to ptr
  %task129 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %task129 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %task129, align 8
  %comm130 = getelementptr inbounds %struct.task_struct, ptr %76, i32 0, i32 101
  %pid.i229 = getelementptr inbounds %struct.task_struct, ptr %76, i32 0, i32 68
  %77 = ptrtoint ptr %pid.i229 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %pid.i229, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef %comm130, i32 noundef %78, i32 noundef %retcode.0242) #11
  br label %cleanup136

cleanup136:                                       ; preds = %if.then127, %if.end125.cleanup136_crit_edge, %if.end.cleanup136_crit_edge, %drm_dev_is_unplugged.exit.thread
  %retval.0 = phi i32 [ -25, %if.end.cleanup136_crit_edge ], [ %retcode.0242, %if.then127 ], [ 0, %if.end125.cleanup136_crit_edge ], [ -19, %drm_dev_is_unplugged.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %stack_kdata) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @drm_ioctl_flags(i32 noundef %nr, ptr nocapture noundef writeonly %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %nr, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %0)
  %1 = icmp ult i32 %0, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 206, i32 %nr)
  %cmp2 = icmp ugt i32 %nr, 206
  %or.cond14 = or i1 %cmp2, %1
  br i1 %or.cond14, label %entry.return_crit_edge, label %if.end4

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %nr, i32 207) #11, !srcloc !247
  %and = and i32 %2, %nr
  %flags8 = getelementptr [207 x %struct.drm_ioctl_desc], ptr @drm_ioctls, i32 0, i32 %and, i32 1
  %3 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags8, align 4
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %flags, align 4
  br label %return

return:                                           ; preds = %if.end4, %entry.return_crit_edge
  %.demorgan = or i1 %cmp2, %1
  %6 = xor i1 %.demorgan, true
  ret i1 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dev_enter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_is_current_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_getmagic(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_irq_by_busid(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_getmap_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @drm_getstats(ptr nocapture noundef readnone %dev, ptr nocapture noundef writeonly %data, ptr nocapture noundef readnone %file_priv) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %data, i32 0, i32 124)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drm_setversion(ptr noundef %dev, ptr nocapture noundef %data, ptr nocapture noundef readonly %file_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %master_mutex = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %master_mutex, i32 noundef 0) #11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.done_crit_edge [
    i32 -1, label %entry.if.end19_crit_edge
    i32 1, label %lor.lhs.false
  ]

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

lor.lhs.false:                                    ; preds = %entry
  %drm_di_minor = getelementptr inbounds %struct.drm_set_version, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %drm_di_minor to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %drm_di_minor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %5 = icmp ugt i32 %4, 4
  br i1 %5, label %lor.lhs.false.done_crit_edge, label %if.end

lor.lhs.false.done_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end:                                           ; preds = %lor.lhs.false
  %or = or i32 %4, 65536
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev, align 4
  %8 = tail call i32 @llvm.smax.i32(i32 %or, i32 %7)
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %dev, align 4
  %10 = ptrtoint ptr %drm_di_minor to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %drm_di_minor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp14 = icmp sgt i32 %11, 0
  br i1 %cmp14, label %if.then15, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then15:                                        ; preds = %if.end
  %master1.i = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 8
  %12 = ptrtoint ptr %master1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %master1.i, align 4
  %unique.i = getelementptr inbounds %struct.drm_master, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %unique.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %unique.i, align 4
  %cmp.not.i = icmp eq ptr %15, null
  br i1 %cmp.not.i, label %if.then15.if.end.i_crit_edge, label %if.then.i

if.then15.if.end.i_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %15) #11
  %16 = ptrtoint ptr %unique.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %unique.i, align 4
  %unique_len.i.i = getelementptr inbounds %struct.drm_master, ptr %13, i32 0, i32 3
  %17 = ptrtoint ptr %unique_len.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %unique_len.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then15.if.end.i_crit_edge
  %dev2.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %18 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev2.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end.i.if.else.i_crit_edge, label %land.lhs.true.i

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %bus.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i, align 8
  %cmp4.i = icmp eq ptr %21, @pci_bus_type
  br i1 %cmp4.i, label %if.then5.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then5.i:                                       ; preds = %land.lhs.true.i
  %call.i = tail call i32 @drm_pci_set_busid(ptr noundef %dev, ptr noundef %13) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %if.then5.i.if.end19_crit_edge, label %drm_set_busid.exit

if.then5.i.if.end19_crit_edge:                    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  %unique9.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 13
  %22 = ptrtoint ptr %unique9.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %unique9.i, align 4
  %tobool10.not.i = icmp eq ptr %23, null
  br i1 %tobool10.not.i, label %do.end.i, label %if.else.i.if.end26.i_crit_edge, !prof !246

if.else.i.if.end26.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i

do.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.106, i32 noundef 160, i32 noundef 9, ptr noundef null) #11
  br label %if.end26.i

if.end26.i:                                       ; preds = %do.end.i, %if.else.i.if.end26.i_crit_edge
  %24 = ptrtoint ptr %unique9.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %unique9.i, align 4
  %call34.i = tail call noalias ptr @kstrdup(ptr noundef %25, i32 noundef 3264) #11
  %26 = ptrtoint ptr %unique.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call34.i, ptr %unique.i, align 4
  %tobool37.not.i = icmp eq ptr %call34.i, null
  br i1 %tobool37.not.i, label %if.end26.i.if.end19_crit_edge, label %drm_set_busid.exit.thread73

if.end26.i.if.end19_crit_edge:                    ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

drm_set_busid.exit.thread73:                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %unique9.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %unique9.i, align 4
  %call40.i = tail call i32 @strlen(ptr noundef %28) #17
  %unique_len.i76 = getelementptr inbounds %struct.drm_master, ptr %13, i32 0, i32 3
  %29 = ptrtoint ptr %unique_len.i76 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call40.i, ptr %unique_len.i76, align 4
  br label %if.end19

drm_set_busid.exit:                               ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %unique.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %unique.i, align 4
  tail call void @kfree(ptr noundef %31) #11
  %32 = ptrtoint ptr %unique.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %unique.i, align 4
  %unique_len.i = getelementptr inbounds %struct.drm_master, ptr %13, i32 0, i32 3
  %33 = ptrtoint ptr %unique_len.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %unique_len.i, align 4
  br label %done

if.end19:                                         ; preds = %drm_set_busid.exit.thread73, %if.end26.i.if.end19_crit_edge, %if.then5.i.if.end19_crit_edge, %if.end.if.end19_crit_edge, %entry.if.end19_crit_edge
  %drm_dd_major = getelementptr inbounds %struct.drm_set_version, ptr %data, i32 0, i32 2
  %34 = ptrtoint ptr %drm_dd_major to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %drm_dd_major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %cmp20.not = icmp eq i32 %35, -1
  br i1 %cmp20.not, label %if.end19.done_crit_edge, label %if.then21

if.end19.done_crit_edge:                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.then21:                                        ; preds = %if.end19
  %driver = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %36 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %driver, align 4
  %major = getelementptr inbounds %struct.drm_driver, ptr %37, i32 0, i32 18
  %38 = ptrtoint ptr %major to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %major, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %39)
  %cmp23.not = icmp eq i32 %35, %39
  br i1 %cmp23.not, label %lor.lhs.false24, label %if.then21.if.then30_crit_edge

if.then21.if.then30_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then30

lor.lhs.false24:                                  ; preds = %if.then21
  %drm_dd_minor = getelementptr inbounds %struct.drm_set_version, ptr %data, i32 0, i32 3
  %40 = ptrtoint ptr %drm_dd_minor to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %drm_dd_minor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp25 = icmp slt i32 %41, 0
  br i1 %cmp25, label %lor.lhs.false24.if.then30_crit_edge, label %lor.lhs.false26

lor.lhs.false24.if.then30_crit_edge:              ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then30

lor.lhs.false26:                                  ; preds = %lor.lhs.false24
  %minor = getelementptr inbounds %struct.drm_driver, ptr %37, i32 0, i32 19
  %42 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %minor, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp29 = icmp sgt i32 %41, %43
  br i1 %cmp29, label %lor.lhs.false26.if.then30_crit_edge, label %lor.lhs.false26.done_crit_edge

lor.lhs.false26.done_crit_edge:                   ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

lor.lhs.false26.if.then30_crit_edge:              ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then30

if.then30:                                        ; preds = %lor.lhs.false26.if.then30_crit_edge, %lor.lhs.false24.if.then30_crit_edge, %if.then21.if.then30_crit_edge
  br label %done

done:                                             ; preds = %if.then30, %lor.lhs.false26.done_crit_edge, %if.end19.done_crit_edge, %drm_set_busid.exit, %lor.lhs.false.done_crit_edge, %entry.done_crit_edge
  %retcode.1 = phi i32 [ %call.i, %drm_set_busid.exit ], [ -22, %if.then30 ], [ 0, %lor.lhs.false26.done_crit_edge ], [ 0, %if.end19.done_crit_edge ], [ -22, %entry.done_crit_edge ], [ -22, %lor.lhs.false.done_crit_edge ]
  %44 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %data, align 4
  %drm_di_minor34 = getelementptr inbounds %struct.drm_set_version, ptr %data, i32 0, i32 1
  %45 = ptrtoint ptr %drm_di_minor34 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 4, ptr %drm_di_minor34, align 4
  %driver35 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %46 = ptrtoint ptr %driver35 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %driver35, align 4
  %major36 = getelementptr inbounds %struct.drm_driver, ptr %47, i32 0, i32 18
  %48 = ptrtoint ptr %major36 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %major36, align 4
  %drm_dd_major37 = getelementptr inbounds %struct.drm_set_version, ptr %data, i32 0, i32 2
  %50 = ptrtoint ptr %drm_dd_major37 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %drm_dd_major37, align 4
  %51 = load ptr, ptr %driver35, align 4
  %minor39 = getelementptr inbounds %struct.drm_driver, ptr %51, i32 0, i32 19
  %52 = ptrtoint ptr %minor39 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %minor39, align 4
  %drm_dd_minor40 = getelementptr inbounds %struct.drm_set_version, ptr %data, i32 0, i32 3
  %54 = ptrtoint ptr %drm_dd_minor40 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %drm_dd_minor40, align 4
  tail call void @mutex_unlock(ptr noundef %master_mutex) #11
  ret i32 %retcode.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_modeset_ctl_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_close_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_flink_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_open_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drm_getcap(ptr noundef readonly %dev, ptr nocapture noundef %data, ptr nocapture noundef readnone %file_priv) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.drm_get_cap, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %value, align 8
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %data, align 8
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.109)
  switch i64 %2, label %sw.epilog [
    i64 6, label %entry.cleanup.sink.split_crit_edge
    i64 5, label %sw.bb2
    i64 19, label %sw.bb10
    i64 20, label %sw.bb13
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %driver = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %3 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver, align 4
  %prime_fd_to_handle = getelementptr inbounds %struct.drm_driver, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %prime_fd_to_handle to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prime_fd_to_handle, align 4
  %tobool.not = icmp ne ptr %6, null
  %7 = zext i1 %tobool.not to i64
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %value, align 8
  %9 = load ptr, ptr %driver, align 4
  %prime_handle_to_fd = getelementptr inbounds %struct.drm_driver, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %prime_handle_to_fd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prime_handle_to_fd, align 4
  %tobool5.not = icmp eq ptr %11, null
  %12 = select i1 %tobool5.not, i64 0, i64 2
  %or9 = or i64 %12, %7
  br label %cleanup.sink.split

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %driver.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %13 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i = getelementptr inbounds %struct.drm_driver, ptr %14, i32 0, i32 24
  %15 = ptrtoint ptr %driver_features.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %driver_features.i.i, align 4
  %driver_features1.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 10
  %17 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i = and i32 %16, 32
  %and2.i.i = and i32 %and.i.i, %18
  %and2.i.i.lobit = lshr exact i32 %and2.i.i, 5
  %19 = zext i32 %and2.i.i.lobit to i64
  br label %cleanup.sink.split

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %driver.i.i122 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %20 = ptrtoint ptr %driver.i.i122 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver.i.i122, align 4
  %driver_features.i.i123 = getelementptr inbounds %struct.drm_driver, ptr %21, i32 0, i32 24
  %22 = ptrtoint ptr %driver_features.i.i123 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %driver_features.i.i123, align 4
  %driver_features1.i.i124 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 10
  %24 = ptrtoint ptr %driver_features1.i.i124 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %driver_features1.i.i124, align 4
  %and.i.i125 = and i32 %23, 64
  %and2.i.i126 = and i32 %and.i.i125, %25
  %and2.i.i126.lobit = lshr exact i32 %and2.i.i126, 6
  %26 = zext i32 %and2.i.i126.lobit to i64
  br label %cleanup.sink.split

sw.epilog:                                        ; preds = %entry
  %driver.i.i128 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %27 = ptrtoint ptr %driver.i.i128 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %driver.i.i128, align 4
  %driver_features.i.i129 = getelementptr inbounds %struct.drm_driver, ptr %28, i32 0, i32 24
  %29 = ptrtoint ptr %driver_features.i.i129 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %driver_features.i.i129, align 4
  %driver_features1.i.i130 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 10
  %31 = ptrtoint ptr %driver_features1.i.i130 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %driver_features1.i.i130, align 4
  %and.i.i131 = and i32 %30, 2
  %and2.i.i132 = and i32 %and.i.i131, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and2.i.i132)
  %cmp.i.i133 = icmp eq i32 %and2.i.i132, 2
  br i1 %cmp.i.i133, label %if.end, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.110)
  switch i64 %2, label %if.end.cleanup_crit_edge [
    i64 1, label %sw.bb19
    i64 2, label %if.end.cleanup.sink.split_crit_edge
    i64 3, label %sw.bb27
    i64 4, label %sw.bb30
    i64 7, label %sw.bb34
    i64 17, label %sw.bb39
    i64 8, label %sw.bb54
    i64 9, label %sw.bb64
    i64 16, label %sw.bb75
    i64 18, label %if.end.cleanup.sink.split_crit_edge139
  ]

if.end.cleanup.sink.split_crit_edge139:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb19:                                          ; preds = %if.end
  %dumb_create = getelementptr inbounds %struct.drm_driver, ptr %28, i32 0, i32 15
  %33 = ptrtoint ptr %dumb_create to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dumb_create, align 4
  %tobool21.not = icmp eq ptr %34, null
  br i1 %tobool21.not, label %sw.bb19.cleanup_crit_edge, label %sw.bb19.cleanup.sink.split_crit_edge

sw.bb19.cleanup.sink.split_crit_edge:             ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb27:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %preferred_depth = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 91
  %35 = ptrtoint ptr %preferred_depth to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %preferred_depth, align 4
  %conv28 = zext i32 %36 to i64
  br label %cleanup.sink.split

sw.bb30:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %prefer_shadow = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 92
  %37 = ptrtoint ptr %prefer_shadow to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %prefer_shadow, align 4
  %conv32 = zext i32 %38 to i64
  br label %cleanup.sink.split

sw.bb34:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %async_page_flip = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 96
  %39 = ptrtoint ptr %async_page_flip to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %async_page_flip, align 1, !range !244
  %41 = zext i8 %40 to i64
  br label %cleanup.sink.split

sw.bb39:                                          ; preds = %if.end
  %42 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 1, ptr %value, align 8
  %crtc_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 20
  %43 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn134 = load ptr, ptr %crtc_list, align 4
  %cmp.not135 = icmp eq ptr %.pn134, %crtc_list
  br i1 %cmp.not135, label %sw.bb39.cleanup_crit_edge, label %sw.bb39.for.body_crit_edge

sw.bb39.for.body_crit_edge:                       ; preds = %sw.bb39
  br label %for.body

sw.bb39.cleanup_crit_edge:                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.bb39.for.body_crit_edge
  %.pn136 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn134, %sw.bb39.for.body_crit_edge ]
  %funcs = getelementptr i8, ptr %.pn136, i32 396
  %44 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %funcs, align 4
  %page_flip_target = getelementptr inbounds %struct.drm_crtc_funcs, ptr %45, i32 0, i32 8
  %46 = ptrtoint ptr %page_flip_target to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %page_flip_target, align 4
  %tobool45.not = icmp eq ptr %47, null
  br i1 %tobool45.not, label %if.then46, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then46:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 0, ptr %value, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then46, %for.body.for.inc_crit_edge
  %49 = ptrtoint ptr %.pn136 to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn = load ptr, ptr %.pn136, align 4
  %cmp.not = icmp eq ptr %.pn, %crtc_list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb54:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %cursor_width = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 100
  %50 = ptrtoint ptr %cursor_width to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cursor_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool56.not = icmp eq i32 %51, 0
  %narrow138 = select i1 %tobool56.not, i32 64, i32 %51
  %spec.select = zext i32 %narrow138 to i64
  br label %cleanup.sink.split

sw.bb64:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %cursor_height = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 101
  %52 = ptrtoint ptr %cursor_height to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cursor_height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool66.not = icmp eq i32 %53, 0
  %narrow = select i1 %tobool66.not, i32 64, i32 %53
  %spec.select137 = zext i32 %narrow to i64
  br label %cleanup.sink.split

sw.bb75:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %allow_fb_modifiers = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 97
  %54 = ptrtoint ptr %allow_fb_modifiers to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %allow_fb_modifiers, align 4, !range !244
  %56 = zext i8 %55 to i64
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb75, %sw.bb64, %sw.bb54, %sw.bb34, %sw.bb30, %sw.bb27, %sw.bb19.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge139, %sw.bb13, %sw.bb10, %sw.bb2, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i64 [ %conv28, %sw.bb27 ], [ %conv32, %sw.bb30 ], [ %41, %sw.bb34 ], [ %56, %sw.bb75 ], [ %26, %sw.bb13 ], [ %19, %sw.bb10 ], [ %or9, %sw.bb2 ], [ 1, %entry.cleanup.sink.split_crit_edge ], [ 1, %sw.bb19.cleanup.sink.split_crit_edge ], [ 1, %if.end.cleanup.sink.split_crit_edge ], [ 1, %if.end.cleanup.sink.split_crit_edge139 ], [ %spec.select, %sw.bb54 ], [ %spec.select137, %sw.bb64 ]
  %57 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %.sink, ptr %value, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.cleanup_crit_edge, %sw.bb39.cleanup_crit_edge, %sw.bb19.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %sw.epilog.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %sw.bb19.cleanup_crit_edge ], [ 0, %sw.bb39.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drm_setclientcap(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data, ptr nocapture noundef %file_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %and2.i.i = and i32 %and.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %cmp.i.i.not = icmp eq i32 %and2.i.i, 0
  br i1 %cmp.i.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %data, align 8
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.111)
  switch i64 %7, label %if.end.cleanup_crit_edge [
    i64 1, label %sw.bb
    i64 2, label %sw.bb4
    i64 3, label %sw.bb12
    i64 4, label %sw.bb40
    i64 5, label %sw.bb50
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %value = getelementptr inbounds %struct.drm_set_client_cap, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %9)
  %cmp = icmp ugt i64 %9, 1
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end2

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool = icmp ne i64 %9, 0
  %stereo_allowed = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 1
  %frombool = zext i1 %tobool to i8
  %10 = ptrtoint ptr %stereo_allowed to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool, ptr %stereo_allowed, align 1
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  %value5 = getelementptr inbounds %struct.drm_set_client_cap, ptr %data, i32 0, i32 1
  %11 = ptrtoint ptr %value5 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %value5, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %12)
  %cmp6 = icmp ugt i64 %12, 1
  br i1 %cmp6, label %sw.bb4.cleanup_crit_edge, label %if.end8

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %tobool10 = icmp ne i64 %12, 0
  %universal_planes = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 2
  %frombool11 = zext i1 %tobool10 to i8
  %13 = ptrtoint ptr %universal_planes to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool11, ptr %universal_planes, align 2
  br label %cleanup

sw.bb12:                                          ; preds = %if.end
  %and2.i.i92 = and i32 %and.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i92)
  %cmp.i.i93.not = icmp eq i32 %and2.i.i92, 0
  br i1 %cmp.i.i93.not, label %sw.bb12.cleanup_crit_edge, label %if.end15

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %sw.bb12
  %14 = tail call i32 @llvm.read_register.i32(metadata !232) #11
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 101
  %18 = ptrtoint ptr %comm to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %comm, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 88, i8 %19)
  %cmp17 = icmp eq i8 %19, 88
  br i1 %cmp17, label %land.lhs.true, label %if.end15.if.end24_crit_edge

if.end15.if.end24_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end15
  %value19 = getelementptr inbounds %struct.drm_set_client_cap, ptr %data, i32 0, i32 1
  %20 = ptrtoint ptr %value19 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %value19, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %21)
  %cmp20 = icmp eq i64 %21, 1
  br i1 %cmp20, label %do.end, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107) #18
  br label %cleanup

if.end24:                                         ; preds = %land.lhs.true.if.end24_crit_edge, %if.end15.if.end24_crit_edge
  %value25 = getelementptr inbounds %struct.drm_set_client_cap, ptr %data, i32 0, i32 1
  %22 = ptrtoint ptr %value25 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %value25, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %23)
  %cmp26 = icmp ugt i64 %23, 2
  br i1 %cmp26, label %if.end24.cleanup_crit_edge, label %if.end29

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %tobool31 = icmp ne i64 %23, 0
  %atomic = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 3
  %frombool32 = zext i1 %tobool31 to i8
  %24 = ptrtoint ptr %atomic to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %frombool32, ptr %atomic, align 1
  %25 = ptrtoint ptr %value25 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %value25, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %26)
  %tobool34 = icmp ne i64 %26, 0
  %universal_planes35 = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 2
  %frombool36 = zext i1 %tobool34 to i8
  %27 = ptrtoint ptr %universal_planes35 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %frombool36, ptr %universal_planes35, align 2
  %28 = ptrtoint ptr %value25 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %value25, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %tobool38 = icmp ne i64 %29, 0
  %aspect_ratio_allowed = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 4
  %frombool39 = zext i1 %tobool38 to i8
  %30 = ptrtoint ptr %aspect_ratio_allowed to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %frombool39, ptr %aspect_ratio_allowed, align 4
  br label %cleanup

sw.bb40:                                          ; preds = %if.end
  %value41 = getelementptr inbounds %struct.drm_set_client_cap, ptr %data, i32 0, i32 1
  %31 = ptrtoint ptr %value41 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %value41, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %32)
  %cmp42 = icmp ugt i64 %32, 1
  br i1 %cmp42, label %sw.bb40.cleanup_crit_edge, label %if.end45

sw.bb40.cleanup_crit_edge:                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end45:                                         ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %32)
  %tobool47 = icmp ne i64 %32, 0
  %aspect_ratio_allowed48 = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 4
  %frombool49 = zext i1 %tobool47 to i8
  %33 = ptrtoint ptr %aspect_ratio_allowed48 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %frombool49, ptr %aspect_ratio_allowed48, align 4
  br label %cleanup

sw.bb50:                                          ; preds = %if.end
  %atomic51 = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 3
  %34 = ptrtoint ptr %atomic51 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %atomic51, align 1, !range !244
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool52.not = icmp eq i8 %35, 0
  br i1 %tobool52.not, label %sw.bb50.cleanup_crit_edge, label %if.end54

sw.bb50.cleanup_crit_edge:                        ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end54:                                         ; preds = %sw.bb50
  %value55 = getelementptr inbounds %struct.drm_set_client_cap, ptr %data, i32 0, i32 1
  %36 = ptrtoint ptr %value55 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %value55, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %37)
  %cmp56 = icmp ugt i64 %37, 1
  br i1 %cmp56, label %if.end54.cleanup_crit_edge, label %if.end59

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end59:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %37)
  %tobool61 = icmp ne i64 %37, 0
  %writeback_connectors = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 5
  %frombool62 = zext i1 %tobool61 to i8
  %38 = ptrtoint ptr %writeback_connectors to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %frombool62, ptr %writeback_connectors, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.end54.cleanup_crit_edge, %sw.bb50.cleanup_crit_edge, %if.end45, %sw.bb40.cleanup_crit_edge, %if.end29, %if.end24.cleanup_crit_edge, %do.end, %sw.bb12.cleanup_crit_edge, %if.end8, %sw.bb4.cleanup_crit_edge, %if.end2, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %do.end ], [ -95, %entry.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb4.cleanup_crit_edge ], [ -95, %sw.bb12.cleanup_crit_edge ], [ -22, %if.end24.cleanup_crit_edge ], [ -22, %sw.bb40.cleanup_crit_edge ], [ -22, %sw.bb50.cleanup_crit_edge ], [ -22, %if.end54.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end59 ], [ 0, %if.end45 ], [ 0, %if.end29 ], [ 0, %if.end8 ], [ 0, %if.end2 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_authmagic(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_irq_control(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_addmap_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_addbufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_markbufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_infobufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_mapbufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_freebufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_rmmap_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_setsareactx(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_getsareactx(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_setmaster_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dropmaster_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_addctx(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_rmctx(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_getctx(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_switchctx(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_newctx(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_resctx(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_dma_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_lock(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_unlock(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_prime_handle_to_fd_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_prime_fd_to_handle_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_sg_alloc(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_sg_free(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_wait_vblank_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_get_sequence_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_queue_sequence_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_getresources(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_getcrtc(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_setcrtc(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_cursor_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_gamma_get_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_gamma_set_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_getencoder(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_getconnector(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_getproperty_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_property_set_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_getblob_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_getfb(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_addfb_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_rmfb_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_page_flip_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_dirtyfb_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_create_dumb_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_mmap_dumb_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_destroy_dumb_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_getplane_res(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_getplane(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_setplane(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_addfb2_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_obj_get_properties_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_obj_set_property_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_cursor2_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_atomic_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_createblob_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_destroyblob_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_syncobj_create_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_syncobj_destroy_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_syncobj_handle_to_fd_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_syncobj_fd_to_handle_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_syncobj_wait_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_syncobj_reset_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_syncobj_signal_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_create_lease_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_list_lessees_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_get_lease_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_revoke_lease_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_syncobj_timeline_wait_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_syncobj_query_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_syncobj_transfer_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_syncobj_timeline_signal_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_getfb2_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_pci_set_busid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind readnone }
attributes #15 = { nobuiltin }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !230, !231}
!llvm.named.register.sp = !{!232}
!llvm.module.flags = !{!233, !234, !235, !236, !237, !238, !239, !240}
!llvm.ident = !{!241}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 443, i32 2}
!2 = !{ptr @__ksymtab_drm_noop, !3, !"__ksymtab_drm_noop", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 446, i32 1}
!4 = !{ptr @__ksymtab_drm_invalid_op, !5, !"__ksymtab_drm_invalid_op", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 468, i32 1}
!6 = !{ptr @__ksymtab_drm_ioctl_kernel, !7, !"__ksymtab_drm_ioctl_kernel", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 790, i32 1}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 853, i32 2}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 862, i32 3}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 891, i32 3}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 899, i32 3}
!16 = !{ptr @__ksymtab_drm_ioctl, !17, !"__ksymtab_drm_ioctl", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 903, i32 1}
!18 = !{ptr @__ksymtab_drm_ioctl_flags, !19, !"__ksymtab_drm_ioctl_flags", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 929, i32 1}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 565, i32 2}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 566, i32 2}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 567, i32 2}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 568, i32 2}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 571, i32 2}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 573, i32 2}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 574, i32 2}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 577, i32 2}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 640, i32 2}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 644, i32 2}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 645, i32 2}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 646, i32 2}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 575, i32 2}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 576, i32 2}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 579, i32 2}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 582, i32 2}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 580, i32 2}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 581, i32 2}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 615, i32 2}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 584, i32 2}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 609, i32 2}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 610, i32 2}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 611, i32 2}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 612, i32 2}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 613, i32 2}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 585, i32 2}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 587, i32 2}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 588, i32 2}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 590, i32 2}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 591, i32 2}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 593, i32 2}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 594, i32 2}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 595, i32 2}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 596, i32 2}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 597, i32 2}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 598, i32 2}
!99 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 599, i32 2}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 601, i32 2}
!103 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 602, i32 2}
!105 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 614, i32 2}
!107 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 604, i32 2}
!109 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 605, i32 2}
!111 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 607, i32 2}
!113 = !{ptr @.str.51, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 650, i32 2}
!115 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 651, i32 2}
!117 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 635, i32 2}
!119 = !{ptr @.str.54, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 636, i32 2}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 638, i32 2}
!123 = !{ptr @.str.56, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 707, i32 2}
!125 = !{ptr @.str.57, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 708, i32 2}
!127 = !{ptr @.str.58, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 642, i32 2}
!129 = !{ptr @.str.59, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 648, i32 2}
!131 = !{ptr @.str.60, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 654, i32 2}
!133 = !{ptr @.str.61, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 655, i32 2}
!135 = !{ptr @.str.62, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 658, i32 2}
!137 = !{ptr @.str.63, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 659, i32 2}
!139 = !{ptr @.str.64, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 660, i32 2}
!141 = !{ptr @.str.65, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 661, i32 2}
!143 = !{ptr @.str.66, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 662, i32 2}
!145 = !{ptr @.str.67, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 663, i32 2}
!147 = !{ptr @.str.68, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 664, i32 2}
!149 = !{ptr @.str.69, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 665, i32 2}
!151 = !{ptr @.str.70, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 666, i32 2}
!153 = !{ptr @.str.71, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 667, i32 2}
!155 = !{ptr @.str.72, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 668, i32 2}
!157 = !{ptr @.str.73, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 670, i32 2}
!159 = !{ptr @.str.74, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 672, i32 2}
!161 = !{ptr @.str.75, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 673, i32 2}
!163 = !{ptr @.str.76, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 674, i32 2}
!165 = !{ptr @.str.77, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 675, i32 2}
!167 = !{ptr @.str.78, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 676, i32 2}
!169 = !{ptr @.str.79, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 677, i32 2}
!171 = !{ptr @.str.80, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 653, i32 2}
!173 = !{ptr @.str.81, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 656, i32 2}
!175 = !{ptr @.str.82, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 657, i32 2}
!177 = !{ptr @.str.83, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 671, i32 2}
!179 = !{ptr @.str.84, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 678, i32 2}
!181 = !{ptr @.str.85, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 679, i32 2}
!183 = !{ptr @.str.86, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 680, i32 2}
!185 = !{ptr @.str.87, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 681, i32 2}
!187 = !{ptr @.str.88, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 682, i32 2}
!189 = !{ptr @.str.89, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 683, i32 2}
!191 = !{ptr @.str.90, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 685, i32 2}
!193 = !{ptr @.str.91, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 687, i32 2}
!195 = !{ptr @.str.92, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 689, i32 2}
!197 = !{ptr @.str.93, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 691, i32 2}
!199 = !{ptr @.str.94, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 695, i32 2}
!201 = !{ptr @.str.95, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 699, i32 2}
!203 = !{ptr @.str.96, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 701, i32 2}
!205 = !{ptr @.str.97, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 709, i32 2}
!207 = !{ptr @.str.98, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 710, i32 2}
!209 = !{ptr @.str.99, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 711, i32 2}
!211 = !{ptr @.str.100, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 712, i32 2}
!213 = !{ptr @.str.101, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 697, i32 2}
!215 = !{ptr @.str.102, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 705, i32 2}
!217 = !{ptr @.str.103, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 693, i32 2}
!219 = !{ptr @.str.104, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 703, i32 2}
!221 = !{ptr @.str.105, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 669, i32 2}
!223 = !{ptr @drm_ioctls, !224, !"drm_ioctls", i1 false, i1 false}
!224 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 564, i32 36}
!225 = !{ptr @.str.106, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 160, i32 3}
!227 = !{ptr @.str.107, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/gpu/drm/drm_ioctl.c", i32 341, i32 4}
!229 = !{ptr @.str.108, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @drm_setclientcap._entry, !228, !"_entry", i1 false, i1 false}
!231 = !{ptr @drm_setclientcap._entry_ptr, !228, !"_entry_ptr", i1 false, i1 false}
!232 = !{!"sp"}
!233 = !{i32 1, !"wchar_size", i32 2}
!234 = !{i32 1, !"min_enum_size", i32 4}
!235 = !{i32 8, !"branch-target-enforcement", i32 0}
!236 = !{i32 8, !"sign-return-address", i32 0}
!237 = !{i32 8, !"sign-return-address-all", i32 0}
!238 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!239 = !{i32 7, !"uwtable", i32 1}
!240 = !{i32 7, !"frame-pointer", i32 2}
!241 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!242 = !{!"branch_weights", i32 2000, i32 1}
!243 = !{i64 2153909186, i64 2153909211}
!244 = !{i8 0, i8 2}
!245 = !{!"auto-init"}
!246 = !{!"branch_weights", i32 1, i32 2000}
!247 = !{i64 563740, i64 563757}
!248 = !{i64 2153908505, i64 2153908530}
!249 = !{i64 6404060}
!250 = !{i64 6404257}
!251 = !{i64 2153889490}
