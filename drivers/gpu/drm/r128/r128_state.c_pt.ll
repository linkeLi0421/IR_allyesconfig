; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/r128/r128_state.c_pt.bc'
source_filename = "../drivers/gpu/drm/r128/r128_state.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.drm_ioctl_desc = type { i32, i32, ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.73 = type { i32, ptr }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.drm_master = type { %struct.kref, ptr, ptr, i32, %struct.idr, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.idr, %struct.idr, %struct.drm_lock_data }
%struct.drm_lock_data = type { ptr, ptr, %struct.wait_queue_head, i32, %struct.spinlock, i32, i32, i32 }
%struct.drm_r128_ring_buffer = type { ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.drm_r128_private = type { %struct.drm_r128_ring_buffer, ptr, i32, i32, i32, ptr, ptr, i32, i32, i32, %struct.atomic_t, i32, i32, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.drm_ati_pcigart_info }
%struct.drm_ati_pcigart_info = type { i32, i32, ptr, i32, i32, ptr, %struct.drm_local_map, i32 }
%struct.drm_local_map = type { i32, i32, i32, i32, ptr, i32 }
%struct.drm_r128_depth = type { i32, i32, ptr, ptr, ptr, ptr }
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
%struct.drm_r128_getparam = type { i32, ptr }
%struct.drm_r128_sarea = type { %struct.drm_r128_context_regs_t, [2 x %struct.drm_r128_texture_regs_t], i32, i32, i32, [12 x %struct.drm_clip_rect], i32, i32, i32, [2 x [65 x %struct.drm_tex_region]], [2 x i32], i32, i32, i32 }
%struct.drm_r128_context_regs_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_r128_texture_regs_t = type { i32, i32, i32, [11 x i32], i32 }
%struct.drm_clip_rect = type { i16, i16, i16, i16 }
%struct.drm_tex_region = type { i8, i8, i8, i8, i32 }
%struct.drm_r128_clear = type { i32, i32, i32, i32, i32 }
%struct.drm_r128_vertex = type { i32, i32, i32, i32 }
%struct.drm_device_dma = type { [23 x %struct.drm_buf_entry], i32, ptr, i32, i32, ptr, i32, i32 }
%struct.drm_buf_entry = type { i32, i32, ptr, i32, i32, ptr, i32, i32 }
%struct.drm_buf = type { i32, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.drm_r128_buf_priv = type { i32, i32, i32, i32, ptr }
%struct.drm_r128_indices = type { i32, i32, i32, i32, i32 }
%struct.drm_r128_indirect = type { i32, i32, i32, i32 }
%struct.drm_r128_blit = type { i32, i32, i32, i32, i16, i16, i16, i16 }

@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s called without lock held, held  %d owner %p %p\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.r128_cce_depth = private unnamed_addr constant [15 x i8] c"r128_cce_depth\00", align 1
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"called with no initialization\0A\00", [33 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ring space check failed!\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.r128_cce_stipple = private unnamed_addr constant [17 x i8] c"r128_cce_stipple\00", align 1
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pid=%d\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"copy_to_user\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"R128_INIT\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"R128_CCE_START\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"R128_CCE_STOP\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"R128_CCE_RESET\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"R128_CCE_IDLE\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"R128_RESET\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"R128_SWAP\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"R128_CLEAR\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"R128_VERTEX\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"R128_INDICES\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"R128_BLIT\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"R128_DEPTH\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"R128_STIPPLE\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"R128_INDIRECT\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"R128_FULLSCREEN\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"R128_GETPARAM\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"R128_FLIP\00", [22 x i8] zeroinitializer }, align 32
@r128_ioctls = dso_local constant { [20 x %struct.drm_ioctl_desc], [64 x i8] } { [20 x %struct.drm_ioctl_desc] [%struct.drm_ioctl_desc { i32 1079534656, i32 7, ptr @r128_cce_init, ptr @.str.5 }, %struct.drm_ioctl_desc { i32 25665, i32 7, ptr @r128_cce_start, ptr @.str.6 }, %struct.drm_ioctl_desc { i32 1074291778, i32 7, ptr @r128_cce_stop, ptr @.str.7 }, %struct.drm_ioctl_desc { i32 25667, i32 7, ptr @r128_cce_reset, ptr @.str.8 }, %struct.drm_ioctl_desc { i32 25668, i32 1, ptr @r128_cce_idle, ptr @.str.9 }, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc { i32 25670, i32 1, ptr @r128_engine_reset, ptr @.str.10 }, %struct.drm_ioctl_desc { i32 25671, i32 1, ptr @r128_cce_swap, ptr @.str.11 }, %struct.drm_ioctl_desc { i32 1075078216, i32 1, ptr @r128_cce_clear, ptr @.str.12 }, %struct.drm_ioctl_desc { i32 1074816073, i32 1, ptr @r128_cce_vertex, ptr @.str.13 }, %struct.drm_ioctl_desc { i32 1075078218, i32 1, ptr @r128_cce_indices, ptr @.str.14 }, %struct.drm_ioctl_desc { i32 1075340363, i32 1, ptr @r128_cce_blit, ptr @.str.15 }, %struct.drm_ioctl_desc { i32 1075340364, i32 1, ptr @r128_cce_depth, ptr @.str.16 }, %struct.drm_ioctl_desc { i32 1074029645, i32 1, ptr @r128_cce_stipple, ptr @.str.17 }, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc { i32 -1072667569, i32 7, ptr @r128_cce_indirect, ptr @.str.18 }, %struct.drm_ioctl_desc { i32 1074029648, i32 1, ptr @r128_fullscreen, ptr @.str.19 }, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc { i32 -1073191854, i32 1, ptr @r128_getparam, ptr @.str.20 }, %struct.drm_ioctl_desc { i32 25683, i32 1, ptr @r128_cce_flip, ptr @.str.21 }], [64 x i8] zeroinitializer }, align 32
@r128_max_ioctl = dso_local global { i32, [28 x i8] } { i32 20, [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ADVANCE_RING(): mismatch: nr: %x write: %x line: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"page=%d pfCurrentPage=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.r128_cce_swap = private unnamed_addr constant [14 x i8] c"r128_cce_swap\00", align 1
@__func__.r128_cce_clear = private unnamed_addr constant [15 x i8] c"r128_cce_clear\00", align 1
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"dispatch clear %d,%d-%d,%d flags 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.r128_cce_vertex = private unnamed_addr constant [16 x i8] c"r128_cce_vertex\00", align 1
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"pid=%d index=%d count=%d discard=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"buffer index %d (of %d max)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"buffer prim %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"process %d using buffer owned by %p\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sending pending buffer %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"buf=%d nbox=%d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dirty=0x%08x\0A\00", [18 x i8] zeroinitializer }, align 32
@__func__.r128_cce_indices = private unnamed_addr constant [17 x i8] c"r128_cce_indices\00", align 1
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pid=%d buf=%d s=%d e=%d d=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"misaligned buffer 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no header 0x%x - 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"indices: s=%d e=%d c=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"indirect: buf=%d s=0x%x e=0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.r128_cce_blit = private unnamed_addr constant [14 x i8] c"r128_cce_blit\00", align 1
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pid=%d index=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid blit format %d\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.r128_cce_indirect = private unnamed_addr constant [18 x i8] c"r128_cce_indirect\00", align 1
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"idx=%d s=%d e=%d d=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"reusing indirect: start=0x%x actual=0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@__func__.r128_cce_flip = private unnamed_addr constant [14 x i8] c"r128_cce_flip\00", align 1
@switch.table.r128_cce_dispatch_blit = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1465, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1467, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1469, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1590, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1601, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1622, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1623, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1624, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1625, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1626, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1627, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1629, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1631, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1632, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1633, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1634, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1635, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1636, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1637, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1628, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1638, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1630, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [12 x i8] c"r128_ioctls\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1621, i32 29 }
@___asan_gen_.114 = private unnamed_addr constant [15 x i8] c"r128_max_ioctl\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1641, i32 5 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 899, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 942, i32 5 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 230, i32 6 }
@___asan_gen_.127 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 214, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 156, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 534, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 386, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1326, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1330, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1336, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1347, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1352, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 582, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 233, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1379, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1413, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1417, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 709, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 646, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1442, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 811, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1527, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.184 = private constant [37 x i8] c"../drivers/gpu/drm/r128/r128_state.c\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1551, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant [36 x i8] c"switch.table.r128_cce_dispatch_blit\00", align 1
@llvm.compiler.used = appending global [48 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @r128_ioctls, ptr @r128_max_ioctl, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @switch.table.r128_cce_dispatch_blit], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r128_ioctls to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r128_max_ioctl to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.r128_cce_dispatch_blit to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r128_cce_depth(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data, ptr noundef %file_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %master = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 8
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  %lock = getelementptr inbounds %struct.drm_master, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lock, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool.not = icmp sgt i32 %7, -1
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %file_priv4 = getelementptr inbounds %struct.drm_master, ptr %3, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %file_priv4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %file_priv4, align 4
  %cmp.not = icmp eq ptr %9, %file_priv
  br i1 %cmp.not, label %do.body13, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %5, align 4
  %and9 = and i32 %11, -2147483648
  %file_priv12 = getelementptr inbounds %struct.drm_master, ptr %3, i32 0, i32 12, i32 1
  %12 = ptrtoint ptr %file_priv12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %file_priv12, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.r128_cce_depth, i32 noundef %and9, ptr noundef %13, ptr noundef %file_priv) #7
  br label %cleanup54

do.body13:                                        ; preds = %lor.lhs.false
  %tobool14.not = icmp eq ptr %1, null
  br i1 %tobool14.not, label %if.then15, label %do.body19

if.then15:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #7
  br label %cleanup54

do.body19:                                        ; preds = %do.body13
  %space = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %space, align 4
  %high_mark = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %high_mark to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %high_mark, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp21 = icmp slt i32 %15, %17
  br i1 %cmp21, label %for.cond.preheader, label %do.body19.do.end32_crit_edge

do.body19.do.end32_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32

for.cond.preheader:                               ; preds = %do.body19
  %usec_timeout = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp2380 = icmp sgt i32 %19, 0
  br i1 %cmp2380, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %mmio.i = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 30
  %tail.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 4
  %size.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end28.for.body_crit_edge, %for.body.lr.ph
  %i.081 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end28.for.body_crit_edge ]
  %20 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %handle.i, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 1808
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !122
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  %26 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tail.i, align 4
  %sub.i = sub i32 %25, %27
  %mul.i = shl i32 %sub.i, 2
  %28 = ptrtoint ptr %space to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %mul.i, ptr %space, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mul.i)
  %cmp.i = icmp slt i32 %mul.i, 1
  br i1 %cmp.i, label %if.then.i, label %for.body.r128_update_ring_snapshot.exit_crit_edge

for.body.r128_update_ring_snapshot.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %r128_update_ring_snapshot.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size.i, align 4
  %add.i = add i32 %30, %mul.i
  %31 = ptrtoint ptr %space to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add.i, ptr %space, align 4
  br label %r128_update_ring_snapshot.exit

r128_update_ring_snapshot.exit:                   ; preds = %if.then.i, %for.body.r128_update_ring_snapshot.exit_crit_edge
  %32 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %space, align 4
  %34 = ptrtoint ptr %high_mark to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %high_mark, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp26.not = icmp slt i32 %33, %35
  br i1 %cmp26.not, label %if.end28, label %r128_update_ring_snapshot.exit.do.end32_crit_edge

r128_update_ring_snapshot.exit.do.end32_crit_edge: ; preds = %r128_update_ring_snapshot.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32

if.end28:                                         ; preds = %r128_update_ring_snapshot.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748) #7
  %inc = add nuw nsw i32 %i.081, 1
  %37 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %usec_timeout, align 4
  %cmp23 = icmp slt i32 %inc, %38
  br i1 %cmp23, label %if.end28.for.body_crit_edge, label %if.end28.for.end_crit_edge

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end28.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #7
  br label %cleanup54

do.end32:                                         ; preds = %r128_update_ring_snapshot.exit.do.end32_crit_edge, %do.body19.do.end32_crit_edge
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %data, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values)
  switch i32 %40, label %do.end32.do.body40_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb33
    i32 3, label %sw.bb35
    i32 4, label %sw.bb37
  ]

do.end32.do.body40_crit_edge:                     ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body40

sw.bb:                                            ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call fastcc i32 @r128_cce_dispatch_write_span(ptr noundef %dev, ptr noundef %data)
  br label %do.body40

sw.bb33:                                          ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  %call34 = tail call fastcc i32 @r128_cce_dispatch_write_pixels(ptr noundef %dev, ptr noundef %data)
  br label %do.body40

sw.bb35:                                          ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  %call36 = tail call fastcc i32 @r128_cce_dispatch_read_span(ptr noundef %dev, ptr noundef %data)
  br label %do.body40

sw.bb37:                                          ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  %call38 = tail call fastcc i32 @r128_cce_dispatch_read_pixels(ptr noundef %dev, ptr noundef %data)
  br label %do.body40

do.body40:                                        ; preds = %sw.bb37, %sw.bb35, %sw.bb33, %sw.bb, %do.end32.do.body40_crit_edge
  %ret.0 = phi i32 [ -22, %do.end32.do.body40_crit_edge ], [ %call38, %sw.bb37 ], [ %call36, %sw.bb35 ], [ %call34, %sw.bb33 ], [ %call, %sw.bb ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  tail call void @arm_heavy_mb() #7
  %tail = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 4
  %42 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tail, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %mmio = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 30
  %45 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mmio, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %handle, align 4
  %add.ptr = getelementptr i8, ptr %48, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %44) #7, !srcloc !126
  %49 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mmio, align 4
  %handle48 = getelementptr inbounds %struct.drm_local_map, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %handle48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %handle48, align 4
  %add.ptr49 = getelementptr i8, ptr %52, i32 1812
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  br label %cleanup54

cleanup54:                                        ; preds = %do.body40, %for.end, %if.then15, %if.then
  %retval.1 = phi i32 [ -22, %if.then ], [ %ret.0, %do.body40 ], [ -22, %if.then15 ], [ -16, %for.end ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r128_update_ring_snapshot(ptr nocapture noundef %dev_priv) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %mmio = getelementptr inbounds %struct.drm_r128_private, ptr %dev_priv, i32 0, i32 30
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1808
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !122
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  %tail = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 4
  %6 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tail, align 4
  %sub = sub i32 %5, %7
  %mul = shl i32 %sub, 2
  %space = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 6
  %8 = ptrtoint ptr %space to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul, ptr %space, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mul)
  %cmp = icmp slt i32 %mul, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %size = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 2
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 4
  %add = add i32 %10, %mul
  %11 = ptrtoint ptr %space to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add, ptr %space, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @r128_cce_dispatch_write_span(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %depth) unnamed_addr #0 align 64 {
entry:
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x) #7
  %2 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %x, align 4, !annotation !128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y) #7
  %3 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %y, align 4, !annotation !128
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.22) #7
  %n = getelementptr inbounds %struct.drm_r128_depth, ptr %depth, i32 0, i32 1
  %4 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n, align 4
  %6 = add i32 %5, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %6)
  %7 = icmp ult i32 %6, -4096
  br i1 %7, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %x2 = getelementptr inbounds %struct.drm_r128_depth, ptr %depth, i32 0, i32 2
  %8 = ptrtoint ptr %x2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %x2, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.26, i32 noundef 156) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.end.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end.if.then11.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 4, i32 -1226833920) #10, !srcloc !129
  %asmresult.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !130

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %x, i32 noundef 4) #7
  %11 = call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !131
  %and.i.i.i.i = and i32 %13, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !132
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %x, ptr noundef %9, i32 noundef 4) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #7, !srcloc !132
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end4, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !130

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end.if.then11.i.i_crit_edge
  %res.0.i.i400 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 4, %if.end.if.then11.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 4, %res.0.i.i400
  %add.ptr.i.i = getelementptr i8, ptr %x, i32 %sub.i.i
  %14 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i400)
  br label %cleanup

if.end4:                                          ; preds = %if.end.i.i
  %y5 = getelementptr inbounds %struct.drm_r128_depth, ptr %depth, i32 0, i32 3
  %15 = ptrtoint ptr %y5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %y5, align 4
  call void @__might_fault(ptr noundef nonnull @.str.26, i32 noundef 156) #7
  %call.i.i378 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i378, label %if.end4.if.then11.i.i394_crit_edge, label %land.lhs.true.i.i381

if.end4.if.then11.i.i394_crit_edge:               ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i394

land.lhs.true.i.i381:                             ; preds = %if.end4
  %17 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %16, i32 4, i32 -1226833920) #10, !srcloc !129
  %asmresult.i.i379 = extractvalue { i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i379)
  %cmp.i6.i380 = icmp eq i32 %asmresult.i.i379, 0
  br i1 %cmp.i6.i380, label %if.end.i.i391, label %land.lhs.true.i.i381.if.then11.i.i394_crit_edge, !prof !130

land.lhs.true.i.i381.if.then11.i.i394_crit_edge:  ; preds = %land.lhs.true.i.i381
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i394

if.end.i.i391:                                    ; preds = %land.lhs.true.i.i381
  %call.i.i.i382 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %y, i32 noundef 4) #7
  %18 = call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i.i.i.i.i.i383 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i.i383 to ptr
  %cpu_domain.i.i.i.i.i384 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 4
  %20 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i384) #6, !srcloc !131
  %and.i.i.i.i385 = and i32 %20, -13
  %or.i.i.i.i386 = or i32 %and.i.i.i.i385, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i386) #7, !srcloc !132
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  %call1.i.i.i387 = call i32 @arm_copy_from_user(ptr noundef nonnull %y, ptr noundef %16, i32 noundef 4) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #7, !srcloc !132
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i387)
  %tobool4.not.i.i390 = icmp eq i32 %call1.i.i.i387, 0
  br i1 %tobool4.not.i.i390, label %if.end9, label %if.end.i.i391.if.then11.i.i394_crit_edge, !prof !130

if.end.i.i391.if.then11.i.i394_crit_edge:         ; preds = %if.end.i.i391
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i394

if.then11.i.i394:                                 ; preds = %if.end.i.i391.if.then11.i.i394_crit_edge, %land.lhs.true.i.i381.if.then11.i.i394_crit_edge, %if.end4.if.then11.i.i394_crit_edge
  %res.0.i.i389405 = phi i32 [ %call1.i.i.i387, %if.end.i.i391.if.then11.i.i394_crit_edge ], [ 4, %if.end4.if.then11.i.i394_crit_edge ], [ 4, %land.lhs.true.i.i381.if.then11.i.i394_crit_edge ]
  %sub.i.i392 = sub i32 4, %res.0.i.i389405
  %add.ptr.i.i393 = getelementptr i8, ptr %y, i32 %sub.i.i392
  %21 = call ptr @memset(ptr %add.ptr.i.i393, i32 0, i32 %res.0.i.i389405)
  br label %cleanup

if.end9:                                          ; preds = %if.end.i.i391
  %22 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n, align 4
  %mul = shl i32 %23, 2
  %buffer11 = getelementptr inbounds %struct.drm_r128_depth, ptr %depth, i32 0, i32 4
  %24 = ptrtoint ptr %buffer11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buffer11, align 4
  %call12 = call ptr @memdup_user(ptr noundef %25, i32 noundef %mul) #7
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %mask18 = getelementptr inbounds %struct.drm_r128_depth, ptr %depth, i32 0, i32 5
  %27 = ptrtoint ptr %mask18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mask18, align 4
  %tobool19.not = icmp eq ptr %28, null
  br i1 %tobool19.not, label %do.body127.lr.ph, label %if.then20

do.body127.lr.ph:                                 ; preds = %if.end16
  %space129 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 6
  %tail140 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 4
  %mmio141 = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 30
  %tail_mask164 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 5
  %depth_fmt174 = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 21
  %depth_pitch_offset_c187 = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 27
  %end218 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 1
  br label %do.body127

if.then20:                                        ; preds = %if.end16
  %29 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %n, align 4
  %call22 = call ptr @memdup_user(ptr noundef nonnull %28, i32 noundef %30) #7
  %cmp.i397 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i397, label %if.then24, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.then20
  %space = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 6
  %tail = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 4
  %mmio = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 30
  %tail_mask54 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 5
  %depth_fmt = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 21
  %depth_pitch_offset_c = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 27
  %end = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 1
  br label %for.body

if.then24:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef %call12) #7
  %31 = ptrtoint ptr %call22 to i32
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0409 = phi i32 [ 0, %for.body.lr.ph ], [ %inc121, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %call22, i32 %i.0409
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool28.not = icmp eq i8 %33, 0
  br i1 %tobool28.not, label %for.body.for.inc_crit_edge, label %do.body

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.body:                                          ; preds = %for.body
  %34 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %space, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %35)
  %cmp31 = icmp ult i32 %35, 25
  br i1 %cmp31, label %do.body34, label %do.body.if.end47_crit_edge

do.body.if.end47_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

do.body34:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !134
  call void @arm_heavy_mb() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  call void @arm_heavy_mb() #7
  %36 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tail, align 4
  %38 = call i32 @llvm.bswap.i32(i32 %37)
  %39 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmio, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %handle, align 4
  %add.ptr = getelementptr i8, ptr %42, i32 1812
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %38) #7, !srcloc !126
  %43 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmio, align 4
  %handle40 = getelementptr inbounds %struct.drm_local_map, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %handle40 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %handle40, align 4
  %add.ptr41 = getelementptr i8, ptr %46, i32 1812
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #7, !srcloc !122
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %call46 = call i32 @r128_wait_ring(ptr noundef %1, i32 noundef 24) #7
  br label %if.end47

if.end47:                                         ; preds = %do.body34, %do.body.if.end47_crit_edge
  %48 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %space, align 4
  %sub = add i32 %49, -24
  store i32 %sub, ptr %space, align 4
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %52 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tail, align 4
  %54 = ptrtoint ptr %tail_mask54 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tail_mask54, align 4
  %inc = add i32 %53, 1
  %arrayidx58 = getelementptr i32, ptr %51, i32 %53
  %56 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile i32 10093760, ptr %arrayidx58, align 4
  %and = and i32 %inc, %55
  %57 = ptrtoint ptr %depth_fmt to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %depth_fmt, align 4
  %shl = shl i32 %58, 8
  %or65 = or i32 %shl, 1357918418
  %59 = call i32 @llvm.bswap.i32(i32 %or65)
  %inc66 = add i32 %and, 1
  %arrayidx67 = getelementptr i32, ptr %51, i32 %and
  %60 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile i32 %59, ptr %arrayidx67, align 4
  %and68 = and i32 %inc66, %55
  %61 = ptrtoint ptr %depth_pitch_offset_c to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %depth_pitch_offset_c, align 4
  %63 = call i32 @llvm.bswap.i32(i32 %62)
  %inc72 = add i32 %and68, 1
  %arrayidx73 = getelementptr i32, ptr %51, i32 %and68
  %64 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile i32 %63, ptr %arrayidx73, align 4
  %and74 = and i32 %inc72, %55
  %arrayidx78 = getelementptr i32, ptr %call12, i32 %i.0409
  %65 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx78, align 4
  %67 = call i32 @llvm.bswap.i32(i32 %66)
  %inc79 = add i32 %and74, 1
  %arrayidx80 = getelementptr i32, ptr %51, i32 %and74
  %68 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile i32 %67, ptr %arrayidx80, align 4
  %and81 = and i32 %inc79, %55
  %69 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %x, align 4
  %shl85 = shl i32 %70, 16
  %71 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %y, align 4
  %or86 = or i32 %shl85, %72
  %73 = call i32 @llvm.bswap.i32(i32 %or86)
  %inc87 = add i32 %and81, 1
  %arrayidx88 = getelementptr i32, ptr %51, i32 %and81
  %74 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile i32 %73, ptr %arrayidx88, align 4
  %and89 = and i32 %inc87, %55
  %inc93 = add i32 %and89, 1
  %arrayidx94 = getelementptr i32, ptr %51, i32 %and89
  %75 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile i32 16777472, ptr %arrayidx94, align 4
  %and95 = and i32 %inc93, %55
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and95)
  %cmp99 = icmp slt i32 %and95, 32
  br i1 %cmp99, label %if.then100, label %if.end47.if.end105_crit_edge

if.end47.if.end105_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end105

if.then100:                                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %end, align 4
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 4
  %mul104 = shl i32 %and95, 2
  %80 = call ptr @memcpy(ptr %77, ptr %79, i32 %mul104)
  br label %if.end105

if.end105:                                        ; preds = %if.then100, %if.end47.if.end105_crit_edge
  %81 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tail, align 4
  %add = add i32 %82, 6
  %and108 = and i32 %add, %55
  call void @__sanitizer_cov_trace_cmp4(i32 %and108, i32 %and95)
  %cmp109.not = icmp eq i32 %and108, %and95
  br i1 %cmp109.not, label %if.else, label %if.then110

if.then110:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %and108, i32 noundef %and95, i32 noundef 942) #7
  br label %for.inc

if.else:                                          ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  %83 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %and95, ptr %tail, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then110, %for.body.for.inc_crit_edge
  %inc121 = add nuw nsw i32 %i.0409, 1
  %84 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %x, align 4
  %inc122 = add i32 %85, 1
  store i32 %inc122, ptr %x, align 4
  %exitcond.not = icmp eq i32 %inc121, %5
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef %call22) #7
  br label %if.end243

do.body127:                                       ; preds = %for.inc239.do.body127_crit_edge, %do.body127.lr.ph
  %i.1412 = phi i32 [ 0, %do.body127.lr.ph ], [ %inc240, %for.inc239.do.body127_crit_edge ]
  %86 = ptrtoint ptr %space129 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %space129, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %87)
  %cmp130 = icmp ult i32 %87, 25
  br i1 %cmp130, label %do.body133, label %do.body127.if.end155_crit_edge

do.body127.if.end155_crit_edge:                   ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end155

do.body133:                                       ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  call void @arm_heavy_mb() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  call void @arm_heavy_mb() #7
  %88 = ptrtoint ptr %tail140 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tail140, align 4
  %90 = call i32 @llvm.bswap.i32(i32 %89)
  %91 = ptrtoint ptr %mmio141 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mmio141, align 4
  %handle142 = getelementptr inbounds %struct.drm_local_map, ptr %92, i32 0, i32 4
  %93 = ptrtoint ptr %handle142 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %handle142, align 4
  %add.ptr143 = getelementptr i8, ptr %94, i32 1812
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr143, i32 %90) #7, !srcloc !126
  %95 = ptrtoint ptr %mmio141 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mmio141, align 4
  %handle147 = getelementptr inbounds %struct.drm_local_map, ptr %96, i32 0, i32 4
  %97 = ptrtoint ptr %handle147 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %handle147, align 4
  %add.ptr148 = getelementptr i8, ptr %98, i32 1812
  %99 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr148) #7, !srcloc !122
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  %call154 = call i32 @r128_wait_ring(ptr noundef %1, i32 noundef 24) #7
  br label %if.end155

if.end155:                                        ; preds = %do.body133, %do.body127.if.end155_crit_edge
  %100 = ptrtoint ptr %space129 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %space129, align 4
  %sub158 = add i32 %101, -24
  store i32 %sub158, ptr %space129, align 4
  %102 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %1, align 4
  %104 = ptrtoint ptr %tail140 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %tail140, align 4
  %106 = ptrtoint ptr %tail_mask164 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %tail_mask164, align 4
  %inc168 = add i32 %105, 1
  %arrayidx169 = getelementptr i32, ptr %103, i32 %105
  %108 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile i32 10093760, ptr %arrayidx169, align 4
  %and170 = and i32 %inc168, %107
  %109 = ptrtoint ptr %depth_fmt174 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %depth_fmt174, align 4
  %shl175 = shl i32 %110, 8
  %or180 = or i32 %shl175, 1357918418
  %111 = call i32 @llvm.bswap.i32(i32 %or180)
  %inc181 = add i32 %and170, 1
  %arrayidx182 = getelementptr i32, ptr %103, i32 %and170
  %112 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile i32 %111, ptr %arrayidx182, align 4
  %and183 = and i32 %inc181, %107
  %113 = ptrtoint ptr %depth_pitch_offset_c187 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %depth_pitch_offset_c187, align 4
  %115 = call i32 @llvm.bswap.i32(i32 %114)
  %inc188 = add i32 %and183, 1
  %arrayidx189 = getelementptr i32, ptr %103, i32 %and183
  %116 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile i32 %115, ptr %arrayidx189, align 4
  %and190 = and i32 %inc188, %107
  %arrayidx194 = getelementptr i32, ptr %call12, i32 %i.1412
  %117 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx194, align 4
  %119 = call i32 @llvm.bswap.i32(i32 %118)
  %inc195 = add i32 %and190, 1
  %arrayidx196 = getelementptr i32, ptr %103, i32 %and190
  %120 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_store4_noabort(i32 %120)
  store volatile i32 %119, ptr %arrayidx196, align 4
  %and197 = and i32 %inc195, %107
  %121 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %x, align 4
  %shl201 = shl i32 %122, 16
  %123 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %y, align 4
  %or202 = or i32 %shl201, %124
  %125 = call i32 @llvm.bswap.i32(i32 %or202)
  %inc203 = add i32 %and197, 1
  %arrayidx204 = getelementptr i32, ptr %103, i32 %and197
  %126 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile i32 %125, ptr %arrayidx204, align 4
  %and205 = and i32 %inc203, %107
  %inc209 = add i32 %and205, 1
  %arrayidx210 = getelementptr i32, ptr %103, i32 %and205
  %127 = ptrtoint ptr %arrayidx210 to i32
  call void @__asan_store4_noabort(i32 %127)
  store volatile i32 16777472, ptr %arrayidx210, align 4
  %and211 = and i32 %inc209, %107
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and211)
  %cmp215 = icmp slt i32 %and211, 32
  br i1 %cmp215, label %if.then216, label %if.end155.if.end222_crit_edge

if.end155.if.end222_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end222

if.then216:                                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #9
  %128 = ptrtoint ptr %end218 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %end218, align 4
  %130 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %1, align 4
  %mul221 = shl i32 %and211, 2
  %132 = call ptr @memcpy(ptr %129, ptr %131, i32 %mul221)
  br label %if.end222

if.end222:                                        ; preds = %if.then216, %if.end155.if.end222_crit_edge
  %133 = ptrtoint ptr %tail140 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %tail140, align 4
  %add225 = add i32 %134, 6
  %and226 = and i32 %add225, %107
  call void @__sanitizer_cov_trace_cmp4(i32 %and226, i32 %and211)
  %cmp227.not = icmp eq i32 %and226, %and211
  br i1 %cmp227.not, label %if.else233, label %if.then228

if.then228:                                       ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %and226, i32 noundef %and211, i32 noundef 966) #7
  br label %for.inc239

if.else233:                                       ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #9
  %135 = ptrtoint ptr %tail140 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %and211, ptr %tail140, align 4
  br label %for.inc239

for.inc239:                                       ; preds = %if.else233, %if.then228
  %inc240 = add nuw nsw i32 %i.1412, 1
  %136 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %x, align 4
  %inc241 = add i32 %137, 1
  store i32 %inc241, ptr %x, align 4
  %exitcond413.not = icmp eq i32 %inc240, %5
  br i1 %exitcond413.not, label %for.inc239.if.end243_crit_edge, label %for.inc239.do.body127_crit_edge

for.inc239.do.body127_crit_edge:                  ; preds = %for.inc239
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body127

for.inc239.if.end243_crit_edge:                   ; preds = %for.inc239
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end243

if.end243:                                        ; preds = %for.inc239.if.end243_crit_edge, %for.end
  call void @kfree(ptr noundef %call12) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end243, %if.then24, %if.then14, %if.then11.i.i394, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %26, %if.then14 ], [ %31, %if.then24 ], [ 0, %if.end243 ], [ -90, %entry.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then11.i.i394 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @r128_cce_dispatch_write_pixels(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %depth) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.22) #7
  %n = getelementptr inbounds %struct.drm_r128_depth, ptr %depth, i32 0, i32 1
  %2 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n, align 4
  %4 = add i32 %3, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %4)
  %5 = icmp ult i32 %4, -4096
  br i1 %5, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = shl nuw nsw i32 %3, 2
  %x3 = getelementptr inbounds %struct.drm_r128_depth, ptr %depth, i32 0, i32 2
  %6 = ptrtoint ptr %x3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %x3, align 4
  %call = tail call ptr @memdup_user(ptr noundef %7, i32 noundef %mul) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %y8 = getelementptr inbounds %struct.drm_r128_depth, ptr %depth, i32 0, i32 3
  %9 = ptrtoint ptr %y8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %y8, align 4
  %call9 = tail call ptr @memdup_user(ptr noundef %10, i32 noundef %mul) #7
  %cmp.i401 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i401, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef %call) #7
  %11 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %12 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n, align 4
  %mul15 = shl i32 %13, 2
  %buffer16 = getelementptr inbounds %struct.drm_r128_depth, ptr %depth, i32 0, i32 4
  %14 = ptrtoint ptr %buffer16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer16, align 4
  %call17 = tail call ptr @memdup_user(ptr noundef %15, i32 noundef %mul15) #7
  %cmp.i402 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i402, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef %call) #7
  tail call void @kfree(ptr noundef %call9) #7
  %16 = ptrtoint ptr %call17 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  %mask22 = getelementptr inbounds %struct.drm_r128_depth, ptr %depth, i32 0, i32 5
  %17 = ptrtoint ptr %mask22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mask22, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %do.body132.lr.ph, label %if.then23

do.body132.lr.ph:                                 ; preds = %if.end21
  %space134 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 6
  %tail145 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 4
  %mmio146 = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 30
  %tail_mask169 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 5
  %depth_fmt179 = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 21
  %depth_pitch_offset_c192 = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 27
  %end225 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 1
  br label %do.body132

if.then23:                                        ; preds = %if.end21
  %19 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n, align 4
  %call26 = tail call ptr @memdup_user(ptr noundef nonnull %18, i32 noundef %20) #7
  %cmp.i403 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i403, label %if.then28, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.then23
  %space = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 6
  %tail = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 4
  %mmio = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 30
  %tail_mask58 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 5
  %depth_fmt = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 21
  %depth_pitch_offset_c = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 27
  %end = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 1
  br label %for.body

if.then28:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef %call) #7
  tail call void @kfree(ptr noundef %call9) #7
  tail call void @kfree(ptr noundef %call17) #7
  %21 = ptrtoint ptr %call26 to i32
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0405 = phi i32 [ 0, %for.body.lr.ph ], [ %inc127, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %call26, i32 %i.0405
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool32.not = icmp eq i8 %23, 0
  br i1 %tobool32.not, label %for.body.for.inc_crit_edge, label %do.body

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.body:                                          ; preds = %for.body
  %24 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %space, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %25)
  %cmp35 = icmp ult i32 %25, 25
  br i1 %cmp35, label %do.body38, label %do.body.if.end51_crit_edge

do.body.if.end51_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

do.body38:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  tail call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tail, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %29 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %handle, align 4
  %add.ptr = getelementptr i8, ptr %32, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %28) #7, !srcloc !126
  %33 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio, align 4
  %handle44 = getelementptr inbounds %struct.drm_local_map, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %handle44 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %handle44, align 4
  %add.ptr45 = getelementptr i8, ptr %36, i32 1812
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  %call50 = tail call i32 @r128_wait_ring(ptr noundef %1, i32 noundef 24) #7
  br label %if.end51

if.end51:                                         ; preds = %do.body38, %do.body.if.end51_crit_edge
  %38 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %space, align 4
  %sub = add i32 %39, -24
  store i32 %sub, ptr %space, align 4
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %42 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tail, align 4
  %44 = ptrtoint ptr %tail_mask58 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tail_mask58, align 4
  %inc = add i32 %43, 1
  %arrayidx62 = getelementptr i32, ptr %41, i32 %43
  %46 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile i32 10093760, ptr %arrayidx62, align 4
  %and = and i32 %inc, %45
  %47 = ptrtoint ptr %depth_fmt to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %depth_fmt, align 4
  %shl = shl i32 %48, 8
  %or69 = or i32 %shl, 1357918418
  %49 = tail call i32 @llvm.bswap.i32(i32 %or69)
  %inc70 = add i32 %and, 1
  %arrayidx71 = getelementptr i32, ptr %41, i32 %and
  %50 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 %49, ptr %arrayidx71, align 4
  %and72 = and i32 %inc70, %45
  %51 = ptrtoint ptr %depth_pitch_offset_c to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %depth_pitch_offset_c, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %inc76 = add i32 %and72, 1
  %arrayidx77 = getelementptr i32, ptr %41, i32 %and72
  %54 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 %53, ptr %arrayidx77, align 4
  %and78 = and i32 %inc76, %45
  %arrayidx82 = getelementptr i32, ptr %call17, i32 %i.0405
  %55 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx82, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %inc83 = add i32 %and78, 1
  %arrayidx84 = getelementptr i32, ptr %41, i32 %and78
  %58 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile i32 %57, ptr %arrayidx84, align 4
  %and85 = and i32 %inc83, %45
  %arrayidx89 = getelementptr i32, ptr %call, i32 %i.0405
  %59 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx89, align 4
  %shl90 = shl i32 %60, 16
  %arrayidx91 = getelementptr i32, ptr %call9, i32 %i.0405
  %61 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx91, align 4
  %or92 = or i32 %shl90, %62
  %63 = tail call i32 @llvm.bswap.i32(i32 %or92)
  %inc93 = add i32 %and85, 1
  %arrayidx94 = getelementptr i32, ptr %41, i32 %and85
  %64 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile i32 %63, ptr %arrayidx94, align 4
  %and95 = and i32 %inc93, %45
  %inc99 = add i32 %and95, 1
  %arrayidx100 = getelementptr i32, ptr %41, i32 %and95
  %65 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile i32 16777472, ptr %arrayidx100, align 4
  %and101 = and i32 %inc99, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and101)
  %cmp105 = icmp slt i32 %and101, 32
  br i1 %cmp105, label %if.then106, label %if.end51.if.end111_crit_edge

if.end51.if.end111_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111

if.then106:                                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %end, align 4
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 4
  %mul110 = shl i32 %and101, 2
  %70 = call ptr @memcpy(ptr %67, ptr %69, i32 %mul110)
  br label %if.end111

if.end111:                                        ; preds = %if.then106, %if.end51.if.end111_crit_edge
  %71 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %tail, align 4
  %add = add i32 %72, 6
  %and114 = and i32 %add, %45
  call void @__sanitizer_cov_trace_cmp4(i32 %and114, i32 %and101)
  %cmp115.not = icmp eq i32 %and114, %and101
  br i1 %cmp115.not, label %if.else, label %if.then116

if.then116:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %and114, i32 noundef %and101, i32 noundef 1037) #7
  br label %for.inc

if.else:                                          ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %and101, ptr %tail, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then116, %for.body.for.inc_crit_edge
  %inc127 = add nuw nsw i32 %i.0405, 1
  %exitcond.not = icmp eq i32 %inc127, %3
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef %call26) #7
  br label %if.end249

do.body132:                                       ; preds = %for.inc246.do.body132_crit_edge, %do.body132.lr.ph
  %i.1408 = phi i32 [ 0, %do.body132.lr.ph ], [ %inc247, %for.inc246.do.body132_crit_edge ]
  %74 = ptrtoint ptr %space134 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %space134, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %75)
  %cmp135 = icmp ult i32 %75, 25
  br i1 %cmp135, label %do.body138, label %do.body132.if.end160_crit_edge

do.body132.if.end160_crit_edge:                   ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end160

do.body138:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  tail call void @arm_heavy_mb() #7
  %76 = ptrtoint ptr %tail145 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tail145, align 4
  %78 = tail call i32 @llvm.bswap.i32(i32 %77)
  %79 = ptrtoint ptr %mmio146 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mmio146, align 4
  %handle147 = getelementptr inbounds %struct.drm_local_map, ptr %80, i32 0, i32 4
  %81 = ptrtoint ptr %handle147 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %handle147, align 4
  %add.ptr148 = getelementptr i8, ptr %82, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr148, i32 %78) #7, !srcloc !126
  %83 = ptrtoint ptr %mmio146 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mmio146, align 4
  %handle152 = getelementptr inbounds %struct.drm_local_map, ptr %84, i32 0, i32 4
  %85 = ptrtoint ptr %handle152 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %handle152, align 4
  %add.ptr153 = getelementptr i8, ptr %86, i32 1812
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr153) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !145
  %call159 = tail call i32 @r128_wait_ring(ptr noundef %1, i32 noundef 24) #7
  br label %if.end160

if.end160:                                        ; preds = %do.body138, %do.body132.if.end160_crit_edge
  %88 = ptrtoint ptr %space134 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %space134, align 4
  %sub163 = add i32 %89, -24
  store i32 %sub163, ptr %space134, align 4
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %1, align 4
  %92 = ptrtoint ptr %tail145 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %tail145, align 4
  %94 = ptrtoint ptr %tail_mask169 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %tail_mask169, align 4
  %inc173 = add i32 %93, 1
  %arrayidx174 = getelementptr i32, ptr %91, i32 %93
  %96 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile i32 10093760, ptr %arrayidx174, align 4
  %and175 = and i32 %inc173, %95
  %97 = ptrtoint ptr %depth_fmt179 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %depth_fmt179, align 4
  %shl180 = shl i32 %98, 8
  %or185 = or i32 %shl180, 1357918418
  %99 = tail call i32 @llvm.bswap.i32(i32 %or185)
  %inc186 = add i32 %and175, 1
  %arrayidx187 = getelementptr i32, ptr %91, i32 %and175
  %100 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile i32 %99, ptr %arrayidx187, align 4
  %and188 = and i32 %inc186, %95
  %101 = ptrtoint ptr %depth_pitch_offset_c192 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %depth_pitch_offset_c192, align 4
  %103 = tail call i32 @llvm.bswap.i32(i32 %102)
  %inc193 = add i32 %and188, 1
  %arrayidx194 = getelementptr i32, ptr %91, i32 %and188
  %104 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile i32 %103, ptr %arrayidx194, align 4
  %and195 = and i32 %inc193, %95
  %arrayidx199 = getelementptr i32, ptr %call17, i32 %i.1408
  %105 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx199, align 4
  %107 = tail call i32 @llvm.bswap.i32(i32 %106)
  %inc200 = add i32 %and195, 1
  %arrayidx201 = getelementptr i32, ptr %91, i32 %and195
  %108 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile i32 %107, ptr %arrayidx201, align 4
  %and202 = and i32 %inc200, %95
  %arrayidx206 = getelementptr i32, ptr %call, i32 %i.1408
  %109 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx206, align 4
  %shl207 = shl i32 %110, 16
  %arrayidx208 = getelementptr i32, ptr %call9, i32 %i.1408
  %111 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx208, align 4
  %or209 = or i32 %shl207, %112
  %113 = tail call i32 @llvm.bswap.i32(i32 %or209)
  %inc210 = add i32 %and202, 1
  %arrayidx211 = getelementptr i32, ptr %91, i32 %and202
  %114 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile i32 %113, ptr %arrayidx211, align 4
  %and212 = and i32 %inc210, %95
  %inc216 = add i32 %and212, 1
  %arrayidx217 = getelementptr i32, ptr %91, i32 %and212
  %115 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile i32 16777472, ptr %arrayidx217, align 4
  %and218 = and i32 %inc216, %95
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and218)
  %cmp222 = icmp slt i32 %and218, 32
  br i1 %cmp222, label %if.then223, label %if.end160.if.end229_crit_edge

if.end160.if.end229_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end229

if.then223:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #9
  %116 = ptrtoint ptr %end225 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %end225, align 4
  %118 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %1, align 4
  %mul228 = shl i32 %and218, 2
  %120 = call ptr @memcpy(ptr %117, ptr %119, i32 %mul228)
  br label %if.end229

if.end229:                                        ; preds = %if.then223, %if.end160.if.end229_crit_edge
  %121 = ptrtoint ptr %tail145 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %tail145, align 4
  %add232 = add i32 %122, 6
  %and233 = and i32 %add232, %95
  call void @__sanitizer_cov_trace_cmp4(i32 %and233, i32 %and218)
  %cmp234.not = icmp eq i32 %and233, %and218
  br i1 %cmp234.not, label %if.else240, label %if.then235

if.then235:                                       ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %and233, i32 noundef %and218, i32 noundef 1061) #7
  br label %for.inc246

if.else240:                                       ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #9
  %123 = ptrtoint ptr %tail145 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %and218, ptr %tail145, align 4
  br label %for.inc246

for.inc246:                                       ; preds = %if.else240, %if.then235
  %inc247 = add nuw nsw i32 %i.1408, 1
  %exitcond409.not = icmp eq i32 %inc247, %3
  br i1 %exitcond409.not, label %for.inc246.if.end249_crit_edge, label %for.inc246.do.body132_crit_edge

for.inc246.do.body132_crit_edge:                  ; preds = %for.inc246
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body132

for.inc246.if.end249_crit_edge:                   ; preds = %for.inc246
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end249

if.end249:                                        ; preds = %for.inc246.if.end249_crit_edge, %for.end
  tail call void @kfree(ptr noundef %call) #7
  tail call void @kfree(ptr noundef %call9) #7
  tail call void @kfree(ptr noundef %call17) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end249, %if.then28, %if.then19, %if.then11, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then5 ], [ %11, %if.then11 ], [ %16, %if.then19 ], [ %21, %if.then28 ], [ 0, %if.end249 ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @r128_cce_dispatch_read_span(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %depth) unnamed_addr #0 align 64 {
entry:
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x) #7
  %2 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %x, align 4, !annotation !128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y) #7
  %3 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %y, align 4, !annotation !128
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.22) #7
  %n = getelementptr inbounds %struct.drm_r128_depth, ptr %depth, i32 0, i32 1
  %4 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n, align 4
  %6 = add i32 %5, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %6)
  %7 = icmp ult i32 %6, -4096
  br i1 %7, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %x2 = getelementptr inbounds %struct.drm_r128_depth, ptr %depth, i32 0, i32 2
  %8 = ptrtoint ptr %x2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %x2, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.26, i32 noundef 156) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.end.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end.if.then11.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 4, i32 -1226833920) #10, !srcloc !129
  %asmresult.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !130

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %x, i32 noundef 4) #7
  %11 = call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !131
  %and.i.i.i.i = and i32 %13, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !132
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %x, ptr noundef %9, i32 noundef 4) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #7, !srcloc !132
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end4, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !130

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end.if.then11.i.i_crit_edge
  %res.0.i.i191 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 4, %if.end.if.then11.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 4, %res.0.i.i191
  %add.ptr.i.i = getelementptr i8, ptr %x, i32 %sub.i.i
  %14 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i191)
  br label %cleanup

if.end4:                                          ; preds = %if.end.i.i
  %y5 = getelementptr inbounds %struct.drm_r128_depth, ptr %depth, i32 0, i32 3
  %15 = ptrtoint ptr %y5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %y5, align 4
  call void @__might_fault(ptr noundef nonnull @.str.26, i32 noundef 156) #7
  %call.i.i170 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i170, label %if.end4.if.then11.i.i186_crit_edge, label %land.lhs.true.i.i173

if.end4.if.then11.i.i186_crit_edge:               ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i186

land.lhs.true.i.i173:                             ; preds = %if.end4
  %17 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %16, i32 4, i32 -1226833920) #10, !srcloc !129
  %asmresult.i.i171 = extractvalue { i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i171)
  %cmp.i6.i172 = icmp eq i32 %asmresult.i.i171, 0
  br i1 %cmp.i6.i172, label %if.end.i.i183, label %land.lhs.true.i.i173.if.then11.i.i186_crit_edge, !prof !130

land.lhs.true.i.i173.if.then11.i.i186_crit_edge:  ; preds = %land.lhs.true.i.i173
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i186

if.end.i.i183:                                    ; preds = %land.lhs.true.i.i173
  %call.i.i.i174 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %y, i32 noundef 4) #7
  %18 = call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i.i.i.i.i.i175 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i.i175 to ptr
  %cpu_domain.i.i.i.i.i176 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 4
  %20 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i176) #6, !srcloc !131
  %and.i.i.i.i177 = and i32 %20, -13
  %or.i.i.i.i178 = or i32 %and.i.i.i.i177, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i178) #7, !srcloc !132
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  %call1.i.i.i179 = call i32 @arm_copy_from_user(ptr noundef nonnull %y, ptr noundef %16, i32 noundef 4) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #7, !srcloc !132
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i179)
  %tobool4.not.i.i182 = icmp eq i32 %call1.i.i.i179, 0
  br i1 %tobool4.not.i.i182, label %do.body, label %if.end.i.i183.if.then11.i.i186_crit_edge, !prof !130

if.end.i.i183.if.then11.i.i186_crit_edge:         ; preds = %if.end.i.i183
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i186

if.then11.i.i186:                                 ; preds = %if.end.i.i183.if.then11.i.i186_crit_edge, %land.lhs.true.i.i173.if.then11.i.i186_crit_edge, %if.end4.if.then11.i.i186_crit_edge
  %res.0.i.i181196 = phi i32 [ %call1.i.i.i179, %if.end.i.i183.if.then11.i.i186_crit_edge ], [ 4, %if.end4.if.then11.i.i186_crit_edge ], [ 4, %land.lhs.true.i.i173.if.then11.i.i186_crit_edge ]
  %sub.i.i184 = sub i32 4, %res.0.i.i181196
  %add.ptr.i.i185 = getelementptr i8, ptr %y, i32 %sub.i.i184
  %21 = call ptr @memset(ptr %add.ptr.i.i185, i32 0, i32 %res.0.i.i181196)
  br label %cleanup

do.body:                                          ; preds = %if.end.i.i183
  %space = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %space, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %23)
  %cmp11 = icmp ult i32 %23, 29
  br i1 %cmp11, label %do.body14, label %do.body.if.end27_crit_edge

do.body.if.end27_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

do.body14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !146
  call void @arm_heavy_mb() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  call void @arm_heavy_mb() #7
  %tail = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tail, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  %mmio = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 30
  %27 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %handle, align 4
  %add.ptr = getelementptr i8, ptr %30, i32 1812
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %26) #7, !srcloc !126
  %31 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio, align 4
  %handle20 = getelementptr inbounds %struct.drm_local_map, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %handle20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %handle20, align 4
  %add.ptr21 = getelementptr i8, ptr %34, i32 1812
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #7, !srcloc !122
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !148
  %call26 = call i32 @r128_wait_ring(ptr noundef %1, i32 noundef 28) #7
  br label %if.end27

if.end27:                                         ; preds = %do.body14, %do.body.if.end27_crit_edge
  %36 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %space, align 4
  %sub = add i32 %37, -28
  store i32 %sub, ptr %space, align 4
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %tail32 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 4
  %40 = ptrtoint ptr %tail32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tail32, align 4
  %tail_mask34 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 5
  %42 = ptrtoint ptr %tail_mask34 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tail_mask34, align 4
  %inc = add i32 %41, 1
  %arrayidx = getelementptr i32, ptr %39, i32 %41
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 10159552, ptr %arrayidx, align 4
  %and = and i32 %inc, %43
  %depth_fmt = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 21
  %45 = ptrtoint ptr %depth_fmt to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %depth_fmt, align 4
  %shl = shl i32 %46, 8
  %or45 = or i32 %shl, 1389113587
  %47 = call i32 @llvm.bswap.i32(i32 %or45)
  %inc46 = add i32 %and, 1
  %arrayidx47 = getelementptr i32, ptr %39, i32 %and
  %48 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 %47, ptr %arrayidx47, align 4
  %and48 = and i32 %inc46, %43
  %depth_pitch_offset_c = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 27
  %49 = ptrtoint ptr %depth_pitch_offset_c to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %depth_pitch_offset_c, align 4
  %51 = call i32 @llvm.bswap.i32(i32 %50)
  %inc52 = add i32 %and48, 1
  %arrayidx53 = getelementptr i32, ptr %39, i32 %and48
  %52 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile i32 %51, ptr %arrayidx53, align 4
  %and54 = and i32 %inc52, %43
  %span_pitch_offset_c = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 28
  %53 = ptrtoint ptr %span_pitch_offset_c to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %span_pitch_offset_c, align 4
  %55 = call i32 @llvm.bswap.i32(i32 %54)
  %inc58 = add i32 %and54, 1
  %arrayidx59 = getelementptr i32, ptr %39, i32 %and54
  %56 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile i32 %55, ptr %arrayidx59, align 4
  %and60 = and i32 %inc58, %43
  %57 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %x, align 4
  %shl64 = shl i32 %58, 16
  %59 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %y, align 4
  %or65 = or i32 %shl64, %60
  %61 = call i32 @llvm.bswap.i32(i32 %or65)
  %inc66 = add i32 %and60, 1
  %arrayidx67 = getelementptr i32, ptr %39, i32 %and60
  %62 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile i32 %61, ptr %arrayidx67, align 4
  %and68 = and i32 %inc66, %43
  %inc72 = add i32 %and68, 1
  %arrayidx73 = getelementptr i32, ptr %39, i32 %and68
  %63 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile i32 0, ptr %arrayidx73, align 4
  %and74 = and i32 %inc72, %43
  %shl78 = shl nuw nsw i32 %5, 16
  %or79 = or i32 %shl78, 1
  %64 = call i32 @llvm.bswap.i32(i32 %or79)
  %inc80 = add i32 %and74, 1
  %arrayidx81 = getelementptr i32, ptr %39, i32 %and74
  %65 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile i32 %64, ptr %arrayidx81, align 4
  %and82 = and i32 %inc80, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and82)
  %cmp86 = icmp slt i32 %and82, 32
  br i1 %cmp86, label %if.then87, label %if.end27.if.end91_crit_edge

if.end27.if.end91_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

if.then87:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %end = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 1
  %66 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %end, align 4
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 4
  %mul = shl i32 %and82, 2
  %70 = call ptr @memcpy(ptr %67, ptr %69, i32 %mul)
  br label %if.end91

if.end91:                                         ; preds = %if.then87, %if.end27.if.end91_crit_edge
  %71 = ptrtoint ptr %tail32 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %tail32, align 4
  %add = add i32 %72, 7
  %and94 = and i32 %add, %43
  call void @__sanitizer_cov_trace_cmp4(i32 %and94, i32 %and82)
  %cmp95.not = icmp eq i32 %and94, %and82
  br i1 %cmp95.not, label %if.else, label %if.then96

if.then96:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %and94, i32 noundef %and82, i32 noundef 1108) #7
  br label %cleanup

if.else:                                          ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %tail32 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %and82, ptr %tail32, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then96, %if.then11.i.i186, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %entry.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then96 ], [ -14, %if.then11.i.i ], [ -14, %if.then11.i.i186 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @r128_cce_dispatch_read_pixels(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %depth) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.22) #7
  %n = getelementptr inbounds %struct.drm_r128_depth, ptr %depth, i32 0, i32 1
  %2 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n, align 4
  %4 = add i32 %3, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %4)
  %5 = icmp ult i32 %4, -4096
  br i1 %5, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %depth_pitch = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 23
  %6 = ptrtoint ptr %depth_pitch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %depth_pitch, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %3, i32 %7)
  %mul = shl nuw nsw i32 %8, 2
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3264) #11
  %cmp7281 = icmp eq ptr %call9.i, null
  br i1 %cmp7281, label %if.end.cleanup_crit_edge, label %if.end8.i236

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.i236:                                     ; preds = %if.end
  %call9.i235 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3264) #11
  %cmp11 = icmp eq ptr %call9.i235, null
  br i1 %cmp11, label %if.end8.i236.cleanup.sink.split_crit_edge, label %if.end13

if.end8.i236.cleanup.sink.split_crit_edge:        ; preds = %if.end8.i236
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end13:                                         ; preds = %if.end8.i236
  %x14 = getelementptr inbounds %struct.drm_r128_depth, ptr %depth, i32 0, i32 2
  %9 = ptrtoint ptr %x14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %x14, align 4
  tail call void @__check_object_size(ptr noundef nonnull %call9.i, i32 noundef %mul, i1 noundef zeroext false) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.26, i32 noundef 156) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.end13.if.end.i.i242_crit_edge, label %land.lhs.true.i.i

if.end13.if.end.i.i242_crit_edge:                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i242

land.lhs.true.i.i:                                ; preds = %if.end13
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %10, i32 %mul, i32 -1226833920) #10, !srcloc !129
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i242_crit_edge, !prof !130

land.lhs.true.i.i.if.end.i.i242_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i242

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i, i32 noundef %mul) #7
  %12 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !131
  %and.i.i.i.i = and i32 %14, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call9.i, ptr noundef %10, i32 noundef %mul) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #7, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  br label %if.end.i.i242

if.end.i.i242:                                    ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i242_crit_edge, %if.end13.if.end.i.i242_crit_edge
  %res.0.i.i = phi i32 [ %mul, %if.end13.if.end.i.i242_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %mul, %land.lhs.true.i.i.if.end.i.i242_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end17, label %if.end.i.i242.cleanup.sink.split.sink.split.sink.split_crit_edge, !prof !130

if.end.i.i242.cleanup.sink.split.sink.split.sink.split_crit_edge: ; preds = %if.end.i.i242
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.sink.split.sink.split

if.end17:                                         ; preds = %if.end.i.i242
  %y18 = getelementptr inbounds %struct.drm_r128_depth, ptr %depth, i32 0, i32 3
  %15 = ptrtoint ptr %y18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %y18, align 4
  tail call void @__check_object_size(ptr noundef nonnull %call9.i235, i32 noundef %mul, i1 noundef zeroext false) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.26, i32 noundef 156) #7
  %call.i.i252 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i252, label %if.end17.if.end.i.i266_crit_edge, label %land.lhs.true.i.i256

if.end17.if.end.i.i266_crit_edge:                 ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i266

land.lhs.true.i.i256:                             ; preds = %if.end17
  %17 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %16, i32 %mul, i32 -1226833920) #10, !srcloc !129
  %asmresult.i.i254 = extractvalue { i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i254)
  %cmp.i6.i255 = icmp eq i32 %asmresult.i.i254, 0
  br i1 %cmp.i6.i255, label %if.then.i7.i263, label %land.lhs.true.i.i256.if.end.i.i266_crit_edge, !prof !130

land.lhs.true.i.i256.if.end.i.i266_crit_edge:     ; preds = %land.lhs.true.i.i256
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i266

if.then.i7.i263:                                  ; preds = %land.lhs.true.i.i256
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i257 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i235, i32 noundef %mul) #7
  %18 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i.i.i.i.i.i258 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i.i258 to ptr
  %cpu_domain.i.i.i.i.i259 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 4
  %20 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i259) #6, !srcloc !131
  %and.i.i.i.i260 = and i32 %20, -13
  %or.i.i.i.i261 = or i32 %and.i.i.i.i260, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i261) #7, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  %call1.i.i.i262 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call9.i235, ptr noundef %16, i32 noundef %mul) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #7, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  br label %if.end.i.i266

if.end.i.i266:                                    ; preds = %if.then.i7.i263, %land.lhs.true.i.i256.if.end.i.i266_crit_edge, %if.end17.if.end.i.i266_crit_edge
  %res.0.i.i264 = phi i32 [ %mul, %if.end17.if.end.i.i266_crit_edge ], [ %call1.i.i.i262, %if.then.i7.i263 ], [ %mul, %land.lhs.true.i.i256.if.end.i.i266_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i264)
  %tobool4.not.i.i265 = icmp eq i32 %res.0.i.i264, 0
  br i1 %tobool4.not.i.i265, label %for.cond.preheader, label %if.end.i.i266.cleanup.sink.split.sink.split.sink.split_crit_edge, !prof !130

if.end.i.i266.cleanup.sink.split.sink.split.sink.split_crit_edge: ; preds = %if.end.i.i266
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.sink.split.sink.split

for.cond.preheader:                               ; preds = %if.end.i.i266
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp23358.not = icmp eq i32 %8, 0
  br i1 %cmp23358.not, label %for.cond.preheader.cleanup.sink.split.sink.split_crit_edge, label %do.body.lr.ph

for.cond.preheader.cleanup.sink.split.sink.split_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.sink.split

do.body.lr.ph:                                    ; preds = %for.cond.preheader
  %space = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 6
  %tail = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 4
  %mmio = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 30
  %tail_mask48 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 5
  %depth_fmt = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 21
  %depth_pitch_offset_c = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 27
  %span_pitch_offset_c = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 28
  %end = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %do.body.lr.ph
  %i.0359 = phi i32 [ 0, %do.body.lr.ph ], [ %inc123, %for.inc.do.body_crit_edge ]
  %21 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %space, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %22)
  %cmp25 = icmp ult i32 %22, 29
  br i1 %cmp25, label %do.body28, label %do.body.if.end41_crit_edge

do.body.if.end41_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

do.body28:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  tail call void @arm_heavy_mb() #7
  %23 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tail, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %26 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %handle, align 4
  %add.ptr = getelementptr i8, ptr %29, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %25) #7, !srcloc !126
  %30 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio, align 4
  %handle34 = getelementptr inbounds %struct.drm_local_map, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %handle34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %handle34, align 4
  %add.ptr35 = getelementptr i8, ptr %33, i32 1812
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  %call40 = tail call i32 @r128_wait_ring(ptr noundef %1, i32 noundef 28) #7
  br label %if.end41

if.end41:                                         ; preds = %do.body28, %do.body.if.end41_crit_edge
  %35 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %space, align 4
  %sub = add i32 %36, -28
  store i32 %sub, ptr %space, align 4
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %39 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tail, align 4
  %41 = ptrtoint ptr %tail_mask48 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tail_mask48, align 4
  %inc = add i32 %40, 1
  %arrayidx = getelementptr i32, ptr %38, i32 %40
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile i32 10159552, ptr %arrayidx, align 4
  %and = and i32 %inc, %42
  %44 = ptrtoint ptr %depth_fmt to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %depth_fmt, align 4
  %shl = shl i32 %45, 8
  %or59 = or i32 %shl, 1389113587
  %46 = tail call i32 @llvm.bswap.i32(i32 %or59)
  %inc60 = add i32 %and, 1
  %arrayidx61 = getelementptr i32, ptr %38, i32 %and
  %47 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 %46, ptr %arrayidx61, align 4
  %and62 = and i32 %inc60, %42
  %48 = ptrtoint ptr %depth_pitch_offset_c to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %depth_pitch_offset_c, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  %inc66 = add i32 %and62, 1
  %arrayidx67 = getelementptr i32, ptr %38, i32 %and62
  %51 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile i32 %50, ptr %arrayidx67, align 4
  %and68 = and i32 %inc66, %42
  %52 = ptrtoint ptr %span_pitch_offset_c to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %span_pitch_offset_c, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  %inc72 = add i32 %and68, 1
  %arrayidx73 = getelementptr i32, ptr %38, i32 %and68
  %55 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile i32 %54, ptr %arrayidx73, align 4
  %and74 = and i32 %inc72, %42
  %arrayidx78 = getelementptr i32, ptr %call9.i, i32 %i.0359
  %56 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx78, align 4
  %shl79 = shl i32 %57, 16
  %arrayidx80 = getelementptr i32, ptr %call9.i235, i32 %i.0359
  %58 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx80, align 4
  %or81 = or i32 %shl79, %59
  %60 = tail call i32 @llvm.bswap.i32(i32 %or81)
  %inc82 = add i32 %and74, 1
  %arrayidx83 = getelementptr i32, ptr %38, i32 %and74
  %61 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 %60, ptr %arrayidx83, align 4
  %and84 = and i32 %inc82, %42
  %62 = tail call i32 @llvm.bswap.i32(i32 %i.0359)
  %63 = lshr i32 %62, 16
  %inc90 = add i32 %and84, 1
  %arrayidx91 = getelementptr i32, ptr %38, i32 %and84
  %64 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile i32 %63, ptr %arrayidx91, align 4
  %and92 = and i32 %inc90, %42
  %inc96 = add i32 %and92, 1
  %arrayidx97 = getelementptr i32, ptr %38, i32 %and92
  %65 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile i32 16777472, ptr %arrayidx97, align 4
  %and98 = and i32 %inc96, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and98)
  %cmp102 = icmp slt i32 %and98, 32
  br i1 %cmp102, label %if.then103, label %if.end41.if.end108_crit_edge

if.end41.if.end108_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end108

if.then103:                                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %end, align 4
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 4
  %mul107 = shl i32 %and98, 2
  %70 = call ptr @memcpy(ptr %67, ptr %69, i32 %mul107)
  br label %if.end108

if.end108:                                        ; preds = %if.then103, %if.end41.if.end108_crit_edge
  %71 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %tail, align 4
  %add = add i32 %72, 7
  %and111 = and i32 %add, %42
  call void @__sanitizer_cov_trace_cmp4(i32 %and111, i32 %and98)
  %cmp112.not = icmp eq i32 %and111, %and98
  br i1 %cmp112.not, label %if.else, label %if.then113

if.then113:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %and111, i32 noundef %and98, i32 noundef 1170) #7
  br label %for.inc

if.else:                                          ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %and98, ptr %tail, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then113
  %inc123 = add nuw nsw i32 %i.0359, 1
  %exitcond.not = icmp eq i32 %inc123, %8
  br i1 %exitcond.not, label %for.inc.cleanup.sink.split.sink.split_crit_edge, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.inc.cleanup.sink.split.sink.split_crit_edge:  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split.sink.split:         ; preds = %if.end.i.i266.cleanup.sink.split.sink.split.sink.split_crit_edge, %if.end.i.i242.cleanup.sink.split.sink.split.sink.split_crit_edge
  %res.0.i.i264.sink379 = phi i32 [ %res.0.i.i, %if.end.i.i242.cleanup.sink.split.sink.split.sink.split_crit_edge ], [ %res.0.i.i264, %if.end.i.i266.cleanup.sink.split.sink.split.sink.split_crit_edge ]
  %call9.i235.sink = phi ptr [ %call9.i, %if.end.i.i242.cleanup.sink.split.sink.split.sink.split_crit_edge ], [ %call9.i235, %if.end.i.i266.cleanup.sink.split.sink.split.sink.split_crit_edge ]
  %sub.i.i267 = sub i32 %mul, %res.0.i.i264.sink379
  %add.ptr.i.i268 = getelementptr i8, ptr %call9.i235.sink, i32 %sub.i.i267
  %74 = call ptr @memset(ptr %add.ptr.i.i268, i32 0, i32 %res.0.i.i264.sink379)
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %cleanup.sink.split.sink.split.sink.split, %for.inc.cleanup.sink.split.sink.split_crit_edge, %for.cond.preheader.cleanup.sink.split.sink.split_crit_edge
  %retval.0.ph.ph = phi i32 [ 0, %for.cond.preheader.cleanup.sink.split.sink.split_crit_edge ], [ -14, %cleanup.sink.split.sink.split.sink.split ], [ 0, %for.inc.cleanup.sink.split.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end8.i236.cleanup.sink.split_crit_edge
  %retval.1.i237294301327338369377.sink = phi ptr [ %call9.i, %if.end8.i236.cleanup.sink.split_crit_edge ], [ %call9.i235, %cleanup.sink.split.sink.split ]
  %retval.0.ph = phi i32 [ -12, %if.end8.i236.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  tail call void @kfree(ptr noundef nonnull %retval.1.i237294301327338369377.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r128_cce_stipple(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data, ptr noundef %file_priv) #0 align 64 {
entry:
  %mask = alloca [32 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %mask) #7
  %2 = call ptr @memset(ptr %mask, i32 255, i32 128)
  %master = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 8
  %3 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %master, align 4
  %lock = getelementptr inbounds %struct.drm_master, ptr %4, i32 0, i32 12
  %5 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lock, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %tobool.not = icmp sgt i32 %8, -1
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %file_priv4 = getelementptr inbounds %struct.drm_master, ptr %4, i32 0, i32 12, i32 1
  %9 = ptrtoint ptr %file_priv4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %file_priv4, align 4
  %cmp.not = icmp eq ptr %10, %file_priv
  br i1 %cmp.not, label %do.body13, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %6, align 4
  %and9 = and i32 %12, -2147483648
  %file_priv12 = getelementptr inbounds %struct.drm_master, ptr %4, i32 0, i32 12, i32 1
  %13 = ptrtoint ptr %file_priv12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %file_priv12, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.r128_cce_stipple, i32 noundef %and9, ptr noundef %14, ptr noundef %file_priv) #7
  br label %cleanup52

do.body13:                                        ; preds = %lor.lhs.false
  %tobool14.not = icmp eq ptr %1, null
  br i1 %tobool14.not, label %if.then15, label %do.end18

if.then15:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #7
  br label %cleanup52

do.end18:                                         ; preds = %do.body13
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.26, i32 noundef 156) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %do.end18.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

do.end18.if.then11.i.i_crit_edge:                 ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %do.end18
  %17 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %16, i32 128, i32 -1226833920) #10, !srcloc !129
  %asmresult.i.i = extractvalue { i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !130

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %mask, i32 noundef 128) #7
  %18 = call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 4
  %20 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !131
  %and.i.i.i.i = and i32 %20, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !132
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %mask, ptr noundef %16, i32 noundef 128) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #7, !srcloc !132
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %do.body23, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !130

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %do.end18.if.then11.i.i_crit_edge
  %res.0.i.i82 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 128, %do.end18.if.then11.i.i_crit_edge ], [ 128, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 128, %res.0.i.i82
  %add.ptr.i.i = getelementptr i8, ptr %mask, i32 %sub.i.i
  %21 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i82)
  br label %cleanup52

do.body23:                                        ; preds = %if.end.i.i
  %space = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %space, align 4
  %high_mark = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 7
  %24 = ptrtoint ptr %high_mark to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %high_mark, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp25 = icmp slt i32 %23, %25
  br i1 %cmp25, label %for.cond.preheader, label %do.body23.do.end36_crit_edge

do.body23.do.end36_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end36

for.cond.preheader:                               ; preds = %do.body23
  %usec_timeout = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 7
  %26 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp2785 = icmp sgt i32 %27, 0
  br i1 %cmp2785, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %mmio.i = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 30
  %tail.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 4
  %size.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end32.for.body_crit_edge, %for.body.lr.ph
  %i.086 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end32.for.body_crit_edge ]
  %28 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio.i, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %handle.i, align 4
  %add.ptr.i = getelementptr i8, ptr %31, i32 1808
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !122
  %33 = call i32 @llvm.bswap.i32(i32 %32) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  %34 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tail.i, align 4
  %sub.i = sub i32 %33, %35
  %mul.i = shl i32 %sub.i, 2
  %36 = ptrtoint ptr %space to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %mul.i, ptr %space, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mul.i)
  %cmp.i = icmp slt i32 %mul.i, 1
  br i1 %cmp.i, label %if.then.i, label %for.body.r128_update_ring_snapshot.exit_crit_edge

for.body.r128_update_ring_snapshot.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %r128_update_ring_snapshot.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %size.i, align 4
  %add.i = add i32 %38, %mul.i
  %39 = ptrtoint ptr %space to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add.i, ptr %space, align 4
  br label %r128_update_ring_snapshot.exit

r128_update_ring_snapshot.exit:                   ; preds = %if.then.i, %for.body.r128_update_ring_snapshot.exit_crit_edge
  %40 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %space, align 4
  %42 = ptrtoint ptr %high_mark to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %high_mark, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp30.not = icmp slt i32 %41, %43
  br i1 %cmp30.not, label %if.end32, label %r128_update_ring_snapshot.exit.do.end36_crit_edge

r128_update_ring_snapshot.exit.do.end36_crit_edge: ; preds = %r128_update_ring_snapshot.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end36

if.end32:                                         ; preds = %r128_update_ring_snapshot.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %44(i32 noundef 214748) #7
  %inc = add nuw nsw i32 %i.086, 1
  %45 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %usec_timeout, align 4
  %cmp27 = icmp slt i32 %inc, %46
  br i1 %cmp27, label %if.end32.for.body_crit_edge, label %if.end32.for.end_crit_edge

if.end32.for.end_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end32.for.body_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end32.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #7
  br label %cleanup52

do.end36:                                         ; preds = %r128_update_ring_snapshot.exit.do.end36_crit_edge, %do.body23.do.end36_crit_edge
  %47 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_private, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.22) #7
  %space.i71 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %space.i71 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %space.i71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 133, i32 %50)
  %cmp.i72 = icmp ult i32 %50, 133
  br i1 %cmp.i72, label %do.body3.i, label %do.end36.if.end.i_crit_edge

do.end36.if.end.i_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.body3.i:                                       ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  call void @arm_heavy_mb() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !153
  call void @arm_heavy_mb() #7
  %tail.i73 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %48, i32 0, i32 4
  %51 = ptrtoint ptr %tail.i73 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tail.i73, align 4
  %53 = call i32 @llvm.bswap.i32(i32 %52) #7
  %mmio.i74 = getelementptr inbounds %struct.drm_r128_private, ptr %48, i32 0, i32 30
  %54 = ptrtoint ptr %mmio.i74 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mmio.i74, align 4
  %handle.i75 = getelementptr inbounds %struct.drm_local_map, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %handle.i75 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %handle.i75, align 4
  %add.ptr.i76 = getelementptr i8, ptr %57, i32 1812
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76, i32 %53) #7, !srcloc !126
  %58 = ptrtoint ptr %mmio.i74 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mmio.i74, align 4
  %handle9.i = getelementptr inbounds %struct.drm_local_map, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %handle9.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %handle9.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %61, i32 1812
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #7, !srcloc !122
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  %call14.i = call i32 @r128_wait_ring(ptr noundef %48, i32 noundef 132) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.body3.i, %do.end36.if.end.i_crit_edge
  %63 = ptrtoint ptr %space.i71 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %space.i71, align 4
  %sub.i77 = add i32 %64, -132
  store i32 %sub.i77, ptr %space.i71, align 4
  %65 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %48, align 4
  %tail19.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %48, i32 0, i32 4
  %67 = ptrtoint ptr %tail19.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tail19.i, align 4
  %tail_mask21.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %48, i32 0, i32 5
  %69 = ptrtoint ptr %tail_mask21.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %tail_mask21.i, align 4
  %arrayidx.i = getelementptr i32, ptr %66, i32 %68
  %71 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile i32 537206528, ptr %arrayidx.i, align 4
  %inc.pn85.i = add i32 %68, 1
  %write.086.i = and i32 %inc.pn85.i, %70
  br label %do.body28.i

do.body28.i:                                      ; preds = %do.body28.i.do.body28.i_crit_edge, %if.end.i
  %write.088.i = phi i32 [ %write.086.i, %if.end.i ], [ %write.0.i, %do.body28.i.do.body28.i_crit_edge ]
  %i.087.i = phi i32 [ 0, %if.end.i ], [ %inc35.i, %do.body28.i.do.body28.i_crit_edge ]
  %arrayidx29.i = getelementptr i32, ptr %mask, i32 %i.087.i
  %72 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx29.i, align 4
  %74 = call i32 @llvm.bswap.i32(i32 %73) #7
  %arrayidx31.i = getelementptr i32, ptr %66, i32 %write.088.i
  %75 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile i32 %74, ptr %arrayidx31.i, align 4
  %inc35.i = add nuw nsw i32 %i.087.i, 1
  %inc.pn.i = add i32 %write.088.i, 1
  %write.0.i = and i32 %inc.pn.i, %70
  %exitcond.not.i = icmp eq i32 %inc35.i, 32
  br i1 %exitcond.not.i, label %do.body36.i, label %do.body28.i.do.body28.i_crit_edge

do.body28.i.do.body28.i_crit_edge:                ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body28.i

do.body36.i:                                      ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %write.0.i)
  %cmp37.i = icmp slt i32 %write.0.i, 32
  br i1 %cmp37.i, label %if.then38.i, label %do.body36.i.if.end42.i_crit_edge

do.body36.i.if.end42.i_crit_edge:                 ; preds = %do.body36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i

if.then38.i:                                      ; preds = %do.body36.i
  call void @__sanitizer_cov_trace_pc() #9
  %end.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %48, i32 0, i32 1
  %76 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %end.i, align 4
  %78 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %48, align 4
  %mul.i78 = shl i32 %write.0.i, 2
  %80 = call ptr @memcpy(ptr %77, ptr %79, i32 %mul.i78)
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %do.body36.i.if.end42.i_crit_edge
  %81 = ptrtoint ptr %tail19.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tail19.i, align 4
  %add.i79 = add i32 %82, 33
  %and45.i = and i32 %add.i79, %70
  call void @__sanitizer_cov_trace_cmp4(i32 %and45.i, i32 %write.0.i)
  %cmp46.not.i = icmp eq i32 %and45.i, %write.0.i
  br i1 %cmp46.not.i, label %if.else.i, label %if.then47.i

if.then47.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %and45.i, i32 noundef %write.0.i, i32 noundef 1196) #7
  br label %r128_cce_dispatch_stipple.exit

if.else.i:                                        ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  %83 = ptrtoint ptr %tail19.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %write.0.i, ptr %tail19.i, align 4
  br label %r128_cce_dispatch_stipple.exit

r128_cce_dispatch_stipple.exit:                   ; preds = %if.else.i, %if.then47.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  call void @arm_heavy_mb() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !156
  call void @arm_heavy_mb() #7
  %tail = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 4
  %84 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %tail, align 4
  %86 = call i32 @llvm.bswap.i32(i32 %85)
  %mmio = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 30
  %87 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mmio, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %88, i32 0, i32 4
  %89 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %handle, align 4
  %add.ptr = getelementptr i8, ptr %90, i32 1812
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %86) #7, !srcloc !126
  %91 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mmio, align 4
  %handle46 = getelementptr inbounds %struct.drm_local_map, ptr %92, i32 0, i32 4
  %93 = ptrtoint ptr %handle46 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %handle46, align 4
  %add.ptr47 = getelementptr i8, ptr %94, i32 1812
  %95 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #7, !srcloc !122
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !157
  br label %cleanup52

cleanup52:                                        ; preds = %r128_cce_dispatch_stipple.exit, %for.end, %if.then11.i.i, %if.then15, %if.then
  %retval.1 = phi i32 [ -22, %if.then ], [ 0, %r128_cce_dispatch_stipple.exit ], [ -22, %if.then15 ], [ -16, %for.end ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %mask) #7
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r128_getparam(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data, ptr nocapture readnone %file_priv) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #7
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #7
  br label %cleanup

do.end:                                           ; preds = %entry
  %4 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 68
  %8 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pid.i, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef %9) #7
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cond = icmp eq i32 %11, 1
  br i1 %cond, label %sw.bb, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  %irq = getelementptr i8, ptr %3, i32 932
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  %14 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %value, align 4
  %value4 = getelementptr inbounds %struct.drm_r128_getparam, ptr %data, i32 0, i32 1
  %15 = ptrtoint ptr %value4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %value4, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.26, i32 noundef 174) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %sw.bb.if.then7_crit_edge, label %if.end.i.i

sw.bb.if.then7_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.end.i.i:                                       ; preds = %sw.bb
  %17 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %16, i32 4, i32 -1226833920) #10, !srcloc !158
  %asmresult.i.i = extractvalue { i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i1.i, label %copy_to_user.exit, label %if.end.i.i.if.then7_crit_edge

if.end.i.i.if.then7_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %value, i32 noundef 4) #7
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %16, ptr noundef nonnull %value, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool6.not = icmp eq i32 %call.i1.i.i, 0
  br i1 %tobool6.not, label %copy_to_user.exit.cleanup_crit_edge, label %copy_to_user.exit.if.then7_crit_edge

copy_to_user.exit.if.then7_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7:                                         ; preds = %copy_to_user.exit.if.then7_crit_edge, %if.end.i.i.if.then7_crit_edge, %sw.bb.if.then7_crit_edge
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %copy_to_user.exit.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -14, %if.then7 ], [ -22, %if.then ], [ -22, %do.end.cleanup_crit_edge ], [ 0, %copy_to_user.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r128_driver_preclose(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then:                                          ; preds = %entry
  %page_flipping = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %page_flipping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %page_flipping, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then3

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then3:                                         ; preds = %if.then
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.22) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  tail call void @arm_heavy_mb() #7
  %crtc_offset.i = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %crtc_offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %crtc_offset.i, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #7
  %mmio.i = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 30
  %7 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio.i, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %handle.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !160
  tail call void @arm_heavy_mb() #7
  %crtc_offset_cntl.i = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 14
  %11 = ptrtoint ptr %crtc_offset_cntl.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %crtc_offset_cntl.i, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  %14 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i, align 4
  %handle5.i = getelementptr inbounds %struct.drm_local_map, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %handle5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %handle5.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %17, i32 552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %13) #7, !srcloc !126
  %current_page.i = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 12
  %18 = ptrtoint ptr %current_page.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %current_page.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not.i = icmp eq i32 %19, 0
  br i1 %cmp.not.i, label %if.then3.r128_do_cleanup_pageflip.exit_crit_edge, label %if.then.i

if.then3.r128_do_cleanup_pageflip.exit_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %r128_do_cleanup_pageflip.exit

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @r128_cce_dispatch_flip(ptr noundef %dev) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  tail call void @arm_heavy_mb() #7
  %tail.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tail.i, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #7
  %23 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio.i, align 4
  %handle15.i = getelementptr inbounds %struct.drm_local_map, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %handle15.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %handle15.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %26, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %22) #7, !srcloc !126
  %27 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio.i, align 4
  %handle18.i = getelementptr inbounds %struct.drm_local_map, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %handle18.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %handle18.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %30, i32 1812
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.i) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  br label %r128_do_cleanup_pageflip.exit

r128_do_cleanup_pageflip.exit:                    ; preds = %if.then.i, %if.then3.r128_do_cleanup_pageflip.exit_crit_edge
  %32 = ptrtoint ptr %page_flipping to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %page_flipping, align 4
  br label %if.end4

if.end4:                                          ; preds = %r128_do_cleanup_pageflip.exit, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r128_driver_lastclose(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @r128_do_cleanup_cce(ptr noundef %dev) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r128_do_cleanup_cce(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r128_cce_init(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r128_cce_start(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r128_cce_stop(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r128_cce_reset(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r128_cce_idle(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r128_engine_reset(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r128_cce_swap(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data, ptr noundef %file_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %sarea_priv1 = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sarea_priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sarea_priv1, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.22) #7
  %master = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 8
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %lock = getelementptr inbounds %struct.drm_master, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool.not = icmp sgt i32 %9, -1
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %file_priv5 = getelementptr inbounds %struct.drm_master, ptr %5, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %file_priv5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %file_priv5, align 4
  %cmp.not = icmp eq ptr %11, %file_priv
  br i1 %cmp.not, label %do.body14, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %7, align 4
  %and10 = and i32 %13, -2147483648
  %file_priv13 = getelementptr inbounds %struct.drm_master, ptr %5, i32 0, i32 12, i32 1
  %14 = ptrtoint ptr %file_priv13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %file_priv13, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.r128_cce_swap, i32 noundef %and10, ptr noundef %15, ptr noundef %file_priv) #7
  br label %cleanup53

do.body14:                                        ; preds = %lor.lhs.false
  %tobool15.not = icmp eq ptr %1, null
  br i1 %tobool15.not, label %if.then16, label %do.body20

if.then16:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #7
  br label %cleanup53

do.body20:                                        ; preds = %do.body14
  %space = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %space, align 4
  %high_mark = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %high_mark to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %high_mark, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp22 = icmp slt i32 %17, %19
  br i1 %cmp22, label %for.cond.preheader, label %do.body20.do.end33_crit_edge

do.body20.do.end33_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end33

for.cond.preheader:                               ; preds = %do.body20
  %usec_timeout = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp2482 = icmp sgt i32 %21, 0
  br i1 %cmp2482, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %mmio.i = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 30
  %tail.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 4
  %size.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end29.for.body_crit_edge, %for.body.lr.ph
  %i.083 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end29.for.body_crit_edge ]
  %22 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio.i, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %handle.i, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 1808
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !122
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  %28 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tail.i, align 4
  %sub.i = sub i32 %27, %29
  %mul.i = shl i32 %sub.i, 2
  %30 = ptrtoint ptr %space to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul.i, ptr %space, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mul.i)
  %cmp.i = icmp slt i32 %mul.i, 1
  br i1 %cmp.i, label %if.then.i, label %for.body.r128_update_ring_snapshot.exit_crit_edge

for.body.r128_update_ring_snapshot.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %r128_update_ring_snapshot.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size.i, align 4
  %add.i = add i32 %32, %mul.i
  %33 = ptrtoint ptr %space to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add.i, ptr %space, align 4
  br label %r128_update_ring_snapshot.exit

r128_update_ring_snapshot.exit:                   ; preds = %if.then.i, %for.body.r128_update_ring_snapshot.exit_crit_edge
  %34 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %space, align 4
  %36 = ptrtoint ptr %high_mark to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %high_mark, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp27.not = icmp slt i32 %35, %37
  br i1 %cmp27.not, label %if.end29, label %r128_update_ring_snapshot.exit.do.end33_crit_edge

r128_update_ring_snapshot.exit.do.end33_crit_edge: ; preds = %r128_update_ring_snapshot.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end33

if.end29:                                         ; preds = %r128_update_ring_snapshot.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748) #7
  %inc = add nuw nsw i32 %i.083, 1
  %39 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %usec_timeout, align 4
  %cmp24 = icmp slt i32 %inc, %40
  br i1 %cmp24, label %if.end29.for.body_crit_edge, label %if.end29.for.end_crit_edge

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end29.for.body_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end29.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #7
  br label %cleanup53

do.end33:                                         ; preds = %r128_update_ring_snapshot.exit.do.end33_crit_edge, %do.body20.do.end33_crit_edge
  %nbox = getelementptr inbounds %struct.drm_r128_sarea, ptr %3, i32 0, i32 6
  %41 = ptrtoint ptr %nbox to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nbox, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %42)
  %cmp34 = icmp ugt i32 %42, 12
  br i1 %cmp34, label %if.then35, label %do.end33.if.end37_crit_edge

do.end33.if.end37_crit_edge:                      ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then35:                                        ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %nbox to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 12, ptr %nbox, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %do.end33.if.end37_crit_edge
  %44 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_private, align 4
  %sarea_priv1.i = getelementptr inbounds %struct.drm_r128_private, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %sarea_priv1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sarea_priv1.i, align 4
  %nbox2.i = getelementptr inbounds %struct.drm_r128_sarea, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %nbox2.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nbox2.i, align 4
  %boxes.i = getelementptr inbounds %struct.drm_r128_sarea, ptr %47, i32 0, i32 5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp322.i = icmp sgt i32 %49, 0
  br i1 %cmp322.i, label %for.body.lr.ph.i, label %if.end37.for.end.i_crit_edge

if.end37.for.end.i_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end37
  %space.i74 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %45, i32 0, i32 6
  %tail.i75 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %45, i32 0, i32 4
  %mmio.i76 = getelementptr inbounds %struct.drm_r128_private, ptr %45, i32 0, i32 30
  %tail_mask33.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %45, i32 0, i32 5
  %color_fmt.i = getelementptr inbounds %struct.drm_r128_private, ptr %45, i32 0, i32 16
  %current_page.i = getelementptr inbounds %struct.drm_r128_private, ptr %45, i32 0, i32 12
  %front_pitch_offset_c68.i = getelementptr inbounds %struct.drm_r128_private, ptr %45, i32 0, i32 25
  %back_pitch_offset_c75.i = getelementptr inbounds %struct.drm_r128_private, ptr %45, i32 0, i32 26
  %end.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %45, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %do.end129.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0323.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc130.i, %do.end129.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.drm_clip_rect, ptr %boxes.i, i32 %i.0323.i
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %51 to i32
  %y1.i = getelementptr %struct.drm_clip_rect, ptr %boxes.i, i32 %i.0323.i, i32 1
  %52 = ptrtoint ptr %y1.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %y1.i, align 2
  %conv4.i = zext i16 %53 to i32
  %x2.i = getelementptr %struct.drm_clip_rect, ptr %boxes.i, i32 %i.0323.i, i32 2
  %54 = ptrtoint ptr %x2.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %x2.i, align 2
  %conv6.i = zext i16 %55 to i32
  %sub.i77 = sub nsw i32 %conv6.i, %conv.i
  %y2.i = getelementptr %struct.drm_clip_rect, ptr %boxes.i, i32 %i.0323.i, i32 3
  %56 = ptrtoint ptr %y2.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %y2.i, align 2
  %conv8.i = zext i16 %57 to i32
  %sub9.i = sub nsw i32 %conv8.i, %conv4.i
  %58 = ptrtoint ptr %space.i74 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %space.i74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %59)
  %cmp11.i = icmp ult i32 %59, 29
  br i1 %cmp11.i, label %do.body14.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.body14.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !165
  tail call void @arm_heavy_mb() #7
  %60 = ptrtoint ptr %tail.i75 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tail.i75, align 4
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #7
  %63 = ptrtoint ptr %mmio.i76 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mmio.i76, align 4
  %handle.i78 = getelementptr inbounds %struct.drm_local_map, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %handle.i78 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %handle.i78, align 4
  %add.ptr.i79 = getelementptr i8, ptr %66, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79, i32 %62) #7, !srcloc !126
  %67 = ptrtoint ptr %mmio.i76 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mmio.i76, align 4
  %handle20.i = getelementptr inbounds %struct.drm_local_map, ptr %68, i32 0, i32 4
  %69 = ptrtoint ptr %handle20.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %handle20.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %70, i32 1812
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !166
  %call25.i = tail call i32 @r128_wait_ring(ptr noundef %45, i32 noundef 28) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.body14.i, %for.body.i.if.end.i_crit_edge
  %72 = ptrtoint ptr %space.i74 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %space.i74, align 4
  %sub28.i = add i32 %73, -28
  store i32 %sub28.i, ptr %space.i74, align 4
  %74 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %45, align 4
  %76 = ptrtoint ptr %tail.i75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tail.i75, align 4
  %78 = ptrtoint ptr %tail_mask33.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tail_mask33.i, align 4
  %inc.i = add i32 %77, 1
  %arrayidx37.i = getelementptr i32, ptr %75, i32 %77
  %80 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile i32 10159552, ptr %arrayidx37.i, align 4
  %and.i = and i32 %inc.i, %79
  %81 = ptrtoint ptr %color_fmt.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %color_fmt.i, align 4
  %shl.i = shl i32 %82, 8
  %or46.i = or i32 %shl.i, 1925984499
  %83 = tail call i32 @llvm.bswap.i32(i32 %or46.i) #7
  %inc47.i = add i32 %and.i, 1
  %arrayidx48.i = getelementptr i32, ptr %75, i32 %and.i
  %84 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile i32 %83, ptr %arrayidx48.i, align 4
  %and49.i = and i32 %inc47.i, %79
  %85 = ptrtoint ptr %current_page.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %current_page.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp52.i = icmp eq i32 %86, 0
  %back_pitch_offset_c75.front_pitch_offset_c68.i = select i1 %cmp52.i, ptr %back_pitch_offset_c75.i, ptr %front_pitch_offset_c68.i
  %front_pitch_offset_c68.back_pitch_offset_c75.i = select i1 %cmp52.i, ptr %front_pitch_offset_c68.i, ptr %back_pitch_offset_c75.i
  %87 = ptrtoint ptr %back_pitch_offset_c75.front_pitch_offset_c68.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %back_pitch_offset_c75.front_pitch_offset_c68.i, align 4
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #7
  %inc56.i = add i32 %and49.i, 1
  %arrayidx57.i = getelementptr i32, ptr %75, i32 %and49.i
  %90 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile i32 %89, ptr %arrayidx57.i, align 4
  %and58.i = and i32 %inc56.i, %79
  %91 = ptrtoint ptr %front_pitch_offset_c68.back_pitch_offset_c75.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %front_pitch_offset_c68.back_pitch_offset_c75.i, align 4
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #7
  %arrayidx63.i = getelementptr i32, ptr %75, i32 %and58.i
  %94 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile i32 %93, ptr %arrayidx63.i, align 4
  %inc62.pn.i = add i32 %and58.i, 1
  %write.0.i = and i32 %inc62.pn.i, %79
  %shl83.i = shl nuw i32 %conv.i, 16
  %or84.i = or i32 %shl83.i, %conv4.i
  %95 = tail call i32 @llvm.bswap.i32(i32 %or84.i) #7
  %inc85.i = add i32 %write.0.i, 1
  %arrayidx86.i = getelementptr i32, ptr %75, i32 %write.0.i
  %96 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile i32 %95, ptr %arrayidx86.i, align 4
  %and87.i = and i32 %inc85.i, %79
  %inc93.i = add i32 %and87.i, 1
  %arrayidx94.i = getelementptr i32, ptr %75, i32 %and87.i
  %97 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile i32 %95, ptr %arrayidx94.i, align 4
  %and95.i = and i32 %inc93.i, %79
  %shl99.i = shl i32 %sub.i77, 16
  %or100.i = or i32 %shl99.i, %sub9.i
  %98 = tail call i32 @llvm.bswap.i32(i32 %or100.i) #7
  %inc101.i = add i32 %and95.i, 1
  %arrayidx102.i = getelementptr i32, ptr %75, i32 %and95.i
  %99 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile i32 %98, ptr %arrayidx102.i, align 4
  %and103.i = and i32 %inc101.i, %79
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and103.i)
  %cmp107.i = icmp slt i32 %and103.i, 32
  br i1 %cmp107.i, label %if.then109.i, label %if.end.i.if.end113.i_crit_edge

if.end.i.if.end113.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113.i

if.then109.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %100 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %end.i, align 4
  %102 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %45, align 4
  %mul.i80 = shl i32 %and103.i, 2
  %104 = call ptr @memcpy(ptr %101, ptr %103, i32 %mul.i80)
  br label %if.end113.i

if.end113.i:                                      ; preds = %if.then109.i, %if.end.i.if.end113.i_crit_edge
  %105 = ptrtoint ptr %tail.i75 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %tail.i75, align 4
  %add.i81 = add i32 %106, 7
  %and116.i = and i32 %add.i81, %79
  call void @__sanitizer_cov_trace_cmp4(i32 %and116.i, i32 %and103.i)
  %cmp117.not.i = icmp eq i32 %and116.i, %and103.i
  br i1 %cmp117.not.i, label %if.else124.i, label %if.then119.i

if.then119.i:                                     ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %and116.i, i32 noundef %and103.i, i32 noundef 513) #7
  br label %do.end129.i

if.else124.i:                                     ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #9
  %107 = ptrtoint ptr %tail.i75 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %and103.i, ptr %tail.i75, align 4
  br label %do.end129.i

do.end129.i:                                      ; preds = %if.else124.i, %if.then119.i
  %inc130.i = add nuw nsw i32 %i.0323.i, 1
  %exitcond.not.i = icmp eq i32 %inc130.i, %49
  br i1 %exitcond.not.i, label %do.end129.i.for.end.i_crit_edge, label %do.end129.i.for.body.i_crit_edge

do.end129.i.for.body.i_crit_edge:                 ; preds = %do.end129.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do.end129.i.for.end.i_crit_edge:                  ; preds = %do.end129.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %do.end129.i.for.end.i_crit_edge, %if.end37.for.end.i_crit_edge
  %108 = ptrtoint ptr %sarea_priv1.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %sarea_priv1.i, align 4
  %last_frame.i = getelementptr inbounds %struct.drm_r128_sarea, ptr %109, i32 0, i32 7
  %110 = ptrtoint ptr %last_frame.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %last_frame.i, align 4
  %inc132.i = add i32 %111, 1
  store i32 %inc132.i, ptr %last_frame.i, align 4
  %space135.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %45, i32 0, i32 6
  %112 = ptrtoint ptr %space135.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %space135.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %113)
  %cmp136.i = icmp ult i32 %113, 9
  br i1 %cmp136.i, label %do.body140.i, label %for.end.i.if.end162.i_crit_edge

for.end.i.if.end162.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end162.i

do.body140.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !167
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %tail147.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %45, i32 0, i32 4
  %114 = ptrtoint ptr %tail147.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %tail147.i, align 4
  %116 = tail call i32 @llvm.bswap.i32(i32 %115) #7
  %mmio148.i = getelementptr inbounds %struct.drm_r128_private, ptr %45, i32 0, i32 30
  %117 = ptrtoint ptr %mmio148.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %mmio148.i, align 4
  %handle149.i = getelementptr inbounds %struct.drm_local_map, ptr %118, i32 0, i32 4
  %119 = ptrtoint ptr %handle149.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %handle149.i, align 4
  %add.ptr150.i = getelementptr i8, ptr %120, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr150.i, i32 %116) #7, !srcloc !126
  %121 = ptrtoint ptr %mmio148.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %mmio148.i, align 4
  %handle154.i = getelementptr inbounds %struct.drm_local_map, ptr %122, i32 0, i32 4
  %123 = ptrtoint ptr %handle154.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %handle154.i, align 4
  %add.ptr155.i = getelementptr i8, ptr %124, i32 1812
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr155.i) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  %call161.i = tail call i32 @r128_wait_ring(ptr noundef %45, i32 noundef 8) #7
  br label %if.end162.i

if.end162.i:                                      ; preds = %do.body140.i, %for.end.i.if.end162.i_crit_edge
  %126 = ptrtoint ptr %space135.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %space135.i, align 4
  %sub165.i = add i32 %127, -8
  store i32 %sub165.i, ptr %space135.i, align 4
  %128 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %45, align 4
  %tail169.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %45, i32 0, i32 4
  %130 = ptrtoint ptr %tail169.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %tail169.i, align 4
  %tail_mask171.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %45, i32 0, i32 5
  %132 = ptrtoint ptr %tail_mask171.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %tail_mask171.i, align 4
  %inc175.i = add i32 %131, 1
  %arrayidx176.i = getelementptr i32, ptr %129, i32 %131
  %134 = ptrtoint ptr %arrayidx176.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile i32 2013593600, ptr %arrayidx176.i, align 4
  %and177.i = and i32 %inc175.i, %133
  %135 = ptrtoint ptr %sarea_priv1.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %sarea_priv1.i, align 4
  %last_frame182.i = getelementptr inbounds %struct.drm_r128_sarea, ptr %136, i32 0, i32 7
  %137 = ptrtoint ptr %last_frame182.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %last_frame182.i, align 4
  %139 = tail call i32 @llvm.bswap.i32(i32 %138) #7
  %inc183.i = add i32 %and177.i, 1
  %arrayidx184.i = getelementptr i32, ptr %129, i32 %and177.i
  %140 = ptrtoint ptr %arrayidx184.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile i32 %139, ptr %arrayidx184.i, align 4
  %and185.i = and i32 %inc183.i, %133
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and185.i)
  %cmp189.i = icmp slt i32 %and185.i, 32
  br i1 %cmp189.i, label %if.then191.i, label %if.end162.i.if.end197.i_crit_edge

if.end162.i.if.end197.i_crit_edge:                ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end197.i

if.then191.i:                                     ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #9
  %end193.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %45, i32 0, i32 1
  %141 = ptrtoint ptr %end193.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %end193.i, align 4
  %143 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %45, align 4
  %mul196.i = shl i32 %and185.i, 2
  %145 = call ptr @memcpy(ptr %142, ptr %144, i32 %mul196.i)
  br label %if.end197.i

if.end197.i:                                      ; preds = %if.then191.i, %if.end162.i.if.end197.i_crit_edge
  %146 = ptrtoint ptr %tail169.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %tail169.i, align 4
  %add200.i = add i32 %147, 2
  %and201.i = and i32 %add200.i, %133
  call void @__sanitizer_cov_trace_cmp4(i32 %and201.i, i32 %and185.i)
  %cmp202.not.i = icmp eq i32 %and201.i, %and185.i
  br i1 %cmp202.not.i, label %if.else209.i, label %if.then204.i

if.then204.i:                                     ; preds = %if.end197.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %and201.i, i32 noundef %and185.i, i32 noundef 527) #7
  br label %r128_cce_dispatch_swap.exit

if.else209.i:                                     ; preds = %if.end197.i
  call void @__sanitizer_cov_trace_pc() #9
  %148 = ptrtoint ptr %tail169.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %and185.i, ptr %tail169.i, align 4
  br label %r128_cce_dispatch_swap.exit

r128_cce_dispatch_swap.exit:                      ; preds = %if.else209.i, %if.then204.i
  %149 = ptrtoint ptr %sarea_priv1 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %sarea_priv1, align 4
  %dirty = getelementptr inbounds %struct.drm_r128_sarea, ptr %150, i32 0, i32 2
  %151 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %dirty, align 4
  %or = or i32 %152, 129
  store i32 %or, ptr %dirty, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  tail call void @arm_heavy_mb() #7
  %tail = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 4
  %153 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %tail, align 4
  %155 = tail call i32 @llvm.bswap.i32(i32 %154)
  %mmio = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 30
  %156 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %mmio, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %157, i32 0, i32 4
  %158 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %handle, align 4
  %add.ptr = getelementptr i8, ptr %159, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %155) #7, !srcloc !126
  %160 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %mmio, align 4
  %handle48 = getelementptr inbounds %struct.drm_local_map, ptr %161, i32 0, i32 4
  %162 = ptrtoint ptr %handle48 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %handle48, align 4
  %add.ptr49 = getelementptr i8, ptr %163, i32 1812
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  br label %cleanup53

cleanup53:                                        ; preds = %r128_cce_dispatch_swap.exit, %for.end, %if.then16, %if.then
  %retval.1 = phi i32 [ -22, %if.then ], [ 0, %r128_cce_dispatch_swap.exit ], [ -22, %if.then16 ], [ -16, %for.end ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r128_cce_clear(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data, ptr noundef %file_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.22) #7
  %master = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 8
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  %lock = getelementptr inbounds %struct.drm_master, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lock, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool.not = icmp sgt i32 %7, -1
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %file_priv4 = getelementptr inbounds %struct.drm_master, ptr %3, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %file_priv4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %file_priv4, align 4
  %cmp.not = icmp eq ptr %9, %file_priv
  br i1 %cmp.not, label %do.body13, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %5, align 4
  %and9 = and i32 %11, -2147483648
  %file_priv12 = getelementptr inbounds %struct.drm_master, ptr %3, i32 0, i32 12, i32 1
  %12 = ptrtoint ptr %file_priv12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %file_priv12, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.r128_cce_clear, i32 noundef %and9, ptr noundef %13, ptr noundef %file_priv) #7
  br label %cleanup53

do.body13:                                        ; preds = %lor.lhs.false
  %tobool14.not = icmp eq ptr %1, null
  br i1 %tobool14.not, label %if.then15, label %do.body19

if.then15:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #7
  br label %cleanup53

do.body19:                                        ; preds = %do.body13
  %space = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %space, align 4
  %high_mark = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %high_mark to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %high_mark, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp21 = icmp slt i32 %15, %17
  br i1 %cmp21, label %for.cond.preheader, label %do.body19.do.end32_crit_edge

do.body19.do.end32_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32

for.cond.preheader:                               ; preds = %do.body19
  %usec_timeout = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp2385 = icmp sgt i32 %19, 0
  br i1 %cmp2385, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %mmio.i = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 30
  %tail.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 4
  %size.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end28.for.body_crit_edge, %for.body.lr.ph
  %i.086 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end28.for.body_crit_edge ]
  %20 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %handle.i, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 1808
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !122
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  %26 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tail.i, align 4
  %sub.i = sub i32 %25, %27
  %mul.i = shl i32 %sub.i, 2
  %28 = ptrtoint ptr %space to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %mul.i, ptr %space, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mul.i)
  %cmp.i = icmp slt i32 %mul.i, 1
  br i1 %cmp.i, label %if.then.i, label %for.body.r128_update_ring_snapshot.exit_crit_edge

for.body.r128_update_ring_snapshot.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %r128_update_ring_snapshot.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size.i, align 4
  %add.i = add i32 %30, %mul.i
  %31 = ptrtoint ptr %space to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add.i, ptr %space, align 4
  br label %r128_update_ring_snapshot.exit

r128_update_ring_snapshot.exit:                   ; preds = %if.then.i, %for.body.r128_update_ring_snapshot.exit_crit_edge
  %32 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %space, align 4
  %34 = ptrtoint ptr %high_mark to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %high_mark, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp26.not = icmp slt i32 %33, %35
  br i1 %cmp26.not, label %if.end28, label %r128_update_ring_snapshot.exit.do.end32_crit_edge

r128_update_ring_snapshot.exit.do.end32_crit_edge: ; preds = %r128_update_ring_snapshot.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32

if.end28:                                         ; preds = %r128_update_ring_snapshot.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748) #7
  %inc = add nuw nsw i32 %i.086, 1
  %37 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %usec_timeout, align 4
  %cmp23 = icmp slt i32 %inc, %38
  br i1 %cmp23, label %if.end28.for.body_crit_edge, label %if.end28.for.end_crit_edge

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end28.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #7
  br label %cleanup53

do.end32:                                         ; preds = %r128_update_ring_snapshot.exit.do.end32_crit_edge, %do.body19.do.end32_crit_edge
  %sarea_priv33 = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 1
  %39 = ptrtoint ptr %sarea_priv33 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sarea_priv33, align 4
  %nbox = getelementptr inbounds %struct.drm_r128_sarea, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %nbox to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nbox, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %42)
  %cmp34 = icmp ugt i32 %42, 12
  br i1 %cmp34, label %if.then35, label %do.end32.if.end37_crit_edge

do.end32.if.end37_crit_edge:                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then35:                                        ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %nbox to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 12, ptr %nbox, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %do.end32.if.end37_crit_edge
  %44 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_private, align 4
  %sarea_priv1.i = getelementptr inbounds %struct.drm_r128_private, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %sarea_priv1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sarea_priv1.i, align 4
  %nbox2.i = getelementptr inbounds %struct.drm_r128_sarea, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %nbox2.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nbox2.i, align 4
  %boxes.i = getelementptr inbounds %struct.drm_r128_sarea, ptr %47, i32 0, i32 5
  %50 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %data, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.22) #7
  %page_flipping.i = getelementptr inbounds %struct.drm_r128_private, ptr %45, i32 0, i32 11
  %52 = ptrtoint ptr %page_flipping.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %page_flipping.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i = icmp eq i32 %53, 0
  br i1 %tobool.not.i, label %if.end37.if.end12.i_crit_edge, label %land.lhs.true.i

if.end37.if.end12.i_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %if.end37
  %current_page.i = getelementptr inbounds %struct.drm_r128_private, ptr %45, i32 0, i32 12
  %54 = ptrtoint ptr %current_page.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %current_page.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp.i75 = icmp eq i32 %55, 1
  br i1 %cmp.i75, label %if.then.i76, label %land.lhs.true.i.if.end12.i_crit_edge

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.then.i76:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %51, -4
  %and4.i = shl i32 %51, 1
  %56 = and i32 %and4.i, 2
  %57 = or i32 %56, %and.i
  %and7.i = lshr i32 %51, 1
  %58 = and i32 %and7.i, 1
  %59 = or i32 %57, %58
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then.i76, %land.lhs.true.i.if.end12.i_crit_edge, %if.end37.if.end12.i_crit_edge
  %flags.2.i = phi i32 [ %59, %if.then.i76 ], [ %51, %land.lhs.true.i.if.end12.i_crit_edge ], [ %51, %if.end37.if.end12.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp13673.i = icmp sgt i32 %49, 0
  br i1 %cmp13673.i, label %for.body.lr.ph.i, label %if.end12.i.r128_cce_dispatch_clear.exit_crit_edge

if.end12.i.r128_cce_dispatch_clear.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %r128_cce_dispatch_clear.exit

for.body.lr.ph.i:                                 ; preds = %if.end12.i
  %and33.i = and i32 %flags.2.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  %space.i77 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %45, i32 0, i32 6
  %tail.i78 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %45, i32 0, i32 4
  %mmio.i79 = getelementptr inbounds %struct.drm_r128_private, ptr %45, i32 0, i32 30
  %tail_mask62.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %45, i32 0, i32 5
  %color_mask.i = getelementptr inbounds %struct.drm_r128_clear, ptr %data, i32 0, i32 3
  %end.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %45, i32 0, i32 1
  %and100.i = and i32 %flags.2.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100.i)
  %tobool101.not.i = icmp eq i32 %and100.i, 0
  %color_fmt.i = getelementptr inbounds %struct.drm_r128_private, ptr %45, i32 0, i32 16
  %front_pitch_offset_c.i = getelementptr inbounds %struct.drm_r128_private, ptr %45, i32 0, i32 25
  %clear_color.i = getelementptr inbounds %struct.drm_r128_clear, ptr %data, i32 0, i32 1
  %and217.i = and i32 %flags.2.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and217.i)
  %tobool218.not.i = icmp eq i32 %and217.i, 0
  %back_pitch_offset_c.i = getelementptr inbounds %struct.drm_r128_private, ptr %45, i32 0, i32 26
  %and337.i = and i32 %flags.2.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and337.i)
  %tobool338.not.i = icmp eq i32 %and337.i, 0
  %depth_fmt.i = getelementptr inbounds %struct.drm_r128_private, ptr %45, i32 0, i32 21
  %depth_pitch_offset_c.i = getelementptr inbounds %struct.drm_r128_private, ptr %45, i32 0, i32 27
  %clear_depth.i = getelementptr inbounds %struct.drm_r128_clear, ptr %data, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %if.end455.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0674.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc456.i, %if.end455.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.drm_clip_rect, ptr %boxes.i, i32 %i.0674.i
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %61 to i32
  %y1.i = getelementptr %struct.drm_clip_rect, ptr %boxes.i, i32 %i.0674.i, i32 1
  %62 = ptrtoint ptr %y1.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %y1.i, align 2
  %conv15.i = zext i16 %63 to i32
  %x2.i = getelementptr %struct.drm_clip_rect, ptr %boxes.i, i32 %i.0674.i, i32 2
  %64 = ptrtoint ptr %x2.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %x2.i, align 2
  %conv17.i = zext i16 %65 to i32
  %sub.i80 = sub nsw i32 %conv17.i, %conv.i
  %y2.i = getelementptr %struct.drm_clip_rect, ptr %boxes.i, i32 %i.0674.i, i32 3
  %66 = ptrtoint ptr %y2.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %y2.i, align 2
  %conv19.i = zext i16 %67 to i32
  %sub20.i = sub nsw i32 %conv19.i, %conv15.i
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.28, i32 noundef %conv.i, i32 noundef %conv15.i, i32 noundef %conv17.i, i32 noundef %conv19.i, i32 noundef %flags.2.i) #7
  br i1 %tobool34.not.i, label %for.body.i.if.end99.i_crit_edge, label %do.body.i

for.body.i.if.end99.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99.i

do.body.i:                                        ; preds = %for.body.i
  %68 = ptrtoint ptr %space.i77 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %space.i77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %69)
  %cmp37.i = icmp ult i32 %69, 9
  br i1 %cmp37.i, label %do.body41.i, label %do.body.i.if.end54.i_crit_edge

do.body.i.if.end54.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54.i

do.body41.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !174
  tail call void @arm_heavy_mb() #7
  %70 = ptrtoint ptr %tail.i78 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tail.i78, align 4
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #7
  %73 = ptrtoint ptr %mmio.i79 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mmio.i79, align 4
  %handle.i81 = getelementptr inbounds %struct.drm_local_map, ptr %74, i32 0, i32 4
  %75 = ptrtoint ptr %handle.i81 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %handle.i81, align 4
  %add.ptr.i82 = getelementptr i8, ptr %76, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82, i32 %72) #7, !srcloc !126
  %77 = ptrtoint ptr %mmio.i79 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mmio.i79, align 4
  %handle47.i = getelementptr inbounds %struct.drm_local_map, ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %handle47.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %handle47.i, align 4
  %add.ptr48.i = getelementptr i8, ptr %80, i32 1812
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48.i) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !175
  %call53.i = tail call i32 @r128_wait_ring(ptr noundef %45, i32 noundef 8) #7
  br label %if.end54.i

if.end54.i:                                       ; preds = %do.body41.i, %do.body.i.if.end54.i_crit_edge
  %82 = ptrtoint ptr %space.i77 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %space.i77, align 4
  %sub57.i = add i32 %83, -8
  store i32 %sub57.i, ptr %space.i77, align 4
  %84 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %45, align 4
  %86 = ptrtoint ptr %tail.i78 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %tail.i78, align 4
  %88 = ptrtoint ptr %tail_mask62.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tail_mask62.i, align 4
  %inc.i = add i32 %87, 1
  %arrayidx66.i = getelementptr i32, ptr %85, i32 %87
  %90 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile i32 -1291517952, ptr %arrayidx66.i, align 4
  %and67.i = and i32 %inc.i, %89
  %91 = ptrtoint ptr %color_mask.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %color_mask.i, align 4
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #7
  %inc71.i = add i32 %and67.i, 1
  %arrayidx72.i = getelementptr i32, ptr %85, i32 %and67.i
  %94 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile i32 %93, ptr %arrayidx72.i, align 4
  %and73.i = and i32 %inc71.i, %89
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and73.i)
  %cmp77.i = icmp slt i32 %and73.i, 32
  br i1 %cmp77.i, label %if.then79.i, label %if.end54.i.if.end83.i_crit_edge

if.end54.i.if.end83.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83.i

if.then79.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #9
  %95 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %end.i, align 4
  %97 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %45, align 4
  %mul.i83 = shl i32 %and73.i, 2
  %99 = call ptr @memcpy(ptr %96, ptr %98, i32 %mul.i83)
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.then79.i, %if.end54.i.if.end83.i_crit_edge
  %100 = ptrtoint ptr %tail.i78 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %tail.i78, align 4
  %add.i84 = add i32 %101, 2
  %and86.i = and i32 %add.i84, %89
  call void @__sanitizer_cov_trace_cmp4(i32 %and86.i, i32 %and73.i)
  %cmp87.not.i = icmp eq i32 %and86.i, %and73.i
  br i1 %cmp87.not.i, label %if.else.i, label %if.then89.i

if.then89.i:                                      ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %and86.i, i32 noundef %and73.i, i32 noundef 396) #7
  br label %if.end99.i

if.else.i:                                        ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #9
  %102 = ptrtoint ptr %tail.i78 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %and73.i, ptr %tail.i78, align 4
  br label %if.end99.i

if.end99.i:                                       ; preds = %if.else.i, %if.then89.i, %for.body.i.if.end99.i_crit_edge
  br i1 %tobool101.not.i, label %if.end99.i.if.end216.i_crit_edge, label %do.body103.i

if.end99.i.if.end216.i_crit_edge:                 ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end216.i

do.body103.i:                                     ; preds = %if.end99.i
  %103 = ptrtoint ptr %space.i77 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %space.i77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %104)
  %cmp106.i = icmp ult i32 %104, 25
  br i1 %cmp106.i, label %do.body110.i, label %do.body103.i.if.end132.i_crit_edge

do.body103.i.if.end132.i_crit_edge:               ; preds = %do.body103.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end132.i

do.body110.i:                                     ; preds = %do.body103.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !177
  tail call void @arm_heavy_mb() #7
  %105 = ptrtoint ptr %tail.i78 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %tail.i78, align 4
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #7
  %108 = ptrtoint ptr %mmio.i79 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mmio.i79, align 4
  %handle119.i = getelementptr inbounds %struct.drm_local_map, ptr %109, i32 0, i32 4
  %110 = ptrtoint ptr %handle119.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %handle119.i, align 4
  %add.ptr120.i = getelementptr i8, ptr %111, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr120.i, i32 %107) #7, !srcloc !126
  %112 = ptrtoint ptr %mmio.i79 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mmio.i79, align 4
  %handle124.i = getelementptr inbounds %struct.drm_local_map, ptr %113, i32 0, i32 4
  %114 = ptrtoint ptr %handle124.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %handle124.i, align 4
  %add.ptr125.i = getelementptr i8, ptr %115, i32 1812
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr125.i) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !178
  %call131.i = tail call i32 @r128_wait_ring(ptr noundef %45, i32 noundef 24) #7
  br label %if.end132.i

if.end132.i:                                      ; preds = %do.body110.i, %do.body103.i.if.end132.i_crit_edge
  %117 = ptrtoint ptr %space.i77 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %space.i77, align 4
  %sub135.i = add i32 %118, -24
  store i32 %sub135.i, ptr %space.i77, align 4
  %119 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %45, align 4
  %121 = ptrtoint ptr %tail.i78 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %tail.i78, align 4
  %123 = ptrtoint ptr %tail_mask62.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %tail_mask62.i, align 4
  %inc145.i = add i32 %122, 1
  %arrayidx146.i = getelementptr i32, ptr %120, i32 %122
  %125 = ptrtoint ptr %arrayidx146.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile i32 10093760, ptr %arrayidx146.i, align 4
  %and147.i = and i32 %inc145.i, %124
  %126 = ptrtoint ptr %color_fmt.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %color_fmt.i, align 4
  %shl.i = shl i32 %127, 8
  %or155.i = or i32 %shl.i, 821047506
  %128 = tail call i32 @llvm.bswap.i32(i32 %or155.i) #7
  %inc156.i = add i32 %and147.i, 1
  %arrayidx157.i = getelementptr i32, ptr %120, i32 %and147.i
  %129 = ptrtoint ptr %arrayidx157.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile i32 %128, ptr %arrayidx157.i, align 4
  %and158.i = and i32 %inc156.i, %124
  %130 = ptrtoint ptr %front_pitch_offset_c.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %front_pitch_offset_c.i, align 4
  %132 = tail call i32 @llvm.bswap.i32(i32 %131) #7
  %inc162.i = add i32 %and158.i, 1
  %arrayidx163.i = getelementptr i32, ptr %120, i32 %and158.i
  %133 = ptrtoint ptr %arrayidx163.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store volatile i32 %132, ptr %arrayidx163.i, align 4
  %and164.i = and i32 %inc162.i, %124
  %134 = ptrtoint ptr %clear_color.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %clear_color.i, align 4
  %136 = tail call i32 @llvm.bswap.i32(i32 %135) #7
  %inc168.i = add i32 %and164.i, 1
  %arrayidx169.i = getelementptr i32, ptr %120, i32 %and164.i
  %137 = ptrtoint ptr %arrayidx169.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store volatile i32 %136, ptr %arrayidx169.i, align 4
  %and170.i = and i32 %inc168.i, %124
  %shl174.i = shl nuw i32 %conv.i, 16
  %or175.i = or i32 %shl174.i, %conv15.i
  %138 = tail call i32 @llvm.bswap.i32(i32 %or175.i) #7
  %inc176.i = add i32 %and170.i, 1
  %arrayidx177.i = getelementptr i32, ptr %120, i32 %and170.i
  %139 = ptrtoint ptr %arrayidx177.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile i32 %138, ptr %arrayidx177.i, align 4
  %and178.i = and i32 %inc176.i, %124
  %shl182.i = shl i32 %sub.i80, 16
  %or183.i = or i32 %shl182.i, %sub20.i
  %140 = tail call i32 @llvm.bswap.i32(i32 %or183.i) #7
  %inc184.i = add i32 %and178.i, 1
  %arrayidx185.i = getelementptr i32, ptr %120, i32 %and178.i
  %141 = ptrtoint ptr %arrayidx185.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store volatile i32 %140, ptr %arrayidx185.i, align 4
  %and186.i = and i32 %inc184.i, %124
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and186.i)
  %cmp190.i = icmp slt i32 %and186.i, 32
  br i1 %cmp190.i, label %if.then192.i, label %if.end132.i.if.end198.i_crit_edge

if.end132.i.if.end198.i_crit_edge:                ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end198.i

if.then192.i:                                     ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #9
  %142 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %end.i, align 4
  %144 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %45, align 4
  %mul197.i = shl i32 %and186.i, 2
  %146 = call ptr @memcpy(ptr %143, ptr %145, i32 %mul197.i)
  br label %if.end198.i

if.end198.i:                                      ; preds = %if.then192.i, %if.end132.i.if.end198.i_crit_edge
  %147 = ptrtoint ptr %tail.i78 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %tail.i78, align 4
  %add201.i = add i32 %148, 6
  %and202.i = and i32 %add201.i, %124
  call void @__sanitizer_cov_trace_cmp4(i32 %and202.i, i32 %and186.i)
  %cmp203.not.i = icmp eq i32 %and202.i, %and186.i
  br i1 %cmp203.not.i, label %if.else210.i, label %if.then205.i

if.then205.i:                                     ; preds = %if.end198.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %and202.i, i32 noundef %and186.i, i32 noundef 417) #7
  br label %if.end216.i

if.else210.i:                                     ; preds = %if.end198.i
  call void @__sanitizer_cov_trace_pc() #9
  %149 = ptrtoint ptr %tail.i78 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %and186.i, ptr %tail.i78, align 4
  br label %if.end216.i

if.end216.i:                                      ; preds = %if.else210.i, %if.then205.i, %if.end99.i.if.end216.i_crit_edge
  br i1 %tobool218.not.i, label %if.end216.i.if.end336.i_crit_edge, label %do.body220.i

if.end216.i.if.end336.i_crit_edge:                ; preds = %if.end216.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end336.i

do.body220.i:                                     ; preds = %if.end216.i
  %150 = ptrtoint ptr %space.i77 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %space.i77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %151)
  %cmp223.i = icmp ult i32 %151, 25
  br i1 %cmp223.i, label %do.body227.i, label %do.body220.i.if.end249.i_crit_edge

do.body220.i.if.end249.i_crit_edge:               ; preds = %do.body220.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end249.i

do.body227.i:                                     ; preds = %do.body220.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !179
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !180
  tail call void @arm_heavy_mb() #7
  %152 = ptrtoint ptr %tail.i78 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %tail.i78, align 4
  %154 = tail call i32 @llvm.bswap.i32(i32 %153) #7
  %155 = ptrtoint ptr %mmio.i79 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %mmio.i79, align 4
  %handle236.i = getelementptr inbounds %struct.drm_local_map, ptr %156, i32 0, i32 4
  %157 = ptrtoint ptr %handle236.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %handle236.i, align 4
  %add.ptr237.i = getelementptr i8, ptr %158, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr237.i, i32 %154) #7, !srcloc !126
  %159 = ptrtoint ptr %mmio.i79 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %mmio.i79, align 4
  %handle241.i = getelementptr inbounds %struct.drm_local_map, ptr %160, i32 0, i32 4
  %161 = ptrtoint ptr %handle241.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %handle241.i, align 4
  %add.ptr242.i = getelementptr i8, ptr %162, i32 1812
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr242.i) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !181
  %call248.i = tail call i32 @r128_wait_ring(ptr noundef %45, i32 noundef 24) #7
  br label %if.end249.i

if.end249.i:                                      ; preds = %do.body227.i, %do.body220.i.if.end249.i_crit_edge
  %164 = ptrtoint ptr %space.i77 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %space.i77, align 4
  %sub252.i = add i32 %165, -24
  store i32 %sub252.i, ptr %space.i77, align 4
  %166 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %45, align 4
  %168 = ptrtoint ptr %tail.i78 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %tail.i78, align 4
  %170 = ptrtoint ptr %tail_mask62.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %tail_mask62.i, align 4
  %inc262.i = add i32 %169, 1
  %arrayidx263.i = getelementptr i32, ptr %167, i32 %169
  %172 = ptrtoint ptr %arrayidx263.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store volatile i32 10093760, ptr %arrayidx263.i, align 4
  %and264.i = and i32 %inc262.i, %171
  %173 = ptrtoint ptr %color_fmt.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %color_fmt.i, align 4
  %shl269.i = shl i32 %174, 8
  %or274.i = or i32 %shl269.i, 821047506
  %175 = tail call i32 @llvm.bswap.i32(i32 %or274.i) #7
  %inc275.i = add i32 %and264.i, 1
  %arrayidx276.i = getelementptr i32, ptr %167, i32 %and264.i
  %176 = ptrtoint ptr %arrayidx276.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store volatile i32 %175, ptr %arrayidx276.i, align 4
  %and277.i = and i32 %inc275.i, %171
  %177 = ptrtoint ptr %back_pitch_offset_c.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %back_pitch_offset_c.i, align 4
  %179 = tail call i32 @llvm.bswap.i32(i32 %178) #7
  %inc281.i = add i32 %and277.i, 1
  %arrayidx282.i = getelementptr i32, ptr %167, i32 %and277.i
  %180 = ptrtoint ptr %arrayidx282.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store volatile i32 %179, ptr %arrayidx282.i, align 4
  %and283.i = and i32 %inc281.i, %171
  %181 = ptrtoint ptr %clear_color.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %clear_color.i, align 4
  %183 = tail call i32 @llvm.bswap.i32(i32 %182) #7
  %inc288.i = add i32 %and283.i, 1
  %arrayidx289.i = getelementptr i32, ptr %167, i32 %and283.i
  %184 = ptrtoint ptr %arrayidx289.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store volatile i32 %183, ptr %arrayidx289.i, align 4
  %and290.i = and i32 %inc288.i, %171
  %shl294.i = shl nuw i32 %conv.i, 16
  %or295.i = or i32 %shl294.i, %conv15.i
  %185 = tail call i32 @llvm.bswap.i32(i32 %or295.i) #7
  %inc296.i = add i32 %and290.i, 1
  %arrayidx297.i = getelementptr i32, ptr %167, i32 %and290.i
  %186 = ptrtoint ptr %arrayidx297.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store volatile i32 %185, ptr %arrayidx297.i, align 4
  %and298.i = and i32 %inc296.i, %171
  %shl302.i = shl i32 %sub.i80, 16
  %or303.i = or i32 %shl302.i, %sub20.i
  %187 = tail call i32 @llvm.bswap.i32(i32 %or303.i) #7
  %inc304.i = add i32 %and298.i, 1
  %arrayidx305.i = getelementptr i32, ptr %167, i32 %and298.i
  %188 = ptrtoint ptr %arrayidx305.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store volatile i32 %187, ptr %arrayidx305.i, align 4
  %and306.i = and i32 %inc304.i, %171
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and306.i)
  %cmp310.i = icmp slt i32 %and306.i, 32
  br i1 %cmp310.i, label %if.then312.i, label %if.end249.i.if.end318.i_crit_edge

if.end249.i.if.end318.i_crit_edge:                ; preds = %if.end249.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end318.i

if.then312.i:                                     ; preds = %if.end249.i
  call void @__sanitizer_cov_trace_pc() #9
  %189 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %end.i, align 4
  %191 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %45, align 4
  %mul317.i = shl i32 %and306.i, 2
  %193 = call ptr @memcpy(ptr %190, ptr %192, i32 %mul317.i)
  br label %if.end318.i

if.end318.i:                                      ; preds = %if.then312.i, %if.end249.i.if.end318.i_crit_edge
  %194 = ptrtoint ptr %tail.i78 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %tail.i78, align 4
  %add321.i = add i32 %195, 6
  %and322.i = and i32 %add321.i, %171
  call void @__sanitizer_cov_trace_cmp4(i32 %and322.i, i32 %and306.i)
  %cmp323.not.i = icmp eq i32 %and322.i, %and306.i
  br i1 %cmp323.not.i, label %if.else330.i, label %if.then325.i

if.then325.i:                                     ; preds = %if.end318.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %and322.i, i32 noundef %and306.i, i32 noundef 438) #7
  br label %if.end336.i

if.else330.i:                                     ; preds = %if.end318.i
  call void @__sanitizer_cov_trace_pc() #9
  %196 = ptrtoint ptr %tail.i78 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %and306.i, ptr %tail.i78, align 4
  br label %if.end336.i

if.end336.i:                                      ; preds = %if.else330.i, %if.then325.i, %if.end216.i.if.end336.i_crit_edge
  br i1 %tobool338.not.i, label %if.end336.i.if.end455.i_crit_edge, label %do.body340.i

if.end336.i.if.end455.i_crit_edge:                ; preds = %if.end336.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end455.i

do.body340.i:                                     ; preds = %if.end336.i
  %197 = ptrtoint ptr %space.i77 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %space.i77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %198)
  %cmp343.i = icmp ult i32 %198, 25
  br i1 %cmp343.i, label %do.body347.i, label %do.body340.i.if.end369.i_crit_edge

do.body340.i.if.end369.i_crit_edge:               ; preds = %do.body340.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end369.i

do.body347.i:                                     ; preds = %do.body340.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !182
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !183
  tail call void @arm_heavy_mb() #7
  %199 = ptrtoint ptr %tail.i78 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %tail.i78, align 4
  %201 = tail call i32 @llvm.bswap.i32(i32 %200) #7
  %202 = ptrtoint ptr %mmio.i79 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %mmio.i79, align 4
  %handle356.i = getelementptr inbounds %struct.drm_local_map, ptr %203, i32 0, i32 4
  %204 = ptrtoint ptr %handle356.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %handle356.i, align 4
  %add.ptr357.i = getelementptr i8, ptr %205, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr357.i, i32 %201) #7, !srcloc !126
  %206 = ptrtoint ptr %mmio.i79 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %mmio.i79, align 4
  %handle361.i = getelementptr inbounds %struct.drm_local_map, ptr %207, i32 0, i32 4
  %208 = ptrtoint ptr %handle361.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %handle361.i, align 4
  %add.ptr362.i = getelementptr i8, ptr %209, i32 1812
  %210 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr362.i) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !184
  %call368.i = tail call i32 @r128_wait_ring(ptr noundef %45, i32 noundef 24) #7
  br label %if.end369.i

if.end369.i:                                      ; preds = %do.body347.i, %do.body340.i.if.end369.i_crit_edge
  %211 = ptrtoint ptr %space.i77 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %space.i77, align 4
  %sub372.i = add i32 %212, -24
  store i32 %sub372.i, ptr %space.i77, align 4
  %213 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %45, align 4
  %215 = ptrtoint ptr %tail.i78 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %tail.i78, align 4
  %217 = ptrtoint ptr %tail_mask62.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %tail_mask62.i, align 4
  %inc382.i = add i32 %216, 1
  %arrayidx383.i = getelementptr i32, ptr %214, i32 %216
  %219 = ptrtoint ptr %arrayidx383.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store volatile i32 10093760, ptr %arrayidx383.i, align 4
  %and384.i = and i32 %inc382.i, %218
  %220 = ptrtoint ptr %depth_fmt.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %depth_fmt.i, align 4
  %shl388.i = shl i32 %221, 8
  %or394.i = or i32 %shl388.i, 1894789330
  %222 = tail call i32 @llvm.bswap.i32(i32 %or394.i) #7
  %inc395.i = add i32 %and384.i, 1
  %arrayidx396.i = getelementptr i32, ptr %214, i32 %and384.i
  %223 = ptrtoint ptr %arrayidx396.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store volatile i32 %222, ptr %arrayidx396.i, align 4
  %and397.i = and i32 %inc395.i, %218
  %224 = ptrtoint ptr %depth_pitch_offset_c.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %depth_pitch_offset_c.i, align 4
  %226 = tail call i32 @llvm.bswap.i32(i32 %225) #7
  %inc401.i = add i32 %and397.i, 1
  %arrayidx402.i = getelementptr i32, ptr %214, i32 %and397.i
  %227 = ptrtoint ptr %arrayidx402.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store volatile i32 %226, ptr %arrayidx402.i, align 4
  %and403.i = and i32 %inc401.i, %218
  %228 = ptrtoint ptr %clear_depth.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %clear_depth.i, align 4
  %230 = tail call i32 @llvm.bswap.i32(i32 %229) #7
  %inc407.i = add i32 %and403.i, 1
  %arrayidx408.i = getelementptr i32, ptr %214, i32 %and403.i
  %231 = ptrtoint ptr %arrayidx408.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store volatile i32 %230, ptr %arrayidx408.i, align 4
  %and409.i = and i32 %inc407.i, %218
  %shl413.i = shl nuw i32 %conv.i, 16
  %or414.i = or i32 %shl413.i, %conv15.i
  %232 = tail call i32 @llvm.bswap.i32(i32 %or414.i) #7
  %inc415.i = add i32 %and409.i, 1
  %arrayidx416.i = getelementptr i32, ptr %214, i32 %and409.i
  %233 = ptrtoint ptr %arrayidx416.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store volatile i32 %232, ptr %arrayidx416.i, align 4
  %and417.i = and i32 %inc415.i, %218
  %shl421.i = shl i32 %sub.i80, 16
  %or422.i = or i32 %shl421.i, %sub20.i
  %234 = tail call i32 @llvm.bswap.i32(i32 %or422.i) #7
  %inc423.i = add i32 %and417.i, 1
  %arrayidx424.i = getelementptr i32, ptr %214, i32 %and417.i
  %235 = ptrtoint ptr %arrayidx424.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store volatile i32 %234, ptr %arrayidx424.i, align 4
  %and425.i = and i32 %inc423.i, %218
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and425.i)
  %cmp429.i = icmp slt i32 %and425.i, 32
  br i1 %cmp429.i, label %if.then431.i, label %if.end369.i.if.end437.i_crit_edge

if.end369.i.if.end437.i_crit_edge:                ; preds = %if.end369.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end437.i

if.then431.i:                                     ; preds = %if.end369.i
  call void @__sanitizer_cov_trace_pc() #9
  %236 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %end.i, align 4
  %238 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %45, align 4
  %mul436.i = shl i32 %and425.i, 2
  %240 = call ptr @memcpy(ptr %237, ptr %239, i32 %mul436.i)
  br label %if.end437.i

if.end437.i:                                      ; preds = %if.then431.i, %if.end369.i.if.end437.i_crit_edge
  %241 = ptrtoint ptr %tail.i78 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %tail.i78, align 4
  %add440.i = add i32 %242, 6
  %and441.i = and i32 %add440.i, %218
  call void @__sanitizer_cov_trace_cmp4(i32 %and441.i, i32 %and425.i)
  %cmp442.not.i = icmp eq i32 %and441.i, %and425.i
  br i1 %cmp442.not.i, label %if.else449.i, label %if.then444.i

if.then444.i:                                     ; preds = %if.end437.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %and441.i, i32 noundef %and425.i, i32 noundef 459) #7
  br label %if.end455.i

if.else449.i:                                     ; preds = %if.end437.i
  call void @__sanitizer_cov_trace_pc() #9
  %243 = ptrtoint ptr %tail.i78 to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %and425.i, ptr %tail.i78, align 4
  br label %if.end455.i

if.end455.i:                                      ; preds = %if.else449.i, %if.then444.i, %if.end336.i.if.end455.i_crit_edge
  %inc456.i = add nuw nsw i32 %i.0674.i, 1
  %exitcond.not.i = icmp eq i32 %inc456.i, %49
  br i1 %exitcond.not.i, label %if.end455.i.r128_cce_dispatch_clear.exit_crit_edge, label %if.end455.i.for.body.i_crit_edge

if.end455.i.for.body.i_crit_edge:                 ; preds = %if.end455.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end455.i.r128_cce_dispatch_clear.exit_crit_edge: ; preds = %if.end455.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %r128_cce_dispatch_clear.exit

r128_cce_dispatch_clear.exit:                     ; preds = %if.end455.i.r128_cce_dispatch_clear.exit_crit_edge, %if.end12.i.r128_cce_dispatch_clear.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !185
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %tail = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 4
  %244 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %tail, align 4
  %246 = tail call i32 @llvm.bswap.i32(i32 %245)
  %mmio = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 30
  %247 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %mmio, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %248, i32 0, i32 4
  %249 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %handle, align 4
  %add.ptr = getelementptr i8, ptr %250, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %246) #7, !srcloc !126
  %251 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %mmio, align 4
  %handle47 = getelementptr inbounds %struct.drm_local_map, ptr %252, i32 0, i32 4
  %253 = ptrtoint ptr %handle47 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %handle47, align 4
  %add.ptr48 = getelementptr i8, ptr %254, i32 1812
  %255 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !187
  %256 = ptrtoint ptr %sarea_priv33 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %sarea_priv33, align 4
  %dirty = getelementptr inbounds %struct.drm_r128_sarea, ptr %257, i32 0, i32 2
  %258 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %dirty, align 4
  %or = or i32 %259, 129
  store i32 %or, ptr %dirty, align 4
  br label %cleanup53

cleanup53:                                        ; preds = %r128_cce_dispatch_clear.exit, %for.end, %if.then15, %if.then
  %retval.1 = phi i32 [ -22, %if.then ], [ 0, %r128_cce_dispatch_clear.exit ], [ -22, %if.then15 ], [ -16, %for.end ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r128_cce_vertex(ptr noundef %dev, ptr nocapture noundef readonly %data, ptr noundef %file_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %dma1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 45
  %2 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma1, align 4
  %master = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 8
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %lock = getelementptr inbounds %struct.drm_master, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool.not = icmp sgt i32 %9, -1
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %file_priv5 = getelementptr inbounds %struct.drm_master, ptr %5, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %file_priv5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %file_priv5, align 4
  %cmp.not = icmp eq ptr %11, %file_priv
  br i1 %cmp.not, label %do.body14, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %7, align 4
  %and10 = and i32 %13, -2147483648
  %file_priv13 = getelementptr inbounds %struct.drm_master, ptr %5, i32 0, i32 12, i32 1
  %14 = ptrtoint ptr %file_priv13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %file_priv13, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.r128_cce_vertex, i32 noundef %and10, ptr noundef %15, ptr noundef %file_priv) #7
  br label %cleanup103

do.body14:                                        ; preds = %lor.lhs.false
  %tobool15.not = icmp eq ptr %1, null
  br i1 %tobool15.not, label %if.then16, label %do.end19

if.then16:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #7
  br label %cleanup103

do.end19:                                         ; preds = %do.body14
  %16 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 68
  %20 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pid.i, align 8
  %idx = getelementptr inbounds %struct.drm_r128_vertex, ptr %data, i32 0, i32 1
  %22 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %idx, align 4
  %count = getelementptr inbounds %struct.drm_r128_vertex, ptr %data, i32 0, i32 2
  %24 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %count, align 4
  %discard = getelementptr inbounds %struct.drm_r128_vertex, ptr %data, i32 0, i32 3
  %26 = ptrtoint ptr %discard to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %discard, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.29, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27) #7
  %28 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp22 = icmp slt i32 %29, 0
  br i1 %cmp22, label %do.end19.if.then26_crit_edge, label %lor.lhs.false23

do.end19.if.then26_crit_edge:                     ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

lor.lhs.false23:                                  ; preds = %do.end19
  %buf_count = getelementptr inbounds %struct.drm_device_dma, ptr %3, i32 0, i32 1
  %30 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %buf_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp25.not = icmp slt i32 %29, %31
  br i1 %cmp25.not, label %if.end29, label %lor.lhs.false23.if.then26_crit_edge

lor.lhs.false23.if.then26_crit_edge:              ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

if.then26:                                        ; preds = %lor.lhs.false23.if.then26_crit_edge, %do.end19.if.then26_crit_edge
  %buf_count28 = getelementptr inbounds %struct.drm_device_dma, ptr %3, i32 0, i32 1
  %32 = ptrtoint ptr %buf_count28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_count28, align 4
  %sub = add i32 %33, -1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.30, i32 noundef %29, i32 noundef %sub) #7
  br label %cleanup103

if.end29:                                         ; preds = %lor.lhs.false23
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %35)
  %36 = icmp ugt i32 %35, 7
  br i1 %36, label %if.then34, label %do.body37

if.then34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.31, i32 noundef %35) #7
  br label %cleanup103

do.body37:                                        ; preds = %if.end29
  %space = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 6
  %37 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %space, align 4
  %high_mark = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 7
  %39 = ptrtoint ptr %high_mark to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %high_mark, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp39 = icmp slt i32 %38, %40
  br i1 %cmp39, label %for.cond.preheader, label %do.body37.do.body51_crit_edge

do.body37.do.body51_crit_edge:                    ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body51

for.cond.preheader:                               ; preds = %do.body37
  %usec_timeout = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 7
  %41 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp41162 = icmp sgt i32 %42, 0
  br i1 %cmp41162, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %mmio.i = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 30
  %tail.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 4
  %size.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end46.for.body_crit_edge, %for.body.lr.ph
  %i.0163 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end46.for.body_crit_edge ]
  %43 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmio.i, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %handle.i, align 4
  %add.ptr.i = getelementptr i8, ptr %46, i32 1808
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !122
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  %49 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tail.i, align 4
  %sub.i = sub i32 %48, %50
  %mul.i = shl i32 %sub.i, 2
  %51 = ptrtoint ptr %space to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %mul.i, ptr %space, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mul.i)
  %cmp.i = icmp slt i32 %mul.i, 1
  br i1 %cmp.i, label %if.then.i, label %for.body.r128_update_ring_snapshot.exit_crit_edge

for.body.r128_update_ring_snapshot.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %r128_update_ring_snapshot.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %size.i, align 4
  %add.i = add i32 %53, %mul.i
  %54 = ptrtoint ptr %space to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add.i, ptr %space, align 4
  br label %r128_update_ring_snapshot.exit

r128_update_ring_snapshot.exit:                   ; preds = %if.then.i, %for.body.r128_update_ring_snapshot.exit_crit_edge
  %55 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %space, align 4
  %57 = ptrtoint ptr %high_mark to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %high_mark, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp44.not = icmp slt i32 %56, %58
  br i1 %cmp44.not, label %if.end46, label %r128_update_ring_snapshot.exit.do.body51_crit_edge

r128_update_ring_snapshot.exit.do.body51_crit_edge: ; preds = %r128_update_ring_snapshot.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body51

if.end46:                                         ; preds = %r128_update_ring_snapshot.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748) #7
  %inc = add nuw nsw i32 %i.0163, 1
  %60 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %usec_timeout, align 4
  %cmp41 = icmp slt i32 %inc, %61
  br i1 %cmp41, label %if.end46.for.body_crit_edge, label %if.end46.for.end_crit_edge

if.end46.for.end_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end46.for.body_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end46.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #7
  br label %cleanup103

do.body51:                                        ; preds = %r128_update_ring_snapshot.exit.do.body51_crit_edge, %do.body37.do.body51_crit_edge
  %sarea_priv52 = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 1
  %62 = ptrtoint ptr %sarea_priv52 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sarea_priv52, align 4
  %last_dispatch = getelementptr inbounds %struct.drm_r128_sarea, ptr %63, i32 0, i32 8
  %64 = ptrtoint ptr %last_dispatch to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %last_dispatch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483646, i32 %65)
  %cmp53 = icmp ugt i32 %65, 2147483646
  br i1 %cmp53, label %if.then54, label %do.body51.do.end68_crit_edge

do.body51.do.end68_crit_edge:                     ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

if.then54:                                        ; preds = %do.body51
  %call55 = tail call i32 @r128_do_cce_idle(ptr noundef nonnull %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %cleanup60.thread, label %if.then54.cleanup103_crit_edge

if.then54.cleanup103_crit_edge:                   ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup103

cleanup60.thread:                                 ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %last_dispatch to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %last_dispatch, align 4
  tail call void @r128_freelist_reset(ptr noundef %dev) #7
  br label %do.end68

do.end68:                                         ; preds = %cleanup60.thread, %do.body51.do.end68_crit_edge
  %buflist = getelementptr inbounds %struct.drm_device_dma, ptr %3, i32 0, i32 2
  %67 = ptrtoint ptr %buflist to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %buflist, align 4
  %69 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %idx, align 4
  %arrayidx = getelementptr ptr, ptr %68, i32 %70
  %71 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx, align 4
  %dev_private70 = getelementptr inbounds %struct.drm_buf, ptr %72, i32 0, i32 15
  %73 = ptrtoint ptr %dev_private70 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev_private70, align 4
  %file_priv71 = getelementptr inbounds %struct.drm_buf, ptr %72, i32 0, i32 10
  %75 = ptrtoint ptr %file_priv71 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %file_priv71, align 4
  %cmp72.not = icmp eq ptr %76, %file_priv
  br i1 %cmp72.not, label %if.end78, label %if.then73

if.then73:                                        ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %task, align 8
  %pid.i158 = getelementptr inbounds %struct.task_struct, ptr %78, i32 0, i32 68
  %79 = ptrtoint ptr %pid.i158 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pid.i158, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.32, i32 noundef %80, ptr noundef %76) #7
  br label %cleanup103

if.end78:                                         ; preds = %do.end68
  %pending = getelementptr inbounds %struct.drm_buf, ptr %72, i32 0, i32 9
  %81 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool79.not = icmp eq i32 %82, 0
  br i1 %tobool79.not, label %if.end82, label %if.then80

if.then80:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33, i32 noundef %70) #7
  br label %cleanup103

if.end82:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  %83 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %count, align 4
  %used = getelementptr inbounds %struct.drm_buf, ptr %72, i32 0, i32 3
  %85 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %used, align 4
  %86 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %data, align 4
  %prim85 = getelementptr inbounds %struct.drm_r128_buf_priv, ptr %74, i32 0, i32 1
  %88 = ptrtoint ptr %prim85 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %prim85, align 4
  %89 = ptrtoint ptr %discard to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %discard, align 4
  %discard87 = getelementptr inbounds %struct.drm_r128_buf_priv, ptr %74, i32 0, i32 2
  %91 = ptrtoint ptr %discard87 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %discard87, align 4
  tail call fastcc void @r128_cce_dispatch_vertex(ptr noundef %dev, ptr noundef %72)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !188
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  tail call void @arm_heavy_mb() #7
  %tail = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 4
  %92 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %tail, align 4
  %94 = tail call i32 @llvm.bswap.i32(i32 %93)
  %mmio = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 30
  %95 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mmio, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %96, i32 0, i32 4
  %97 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %handle, align 4
  %add.ptr = getelementptr i8, ptr %98, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %94) #7, !srcloc !126
  %99 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mmio, align 4
  %handle97 = getelementptr inbounds %struct.drm_local_map, ptr %100, i32 0, i32 4
  %101 = ptrtoint ptr %handle97 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %handle97, align 4
  %add.ptr98 = getelementptr i8, ptr %102, i32 1812
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr98) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  br label %cleanup103

cleanup103:                                       ; preds = %if.end82, %if.then80, %if.then73, %if.then54.cleanup103_crit_edge, %for.end, %if.then34, %if.then26, %if.then16, %if.then
  %retval.4 = phi i32 [ -22, %if.then ], [ -22, %if.then26 ], [ -22, %if.then34 ], [ -22, %if.then73 ], [ -22, %if.then80 ], [ 0, %if.end82 ], [ -22, %if.then16 ], [ -16, %for.end ], [ %call55, %if.then54.cleanup103_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r128_cce_indices(ptr noundef %dev, ptr nocapture noundef %data, ptr noundef %file_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %dma1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 45
  %2 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma1, align 4
  %master = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 8
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %lock = getelementptr inbounds %struct.drm_master, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool.not = icmp sgt i32 %9, -1
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %file_priv5 = getelementptr inbounds %struct.drm_master, ptr %5, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %file_priv5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %file_priv5, align 4
  %cmp.not = icmp eq ptr %11, %file_priv
  br i1 %cmp.not, label %do.body14, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %7, align 4
  %and10 = and i32 %13, -2147483648
  %file_priv13 = getelementptr inbounds %struct.drm_master, ptr %5, i32 0, i32 12, i32 1
  %14 = ptrtoint ptr %file_priv13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %file_priv13, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.r128_cce_indices, i32 noundef %and10, ptr noundef %15, ptr noundef %file_priv) #7
  br label %cleanup123

do.body14:                                        ; preds = %lor.lhs.false
  %tobool15.not = icmp eq ptr %1, null
  br i1 %tobool15.not, label %if.then16, label %do.end19

if.then16:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #7
  br label %cleanup123

do.end19:                                         ; preds = %do.body14
  %16 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 68
  %20 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pid.i, align 8
  %idx = getelementptr inbounds %struct.drm_r128_indices, ptr %data, i32 0, i32 1
  %22 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %idx, align 4
  %start = getelementptr inbounds %struct.drm_r128_indices, ptr %data, i32 0, i32 2
  %24 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %start, align 4
  %end = getelementptr inbounds %struct.drm_r128_indices, ptr %data, i32 0, i32 3
  %26 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %end, align 4
  %discard = getelementptr inbounds %struct.drm_r128_indices, ptr %data, i32 0, i32 4
  %28 = ptrtoint ptr %discard to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %discard, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.36, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29) #7
  %30 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp22 = icmp slt i32 %31, 0
  br i1 %cmp22, label %do.end19.if.then26_crit_edge, label %lor.lhs.false23

do.end19.if.then26_crit_edge:                     ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

lor.lhs.false23:                                  ; preds = %do.end19
  %buf_count = getelementptr inbounds %struct.drm_device_dma, ptr %3, i32 0, i32 1
  %32 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp25.not = icmp slt i32 %31, %33
  br i1 %cmp25.not, label %if.end29, label %lor.lhs.false23.if.then26_crit_edge

lor.lhs.false23.if.then26_crit_edge:              ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

if.then26:                                        ; preds = %lor.lhs.false23.if.then26_crit_edge, %do.end19.if.then26_crit_edge
  %buf_count28 = getelementptr inbounds %struct.drm_device_dma, ptr %3, i32 0, i32 1
  %34 = ptrtoint ptr %buf_count28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %buf_count28, align 4
  %sub = add i32 %35, -1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.30, i32 noundef %31, i32 noundef %sub) #7
  br label %cleanup123

if.end29:                                         ; preds = %lor.lhs.false23
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %37)
  %38 = icmp ugt i32 %37, 7
  br i1 %38, label %if.then34, label %do.body37

if.then34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.31, i32 noundef %37) #7
  br label %cleanup123

do.body37:                                        ; preds = %if.end29
  %space = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 6
  %39 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %space, align 4
  %high_mark = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 7
  %41 = ptrtoint ptr %high_mark to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %high_mark, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp39 = icmp slt i32 %40, %42
  br i1 %cmp39, label %for.cond.preheader, label %do.body37.do.body51_crit_edge

do.body37.do.body51_crit_edge:                    ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body51

for.cond.preheader:                               ; preds = %do.body37
  %usec_timeout = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 7
  %43 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp41197 = icmp sgt i32 %44, 0
  br i1 %cmp41197, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %mmio.i = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 30
  %tail.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 4
  %size.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end46.for.body_crit_edge, %for.body.lr.ph
  %i.0198 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end46.for.body_crit_edge ]
  %45 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mmio.i, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %handle.i, align 4
  %add.ptr.i = getelementptr i8, ptr %48, i32 1808
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !122
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  %51 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tail.i, align 4
  %sub.i = sub i32 %50, %52
  %mul.i = shl i32 %sub.i, 2
  %53 = ptrtoint ptr %space to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %mul.i, ptr %space, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mul.i)
  %cmp.i = icmp slt i32 %mul.i, 1
  br i1 %cmp.i, label %if.then.i, label %for.body.r128_update_ring_snapshot.exit_crit_edge

for.body.r128_update_ring_snapshot.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %r128_update_ring_snapshot.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %size.i, align 4
  %add.i = add i32 %55, %mul.i
  %56 = ptrtoint ptr %space to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %add.i, ptr %space, align 4
  br label %r128_update_ring_snapshot.exit

r128_update_ring_snapshot.exit:                   ; preds = %if.then.i, %for.body.r128_update_ring_snapshot.exit_crit_edge
  %57 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %space, align 4
  %59 = ptrtoint ptr %high_mark to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %high_mark, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp44.not = icmp slt i32 %58, %60
  br i1 %cmp44.not, label %if.end46, label %r128_update_ring_snapshot.exit.do.body51_crit_edge

r128_update_ring_snapshot.exit.do.body51_crit_edge: ; preds = %r128_update_ring_snapshot.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body51

if.end46:                                         ; preds = %r128_update_ring_snapshot.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748) #7
  %inc = add nuw nsw i32 %i.0198, 1
  %62 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %usec_timeout, align 4
  %cmp41 = icmp slt i32 %inc, %63
  br i1 %cmp41, label %if.end46.for.body_crit_edge, label %if.end46.for.end_crit_edge

if.end46.for.end_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end46.for.body_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end46.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #7
  br label %cleanup123

do.body51:                                        ; preds = %r128_update_ring_snapshot.exit.do.body51_crit_edge, %do.body37.do.body51_crit_edge
  %sarea_priv52 = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 1
  %64 = ptrtoint ptr %sarea_priv52 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sarea_priv52, align 4
  %last_dispatch = getelementptr inbounds %struct.drm_r128_sarea, ptr %65, i32 0, i32 8
  %66 = ptrtoint ptr %last_dispatch to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %last_dispatch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483646, i32 %67)
  %cmp53 = icmp ugt i32 %67, 2147483646
  br i1 %cmp53, label %if.then54, label %do.body51.do.end68_crit_edge

do.body51.do.end68_crit_edge:                     ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

if.then54:                                        ; preds = %do.body51
  %call55 = tail call i32 @r128_do_cce_idle(ptr noundef nonnull %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %cleanup60.thread, label %if.then54.cleanup123_crit_edge

if.then54.cleanup123_crit_edge:                   ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup123

cleanup60.thread:                                 ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %last_dispatch to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %last_dispatch, align 4
  tail call void @r128_freelist_reset(ptr noundef %dev) #7
  br label %do.end68

do.end68:                                         ; preds = %cleanup60.thread, %do.body51.do.end68_crit_edge
  %buflist = getelementptr inbounds %struct.drm_device_dma, ptr %3, i32 0, i32 2
  %69 = ptrtoint ptr %buflist to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %buflist, align 4
  %71 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %idx, align 4
  %arrayidx = getelementptr ptr, ptr %70, i32 %72
  %73 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx, align 4
  %dev_private70 = getelementptr inbounds %struct.drm_buf, ptr %74, i32 0, i32 15
  %75 = ptrtoint ptr %dev_private70 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev_private70, align 4
  %file_priv71 = getelementptr inbounds %struct.drm_buf, ptr %74, i32 0, i32 10
  %77 = ptrtoint ptr %file_priv71 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %file_priv71, align 4
  %cmp72.not = icmp eq ptr %78, %file_priv
  br i1 %cmp72.not, label %if.end78, label %if.then73

if.then73:                                        ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %task, align 8
  %pid.i193 = getelementptr inbounds %struct.task_struct, ptr %80, i32 0, i32 68
  %81 = ptrtoint ptr %pid.i193 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %pid.i193, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.32, i32 noundef %82, ptr noundef %78) #7
  br label %cleanup123

if.end78:                                         ; preds = %do.end68
  %pending = getelementptr inbounds %struct.drm_buf, ptr %74, i32 0, i32 9
  %83 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool79.not = icmp eq i32 %84, 0
  br i1 %tobool79.not, label %if.end82, label %if.then80

if.then80:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33, i32 noundef %72) #7
  br label %cleanup123

if.end82:                                         ; preds = %if.end78
  %85 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %end, align 4
  %87 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %start, align 4
  %sub85 = sub i32 %86, %88
  %div192 = lshr i32 %sub85, 1
  %sub87 = add i32 %88, -20
  store i32 %sub87, ptr %start, align 4
  %and89 = and i32 %sub87, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.end93, label %if.then91

if.then91:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.37, i32 noundef %sub87) #7
  br label %cleanup123

if.end93:                                         ; preds = %if.end82
  %used = getelementptr inbounds %struct.drm_buf, ptr %74, i32 0, i32 3
  %89 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub87, i32 %90)
  %cmp95 = icmp slt i32 %sub87, %90
  br i1 %cmp95, label %if.then96, label %if.end99

if.then96:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.38, i32 noundef %sub87, i32 noundef %90) #7
  br label %cleanup123

if.end99:                                         ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  %91 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %86, ptr %used, align 4
  %92 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %data, align 4
  %prim103 = getelementptr inbounds %struct.drm_r128_buf_priv, ptr %76, i32 0, i32 1
  %94 = ptrtoint ptr %prim103 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %prim103, align 4
  %95 = ptrtoint ptr %discard to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %discard, align 4
  %discard105 = getelementptr inbounds %struct.drm_r128_buf_priv, ptr %76, i32 0, i32 2
  %97 = ptrtoint ptr %discard105 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %discard105, align 4
  %98 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %start, align 4
  %100 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %end, align 4
  tail call fastcc void @r128_cce_dispatch_indices(ptr noundef %dev, ptr noundef %74, i32 noundef %99, i32 noundef %101, i32 noundef %div192)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !191
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  tail call void @arm_heavy_mb() #7
  %tail = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 4
  %102 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %tail, align 4
  %104 = tail call i32 @llvm.bswap.i32(i32 %103)
  %mmio = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 30
  %105 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %mmio, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %106, i32 0, i32 4
  %107 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %handle, align 4
  %add.ptr = getelementptr i8, ptr %108, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %104) #7, !srcloc !126
  %109 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %mmio, align 4
  %handle117 = getelementptr inbounds %struct.drm_local_map, ptr %110, i32 0, i32 4
  %111 = ptrtoint ptr %handle117 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %handle117, align 4
  %add.ptr118 = getelementptr i8, ptr %112, i32 1812
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr118) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  br label %cleanup123

cleanup123:                                       ; preds = %if.end99, %if.then96, %if.then91, %if.then80, %if.then73, %if.then54.cleanup123_crit_edge, %for.end, %if.then34, %if.then26, %if.then16, %if.then
  %retval.4 = phi i32 [ -22, %if.then ], [ -22, %if.then26 ], [ -22, %if.then34 ], [ -22, %if.then73 ], [ -22, %if.then80 ], [ -22, %if.then91 ], [ -22, %if.then96 ], [ 0, %if.end99 ], [ -22, %if.then16 ], [ -16, %for.end ], [ %call55, %if.then54.cleanup123_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r128_cce_blit(ptr noundef %dev, ptr nocapture noundef readonly %data, ptr noundef %file_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 45
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %master = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 8
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %lock = getelementptr inbounds %struct.drm_master, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool.not = icmp sgt i32 %9, -1
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %file_priv5 = getelementptr inbounds %struct.drm_master, ptr %5, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %file_priv5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %file_priv5, align 4
  %cmp.not = icmp eq ptr %11, %file_priv
  br i1 %cmp.not, label %do.body14, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %7, align 4
  %and10 = and i32 %13, -2147483648
  %file_priv13 = getelementptr inbounds %struct.drm_master, ptr %5, i32 0, i32 12, i32 1
  %14 = ptrtoint ptr %file_priv13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %file_priv13, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.r128_cce_blit, i32 noundef %and10, ptr noundef %15, ptr noundef %file_priv) #7
  br label %cleanup78

do.body14:                                        ; preds = %lor.lhs.false
  %tobool15.not = icmp eq ptr %3, null
  br i1 %tobool15.not, label %if.then16, label %do.end19

if.then16:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #7
  br label %cleanup78

do.end19:                                         ; preds = %do.body14
  %16 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 68
  %20 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pid.i, align 8
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.41, i32 noundef %21, i32 noundef %23) #7
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp22 = icmp slt i32 %25, 0
  br i1 %cmp22, label %do.end19.if.then26_crit_edge, label %lor.lhs.false23

do.end19.if.then26_crit_edge:                     ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

lor.lhs.false23:                                  ; preds = %do.end19
  %buf_count = getelementptr inbounds %struct.drm_device_dma, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buf_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp25.not = icmp slt i32 %25, %27
  br i1 %cmp25.not, label %do.body30, label %lor.lhs.false23.if.then26_crit_edge

lor.lhs.false23.if.then26_crit_edge:              ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

if.then26:                                        ; preds = %lor.lhs.false23.if.then26_crit_edge, %do.end19.if.then26_crit_edge
  %buf_count28 = getelementptr inbounds %struct.drm_device_dma, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %buf_count28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %buf_count28, align 4
  %sub = add i32 %29, -1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.30, i32 noundef %25, i32 noundef %sub) #7
  br label %cleanup78

do.body30:                                        ; preds = %lor.lhs.false23
  %space = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %3, i32 0, i32 6
  %30 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %space, align 4
  %high_mark = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %3, i32 0, i32 7
  %32 = ptrtoint ptr %high_mark to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %high_mark, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp32 = icmp slt i32 %31, %33
  br i1 %cmp32, label %for.cond.preheader, label %do.body30.do.body44_crit_edge

do.body30.do.body44_crit_edge:                    ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body44

for.cond.preheader:                               ; preds = %do.body30
  %usec_timeout = getelementptr inbounds %struct.drm_r128_private, ptr %3, i32 0, i32 7
  %34 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp34118 = icmp sgt i32 %35, 0
  br i1 %cmp34118, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %mmio.i = getelementptr inbounds %struct.drm_r128_private, ptr %3, i32 0, i32 30
  %tail.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %3, i32 0, i32 4
  %size.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %3, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end39.for.body_crit_edge, %for.body.lr.ph
  %i.0119 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end39.for.body_crit_edge ]
  %36 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio.i, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %handle.i, align 4
  %add.ptr.i = getelementptr i8, ptr %39, i32 1808
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !122
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  %42 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tail.i, align 4
  %sub.i = sub i32 %41, %43
  %mul.i = shl i32 %sub.i, 2
  %44 = ptrtoint ptr %space to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %mul.i, ptr %space, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mul.i)
  %cmp.i = icmp slt i32 %mul.i, 1
  br i1 %cmp.i, label %if.then.i, label %for.body.r128_update_ring_snapshot.exit_crit_edge

for.body.r128_update_ring_snapshot.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %r128_update_ring_snapshot.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %size.i, align 4
  %add.i = add i32 %46, %mul.i
  %47 = ptrtoint ptr %space to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %add.i, ptr %space, align 4
  br label %r128_update_ring_snapshot.exit

r128_update_ring_snapshot.exit:                   ; preds = %if.then.i, %for.body.r128_update_ring_snapshot.exit_crit_edge
  %48 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %space, align 4
  %50 = ptrtoint ptr %high_mark to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %high_mark, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp37.not = icmp slt i32 %49, %51
  br i1 %cmp37.not, label %if.end39, label %r128_update_ring_snapshot.exit.do.body44_crit_edge

r128_update_ring_snapshot.exit.do.body44_crit_edge: ; preds = %r128_update_ring_snapshot.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body44

if.end39:                                         ; preds = %r128_update_ring_snapshot.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748) #7
  %inc = add nuw nsw i32 %i.0119, 1
  %53 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %usec_timeout, align 4
  %cmp34 = icmp slt i32 %inc, %54
  br i1 %cmp34, label %if.end39.for.body_crit_edge, label %if.end39.for.end_crit_edge

if.end39.for.end_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end39.for.body_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end39.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #7
  br label %cleanup78

do.body44:                                        ; preds = %r128_update_ring_snapshot.exit.do.body44_crit_edge, %do.body30.do.body44_crit_edge
  %sarea_priv45 = getelementptr inbounds %struct.drm_r128_private, ptr %3, i32 0, i32 1
  %55 = ptrtoint ptr %sarea_priv45 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sarea_priv45, align 4
  %last_dispatch = getelementptr inbounds %struct.drm_r128_sarea, ptr %56, i32 0, i32 8
  %57 = ptrtoint ptr %last_dispatch to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %last_dispatch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483646, i32 %58)
  %cmp46 = icmp ugt i32 %58, 2147483646
  br i1 %cmp46, label %if.then47, label %do.body44.do.end61_crit_edge

do.body44.do.end61_crit_edge:                     ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end61

if.then47:                                        ; preds = %do.body44
  %call48 = tail call i32 @r128_do_cce_idle(ptr noundef nonnull %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %cleanup53.thread, label %if.then47.cleanup78_crit_edge

if.then47.cleanup78_crit_edge:                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup78

cleanup53.thread:                                 ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %last_dispatch to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %last_dispatch, align 4
  tail call void @r128_freelist_reset(ptr noundef %dev) #7
  br label %do.end61

do.end61:                                         ; preds = %cleanup53.thread, %do.body44.do.end61_crit_edge
  %call62 = tail call fastcc i32 @r128_cce_dispatch_blit(ptr noundef %dev, ptr noundef %file_priv, ptr noundef %data)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !194
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !195
  tail call void @arm_heavy_mb() #7
  %tail = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %3, i32 0, i32 4
  %60 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tail, align 4
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  %mmio = getelementptr inbounds %struct.drm_r128_private, ptr %3, i32 0, i32 30
  %63 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mmio, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %handle, align 4
  %add.ptr = getelementptr i8, ptr %66, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %62) #7, !srcloc !126
  %67 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mmio, align 4
  %handle72 = getelementptr inbounds %struct.drm_local_map, ptr %68, i32 0, i32 4
  %69 = ptrtoint ptr %handle72 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %handle72, align 4
  %add.ptr73 = getelementptr i8, ptr %70, i32 1812
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !196
  br label %cleanup78

cleanup78:                                        ; preds = %do.end61, %if.then47.cleanup78_crit_edge, %for.end, %if.then26, %if.then16, %if.then
  %retval.4 = phi i32 [ -22, %if.then ], [ -22, %if.then26 ], [ %call62, %do.end61 ], [ -22, %if.then16 ], [ -16, %for.end ], [ %call48, %if.then47.cleanup78_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r128_cce_indirect(ptr noundef %dev, ptr nocapture noundef readonly %data, ptr noundef %file_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %dma1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 45
  %2 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma1, align 4
  %master = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 8
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %lock = getelementptr inbounds %struct.drm_master, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool.not = icmp sgt i32 %9, -1
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %file_priv5 = getelementptr inbounds %struct.drm_master, ptr %5, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %file_priv5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %file_priv5, align 4
  %cmp.not = icmp eq ptr %11, %file_priv
  br i1 %cmp.not, label %do.body14, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %7, align 4
  %and10 = and i32 %13, -2147483648
  %file_priv13 = getelementptr inbounds %struct.drm_master, ptr %5, i32 0, i32 12, i32 1
  %14 = ptrtoint ptr %file_priv13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %file_priv13, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.r128_cce_indirect, i32 noundef %and10, ptr noundef %15, ptr noundef %file_priv) #7
  br label %cleanup100

do.body14:                                        ; preds = %lor.lhs.false
  %tobool15.not = icmp eq ptr %1, null
  br i1 %tobool15.not, label %if.then16, label %do.end19

if.then16:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #7
  br label %cleanup100

do.end19:                                         ; preds = %do.body14
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data, align 4
  %start = getelementptr inbounds %struct.drm_r128_indirect, ptr %data, i32 0, i32 1
  %18 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %start, align 4
  %end = getelementptr inbounds %struct.drm_r128_indirect, ptr %data, i32 0, i32 2
  %20 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %end, align 4
  %discard = getelementptr inbounds %struct.drm_r128_indirect, ptr %data, i32 0, i32 3
  %22 = ptrtoint ptr %discard to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %discard, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.43, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23) #7
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp21 = icmp slt i32 %25, 0
  br i1 %cmp21, label %do.end19.if.then25_crit_edge, label %lor.lhs.false22

do.end19.if.then25_crit_edge:                     ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25

lor.lhs.false22:                                  ; preds = %do.end19
  %buf_count = getelementptr inbounds %struct.drm_device_dma, ptr %3, i32 0, i32 1
  %26 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buf_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp24.not = icmp slt i32 %25, %27
  br i1 %cmp24.not, label %if.end28, label %lor.lhs.false22.if.then25_crit_edge

lor.lhs.false22.if.then25_crit_edge:              ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25

if.then25:                                        ; preds = %lor.lhs.false22.if.then25_crit_edge, %do.end19.if.then25_crit_edge
  %buf_count27 = getelementptr inbounds %struct.drm_device_dma, ptr %3, i32 0, i32 1
  %28 = ptrtoint ptr %buf_count27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %buf_count27, align 4
  %sub = add i32 %29, -1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.30, i32 noundef %25, i32 noundef %sub) #7
  br label %cleanup100

if.end28:                                         ; preds = %lor.lhs.false22
  %buflist = getelementptr inbounds %struct.drm_device_dma, ptr %3, i32 0, i32 2
  %30 = ptrtoint ptr %buflist to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buflist, align 4
  %arrayidx = getelementptr ptr, ptr %31, i32 %25
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx, align 4
  %dev_private30 = getelementptr inbounds %struct.drm_buf, ptr %33, i32 0, i32 15
  %34 = ptrtoint ptr %dev_private30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_private30, align 4
  %file_priv31 = getelementptr inbounds %struct.drm_buf, ptr %33, i32 0, i32 10
  %36 = ptrtoint ptr %file_priv31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %file_priv31, align 4
  %cmp32.not = icmp eq ptr %37, %file_priv
  br i1 %cmp32.not, label %if.end36, label %if.then33

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %38 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 68
  %42 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.32, i32 noundef %43, ptr noundef %37) #7
  br label %cleanup100

if.end36:                                         ; preds = %if.end28
  %pending = getelementptr inbounds %struct.drm_buf, ptr %33, i32 0, i32 9
  %44 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool37.not = icmp eq i32 %45, 0
  br i1 %tobool37.not, label %if.end40, label %if.then38

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33, i32 noundef %25) #7
  br label %cleanup100

if.end40:                                         ; preds = %if.end36
  %46 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %start, align 4
  %used = getelementptr inbounds %struct.drm_buf, ptr %33, i32 0, i32 3
  %48 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp42 = icmp slt i32 %47, %49
  br i1 %cmp42, label %if.then43, label %do.body47

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.44, i32 noundef %47, i32 noundef %49) #7
  br label %cleanup100

do.body47:                                        ; preds = %if.end40
  %space = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 6
  %50 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %space, align 4
  %high_mark = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 7
  %52 = ptrtoint ptr %high_mark to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %high_mark, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp49 = icmp slt i32 %51, %53
  br i1 %cmp49, label %for.cond.preheader, label %do.body47.do.body61_crit_edge

do.body47.do.body61_crit_edge:                    ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body61

for.cond.preheader:                               ; preds = %do.body47
  %usec_timeout = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 7
  %54 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp51161 = icmp sgt i32 %55, 0
  br i1 %cmp51161, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %if.end56.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0162 = phi i32 [ %inc, %if.end56.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  tail call fastcc void @r128_update_ring_snapshot(ptr noundef nonnull %1)
  %56 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %space, align 4
  %58 = ptrtoint ptr %high_mark to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %high_mark, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp54.not = icmp slt i32 %57, %59
  br i1 %cmp54.not, label %if.end56, label %for.body.do.body61_crit_edge

for.body.do.body61_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body61

if.end56:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748) #7
  %inc = add nuw nsw i32 %i.0162, 1
  %61 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %usec_timeout, align 4
  %cmp51 = icmp slt i32 %inc, %62
  br i1 %cmp51, label %if.end56.for.body_crit_edge, label %if.end56.for.end_crit_edge

if.end56.for.end_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end56.for.body_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end56.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #7
  br label %cleanup100

do.body61:                                        ; preds = %for.body.do.body61_crit_edge, %do.body47.do.body61_crit_edge
  %sarea_priv62 = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 1
  %63 = ptrtoint ptr %sarea_priv62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sarea_priv62, align 4
  %last_dispatch = getelementptr inbounds %struct.drm_r128_sarea, ptr %64, i32 0, i32 8
  %65 = ptrtoint ptr %last_dispatch to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %last_dispatch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483646, i32 %66)
  %cmp63 = icmp ugt i32 %66, 2147483646
  br i1 %cmp63, label %if.then64, label %do.body61.do.end78_crit_edge

do.body61.do.end78_crit_edge:                     ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end78

if.then64:                                        ; preds = %do.body61
  %call65 = tail call i32 @r128_do_cce_idle(ptr noundef nonnull %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %cleanup70.thread, label %if.then64.cleanup100_crit_edge

if.then64.cleanup100_crit_edge:                   ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup100

cleanup70.thread:                                 ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %last_dispatch to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %last_dispatch, align 4
  tail call void @r128_freelist_reset(ptr noundef %dev) #7
  br label %do.end78

do.end78:                                         ; preds = %cleanup70.thread, %do.body61.do.end78_crit_edge
  %68 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %end, align 4
  %70 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %used, align 4
  %71 = ptrtoint ptr %discard to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %discard, align 4
  %discard82 = getelementptr inbounds %struct.drm_r128_buf_priv, ptr %35, i32 0, i32 2
  %73 = ptrtoint ptr %discard82 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %discard82, align 4
  %74 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %start, align 4
  %76 = load i32, ptr %end, align 4
  tail call fastcc void @r128_cce_dispatch_indirect(ptr noundef %dev, ptr noundef %33, i32 noundef %75, i32 noundef %76)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !198
  tail call void @arm_heavy_mb() #7
  %tail = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 4
  %77 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %tail, align 4
  %79 = tail call i32 @llvm.bswap.i32(i32 %78)
  %mmio = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 30
  %80 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mmio, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %81, i32 0, i32 4
  %82 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %handle, align 4
  %add.ptr = getelementptr i8, ptr %83, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %79) #7, !srcloc !126
  %84 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mmio, align 4
  %handle94 = getelementptr inbounds %struct.drm_local_map, ptr %85, i32 0, i32 4
  %86 = ptrtoint ptr %handle94 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %handle94, align 4
  %add.ptr95 = getelementptr i8, ptr %87, i32 1812
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr95) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !199
  br label %cleanup100

cleanup100:                                       ; preds = %do.end78, %if.then64.cleanup100_crit_edge, %for.end, %if.then43, %if.then38, %if.then33, %if.then25, %if.then16, %if.then
  %retval.4 = phi i32 [ -22, %if.then ], [ -22, %if.then25 ], [ -22, %if.then33 ], [ -22, %if.then38 ], [ -22, %if.then43 ], [ 0, %do.end78 ], [ -22, %if.then16 ], [ -16, %for.end ], [ %call65, %if.then64.cleanup100_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r128_fullscreen(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r128_cce_flip(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data, ptr noundef %file_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.22) #7
  %master = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 8
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  %lock = getelementptr inbounds %struct.drm_master, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lock, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool.not = icmp sgt i32 %7, -1
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %file_priv4 = getelementptr inbounds %struct.drm_master, ptr %3, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %file_priv4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %file_priv4, align 4
  %cmp.not = icmp eq ptr %9, %file_priv
  br i1 %cmp.not, label %do.body13, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %5, align 4
  %and9 = and i32 %11, -2147483648
  %file_priv12 = getelementptr inbounds %struct.drm_master, ptr %3, i32 0, i32 12, i32 1
  %12 = ptrtoint ptr %file_priv12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %file_priv12, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.r128_cce_flip, i32 noundef %and9, ptr noundef %13, ptr noundef %file_priv) #7
  br label %cleanup51

do.body13:                                        ; preds = %lor.lhs.false
  %tobool14.not = icmp eq ptr %1, null
  br i1 %tobool14.not, label %if.then15, label %do.body19

if.then15:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #7
  br label %cleanup51

do.body19:                                        ; preds = %do.body13
  %space = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %space, align 4
  %high_mark = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %high_mark to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %high_mark, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp21 = icmp slt i32 %15, %17
  br i1 %cmp21, label %for.cond.preheader, label %do.body19.do.end32_crit_edge

do.body19.do.end32_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32

for.cond.preheader:                               ; preds = %do.body19
  %usec_timeout = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp2373 = icmp sgt i32 %19, 0
  br i1 %cmp2373, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %mmio.i = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 30
  %tail.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 4
  %size.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end28.for.body_crit_edge, %for.body.lr.ph
  %i.074 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end28.for.body_crit_edge ]
  %20 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %handle.i, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 1808
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !122
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  %26 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tail.i, align 4
  %sub.i = sub i32 %25, %27
  %mul.i = shl i32 %sub.i, 2
  %28 = ptrtoint ptr %space to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %mul.i, ptr %space, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mul.i)
  %cmp.i = icmp slt i32 %mul.i, 1
  br i1 %cmp.i, label %if.then.i, label %for.body.r128_update_ring_snapshot.exit_crit_edge

for.body.r128_update_ring_snapshot.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %r128_update_ring_snapshot.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size.i, align 4
  %add.i = add i32 %30, %mul.i
  %31 = ptrtoint ptr %space to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add.i, ptr %space, align 4
  br label %r128_update_ring_snapshot.exit

r128_update_ring_snapshot.exit:                   ; preds = %if.then.i, %for.body.r128_update_ring_snapshot.exit_crit_edge
  %32 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %space, align 4
  %34 = ptrtoint ptr %high_mark to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %high_mark, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp26.not = icmp slt i32 %33, %35
  br i1 %cmp26.not, label %if.end28, label %r128_update_ring_snapshot.exit.do.end32_crit_edge

r128_update_ring_snapshot.exit.do.end32_crit_edge: ; preds = %r128_update_ring_snapshot.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32

if.end28:                                         ; preds = %r128_update_ring_snapshot.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748) #7
  %inc = add nuw nsw i32 %i.074, 1
  %37 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %usec_timeout, align 4
  %cmp23 = icmp slt i32 %inc, %38
  br i1 %cmp23, label %if.end28.for.body_crit_edge, label %if.end28.for.end_crit_edge

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end28.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #7
  br label %cleanup51

do.end32:                                         ; preds = %r128_update_ring_snapshot.exit.do.end32_crit_edge, %do.body19.do.end32_crit_edge
  %page_flipping = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 11
  %39 = ptrtoint ptr %page_flipping to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %page_flipping, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool33.not = icmp eq i32 %40, 0
  br i1 %tobool33.not, label %if.then34, label %do.end32.if.end35_crit_edge

do.end32.if.end35_crit_edge:                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then34:                                        ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_private, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.22) #7
  %mmio.i70 = getelementptr inbounds %struct.drm_r128_private, ptr %42, i32 0, i32 30
  %43 = ptrtoint ptr %mmio.i70 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmio.i70, align 4
  %handle.i71 = getelementptr inbounds %struct.drm_local_map, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %handle.i71 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %handle.i71, align 4
  %add.ptr.i72 = getelementptr i8, ptr %46, i32 548
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i72) #7, !srcloc !122
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !200
  %crtc_offset.i = getelementptr inbounds %struct.drm_r128_private, ptr %42, i32 0, i32 13
  %49 = ptrtoint ptr %crtc_offset.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %crtc_offset.i, align 4
  %50 = ptrtoint ptr %mmio.i70 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mmio.i70, align 4
  %handle5.i = getelementptr inbounds %struct.drm_local_map, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %handle5.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %handle5.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %53, i32 552
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #7, !srcloc !122
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  %crtc_offset_cntl.i = getelementptr inbounds %struct.drm_r128_private, ptr %42, i32 0, i32 14
  %56 = ptrtoint ptr %crtc_offset_cntl.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %crtc_offset_cntl.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !202
  tail call void @arm_heavy_mb() #7
  %front_offset.i = getelementptr inbounds %struct.drm_r128_private, ptr %42, i32 0, i32 17
  %57 = ptrtoint ptr %front_offset.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %front_offset.i, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #7
  %60 = ptrtoint ptr %mmio.i70 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mmio.i70, align 4
  %handle11.i = getelementptr inbounds %struct.drm_local_map, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %handle11.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %handle11.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %63, i32 548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %59) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  tail call void @arm_heavy_mb() #7
  %64 = ptrtoint ptr %crtc_offset_cntl.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %crtc_offset_cntl.i, align 4
  %or.i = or i32 %65, 65536
  %66 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %67 = ptrtoint ptr %mmio.i70 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mmio.i70, align 4
  %handle18.i = getelementptr inbounds %struct.drm_local_map, ptr %68, i32 0, i32 4
  %69 = ptrtoint ptr %handle18.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %handle18.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %70, i32 552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 %66) #7, !srcloc !126
  %page_flipping.i = getelementptr inbounds %struct.drm_r128_private, ptr %42, i32 0, i32 11
  %71 = ptrtoint ptr %page_flipping.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %page_flipping.i, align 4
  %current_page.i = getelementptr inbounds %struct.drm_r128_private, ptr %42, i32 0, i32 12
  %72 = ptrtoint ptr %current_page.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %current_page.i, align 4
  %sarea_priv.i = getelementptr inbounds %struct.drm_r128_private, ptr %42, i32 0, i32 1
  %73 = ptrtoint ptr %sarea_priv.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %sarea_priv.i, align 4
  %pfCurrentPage.i = getelementptr inbounds %struct.drm_r128_sarea, ptr %74, i32 0, i32 13
  %75 = ptrtoint ptr %pfCurrentPage.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %pfCurrentPage.i, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %do.end32.if.end35_crit_edge
  tail call fastcc void @r128_cce_dispatch_flip(ptr noundef %dev)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !204
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !205
  tail call void @arm_heavy_mb() #7
  %tail = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 4
  %76 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tail, align 4
  %78 = tail call i32 @llvm.bswap.i32(i32 %77)
  %mmio = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 30
  %79 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mmio, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %80, i32 0, i32 4
  %81 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %handle, align 4
  %add.ptr = getelementptr i8, ptr %82, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %78) #7, !srcloc !126
  %83 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mmio, align 4
  %handle45 = getelementptr inbounds %struct.drm_local_map, ptr %84, i32 0, i32 4
  %85 = ptrtoint ptr %handle45 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %handle45, align 4
  %add.ptr46 = getelementptr i8, ptr %86, i32 1812
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  br label %cleanup51

cleanup51:                                        ; preds = %if.end35, %for.end, %if.then15, %if.then
  %retval.1 = phi i32 [ -22, %if.then ], [ 0, %if.end35 ], [ -22, %if.then15 ], [ -16, %for.end ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r128_wait_ring(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r128_cce_dispatch_flip(ptr nocapture noundef readonly %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %current_page = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %current_page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_page, align 4
  %sarea_priv = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %sarea_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sarea_priv, align 4
  %pfCurrentPage = getelementptr inbounds %struct.drm_r128_sarea, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %pfCurrentPage to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pfCurrentPage, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.27, i32 noundef %3, i32 noundef %7) #7
  %space = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %space, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %9)
  %cmp = icmp ult i32 %9, 17
  br i1 %cmp, label %do.body3, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !207
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void @arm_heavy_mb() #7
  %tail = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tail, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %mmio = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 30
  %13 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %handle, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #7, !srcloc !126
  %17 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio, align 4
  %handle9 = getelementptr inbounds %struct.drm_local_map, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %handle9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %handle9, align 4
  %add.ptr10 = getelementptr i8, ptr %20, i32 1812
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  %call14 = tail call i32 @r128_wait_ring(ptr noundef %1, i32 noundef 16) #7
  br label %if.end

if.end:                                           ; preds = %do.body3, %entry.if.end_crit_edge
  %22 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %space, align 4
  %sub = add i32 %23, -16
  store i32 %sub, ptr %space, align 4
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %tail19 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %tail19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tail19, align 4
  %tail_mask21 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 5
  %28 = ptrtoint ptr %tail_mask21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tail_mask21, align 4
  %inc = add i32 %27, 1
  %arrayidx = getelementptr i32, ptr %25, i32 %27
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 -939196416, ptr %arrayidx, align 4
  %and = and i32 %inc, %29
  %inc29 = add i32 %and, 1
  %arrayidx30 = getelementptr i32, ptr %25, i32 %and
  %31 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 16777216, ptr %arrayidx30, align 4
  %and31 = and i32 %inc29, %29
  %inc37 = add i32 %and31, 1
  %arrayidx38 = getelementptr i32, ptr %25, i32 %and31
  %32 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 -1996488704, ptr %arrayidx38, align 4
  %and39 = and i32 %inc37, %29
  %33 = ptrtoint ptr %current_page to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %current_page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp43 = icmp eq i32 %34, 0
  %back_offset = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 19
  %front_offset = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 17
  %back_offset.sink = select i1 %cmp43, ptr %back_offset, ptr %front_offset
  %35 = ptrtoint ptr %back_offset.sink to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %back_offset.sink, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %arrayidx47 = getelementptr i32, ptr %25, i32 %and39
  %38 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile i32 %37, ptr %arrayidx47, align 4
  %inc46.pn = add i32 %and39, 1
  %write.0 = and i32 %inc46.pn, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %write.0)
  %cmp59 = icmp slt i32 %write.0, 32
  br i1 %cmp59, label %if.then60, label %if.end.if.end64_crit_edge

if.end.if.end64_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.then60:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %end = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 1
  %39 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %end, align 4
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %mul = shl i32 %write.0, 2
  %43 = call ptr @memcpy(ptr %40, ptr %42, i32 %mul)
  br label %if.end64

if.end64:                                         ; preds = %if.then60, %if.end.if.end64_crit_edge
  %44 = ptrtoint ptr %tail19 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tail19, align 4
  %add = add i32 %45, 4
  %and67 = and i32 %add, %29
  call void @__sanitizer_cov_trace_cmp4(i32 %and67, i32 %write.0)
  %cmp68.not = icmp eq i32 %and67, %write.0
  br i1 %cmp68.not, label %if.else74, label %if.then69

if.then69:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %and67, i32 noundef %write.0, i32 noundef 553) #7
  br label %do.end79

if.else74:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %tail19 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %write.0, ptr %tail19, align 4
  br label %do.end79

do.end79:                                         ; preds = %if.else74, %if.then69
  %47 = ptrtoint ptr %sarea_priv to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sarea_priv, align 4
  %last_frame = getelementptr inbounds %struct.drm_r128_sarea, ptr %48, i32 0, i32 7
  %49 = ptrtoint ptr %last_frame to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %last_frame, align 4
  %inc81 = add i32 %50, 1
  store i32 %inc81, ptr %last_frame, align 4
  %51 = ptrtoint ptr %current_page to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %current_page, align 4
  %sub83 = sub i32 1, %52
  store i32 %sub83, ptr %current_page, align 4
  %53 = load ptr, ptr %sarea_priv, align 4
  %pfCurrentPage86 = getelementptr inbounds %struct.drm_r128_sarea, ptr %53, i32 0, i32 13
  %54 = ptrtoint ptr %pfCurrentPage86 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %sub83, ptr %pfCurrentPage86, align 4
  %55 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %space, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %56)
  %cmp90 = icmp ult i32 %56, 9
  br i1 %cmp90, label %do.body93, label %do.end79.if.end115_crit_edge

do.end79.if.end115_crit_edge:                     ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end115

do.body93:                                        ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  %57 = ptrtoint ptr %tail19 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tail19, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  %mmio101 = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 30
  %60 = ptrtoint ptr %mmio101 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mmio101, align 4
  %handle102 = getelementptr inbounds %struct.drm_local_map, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %handle102 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %handle102, align 4
  %add.ptr103 = getelementptr i8, ptr %63, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr103, i32 %59) #7, !srcloc !126
  %64 = ptrtoint ptr %mmio101 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mmio101, align 4
  %handle107 = getelementptr inbounds %struct.drm_local_map, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %handle107 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %handle107, align 4
  %add.ptr108 = getelementptr i8, ptr %67, i32 1812
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr108) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !212
  %call114 = tail call i32 @r128_wait_ring(ptr noundef %1, i32 noundef 8) #7
  br label %if.end115

if.end115:                                        ; preds = %do.body93, %do.end79.if.end115_crit_edge
  %69 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %space, align 4
  %sub118 = add i32 %70, -8
  store i32 %sub118, ptr %space, align 4
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 4
  %73 = ptrtoint ptr %tail19 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tail19, align 4
  %75 = ptrtoint ptr %tail_mask21 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tail_mask21, align 4
  %inc128 = add i32 %74, 1
  %arrayidx129 = getelementptr i32, ptr %72, i32 %74
  %77 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile i32 2013593600, ptr %arrayidx129, align 4
  %and130 = and i32 %inc128, %76
  %78 = ptrtoint ptr %sarea_priv to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sarea_priv, align 4
  %last_frame135 = getelementptr inbounds %struct.drm_r128_sarea, ptr %79, i32 0, i32 7
  %80 = ptrtoint ptr %last_frame135 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %last_frame135, align 4
  %82 = tail call i32 @llvm.bswap.i32(i32 %81)
  %inc136 = add i32 %and130, 1
  %arrayidx137 = getelementptr i32, ptr %72, i32 %and130
  %83 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile i32 %82, ptr %arrayidx137, align 4
  %and138 = and i32 %inc136, %76
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and138)
  %cmp142 = icmp slt i32 %and138, 32
  br i1 %cmp142, label %if.then143, label %if.end115.if.end149_crit_edge

if.end115.if.end149_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end149

if.then143:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  %end145 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 1
  %84 = ptrtoint ptr %end145 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %end145, align 4
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %1, align 4
  %mul148 = shl i32 %and138, 2
  %88 = call ptr @memcpy(ptr %85, ptr %87, i32 %mul148)
  br label %if.end149

if.end149:                                        ; preds = %if.then143, %if.end115.if.end149_crit_edge
  %89 = ptrtoint ptr %tail19 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %tail19, align 4
  %add152 = add i32 %90, 2
  %and153 = and i32 %add152, %76
  call void @__sanitizer_cov_trace_cmp4(i32 %and153, i32 %and138)
  %cmp154.not = icmp eq i32 %and153, %and138
  br i1 %cmp154.not, label %if.else160, label %if.then155

if.then155:                                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %and153, i32 noundef %and138, i32 noundef 568) #7
  br label %do.end165

if.else160:                                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #9
  %91 = ptrtoint ptr %tail19 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %and138, ptr %tail19, align 4
  br label %do.end165

do.end165:                                        ; preds = %if.else160, %if.then155
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r128_do_cce_idle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r128_freelist_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r128_cce_dispatch_vertex(ptr nocapture noundef readonly %dev, ptr noundef %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %dev_private1 = getelementptr inbounds %struct.drm_buf, ptr %buf, i32 0, i32 15
  %2 = ptrtoint ptr %dev_private1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private1, align 4
  %sarea_priv2 = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %sarea_priv2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sarea_priv2, align 4
  %vc_format = getelementptr inbounds %struct.drm_r128_sarea, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %vc_format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vc_format, align 4
  %bus_address = getelementptr inbounds %struct.drm_buf, ptr %buf, i32 0, i32 6
  %8 = ptrtoint ptr %bus_address to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bus_address, align 4
  %used = getelementptr inbounds %struct.drm_buf, ptr %buf, i32 0, i32 3
  %10 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %used, align 4
  %prim3 = getelementptr inbounds %struct.drm_r128_buf_priv, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %prim3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %prim3, align 4
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buf, align 4
  %nbox = getelementptr inbounds %struct.drm_r128_sarea, ptr %5, i32 0, i32 6
  %16 = ptrtoint ptr %nbox to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nbox, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.34, i32 noundef %15, i32 noundef %17) #7
  %18 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %entry.if.end95_crit_edge, label %if.then

entry.if.end95_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

if.then:                                          ; preds = %entry
  %dispatched = getelementptr inbounds %struct.drm_r128_buf_priv, ptr %3, i32 0, i32 3
  %20 = ptrtoint ptr %dispatched to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %dispatched, align 4
  %dirty = getelementptr inbounds %struct.drm_r128_sarea, ptr %5, i32 0, i32 2
  %21 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dirty, align 4
  %and = and i32 %22, -513
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.then.if.end_crit_edge, label %if.then6

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @r128_emit_state(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then.if.end_crit_edge
  %space = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 6
  %tail = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 4
  %mmio = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 30
  %tail_mask36 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 5
  %23 = tail call i32 @llvm.bswap.i32(i32 %9)
  %24 = tail call i32 @llvm.bswap.i32(i32 %11)
  %25 = tail call i32 @llvm.bswap.i32(i32 %7)
  %shl = shl i32 %11, 16
  %or = or i32 %shl, %13
  %or63 = or i32 %or, 32
  %26 = tail call i32 @llvm.bswap.i32(i32 %or63)
  %end = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.end89.do.body_crit_edge, %if.end
  %i.0 = phi i32 [ 0, %if.end ], [ %add90, %do.end89.do.body_crit_edge ]
  %27 = ptrtoint ptr %nbox to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nbox, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %i.0)
  %cmp = icmp ugt i32 %28, %i.0
  br i1 %cmp, label %if.then8, label %do.body.do.body11_crit_edge

do.body.do.body11_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body11

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.drm_r128_sarea, ptr %5, i32 0, i32 5, i32 %i.0
  %sub = sub i32 %28, %i.0
  tail call fastcc void @r128_emit_clip_rects(ptr noundef %1, ptr noundef %arrayidx, i32 noundef %sub)
  br label %do.body11

do.body11:                                        ; preds = %if.then8, %do.body.do.body11_crit_edge
  %29 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %space, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %30)
  %cmp13 = icmp ult i32 %30, 21
  br i1 %cmp13, label %do.body16, label %do.body11.if.end28_crit_edge

do.body11.if.end28_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

do.body16:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !213
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !214
  tail call void @arm_heavy_mb() #7
  %31 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tail, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %34 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %handle, align 4
  %add.ptr = getelementptr i8, ptr %37, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %33) #7, !srcloc !126
  %38 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio, align 4
  %handle22 = getelementptr inbounds %struct.drm_local_map, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %handle22 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %handle22, align 4
  %add.ptr23 = getelementptr i8, ptr %41, i32 1812
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !215
  %call27 = tail call i32 @r128_wait_ring(ptr noundef %1, i32 noundef 20) #7
  br label %if.end28

if.end28:                                         ; preds = %do.body16, %do.body11.if.end28_crit_edge
  %43 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %space, align 4
  %sub31 = add i32 %44, -20
  store i32 %sub31, ptr %space, align 4
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %47 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tail, align 4
  %49 = ptrtoint ptr %tail_mask36 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tail_mask36, align 4
  %inc = add i32 %48, 1
  %arrayidx40 = getelementptr i32, ptr %46, i32 %48
  %51 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile i32 2294720, ptr %arrayidx40, align 4
  %and41 = and i32 %inc, %50
  %inc45 = add i32 %and41, 1
  %arrayidx46 = getelementptr i32, ptr %46, i32 %and41
  %52 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile i32 %23, ptr %arrayidx46, align 4
  %and47 = and i32 %inc45, %50
  %inc51 = add i32 %and47, 1
  %arrayidx52 = getelementptr i32, ptr %46, i32 %and47
  %53 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 %24, ptr %arrayidx52, align 4
  %and53 = and i32 %inc51, %50
  %inc57 = add i32 %and53, 1
  %arrayidx58 = getelementptr i32, ptr %46, i32 %and53
  %54 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 %25, ptr %arrayidx58, align 4
  %and59 = and i32 %inc57, %50
  %inc64 = add i32 %and59, 1
  %arrayidx65 = getelementptr i32, ptr %46, i32 %and59
  %55 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile i32 %26, ptr %arrayidx65, align 4
  %and66 = and i32 %inc64, %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and66)
  %cmp70 = icmp slt i32 %and66, 32
  br i1 %cmp70, label %if.then71, label %if.end28.if.end75_crit_edge

if.end28.if.end75_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

if.then71:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %end, align 4
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %mul = shl i32 %and66, 2
  %60 = call ptr @memcpy(ptr %57, ptr %59, i32 %mul)
  br label %if.end75

if.end75:                                         ; preds = %if.then71, %if.end28.if.end75_crit_edge
  %61 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tail, align 4
  %add = add i32 %62, 5
  %and78 = and i32 %add, %50
  call void @__sanitizer_cov_trace_cmp4(i32 %and78, i32 %and66)
  %cmp79.not = icmp eq i32 %and78, %and66
  br i1 %cmp79.not, label %if.else, label %if.then80

if.then80:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %and78, i32 noundef %and66, i32 noundef 611) #7
  br label %do.end89

if.else:                                          ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %and66, ptr %tail, align 4
  br label %do.end89

do.end89:                                         ; preds = %if.else, %if.then80
  %add90 = add i32 %i.0, 3
  %64 = ptrtoint ptr %nbox to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nbox, align 4
  %cmp93 = icmp ult i32 %add90, %65
  br i1 %cmp93, label %do.end89.do.body_crit_edge, label %do.end89.if.end95_crit_edge

do.end89.if.end95_crit_edge:                      ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

do.end89.do.body_crit_edge:                       ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end95:                                         ; preds = %do.end89.if.end95_crit_edge, %entry.if.end95_crit_edge
  %discard = getelementptr inbounds %struct.drm_r128_buf_priv, ptr %3, i32 0, i32 2
  %66 = ptrtoint ptr %discard to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %discard, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool96.not = icmp eq i32 %67, 0
  br i1 %tobool96.not, label %if.end95.if.end179_crit_edge, label %if.then97

if.end95.if.end179_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end179

if.then97:                                        ; preds = %if.end95
  %68 = ptrtoint ptr %sarea_priv2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sarea_priv2, align 4
  %last_dispatch = getelementptr inbounds %struct.drm_r128_sarea, ptr %69, i32 0, i32 8
  %70 = ptrtoint ptr %last_dispatch to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %last_dispatch, align 4
  %72 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %3, align 4
  %space101 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 6
  %73 = ptrtoint ptr %space101 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %space101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %74)
  %cmp102 = icmp ult i32 %74, 9
  br i1 %cmp102, label %do.body105, label %if.then97.if.end127_crit_edge

if.then97.if.end127_crit_edge:                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end127

do.body105:                                       ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !216
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !217
  tail call void @arm_heavy_mb() #7
  %tail112 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 4
  %75 = ptrtoint ptr %tail112 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tail112, align 4
  %77 = tail call i32 @llvm.bswap.i32(i32 %76)
  %mmio113 = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 30
  %78 = ptrtoint ptr %mmio113 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mmio113, align 4
  %handle114 = getelementptr inbounds %struct.drm_local_map, ptr %79, i32 0, i32 4
  %80 = ptrtoint ptr %handle114 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %handle114, align 4
  %add.ptr115 = getelementptr i8, ptr %81, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 %77) #7, !srcloc !126
  %82 = ptrtoint ptr %mmio113 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mmio113, align 4
  %handle119 = getelementptr inbounds %struct.drm_local_map, ptr %83, i32 0, i32 4
  %84 = ptrtoint ptr %handle119 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %handle119, align 4
  %add.ptr120 = getelementptr i8, ptr %85, i32 1812
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr120) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  %call126 = tail call i32 @r128_wait_ring(ptr noundef %1, i32 noundef 8) #7
  br label %if.end127

if.end127:                                        ; preds = %do.body105, %if.then97.if.end127_crit_edge
  %87 = ptrtoint ptr %space101 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %space101, align 4
  %sub130 = add i32 %88, -8
  store i32 %sub130, ptr %space101, align 4
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %1, align 4
  %tail134 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 4
  %91 = ptrtoint ptr %tail134 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tail134, align 4
  %tail_mask136 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 5
  %93 = ptrtoint ptr %tail_mask136 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %tail_mask136, align 4
  %inc140 = add i32 %92, 1
  %arrayidx141 = getelementptr i32, ptr %90, i32 %92
  %95 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile i32 2030370816, ptr %arrayidx141, align 4
  %and142 = and i32 %inc140, %94
  %96 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %3, align 4
  %98 = tail call i32 @llvm.bswap.i32(i32 %97)
  %inc147 = add i32 %and142, 1
  %arrayidx148 = getelementptr i32, ptr %90, i32 %and142
  %99 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile i32 %98, ptr %arrayidx148, align 4
  %and149 = and i32 %inc147, %94
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and149)
  %cmp153 = icmp slt i32 %and149, 32
  br i1 %cmp153, label %if.then154, label %if.end127.if.end160_crit_edge

if.end127.if.end160_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end160

if.then154:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #9
  %end156 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 1
  %100 = ptrtoint ptr %end156 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %end156, align 4
  %102 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %1, align 4
  %mul159 = shl i32 %and149, 2
  %104 = call ptr @memcpy(ptr %101, ptr %103, i32 %mul159)
  br label %if.end160

if.end160:                                        ; preds = %if.then154, %if.end127.if.end160_crit_edge
  %105 = ptrtoint ptr %tail134 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %tail134, align 4
  %add163 = add i32 %106, 2
  %and164 = and i32 %add163, %94
  call void @__sanitizer_cov_trace_cmp4(i32 %and164, i32 %and149)
  %cmp165.not = icmp eq i32 %and164, %and149
  br i1 %cmp165.not, label %if.else171, label %if.then166

if.then166:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %and164, i32 noundef %and149, i32 noundef 626) #7
  br label %do.end176

if.else171:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #9
  %107 = ptrtoint ptr %tail134 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %and149, ptr %tail134, align 4
  br label %do.end176

do.end176:                                        ; preds = %if.else171, %if.then166
  %pending = getelementptr inbounds %struct.drm_buf, ptr %buf, i32 0, i32 9
  %108 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile i32 1, ptr %pending, align 4
  %109 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %used, align 4
  %dispatched178 = getelementptr inbounds %struct.drm_r128_buf_priv, ptr %3, i32 0, i32 3
  %110 = ptrtoint ptr %dispatched178 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %dispatched178, align 4
  br label %if.end179

if.end179:                                        ; preds = %do.end176, %if.end95.if.end179_crit_edge
  %111 = ptrtoint ptr %sarea_priv2 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %sarea_priv2, align 4
  %last_dispatch181 = getelementptr inbounds %struct.drm_r128_sarea, ptr %112, i32 0, i32 8
  %113 = ptrtoint ptr %last_dispatch181 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %last_dispatch181, align 4
  %inc182 = add i32 %114, 1
  store i32 %inc182, ptr %last_dispatch181, align 4
  %dirty183 = getelementptr inbounds %struct.drm_r128_sarea, ptr %5, i32 0, i32 2
  %115 = ptrtoint ptr %dirty183 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %dirty183, align 4
  %and184 = and i32 %116, -513
  store i32 %and184, ptr %dirty183, align 4
  %117 = ptrtoint ptr %nbox to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %nbox, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r128_emit_state(ptr noundef %dev_priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sarea_priv1 = getelementptr inbounds %struct.drm_r128_private, ptr %dev_priv, i32 0, i32 1
  %0 = ptrtoint ptr %sarea_priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sarea_priv1, align 4
  %dirty2 = getelementptr inbounds %struct.drm_r128_sarea, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dirty2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dirty2, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.35, i32 noundef %3) #7
  %and = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %sarea_priv1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sarea_priv1, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.22) #7
  %space.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 6
  %6 = ptrtoint ptr %space.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %space.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %7)
  %cmp.i = icmp ult i32 %7, 9
  br i1 %cmp.i, label %do.body4.i, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.body4.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !219
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !220
  tail call void @arm_heavy_mb() #7
  %tail.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 4
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tail.i, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  %mmio.i = getelementptr inbounds %struct.drm_r128_private, ptr %dev_priv, i32 0, i32 30
  %11 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio.i, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %handle.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #7, !srcloc !126
  %15 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i, align 4
  %handle10.i = getelementptr inbounds %struct.drm_local_map, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %handle10.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %handle10.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %18, i32 1812
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !221
  %call15.i = tail call i32 @r128_wait_ring(ptr noundef %dev_priv, i32 noundef 8) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.body4.i, %if.then.if.end.i_crit_edge
  %20 = ptrtoint ptr %space.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %space.i, align 4
  %sub.i = add i32 %21, -8
  store i32 %sub.i, ptr %space.i, align 4
  %22 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_priv, align 4
  %tail20.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 4
  %24 = ptrtoint ptr %tail20.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tail20.i, align 4
  %tail_mask22.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 5
  %26 = ptrtoint ptr %tail_mask22.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tail_mask22.i, align 4
  %inc.i = add i32 %25, 1
  %arrayidx.i = getelementptr i32, ptr %23, i32 %25
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 -2147090432, ptr %arrayidx.i, align 4
  %and.i = and i32 %inc.i, %27
  %scale_3d_cntl.i = getelementptr inbounds %struct.drm_r128_context_regs_t, ptr %5, i32 0, i32 20
  %29 = ptrtoint ptr %scale_3d_cntl.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %scale_3d_cntl.i, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #7
  %inc29.i = add i32 %and.i, 1
  %arrayidx30.i = getelementptr i32, ptr %23, i32 %and.i
  %32 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 %31, ptr %arrayidx30.i, align 4
  %and31.i = and i32 %inc29.i, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and31.i)
  %cmp35.i = icmp slt i32 %and31.i, 32
  br i1 %cmp35.i, label %if.then36.i, label %if.end.i.if.end40.i_crit_edge

if.end.i.if.end40.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40.i

if.then36.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %end.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 1
  %33 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %end.i, align 4
  %35 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_priv, align 4
  %mul.i = shl i32 %and31.i, 2
  %37 = call ptr @memcpy(ptr %34, ptr %36, i32 %mul.i)
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then36.i, %if.end.i.if.end40.i_crit_edge
  %38 = ptrtoint ptr %tail20.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tail20.i, align 4
  %add.i = add i32 %39, 2
  %and43.i = and i32 %add.i, %27
  call void @__sanitizer_cov_trace_cmp4(i32 %and43.i, i32 %and31.i)
  %cmp44.not.i = icmp eq i32 %and43.i, %and31.i
  br i1 %cmp44.not.i, label %if.else.i, label %if.then45.i

if.then45.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %and43.i, i32 noundef %and31.i, i32 noundef 101) #7
  br label %r128_emit_core.exit

if.else.i:                                        ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %tail20.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %and31.i, ptr %tail20.i, align 4
  br label %r128_emit_core.exit

r128_emit_core.exit:                              ; preds = %if.else.i, %if.then45.i
  %41 = ptrtoint ptr %dirty2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dirty2, align 4
  %and4 = and i32 %42, -65
  store i32 %and4, ptr %dirty2, align 4
  br label %if.end

if.end:                                           ; preds = %r128_emit_core.exit, %entry.if.end_crit_edge
  %and5 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end10_crit_edge, label %if.then7

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then7:                                         ; preds = %if.end
  %43 = ptrtoint ptr %sarea_priv1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sarea_priv1, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.22) #7
  %space.i68 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 6
  %45 = ptrtoint ptr %space.i68 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %space.i68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 53, i32 %46)
  %cmp.i69 = icmp ult i32 %46, 53
  br i1 %cmp.i69, label %do.body4.i77, label %if.then7.if.end.i88_crit_edge

if.then7.if.end.i88_crit_edge:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i88

do.body4.i77:                                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !222
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !223
  tail call void @arm_heavy_mb() #7
  %tail.i70 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 4
  %47 = ptrtoint ptr %tail.i70 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tail.i70, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #7
  %mmio.i71 = getelementptr inbounds %struct.drm_r128_private, ptr %dev_priv, i32 0, i32 30
  %50 = ptrtoint ptr %mmio.i71 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mmio.i71, align 4
  %handle.i72 = getelementptr inbounds %struct.drm_local_map, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %handle.i72 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %handle.i72, align 4
  %add.ptr.i73 = getelementptr i8, ptr %53, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73, i32 %49) #7, !srcloc !126
  %54 = ptrtoint ptr %mmio.i71 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mmio.i71, align 4
  %handle10.i74 = getelementptr inbounds %struct.drm_local_map, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %handle10.i74 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %handle10.i74, align 4
  %add.ptr11.i75 = getelementptr i8, ptr %57, i32 1812
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i75) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !224
  %call15.i76 = tail call i32 @r128_wait_ring(ptr noundef %dev_priv, i32 noundef 52) #7
  br label %if.end.i88

if.end.i88:                                       ; preds = %do.body4.i77, %if.then7.if.end.i88_crit_edge
  %59 = ptrtoint ptr %space.i68 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %space.i68, align 4
  %sub.i78 = add i32 %60, -52
  store i32 %sub.i78, ptr %space.i68, align 4
  %61 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev_priv, align 4
  %tail20.i79 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 4
  %63 = ptrtoint ptr %tail20.i79 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tail20.i79, align 4
  %tail_mask22.i80 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 5
  %65 = ptrtoint ptr %tail_mask22.i80 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tail_mask22.i80, align 4
  %inc.i81 = add i32 %64, 1
  %arrayidx.i82 = getelementptr i32, ptr %62, i32 %64
  %67 = ptrtoint ptr %arrayidx.i82 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile i32 537332480, ptr %arrayidx.i82, align 4
  %and.i83 = and i32 %inc.i81, %66
  %68 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %44, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #7
  %inc29.i84 = add i32 %and.i83, 1
  %arrayidx30.i85 = getelementptr i32, ptr %62, i32 %and.i83
  %71 = ptrtoint ptr %arrayidx30.i85 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile i32 %70, ptr %arrayidx30.i85, align 4
  %and31.i86 = and i32 %inc29.i84, %66
  %dp_gui_master_cntl_c.i = getelementptr inbounds %struct.drm_r128_context_regs_t, ptr %44, i32 0, i32 1
  %72 = ptrtoint ptr %dp_gui_master_cntl_c.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dp_gui_master_cntl_c.i, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #7
  %inc35.i = add i32 %and31.i86, 1
  %arrayidx36.i = getelementptr i32, ptr %62, i32 %and31.i86
  %75 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile i32 %74, ptr %arrayidx36.i, align 4
  %and37.i = and i32 %inc35.i, %66
  %sc_top_left_c.i = getelementptr inbounds %struct.drm_r128_context_regs_t, ptr %44, i32 0, i32 2
  %76 = ptrtoint ptr %sc_top_left_c.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %sc_top_left_c.i, align 4
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #7
  %inc41.i = add i32 %and37.i, 1
  %arrayidx42.i = getelementptr i32, ptr %62, i32 %and37.i
  %79 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile i32 %78, ptr %arrayidx42.i, align 4
  %and43.i87 = and i32 %inc41.i, %66
  %sc_bottom_right_c.i = getelementptr inbounds %struct.drm_r128_context_regs_t, ptr %44, i32 0, i32 3
  %80 = ptrtoint ptr %sc_bottom_right_c.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %sc_bottom_right_c.i, align 4
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #7
  %inc47.i = add i32 %and43.i87, 1
  %arrayidx48.i = getelementptr i32, ptr %62, i32 %and43.i87
  %83 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile i32 %82, ptr %arrayidx48.i, align 4
  %and49.i = and i32 %inc47.i, %66
  %z_offset_c.i = getelementptr inbounds %struct.drm_r128_context_regs_t, ptr %44, i32 0, i32 4
  %84 = ptrtoint ptr %z_offset_c.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %z_offset_c.i, align 4
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #7
  %inc53.i = add i32 %and49.i, 1
  %arrayidx54.i = getelementptr i32, ptr %62, i32 %and49.i
  %87 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile i32 %86, ptr %arrayidx54.i, align 4
  %and55.i = and i32 %inc53.i, %66
  %z_pitch_c.i = getelementptr inbounds %struct.drm_r128_context_regs_t, ptr %44, i32 0, i32 5
  %88 = ptrtoint ptr %z_pitch_c.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %z_pitch_c.i, align 4
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #7
  %inc59.i = add i32 %and55.i, 1
  %arrayidx60.i = getelementptr i32, ptr %62, i32 %and55.i
  %91 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile i32 %90, ptr %arrayidx60.i, align 4
  %and61.i = and i32 %inc59.i, %66
  %z_sten_cntl_c.i = getelementptr inbounds %struct.drm_r128_context_regs_t, ptr %44, i32 0, i32 6
  %92 = ptrtoint ptr %z_sten_cntl_c.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %z_sten_cntl_c.i, align 4
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #7
  %inc65.i = add i32 %and61.i, 1
  %arrayidx66.i = getelementptr i32, ptr %62, i32 %and61.i
  %95 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile i32 %94, ptr %arrayidx66.i, align 4
  %and67.i = and i32 %inc65.i, %66
  %tex_cntl_c.i = getelementptr inbounds %struct.drm_r128_context_regs_t, ptr %44, i32 0, i32 7
  %96 = ptrtoint ptr %tex_cntl_c.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %tex_cntl_c.i, align 4
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #7
  %inc71.i = add i32 %and67.i, 1
  %arrayidx72.i = getelementptr i32, ptr %62, i32 %and67.i
  %99 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile i32 %98, ptr %arrayidx72.i, align 4
  %and73.i = and i32 %inc71.i, %66
  %misc_3d_state_cntl_reg.i = getelementptr inbounds %struct.drm_r128_context_regs_t, ptr %44, i32 0, i32 8
  %100 = ptrtoint ptr %misc_3d_state_cntl_reg.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %misc_3d_state_cntl_reg.i, align 4
  %102 = tail call i32 @llvm.bswap.i32(i32 %101) #7
  %inc77.i = add i32 %and73.i, 1
  %arrayidx78.i = getelementptr i32, ptr %62, i32 %and73.i
  %103 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile i32 %102, ptr %arrayidx78.i, align 4
  %and79.i = and i32 %inc77.i, %66
  %texture_clr_cmp_clr_c.i = getelementptr inbounds %struct.drm_r128_context_regs_t, ptr %44, i32 0, i32 9
  %104 = ptrtoint ptr %texture_clr_cmp_clr_c.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %texture_clr_cmp_clr_c.i, align 4
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #7
  %inc83.i = add i32 %and79.i, 1
  %arrayidx84.i = getelementptr i32, ptr %62, i32 %and79.i
  %107 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile i32 %106, ptr %arrayidx84.i, align 4
  %and85.i = and i32 %inc83.i, %66
  %texture_clr_cmp_msk_c.i = getelementptr inbounds %struct.drm_r128_context_regs_t, ptr %44, i32 0, i32 10
  %108 = ptrtoint ptr %texture_clr_cmp_msk_c.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %texture_clr_cmp_msk_c.i, align 4
  %110 = tail call i32 @llvm.bswap.i32(i32 %109) #7
  %inc89.i = add i32 %and85.i, 1
  %arrayidx90.i = getelementptr i32, ptr %62, i32 %and85.i
  %111 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile i32 %110, ptr %arrayidx90.i, align 4
  %and91.i = and i32 %inc89.i, %66
  %fog_color_c.i = getelementptr inbounds %struct.drm_r128_context_regs_t, ptr %44, i32 0, i32 11
  %112 = ptrtoint ptr %fog_color_c.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %fog_color_c.i, align 4
  %114 = tail call i32 @llvm.bswap.i32(i32 %113) #7
  %inc95.i = add i32 %and91.i, 1
  %arrayidx96.i = getelementptr i32, ptr %62, i32 %and91.i
  %115 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile i32 %114, ptr %arrayidx96.i, align 4
  %and97.i = and i32 %inc95.i, %66
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and97.i)
  %cmp101.i = icmp slt i32 %and97.i, 32
  br i1 %cmp101.i, label %if.then102.i, label %if.end.i88.if.end106.i_crit_edge

if.end.i88.if.end106.i_crit_edge:                 ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106.i

if.then102.i:                                     ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #9
  %end.i89 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 1
  %116 = ptrtoint ptr %end.i89 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %end.i89, align 4
  %118 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev_priv, align 4
  %mul.i90 = shl i32 %and97.i, 2
  %120 = call ptr @memcpy(ptr %117, ptr %119, i32 %mul.i90)
  br label %if.end106.i

if.end106.i:                                      ; preds = %if.then102.i, %if.end.i88.if.end106.i_crit_edge
  %121 = ptrtoint ptr %tail20.i79 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %tail20.i79, align 4
  %add.i91 = add i32 %122, 13
  %and109.i = and i32 %add.i91, %66
  call void @__sanitizer_cov_trace_cmp4(i32 %and109.i, i32 %and97.i)
  %cmp110.not.i = icmp eq i32 %and109.i, %and97.i
  br i1 %cmp110.not.i, label %if.else.i92, label %if.then111.i

if.then111.i:                                     ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %and109.i, i32 noundef %and97.i, i32 noundef 127) #7
  br label %r128_emit_context.exit

if.else.i92:                                      ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #9
  %123 = ptrtoint ptr %tail20.i79 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %and97.i, ptr %tail20.i79, align 4
  br label %r128_emit_context.exit

r128_emit_context.exit:                           ; preds = %if.else.i92, %if.then111.i
  %124 = ptrtoint ptr %dirty2 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %dirty2, align 4
  %and9 = and i32 %125, -2
  store i32 %and9, ptr %dirty2, align 4
  br label %if.end10

if.end10:                                         ; preds = %r128_emit_context.exit, %if.end.if.end10_crit_edge
  %and11 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end16_crit_edge, label %if.then13

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then13:                                        ; preds = %if.end10
  %126 = ptrtoint ptr %sarea_priv1 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %sarea_priv1, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.22) #7
  %space.i94 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 6
  %128 = ptrtoint ptr %space.i94 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %space.i94, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %129)
  %cmp.i95 = icmp ult i32 %129, 13
  br i1 %cmp.i95, label %do.body4.i103, label %if.then13.if.end.i116_crit_edge

if.then13.if.end.i116_crit_edge:                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i116

do.body4.i103:                                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !225
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  tail call void @arm_heavy_mb() #7
  %tail.i96 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 4
  %130 = ptrtoint ptr %tail.i96 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %tail.i96, align 4
  %132 = tail call i32 @llvm.bswap.i32(i32 %131) #7
  %mmio.i97 = getelementptr inbounds %struct.drm_r128_private, ptr %dev_priv, i32 0, i32 30
  %133 = ptrtoint ptr %mmio.i97 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %mmio.i97, align 4
  %handle.i98 = getelementptr inbounds %struct.drm_local_map, ptr %134, i32 0, i32 4
  %135 = ptrtoint ptr %handle.i98 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %handle.i98, align 4
  %add.ptr.i99 = getelementptr i8, ptr %136, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99, i32 %132) #7, !srcloc !126
  %137 = ptrtoint ptr %mmio.i97 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %mmio.i97, align 4
  %handle10.i100 = getelementptr inbounds %struct.drm_local_map, ptr %138, i32 0, i32 4
  %139 = ptrtoint ptr %handle10.i100 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %handle10.i100, align 4
  %add.ptr11.i101 = getelementptr i8, ptr %140, i32 1812
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i101) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  %call15.i102 = tail call i32 @r128_wait_ring(ptr noundef %dev_priv, i32 noundef 12) #7
  br label %if.end.i116

if.end.i116:                                      ; preds = %do.body4.i103, %if.then13.if.end.i116_crit_edge
  %142 = ptrtoint ptr %space.i94 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %space.i94, align 4
  %sub.i104 = add i32 %143, -12
  store i32 %sub.i104, ptr %space.i94, align 4
  %144 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev_priv, align 4
  %tail20.i105 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 4
  %146 = ptrtoint ptr %tail20.i105 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %tail20.i105, align 4
  %tail_mask22.i106 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 5
  %148 = ptrtoint ptr %tail_mask22.i106 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %tail_mask22.i106, align 4
  %inc.i107 = add i32 %147, 1
  %arrayidx.i108 = getelementptr i32, ptr %145, i32 %147
  %150 = ptrtoint ptr %arrayidx.i108 to i32
  call void @__asan_store4_noabort(i32 %150)
  store volatile i32 -247591360, ptr %arrayidx.i108, align 4
  %and.i109 = and i32 %inc.i107, %149
  %setup_cntl.i = getelementptr inbounds %struct.drm_r128_context_regs_t, ptr %127, i32 0, i32 15
  %151 = ptrtoint ptr %setup_cntl.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %setup_cntl.i, align 4
  %153 = tail call i32 @llvm.bswap.i32(i32 %152) #7
  %inc29.i110 = add i32 %and.i109, 1
  %arrayidx30.i111 = getelementptr i32, ptr %145, i32 %and.i109
  %154 = ptrtoint ptr %arrayidx30.i111 to i32
  call void @__asan_store4_noabort(i32 %154)
  store volatile i32 %153, ptr %arrayidx30.i111, align 4
  %and31.i112 = and i32 %inc29.i110, %149
  %pm4_vc_fpu_setup.i = getelementptr inbounds %struct.drm_r128_context_regs_t, ptr %127, i32 0, i32 14
  %155 = ptrtoint ptr %pm4_vc_fpu_setup.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %pm4_vc_fpu_setup.i, align 4
  %157 = tail call i32 @llvm.bswap.i32(i32 %156) #7
  %inc35.i113 = add i32 %and31.i112, 1
  %arrayidx36.i114 = getelementptr i32, ptr %145, i32 %and31.i112
  %158 = ptrtoint ptr %arrayidx36.i114 to i32
  call void @__asan_store4_noabort(i32 %158)
  store volatile i32 %157, ptr %arrayidx36.i114, align 4
  %and37.i115 = and i32 %inc35.i113, %149
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and37.i115)
  %cmp41.i = icmp slt i32 %and37.i115, 32
  br i1 %cmp41.i, label %if.then42.i, label %if.end.i116.if.end46.i_crit_edge

if.end.i116.if.end46.i_crit_edge:                 ; preds = %if.end.i116
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.i

if.then42.i:                                      ; preds = %if.end.i116
  call void @__sanitizer_cov_trace_pc() #9
  %end.i117 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 1
  %159 = ptrtoint ptr %end.i117 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %end.i117, align 4
  %161 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dev_priv, align 4
  %mul.i118 = shl i32 %and37.i115, 2
  %163 = call ptr @memcpy(ptr %160, ptr %162, i32 %mul.i118)
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then42.i, %if.end.i116.if.end46.i_crit_edge
  %164 = ptrtoint ptr %tail20.i105 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %tail20.i105, align 4
  %add.i119 = add i32 %165, 3
  %and49.i120 = and i32 %add.i119, %149
  call void @__sanitizer_cov_trace_cmp4(i32 %and49.i120, i32 %and37.i115)
  %cmp50.not.i = icmp eq i32 %and49.i120, %and37.i115
  br i1 %cmp50.not.i, label %if.else.i121, label %if.then51.i

if.then51.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %and49.i120, i32 noundef %and37.i115, i32 noundef 143) #7
  br label %r128_emit_setup.exit

if.else.i121:                                     ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  %166 = ptrtoint ptr %tail20.i105 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %and37.i115, ptr %tail20.i105, align 4
  br label %r128_emit_setup.exit

r128_emit_setup.exit:                             ; preds = %if.else.i121, %if.then51.i
  %167 = ptrtoint ptr %dirty2 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %dirty2, align 4
  %and15 = and i32 %168, -3
  store i32 %and15, ptr %dirty2, align 4
  br label %if.end16

if.end16:                                         ; preds = %r128_emit_setup.exit, %if.end10.if.end16_crit_edge
  %and17 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end16.if.end22_crit_edge, label %if.then19

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then19:                                        ; preds = %if.end16
  %169 = ptrtoint ptr %sarea_priv1 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %sarea_priv1, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.22) #7
  %space.i123 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 6
  %171 = ptrtoint ptr %space.i123 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %space.i123, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %172)
  %cmp.i124 = icmp ult i32 %172, 21
  br i1 %cmp.i124, label %do.body4.i132, label %if.then19.if.end.i151_crit_edge

if.then19.if.end.i151_crit_edge:                  ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i151

do.body4.i132:                                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  %tail.i125 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 4
  %173 = ptrtoint ptr %tail.i125 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %tail.i125, align 4
  %175 = tail call i32 @llvm.bswap.i32(i32 %174) #7
  %mmio.i126 = getelementptr inbounds %struct.drm_r128_private, ptr %dev_priv, i32 0, i32 30
  %176 = ptrtoint ptr %mmio.i126 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %mmio.i126, align 4
  %handle.i127 = getelementptr inbounds %struct.drm_local_map, ptr %177, i32 0, i32 4
  %178 = ptrtoint ptr %handle.i127 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %handle.i127, align 4
  %add.ptr.i128 = getelementptr i8, ptr %179, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128, i32 %175) #7, !srcloc !126
  %180 = ptrtoint ptr %mmio.i126 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %mmio.i126, align 4
  %handle10.i129 = getelementptr inbounds %struct.drm_local_map, ptr %181, i32 0, i32 4
  %182 = ptrtoint ptr %handle10.i129 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %handle10.i129, align 4
  %add.ptr11.i130 = getelementptr i8, ptr %183, i32 1812
  %184 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i130) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !230
  %call15.i131 = tail call i32 @r128_wait_ring(ptr noundef %dev_priv, i32 noundef 20) #7
  br label %if.end.i151

if.end.i151:                                      ; preds = %do.body4.i132, %if.then19.if.end.i151_crit_edge
  %185 = ptrtoint ptr %space.i123 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %space.i123, align 4
  %sub.i133 = add i32 %186, -20
  store i32 %sub.i133, ptr %space.i123, align 4
  %187 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %dev_priv, align 4
  %tail20.i134 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 4
  %189 = ptrtoint ptr %tail20.i134 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %tail20.i134, align 4
  %tail_mask22.i135 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 5
  %191 = ptrtoint ptr %tail_mask22.i135 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %tail_mask22.i135, align 4
  %inc.i136 = add i32 %190, 1
  %arrayidx.i137 = getelementptr i32, ptr %188, i32 %190
  %193 = ptrtoint ptr %arrayidx.i137 to i32
  call void @__asan_store4_noabort(i32 %193)
  store volatile i32 -1291517952, ptr %arrayidx.i137, align 4
  %and.i138 = and i32 %inc.i136, %192
  %dp_write_mask.i = getelementptr inbounds %struct.drm_r128_context_regs_t, ptr %170, i32 0, i32 16
  %194 = ptrtoint ptr %dp_write_mask.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %dp_write_mask.i, align 4
  %196 = tail call i32 @llvm.bswap.i32(i32 %195) #7
  %inc29.i139 = add i32 %and.i138, 1
  %arrayidx30.i140 = getelementptr i32, ptr %188, i32 %and.i138
  %197 = ptrtoint ptr %arrayidx30.i140 to i32
  call void @__asan_store4_noabort(i32 %197)
  store volatile i32 %196, ptr %arrayidx30.i140, align 4
  %and31.i141 = and i32 %inc29.i139, %192
  %inc35.i142 = add i32 %and31.i141, 1
  %arrayidx36.i143 = getelementptr i32, ptr %188, i32 %and31.i141
  %198 = ptrtoint ptr %arrayidx36.i143 to i32
  call void @__asan_store4_noabort(i32 %198)
  store volatile i32 1342636288, ptr %arrayidx36.i143, align 4
  %and37.i144 = and i32 %inc35.i142, %192
  %sten_ref_mask_c.i = getelementptr inbounds %struct.drm_r128_context_regs_t, ptr %170, i32 0, i32 17
  %199 = ptrtoint ptr %sten_ref_mask_c.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %sten_ref_mask_c.i, align 4
  %201 = tail call i32 @llvm.bswap.i32(i32 %200) #7
  %inc41.i145 = add i32 %and37.i144, 1
  %arrayidx42.i146 = getelementptr i32, ptr %188, i32 %and37.i144
  %202 = ptrtoint ptr %arrayidx42.i146 to i32
  call void @__asan_store4_noabort(i32 %202)
  store volatile i32 %201, ptr %arrayidx42.i146, align 4
  %and43.i147 = and i32 %inc41.i145, %192
  %plane_3d_mask_c.i = getelementptr inbounds %struct.drm_r128_context_regs_t, ptr %170, i32 0, i32 18
  %203 = ptrtoint ptr %plane_3d_mask_c.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %plane_3d_mask_c.i, align 4
  %205 = tail call i32 @llvm.bswap.i32(i32 %204) #7
  %inc47.i148 = add i32 %and43.i147, 1
  %arrayidx48.i149 = getelementptr i32, ptr %188, i32 %and43.i147
  %206 = ptrtoint ptr %arrayidx48.i149 to i32
  call void @__asan_store4_noabort(i32 %206)
  store volatile i32 %205, ptr %arrayidx48.i149, align 4
  %and49.i150 = and i32 %inc47.i148, %192
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and49.i150)
  %cmp53.i = icmp slt i32 %and49.i150, 32
  br i1 %cmp53.i, label %if.then54.i, label %if.end.i151.if.end58.i_crit_edge

if.end.i151.if.end58.i_crit_edge:                 ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58.i

if.then54.i:                                      ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #9
  %end.i152 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 1
  %207 = ptrtoint ptr %end.i152 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %end.i152, align 4
  %209 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %dev_priv, align 4
  %mul.i153 = shl i32 %and49.i150, 2
  %211 = call ptr @memcpy(ptr %208, ptr %210, i32 %mul.i153)
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then54.i, %if.end.i151.if.end58.i_crit_edge
  %212 = ptrtoint ptr %tail20.i134 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %tail20.i134, align 4
  %add.i154 = add i32 %213, 5
  %and61.i155 = and i32 %add.i154, %192
  call void @__sanitizer_cov_trace_cmp4(i32 %and61.i155, i32 %and49.i150)
  %cmp62.not.i = icmp eq i32 %and61.i155, %and49.i150
  br i1 %cmp62.not.i, label %if.else.i156, label %if.then63.i

if.then63.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %and61.i155, i32 noundef %and49.i150, i32 noundef 162) #7
  br label %r128_emit_masks.exit

if.else.i156:                                     ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #9
  %214 = ptrtoint ptr %tail20.i134 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %and49.i150, ptr %tail20.i134, align 4
  br label %r128_emit_masks.exit

r128_emit_masks.exit:                             ; preds = %if.else.i156, %if.then63.i
  %215 = ptrtoint ptr %dirty2 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %dirty2, align 4
  %and21 = and i32 %216, -129
  store i32 %and21, ptr %dirty2, align 4
  br label %if.end22

if.end22:                                         ; preds = %r128_emit_masks.exit, %if.end16.if.end22_crit_edge
  %and23 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.if.end28_crit_edge, label %if.then25

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then25:                                        ; preds = %if.end22
  %217 = ptrtoint ptr %sarea_priv1 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %sarea_priv1, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.22) #7
  %space.i158 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 6
  %219 = ptrtoint ptr %space.i158 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %space.i158, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %220)
  %cmp.i159 = icmp ult i32 %220, 9
  br i1 %cmp.i159, label %do.body4.i167, label %if.then25.if.end.i178_crit_edge

if.then25.if.end.i178_crit_edge:                  ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i178

do.body4.i167:                                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !231
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  tail call void @arm_heavy_mb() #7
  %tail.i160 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 4
  %221 = ptrtoint ptr %tail.i160 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %tail.i160, align 4
  %223 = tail call i32 @llvm.bswap.i32(i32 %222) #7
  %mmio.i161 = getelementptr inbounds %struct.drm_r128_private, ptr %dev_priv, i32 0, i32 30
  %224 = ptrtoint ptr %mmio.i161 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %mmio.i161, align 4
  %handle.i162 = getelementptr inbounds %struct.drm_local_map, ptr %225, i32 0, i32 4
  %226 = ptrtoint ptr %handle.i162 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %handle.i162, align 4
  %add.ptr.i163 = getelementptr i8, ptr %227, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i163, i32 %223) #7, !srcloc !126
  %228 = ptrtoint ptr %mmio.i161 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %mmio.i161, align 4
  %handle10.i164 = getelementptr inbounds %struct.drm_local_map, ptr %229, i32 0, i32 4
  %230 = ptrtoint ptr %handle10.i164 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %handle10.i164, align 4
  %add.ptr11.i165 = getelementptr i8, ptr %231, i32 1812
  %232 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i165) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  %call15.i166 = tail call i32 @r128_wait_ring(ptr noundef %dev_priv, i32 noundef 8) #7
  br label %if.end.i178

if.end.i178:                                      ; preds = %do.body4.i167, %if.then25.if.end.i178_crit_edge
  %233 = ptrtoint ptr %space.i158 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %space.i158, align 4
  %sub.i168 = add i32 %234, -8
  store i32 %sub.i168, ptr %space.i158, align 4
  %235 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %dev_priv, align 4
  %tail20.i169 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 4
  %237 = ptrtoint ptr %tail20.i169 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %tail20.i169, align 4
  %tail_mask22.i170 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 5
  %239 = ptrtoint ptr %tail_mask22.i170 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %tail_mask22.i170, align 4
  %inc.i171 = add i32 %238, 1
  %arrayidx.i172 = getelementptr i32, ptr %236, i32 %238
  %241 = ptrtoint ptr %arrayidx.i172 to i32
  call void @__asan_store4_noabort(i32 %241)
  store volatile i32 -217710592, ptr %arrayidx.i172, align 4
  %and.i173 = and i32 %inc.i171, %240
  %window_xy_offset.i = getelementptr inbounds %struct.drm_r128_context_regs_t, ptr %218, i32 0, i32 19
  %242 = ptrtoint ptr %window_xy_offset.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %window_xy_offset.i, align 4
  %244 = tail call i32 @llvm.bswap.i32(i32 %243) #7
  %inc29.i174 = add i32 %and.i173, 1
  %arrayidx30.i175 = getelementptr i32, ptr %236, i32 %and.i173
  %245 = ptrtoint ptr %arrayidx30.i175 to i32
  call void @__asan_store4_noabort(i32 %245)
  store volatile i32 %244, ptr %arrayidx30.i175, align 4
  %and31.i176 = and i32 %inc29.i174, %240
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and31.i176)
  %cmp35.i177 = icmp slt i32 %and31.i176, 32
  br i1 %cmp35.i177, label %if.then36.i181, label %if.end.i178.if.end40.i185_crit_edge

if.end.i178.if.end40.i185_crit_edge:              ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40.i185

if.then36.i181:                                   ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_pc() #9
  %end.i179 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 1
  %246 = ptrtoint ptr %end.i179 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %end.i179, align 4
  %248 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %dev_priv, align 4
  %mul.i180 = shl i32 %and31.i176, 2
  %250 = call ptr @memcpy(ptr %247, ptr %249, i32 %mul.i180)
  br label %if.end40.i185

if.end40.i185:                                    ; preds = %if.then36.i181, %if.end.i178.if.end40.i185_crit_edge
  %251 = ptrtoint ptr %tail20.i169 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %tail20.i169, align 4
  %add.i182 = add i32 %252, 2
  %and43.i183 = and i32 %add.i182, %240
  call void @__sanitizer_cov_trace_cmp4(i32 %and43.i183, i32 %and31.i176)
  %cmp44.not.i184 = icmp eq i32 %and43.i183, %and31.i176
  br i1 %cmp44.not.i184, label %if.else.i187, label %if.then45.i186

if.then45.i186:                                   ; preds = %if.end40.i185
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %and43.i183, i32 noundef %and31.i176, i32 noundef 177) #7
  br label %r128_emit_window.exit

if.else.i187:                                     ; preds = %if.end40.i185
  call void @__sanitizer_cov_trace_pc() #9
  %253 = ptrtoint ptr %tail20.i169 to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 %and31.i176, ptr %tail20.i169, align 4
  br label %r128_emit_window.exit

r128_emit_window.exit:                            ; preds = %if.else.i187, %if.then45.i186
  %254 = ptrtoint ptr %dirty2 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %dirty2, align 4
  %and27 = and i32 %255, -257
  store i32 %and27, ptr %dirty2, align 4
  br label %if.end28

if.end28:                                         ; preds = %r128_emit_window.exit, %if.end22.if.end28_crit_edge
  %and29 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end28.if.end34_crit_edge, label %if.then31

if.end28.if.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then31:                                        ; preds = %if.end28
  %256 = ptrtoint ptr %sarea_priv1 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %sarea_priv1, align 4
  %tex_state.i = getelementptr inbounds %struct.drm_r128_sarea, ptr %257, i32 0, i32 1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.22) #7
  %space.i189 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 6
  %258 = ptrtoint ptr %space.i189 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %space.i189, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 73, i32 %259)
  %cmp.i190 = icmp ult i32 %259, 73
  br i1 %cmp.i190, label %do.body4.i198, label %if.then31.if.end.i204_crit_edge

if.then31.if.end.i204_crit_edge:                  ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i204

do.body4.i198:                                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !234
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !235
  tail call void @arm_heavy_mb() #7
  %tail.i191 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 4
  %260 = ptrtoint ptr %tail.i191 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %tail.i191, align 4
  %262 = tail call i32 @llvm.bswap.i32(i32 %261) #7
  %mmio.i192 = getelementptr inbounds %struct.drm_r128_private, ptr %dev_priv, i32 0, i32 30
  %263 = ptrtoint ptr %mmio.i192 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %mmio.i192, align 4
  %handle.i193 = getelementptr inbounds %struct.drm_local_map, ptr %264, i32 0, i32 4
  %265 = ptrtoint ptr %handle.i193 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %handle.i193, align 4
  %add.ptr.i194 = getelementptr i8, ptr %266, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i194, i32 %262) #7, !srcloc !126
  %267 = ptrtoint ptr %mmio.i192 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %mmio.i192, align 4
  %handle10.i195 = getelementptr inbounds %struct.drm_local_map, ptr %268, i32 0, i32 4
  %269 = ptrtoint ptr %handle10.i195 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %handle10.i195, align 4
  %add.ptr11.i196 = getelementptr i8, ptr %270, i32 1812
  %271 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i196) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !236
  %call15.i197 = tail call i32 @r128_wait_ring(ptr noundef %dev_priv, i32 noundef 72) #7
  br label %if.end.i204

if.end.i204:                                      ; preds = %do.body4.i198, %if.then31.if.end.i204_crit_edge
  %272 = ptrtoint ptr %space.i189 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %space.i189, align 4
  %sub.i199 = add i32 %273, -72
  store i32 %sub.i199, ptr %space.i189, align 4
  %274 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %dev_priv, align 4
  %tail20.i200 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 4
  %276 = ptrtoint ptr %tail20.i200 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %tail20.i200, align 4
  %tail_mask22.i201 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 5
  %278 = ptrtoint ptr %tail_mask22.i201 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %tail_mask22.i201, align 4
  %inc.i202 = add i32 %277, 1
  %arrayidx26.i = getelementptr i32, ptr %275, i32 %277
  %280 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store volatile i32 738659584, ptr %arrayidx26.i, align 4
  %and.i203 = and i32 %inc.i202, %279
  %281 = ptrtoint ptr %tex_state.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %tex_state.i, align 4
  %283 = tail call i32 @llvm.bswap.i32(i32 %282) #7
  %inc30.i = add i32 %and.i203, 1
  %arrayidx31.i = getelementptr i32, ptr %275, i32 %and.i203
  %284 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store volatile i32 %283, ptr %arrayidx31.i, align 4
  %and32.i = and i32 %inc30.i, %279
  %tex_combine_cntl.i = getelementptr inbounds %struct.drm_r128_sarea, ptr %257, i32 0, i32 1, i32 0, i32 1
  %285 = ptrtoint ptr %tex_combine_cntl.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %tex_combine_cntl.i, align 4
  %287 = tail call i32 @llvm.bswap.i32(i32 %286) #7
  %inc36.i = add i32 %and32.i, 1
  %arrayidx37.i = getelementptr i32, ptr %275, i32 %and32.i
  %288 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store volatile i32 %287, ptr %arrayidx37.i, align 4
  %and38.i = and i32 %inc36.i, %279
  %tex_size_pitch_c.i = getelementptr inbounds %struct.drm_r128_context_regs_t, ptr %257, i32 0, i32 12
  %289 = ptrtoint ptr %tex_size_pitch_c.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %tex_size_pitch_c.i, align 4
  %291 = tail call i32 @llvm.bswap.i32(i32 %290) #7
  %arrayidx43.i = getelementptr i32, ptr %275, i32 %and38.i
  %292 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store volatile i32 %291, ptr %arrayidx43.i, align 4
  %inc42.pn153.i = add i32 %and38.i, 1
  %write.0154.i = and i32 %inc42.pn153.i, %279
  %arrayidx49.i = getelementptr %struct.drm_r128_sarea, ptr %257, i32 0, i32 1, i32 0, i32 3, i32 0
  %293 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %arrayidx49.i, align 4
  %295 = tail call i32 @llvm.bswap.i32(i32 %294) #7
  %arrayidx51.i = getelementptr i32, ptr %275, i32 %write.0154.i
  %296 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store volatile i32 %295, ptr %arrayidx51.i, align 4
  %inc42.pn.i = add i32 %write.0154.i, 1
  %write.0.i = and i32 %inc42.pn.i, %279
  %arrayidx49.1.i = getelementptr %struct.drm_r128_sarea, ptr %257, i32 0, i32 1, i32 0, i32 3, i32 1
  %297 = ptrtoint ptr %arrayidx49.1.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %arrayidx49.1.i, align 4
  %299 = tail call i32 @llvm.bswap.i32(i32 %298) #7
  %arrayidx51.1.i = getelementptr i32, ptr %275, i32 %write.0.i
  %300 = ptrtoint ptr %arrayidx51.1.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store volatile i32 %299, ptr %arrayidx51.1.i, align 4
  %inc42.pn.1.i = add i32 %write.0.i, 1
  %write.0.1.i = and i32 %inc42.pn.1.i, %279
  %arrayidx49.2.i = getelementptr %struct.drm_r128_sarea, ptr %257, i32 0, i32 1, i32 0, i32 3, i32 2
  %301 = ptrtoint ptr %arrayidx49.2.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %arrayidx49.2.i, align 4
  %303 = tail call i32 @llvm.bswap.i32(i32 %302) #7
  %arrayidx51.2.i = getelementptr i32, ptr %275, i32 %write.0.1.i
  %304 = ptrtoint ptr %arrayidx51.2.i to i32
  call void @__asan_store4_noabort(i32 %304)
  store volatile i32 %303, ptr %arrayidx51.2.i, align 4
  %inc42.pn.2.i = add i32 %write.0.1.i, 1
  %write.0.2.i = and i32 %inc42.pn.2.i, %279
  %arrayidx49.3.i = getelementptr %struct.drm_r128_sarea, ptr %257, i32 0, i32 1, i32 0, i32 3, i32 3
  %305 = ptrtoint ptr %arrayidx49.3.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %arrayidx49.3.i, align 4
  %307 = tail call i32 @llvm.bswap.i32(i32 %306) #7
  %arrayidx51.3.i = getelementptr i32, ptr %275, i32 %write.0.2.i
  %308 = ptrtoint ptr %arrayidx51.3.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store volatile i32 %307, ptr %arrayidx51.3.i, align 4
  %inc42.pn.3.i = add i32 %write.0.2.i, 1
  %write.0.3.i = and i32 %inc42.pn.3.i, %279
  %arrayidx49.4.i = getelementptr %struct.drm_r128_sarea, ptr %257, i32 0, i32 1, i32 0, i32 3, i32 4
  %309 = ptrtoint ptr %arrayidx49.4.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %arrayidx49.4.i, align 4
  %311 = tail call i32 @llvm.bswap.i32(i32 %310) #7
  %arrayidx51.4.i = getelementptr i32, ptr %275, i32 %write.0.3.i
  %312 = ptrtoint ptr %arrayidx51.4.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store volatile i32 %311, ptr %arrayidx51.4.i, align 4
  %inc42.pn.4.i = add i32 %write.0.3.i, 1
  %write.0.4.i = and i32 %inc42.pn.4.i, %279
  %arrayidx49.5.i = getelementptr %struct.drm_r128_sarea, ptr %257, i32 0, i32 1, i32 0, i32 3, i32 5
  %313 = ptrtoint ptr %arrayidx49.5.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %arrayidx49.5.i, align 4
  %315 = tail call i32 @llvm.bswap.i32(i32 %314) #7
  %arrayidx51.5.i = getelementptr i32, ptr %275, i32 %write.0.4.i
  %316 = ptrtoint ptr %arrayidx51.5.i to i32
  call void @__asan_store4_noabort(i32 %316)
  store volatile i32 %315, ptr %arrayidx51.5.i, align 4
  %inc42.pn.5.i = add i32 %write.0.4.i, 1
  %write.0.5.i = and i32 %inc42.pn.5.i, %279
  %arrayidx49.6.i = getelementptr %struct.drm_r128_sarea, ptr %257, i32 0, i32 1, i32 0, i32 3, i32 6
  %317 = ptrtoint ptr %arrayidx49.6.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %arrayidx49.6.i, align 4
  %319 = tail call i32 @llvm.bswap.i32(i32 %318) #7
  %arrayidx51.6.i = getelementptr i32, ptr %275, i32 %write.0.5.i
  %320 = ptrtoint ptr %arrayidx51.6.i to i32
  call void @__asan_store4_noabort(i32 %320)
  store volatile i32 %319, ptr %arrayidx51.6.i, align 4
  %inc42.pn.6.i = add i32 %write.0.5.i, 1
  %write.0.6.i = and i32 %inc42.pn.6.i, %279
  %arrayidx49.7.i = getelementptr %struct.drm_r128_sarea, ptr %257, i32 0, i32 1, i32 0, i32 3, i32 7
  %321 = ptrtoint ptr %arrayidx49.7.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %arrayidx49.7.i, align 4
  %323 = tail call i32 @llvm.bswap.i32(i32 %322) #7
  %arrayidx51.7.i = getelementptr i32, ptr %275, i32 %write.0.6.i
  %324 = ptrtoint ptr %arrayidx51.7.i to i32
  call void @__asan_store4_noabort(i32 %324)
  store volatile i32 %323, ptr %arrayidx51.7.i, align 4
  %inc42.pn.7.i = add i32 %write.0.6.i, 1
  %write.0.7.i = and i32 %inc42.pn.7.i, %279
  %arrayidx49.8.i = getelementptr %struct.drm_r128_sarea, ptr %257, i32 0, i32 1, i32 0, i32 3, i32 8
  %325 = ptrtoint ptr %arrayidx49.8.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %arrayidx49.8.i, align 4
  %327 = tail call i32 @llvm.bswap.i32(i32 %326) #7
  %arrayidx51.8.i = getelementptr i32, ptr %275, i32 %write.0.7.i
  %328 = ptrtoint ptr %arrayidx51.8.i to i32
  call void @__asan_store4_noabort(i32 %328)
  store volatile i32 %327, ptr %arrayidx51.8.i, align 4
  %inc42.pn.8.i = add i32 %write.0.7.i, 1
  %write.0.8.i = and i32 %inc42.pn.8.i, %279
  %arrayidx49.9.i = getelementptr %struct.drm_r128_sarea, ptr %257, i32 0, i32 1, i32 0, i32 3, i32 9
  %329 = ptrtoint ptr %arrayidx49.9.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %arrayidx49.9.i, align 4
  %331 = tail call i32 @llvm.bswap.i32(i32 %330) #7
  %arrayidx51.9.i = getelementptr i32, ptr %275, i32 %write.0.8.i
  %332 = ptrtoint ptr %arrayidx51.9.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store volatile i32 %331, ptr %arrayidx51.9.i, align 4
  %inc42.pn.9.i = add i32 %write.0.8.i, 1
  %write.0.9.i = and i32 %inc42.pn.9.i, %279
  %arrayidx49.10.i = getelementptr %struct.drm_r128_sarea, ptr %257, i32 0, i32 1, i32 0, i32 3, i32 10
  %333 = ptrtoint ptr %arrayidx49.10.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %arrayidx49.10.i, align 4
  %335 = tail call i32 @llvm.bswap.i32(i32 %334) #7
  %arrayidx51.10.i = getelementptr i32, ptr %275, i32 %write.0.9.i
  %336 = ptrtoint ptr %arrayidx51.10.i to i32
  call void @__asan_store4_noabort(i32 %336)
  store volatile i32 %335, ptr %arrayidx51.10.i, align 4
  %inc42.pn.10.i = add i32 %write.0.9.i, 1
  %write.0.10.i = and i32 %inc42.pn.10.i, %279
  %inc57.i = add i32 %write.0.10.i, 1
  %arrayidx58.i = getelementptr i32, ptr %275, i32 %write.0.10.i
  %337 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_store4_noabort(i32 %337)
  store volatile i32 1292304640, ptr %arrayidx58.i, align 4
  %and59.i = and i32 %inc57.i, %279
  %constant_color_c.i = getelementptr inbounds %struct.drm_r128_context_regs_t, ptr %257, i32 0, i32 13
  %338 = ptrtoint ptr %constant_color_c.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %constant_color_c.i, align 4
  %340 = tail call i32 @llvm.bswap.i32(i32 %339) #7
  %inc63.i = add i32 %and59.i, 1
  %arrayidx64.i = getelementptr i32, ptr %275, i32 %and59.i
  %341 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store4_noabort(i32 %341)
  store volatile i32 %340, ptr %arrayidx64.i, align 4
  %and65.i = and i32 %inc63.i, %279
  %tex_border_color.i = getelementptr inbounds %struct.drm_r128_sarea, ptr %257, i32 0, i32 1, i32 0, i32 4
  %342 = ptrtoint ptr %tex_border_color.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %tex_border_color.i, align 4
  %344 = tail call i32 @llvm.bswap.i32(i32 %343) #7
  %inc69.i = add i32 %and65.i, 1
  %arrayidx70.i = getelementptr i32, ptr %275, i32 %and65.i
  %345 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_store4_noabort(i32 %345)
  store volatile i32 %344, ptr %arrayidx70.i, align 4
  %and71.i = and i32 %inc69.i, %279
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and71.i)
  %cmp75.i = icmp slt i32 %and71.i, 32
  br i1 %cmp75.i, label %if.then76.i, label %if.end.i204.if.end80.i_crit_edge

if.end.i204.if.end80.i_crit_edge:                 ; preds = %if.end.i204
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80.i

if.then76.i:                                      ; preds = %if.end.i204
  call void @__sanitizer_cov_trace_pc() #9
  %end.i205 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 1
  %346 = ptrtoint ptr %end.i205 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %end.i205, align 4
  %348 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %dev_priv, align 4
  %mul.i206 = shl i32 %and71.i, 2
  %350 = call ptr @memcpy(ptr %347, ptr %349, i32 %mul.i206)
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.then76.i, %if.end.i204.if.end80.i_crit_edge
  %351 = ptrtoint ptr %tail20.i200 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %tail20.i200, align 4
  %add.i207 = add i32 %352, 18
  %and83.i = and i32 %add.i207, %279
  call void @__sanitizer_cov_trace_cmp4(i32 %and83.i, i32 %and71.i)
  %cmp84.not.i = icmp eq i32 %and83.i, %and71.i
  br i1 %cmp84.not.i, label %if.else.i208, label %if.then85.i

if.then85.i:                                      ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %and83.i, i32 noundef %and71.i, i32 noundef 203) #7
  br label %r128_emit_tex0.exit

if.else.i208:                                     ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #9
  %353 = ptrtoint ptr %tail20.i200 to i32
  call void @__asan_store4_noabort(i32 %353)
  store i32 %and71.i, ptr %tail20.i200, align 4
  br label %r128_emit_tex0.exit

r128_emit_tex0.exit:                              ; preds = %if.else.i208, %if.then85.i
  %354 = ptrtoint ptr %dirty2 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %dirty2, align 4
  %and33 = and i32 %355, -5
  store i32 %and33, ptr %dirty2, align 4
  br label %if.end34

if.end34:                                         ; preds = %r128_emit_tex0.exit, %if.end28.if.end34_crit_edge
  %and35 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end40_crit_edge, label %if.then37

if.end34.if.end40_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then37:                                        ; preds = %if.end34
  %356 = ptrtoint ptr %sarea_priv1 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %sarea_priv1, align 4
  %arrayidx.i210 = getelementptr %struct.drm_r128_sarea, ptr %357, i32 0, i32 1, i32 1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.22) #7
  %space.i211 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 6
  %358 = ptrtoint ptr %space.i211 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %space.i211, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %359)
  %cmp.i212 = icmp ult i32 %359, 65
  br i1 %cmp.i212, label %do.body4.i220, label %if.then37.if.end.i248_crit_edge

if.then37.if.end.i248_crit_edge:                  ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i248

do.body4.i220:                                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !237
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !238
  tail call void @arm_heavy_mb() #7
  %tail.i213 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 4
  %360 = ptrtoint ptr %tail.i213 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %tail.i213, align 4
  %362 = tail call i32 @llvm.bswap.i32(i32 %361) #7
  %mmio.i214 = getelementptr inbounds %struct.drm_r128_private, ptr %dev_priv, i32 0, i32 30
  %363 = ptrtoint ptr %mmio.i214 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %mmio.i214, align 4
  %handle.i215 = getelementptr inbounds %struct.drm_local_map, ptr %364, i32 0, i32 4
  %365 = ptrtoint ptr %handle.i215 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %handle.i215, align 4
  %add.ptr.i216 = getelementptr i8, ptr %366, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i216, i32 %362) #7, !srcloc !126
  %367 = ptrtoint ptr %mmio.i214 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %mmio.i214, align 4
  %handle10.i217 = getelementptr inbounds %struct.drm_local_map, ptr %368, i32 0, i32 4
  %369 = ptrtoint ptr %handle10.i217 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %handle10.i217, align 4
  %add.ptr11.i218 = getelementptr i8, ptr %370, i32 1812
  %371 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i218) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !239
  %call15.i219 = tail call i32 @r128_wait_ring(ptr noundef %dev_priv, i32 noundef 64) #7
  br label %if.end.i248

if.end.i248:                                      ; preds = %do.body4.i220, %if.then37.if.end.i248_crit_edge
  %372 = ptrtoint ptr %space.i211 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %space.i211, align 4
  %sub.i221 = add i32 %373, -64
  store i32 %sub.i221, ptr %space.i211, align 4
  %374 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %dev_priv, align 4
  %tail20.i222 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 4
  %376 = ptrtoint ptr %tail20.i222 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %tail20.i222, align 4
  %tail_mask22.i223 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 5
  %378 = ptrtoint ptr %tail_mask22.i223 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %tail_mask22.i223, align 4
  %inc.i224 = add i32 %377, 1
  %arrayidx26.i225 = getelementptr i32, ptr %375, i32 %377
  %380 = ptrtoint ptr %arrayidx26.i225 to i32
  call void @__asan_store4_noabort(i32 %380)
  store volatile i32 1074203648, ptr %arrayidx26.i225, align 4
  %and.i226 = and i32 %inc.i224, %379
  %381 = ptrtoint ptr %arrayidx.i210 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %arrayidx.i210, align 4
  %383 = tail call i32 @llvm.bswap.i32(i32 %382) #7
  %inc30.i227 = add i32 %and.i226, 1
  %arrayidx31.i228 = getelementptr i32, ptr %375, i32 %and.i226
  %384 = ptrtoint ptr %arrayidx31.i228 to i32
  call void @__asan_store4_noabort(i32 %384)
  store volatile i32 %383, ptr %arrayidx31.i228, align 4
  %and32.i229 = and i32 %inc30.i227, %379
  %tex_combine_cntl.i230 = getelementptr %struct.drm_r128_sarea, ptr %357, i32 0, i32 1, i32 1, i32 1
  %385 = ptrtoint ptr %tex_combine_cntl.i230 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %tex_combine_cntl.i230, align 4
  %387 = tail call i32 @llvm.bswap.i32(i32 %386) #7
  %arrayidx37.i231 = getelementptr i32, ptr %375, i32 %and32.i229
  %388 = ptrtoint ptr %arrayidx37.i231 to i32
  call void @__asan_store4_noabort(i32 %388)
  store volatile i32 %387, ptr %arrayidx37.i231, align 4
  %inc36.pn131.i = add i32 %and32.i229, 1
  %write.0132.i = and i32 %inc36.pn131.i, %379
  %arrayidx43.i232 = getelementptr %struct.drm_r128_sarea, ptr %357, i32 0, i32 1, i32 1, i32 3, i32 0
  %389 = ptrtoint ptr %arrayidx43.i232 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %arrayidx43.i232, align 4
  %391 = tail call i32 @llvm.bswap.i32(i32 %390) #7
  %arrayidx45.i = getelementptr i32, ptr %375, i32 %write.0132.i
  %392 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store4_noabort(i32 %392)
  store volatile i32 %391, ptr %arrayidx45.i, align 4
  %inc36.pn.i = add i32 %write.0132.i, 1
  %write.0.i233 = and i32 %inc36.pn.i, %379
  %arrayidx43.1.i = getelementptr %struct.drm_r128_sarea, ptr %357, i32 0, i32 1, i32 1, i32 3, i32 1
  %393 = ptrtoint ptr %arrayidx43.1.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %arrayidx43.1.i, align 4
  %395 = tail call i32 @llvm.bswap.i32(i32 %394) #7
  %arrayidx45.1.i = getelementptr i32, ptr %375, i32 %write.0.i233
  %396 = ptrtoint ptr %arrayidx45.1.i to i32
  call void @__asan_store4_noabort(i32 %396)
  store volatile i32 %395, ptr %arrayidx45.1.i, align 4
  %inc36.pn.1.i = add i32 %write.0.i233, 1
  %write.0.1.i234 = and i32 %inc36.pn.1.i, %379
  %arrayidx43.2.i = getelementptr %struct.drm_r128_sarea, ptr %357, i32 0, i32 1, i32 1, i32 3, i32 2
  %397 = ptrtoint ptr %arrayidx43.2.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %arrayidx43.2.i, align 4
  %399 = tail call i32 @llvm.bswap.i32(i32 %398) #7
  %arrayidx45.2.i = getelementptr i32, ptr %375, i32 %write.0.1.i234
  %400 = ptrtoint ptr %arrayidx45.2.i to i32
  call void @__asan_store4_noabort(i32 %400)
  store volatile i32 %399, ptr %arrayidx45.2.i, align 4
  %inc36.pn.2.i = add i32 %write.0.1.i234, 1
  %write.0.2.i235 = and i32 %inc36.pn.2.i, %379
  %arrayidx43.3.i = getelementptr %struct.drm_r128_sarea, ptr %357, i32 0, i32 1, i32 1, i32 3, i32 3
  %401 = ptrtoint ptr %arrayidx43.3.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %arrayidx43.3.i, align 4
  %403 = tail call i32 @llvm.bswap.i32(i32 %402) #7
  %arrayidx45.3.i = getelementptr i32, ptr %375, i32 %write.0.2.i235
  %404 = ptrtoint ptr %arrayidx45.3.i to i32
  call void @__asan_store4_noabort(i32 %404)
  store volatile i32 %403, ptr %arrayidx45.3.i, align 4
  %inc36.pn.3.i = add i32 %write.0.2.i235, 1
  %write.0.3.i236 = and i32 %inc36.pn.3.i, %379
  %arrayidx43.4.i = getelementptr %struct.drm_r128_sarea, ptr %357, i32 0, i32 1, i32 1, i32 3, i32 4
  %405 = ptrtoint ptr %arrayidx43.4.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %arrayidx43.4.i, align 4
  %407 = tail call i32 @llvm.bswap.i32(i32 %406) #7
  %arrayidx45.4.i = getelementptr i32, ptr %375, i32 %write.0.3.i236
  %408 = ptrtoint ptr %arrayidx45.4.i to i32
  call void @__asan_store4_noabort(i32 %408)
  store volatile i32 %407, ptr %arrayidx45.4.i, align 4
  %inc36.pn.4.i = add i32 %write.0.3.i236, 1
  %write.0.4.i237 = and i32 %inc36.pn.4.i, %379
  %arrayidx43.5.i = getelementptr %struct.drm_r128_sarea, ptr %357, i32 0, i32 1, i32 1, i32 3, i32 5
  %409 = ptrtoint ptr %arrayidx43.5.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %arrayidx43.5.i, align 4
  %411 = tail call i32 @llvm.bswap.i32(i32 %410) #7
  %arrayidx45.5.i = getelementptr i32, ptr %375, i32 %write.0.4.i237
  %412 = ptrtoint ptr %arrayidx45.5.i to i32
  call void @__asan_store4_noabort(i32 %412)
  store volatile i32 %411, ptr %arrayidx45.5.i, align 4
  %inc36.pn.5.i = add i32 %write.0.4.i237, 1
  %write.0.5.i238 = and i32 %inc36.pn.5.i, %379
  %arrayidx43.6.i = getelementptr %struct.drm_r128_sarea, ptr %357, i32 0, i32 1, i32 1, i32 3, i32 6
  %413 = ptrtoint ptr %arrayidx43.6.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load i32, ptr %arrayidx43.6.i, align 4
  %415 = tail call i32 @llvm.bswap.i32(i32 %414) #7
  %arrayidx45.6.i = getelementptr i32, ptr %375, i32 %write.0.5.i238
  %416 = ptrtoint ptr %arrayidx45.6.i to i32
  call void @__asan_store4_noabort(i32 %416)
  store volatile i32 %415, ptr %arrayidx45.6.i, align 4
  %inc36.pn.6.i = add i32 %write.0.5.i238, 1
  %write.0.6.i239 = and i32 %inc36.pn.6.i, %379
  %arrayidx43.7.i = getelementptr %struct.drm_r128_sarea, ptr %357, i32 0, i32 1, i32 1, i32 3, i32 7
  %417 = ptrtoint ptr %arrayidx43.7.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %arrayidx43.7.i, align 4
  %419 = tail call i32 @llvm.bswap.i32(i32 %418) #7
  %arrayidx45.7.i = getelementptr i32, ptr %375, i32 %write.0.6.i239
  %420 = ptrtoint ptr %arrayidx45.7.i to i32
  call void @__asan_store4_noabort(i32 %420)
  store volatile i32 %419, ptr %arrayidx45.7.i, align 4
  %inc36.pn.7.i = add i32 %write.0.6.i239, 1
  %write.0.7.i240 = and i32 %inc36.pn.7.i, %379
  %arrayidx43.8.i = getelementptr %struct.drm_r128_sarea, ptr %357, i32 0, i32 1, i32 1, i32 3, i32 8
  %421 = ptrtoint ptr %arrayidx43.8.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %arrayidx43.8.i, align 4
  %423 = tail call i32 @llvm.bswap.i32(i32 %422) #7
  %arrayidx45.8.i = getelementptr i32, ptr %375, i32 %write.0.7.i240
  %424 = ptrtoint ptr %arrayidx45.8.i to i32
  call void @__asan_store4_noabort(i32 %424)
  store volatile i32 %423, ptr %arrayidx45.8.i, align 4
  %inc36.pn.8.i = add i32 %write.0.7.i240, 1
  %write.0.8.i241 = and i32 %inc36.pn.8.i, %379
  %arrayidx43.9.i = getelementptr %struct.drm_r128_sarea, ptr %357, i32 0, i32 1, i32 1, i32 3, i32 9
  %425 = ptrtoint ptr %arrayidx43.9.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %arrayidx43.9.i, align 4
  %427 = tail call i32 @llvm.bswap.i32(i32 %426) #7
  %arrayidx45.9.i = getelementptr i32, ptr %375, i32 %write.0.8.i241
  %428 = ptrtoint ptr %arrayidx45.9.i to i32
  call void @__asan_store4_noabort(i32 %428)
  store volatile i32 %427, ptr %arrayidx45.9.i, align 4
  %inc36.pn.9.i = add i32 %write.0.8.i241, 1
  %write.0.9.i242 = and i32 %inc36.pn.9.i, %379
  %arrayidx43.10.i = getelementptr %struct.drm_r128_sarea, ptr %357, i32 0, i32 1, i32 1, i32 3, i32 10
  %429 = ptrtoint ptr %arrayidx43.10.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %arrayidx43.10.i, align 4
  %431 = tail call i32 @llvm.bswap.i32(i32 %430) #7
  %arrayidx45.10.i = getelementptr i32, ptr %375, i32 %write.0.9.i242
  %432 = ptrtoint ptr %arrayidx45.10.i to i32
  call void @__asan_store4_noabort(i32 %432)
  store volatile i32 %431, ptr %arrayidx45.10.i, align 4
  %inc36.pn.10.i = add i32 %write.0.9.i242, 1
  %write.0.10.i243 = and i32 %inc36.pn.10.i, %379
  %inc51.i = add i32 %write.0.10.i243, 1
  %arrayidx52.i = getelementptr i32, ptr %375, i32 %write.0.10.i243
  %433 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store4_noabort(i32 %433)
  store volatile i32 1325858816, ptr %arrayidx52.i, align 4
  %and53.i = and i32 %inc51.i, %379
  %tex_border_color.i244 = getelementptr %struct.drm_r128_sarea, ptr %357, i32 0, i32 1, i32 1, i32 4
  %434 = ptrtoint ptr %tex_border_color.i244 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %tex_border_color.i244, align 4
  %436 = tail call i32 @llvm.bswap.i32(i32 %435) #7
  %inc57.i245 = add i32 %and53.i, 1
  %arrayidx58.i246 = getelementptr i32, ptr %375, i32 %and53.i
  %437 = ptrtoint ptr %arrayidx58.i246 to i32
  call void @__asan_store4_noabort(i32 %437)
  store volatile i32 %436, ptr %arrayidx58.i246, align 4
  %and59.i247 = and i32 %inc57.i245, %379
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and59.i247)
  %cmp63.i = icmp slt i32 %and59.i247, 32
  br i1 %cmp63.i, label %if.then64.i, label %if.end.i248.if.end68.i_crit_edge

if.end.i248.if.end68.i_crit_edge:                 ; preds = %if.end.i248
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68.i

if.then64.i:                                      ; preds = %if.end.i248
  call void @__sanitizer_cov_trace_pc() #9
  %end.i249 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 1
  %438 = ptrtoint ptr %end.i249 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %end.i249, align 4
  %440 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %dev_priv, align 4
  %mul.i250 = shl i32 %and59.i247, 2
  %442 = call ptr @memcpy(ptr %439, ptr %441, i32 %mul.i250)
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.then64.i, %if.end.i248.if.end68.i_crit_edge
  %443 = ptrtoint ptr %tail20.i222 to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load i32, ptr %tail20.i222, align 4
  %add.i251 = add i32 %444, 16
  %and71.i252 = and i32 %add.i251, %379
  call void @__sanitizer_cov_trace_cmp4(i32 %and71.i252, i32 %and59.i247)
  %cmp72.not.i = icmp eq i32 %and71.i252, %and59.i247
  br i1 %cmp72.not.i, label %if.else.i253, label %if.then73.i

if.then73.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %and71.i252, i32 noundef %and59.i247, i32 noundef 225) #7
  br label %r128_emit_tex1.exit

if.else.i253:                                     ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #9
  %445 = ptrtoint ptr %tail20.i222 to i32
  call void @__asan_store4_noabort(i32 %445)
  store i32 %and59.i247, ptr %tail20.i222, align 4
  br label %r128_emit_tex1.exit

r128_emit_tex1.exit:                              ; preds = %if.else.i253, %if.then73.i
  %446 = ptrtoint ptr %dirty2 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %dirty2, align 4
  %and39 = and i32 %447, -9
  store i32 %and39, ptr %dirty2, align 4
  br label %if.end40

if.end40:                                         ; preds = %r128_emit_tex1.exit, %if.end34.if.end40_crit_edge
  %tex_cntl_c = getelementptr inbounds %struct.drm_r128_context_regs_t, ptr %1, i32 0, i32 7
  %448 = ptrtoint ptr %tex_cntl_c to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %tex_cntl_c, align 4
  %and41 = and i32 %449, -8388609
  store i32 %and41, ptr %tex_cntl_c, align 4
  %450 = ptrtoint ptr %dirty2 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %dirty2, align 4
  %and43 = and i32 %451, -1025
  store i32 %and43, ptr %dirty2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r128_emit_clip_rects(ptr noundef %dev_priv, ptr nocapture noundef readonly %boxes, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.22) #7
  %space = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 6
  %0 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %space, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %cmp = icmp slt i32 %count, 3
  %phi.bo333 = mul i32 %count, 20
  %phi.bo334 = add i32 %phi.bo333, 8
  %cond = select i1 %cmp, i32 %phi.bo334, i32 68
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cond)
  %cmp3.not = icmp ugt i32 %1, %cond
  br i1 %cmp3.not, label %entry.if.end_crit_edge, label %do.body5

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !240
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !241
  tail call void @arm_heavy_mb() #7
  %tail = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 4
  %2 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tail, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %mmio = getelementptr inbounds %struct.drm_r128_private, ptr %dev_priv, i32 0, i32 30
  %5 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %handle, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #7, !srcloc !126
  %9 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio, align 4
  %handle11 = getelementptr inbounds %struct.drm_local_map, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %handle11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %handle11, align 4
  %add.ptr12 = getelementptr i8, ptr %12, i32 1812
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !242
  %call24 = tail call i32 @r128_wait_ring(ptr noundef %dev_priv, i32 noundef %cond) #7
  br label %if.end

if.end:                                           ; preds = %do.body5, %entry.if.end_crit_edge
  %phi.bo = mul i32 %count, 5
  %phi.bo335 = add i32 %phi.bo, 2
  %cond29 = select i1 %cmp, i32 %phi.bo335, i32 17
  %phi.bo337.neg = mul i32 %count, -20
  %phi.bo338.neg = add i32 %phi.bo337.neg, -8
  %cond36.neg = select i1 %cmp, i32 %phi.bo338.neg, i32 -68
  %14 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %space, align 4
  %sub = add i32 %15, %cond36.neg
  store i32 %sub, ptr %space, align 4
  %16 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_priv, align 4
  %tail44 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 4
  %18 = ptrtoint ptr %tail44 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tail44, align 4
  %tail_mask46 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 5
  %20 = ptrtoint ptr %tail_mask46 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tail_mask46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp49 = icmp sgt i32 %count, 0
  br i1 %cmp49, label %if.end87, label %if.end.do.body186_crit_edge

if.end.do.body186_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body186

if.end87:                                         ; preds = %if.end
  %inc = add i32 %19, 1
  %arrayidx = getelementptr i32, ptr %17, i32 %19
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 -1727724800, ptr %arrayidx, align 4
  %and = and i32 %inc, %21
  %23 = ptrtoint ptr %boxes to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %boxes, align 2
  %conv = zext i16 %24 to i32
  %25 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %inc56 = add i32 %and, 1
  %arrayidx57 = getelementptr i32, ptr %17, i32 %and
  %26 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 %25, ptr %arrayidx57, align 4
  %and58 = and i32 %inc56, %21
  %x2 = getelementptr inbounds %struct.drm_clip_rect, ptr %boxes, i32 0, i32 2
  %27 = ptrtoint ptr %x2 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %x2, align 2
  %conv63 = zext i16 %28 to i32
  %sub64 = add nsw i32 %conv63, -1
  %29 = tail call i32 @llvm.bswap.i32(i32 %sub64)
  %inc65 = add i32 %and58, 1
  %arrayidx66 = getelementptr i32, ptr %17, i32 %and58
  %30 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 %29, ptr %arrayidx66, align 4
  %and67 = and i32 %inc65, %21
  %y1 = getelementptr inbounds %struct.drm_clip_rect, ptr %boxes, i32 0, i32 1
  %31 = ptrtoint ptr %y1 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %y1, align 2
  %conv72 = zext i16 %32 to i32
  %33 = tail call i32 @llvm.bswap.i32(i32 %conv72)
  %inc73 = add i32 %and67, 1
  %arrayidx74 = getelementptr i32, ptr %17, i32 %and67
  %34 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 %33, ptr %arrayidx74, align 4
  %and75 = and i32 %inc73, %21
  %y2 = getelementptr inbounds %struct.drm_clip_rect, ptr %boxes, i32 0, i32 3
  %35 = ptrtoint ptr %y2 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %y2, align 2
  %conv80 = zext i16 %36 to i32
  %sub81 = add nsw i32 %conv80, -1
  %37 = tail call i32 @llvm.bswap.i32(i32 %sub81)
  %inc82 = add i32 %and75, 1
  %arrayidx83 = getelementptr i32, ptr %17, i32 %and75
  %38 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile i32 %37, ptr %arrayidx83, align 4
  %and84 = and i32 %inc82, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp88.not = icmp eq i32 %count, 1
  br i1 %cmp88.not, label %if.end87.do.body186_crit_edge, label %if.end136

if.end87.do.body186_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body186

if.end136:                                        ; preds = %if.end87
  %inc92 = add i32 %and84, 1
  %arrayidx93 = getelementptr i32, ptr %17, i32 %and84
  %39 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 -1660615936, ptr %arrayidx93, align 4
  %and94 = and i32 %inc92, %21
  %arrayidx98 = getelementptr %struct.drm_clip_rect, ptr %boxes, i32 1
  %40 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx98, align 2
  %conv100 = zext i16 %41 to i32
  %42 = tail call i32 @llvm.bswap.i32(i32 %conv100)
  %inc101 = add i32 %and94, 1
  %arrayidx102 = getelementptr i32, ptr %17, i32 %and94
  %43 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile i32 %42, ptr %arrayidx102, align 4
  %and103 = and i32 %inc101, %21
  %x2108 = getelementptr %struct.drm_clip_rect, ptr %boxes, i32 1, i32 2
  %44 = ptrtoint ptr %x2108 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %x2108, align 2
  %conv109 = zext i16 %45 to i32
  %sub110 = add nsw i32 %conv109, -1
  %46 = tail call i32 @llvm.bswap.i32(i32 %sub110)
  %inc111 = add i32 %and103, 1
  %arrayidx112 = getelementptr i32, ptr %17, i32 %and103
  %47 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 %46, ptr %arrayidx112, align 4
  %and113 = and i32 %inc111, %21
  %y1118 = getelementptr %struct.drm_clip_rect, ptr %boxes, i32 1, i32 1
  %48 = ptrtoint ptr %y1118 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %y1118, align 2
  %conv119 = zext i16 %49 to i32
  %50 = tail call i32 @llvm.bswap.i32(i32 %conv119)
  %inc120 = add i32 %and113, 1
  %arrayidx121 = getelementptr i32, ptr %17, i32 %and113
  %51 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile i32 %50, ptr %arrayidx121, align 4
  %and122 = and i32 %inc120, %21
  %y2127 = getelementptr %struct.drm_clip_rect, ptr %boxes, i32 1, i32 3
  %52 = ptrtoint ptr %y2127 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %y2127, align 2
  %conv128 = zext i16 %53 to i32
  %sub129 = add nsw i32 %conv128, -1
  %54 = tail call i32 @llvm.bswap.i32(i32 %sub129)
  %inc130 = add i32 %and122, 1
  %arrayidx131 = getelementptr i32, ptr %17, i32 %and122
  %55 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile i32 %54, ptr %arrayidx131, align 4
  %and132 = and i32 %inc130, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %count)
  %cmp137 = icmp ugt i32 %count, 2
  br i1 %cmp137, label %do.body140, label %if.end136.do.body186_crit_edge

if.end136.do.body186_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body186

do.body140:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  %inc141 = add i32 %and132, 1
  %arrayidx142 = getelementptr i32, ptr %17, i32 %and132
  %56 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile i32 -1593507072, ptr %arrayidx142, align 4
  %and143 = and i32 %inc141, %21
  %arrayidx147 = getelementptr %struct.drm_clip_rect, ptr %boxes, i32 2
  %57 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx147, align 2
  %conv149 = zext i16 %58 to i32
  %59 = tail call i32 @llvm.bswap.i32(i32 %conv149)
  %inc150 = add i32 %and143, 1
  %arrayidx151 = getelementptr i32, ptr %17, i32 %and143
  %60 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile i32 %59, ptr %arrayidx151, align 4
  %and152 = and i32 %inc150, %21
  %x2157 = getelementptr %struct.drm_clip_rect, ptr %boxes, i32 2, i32 2
  %61 = ptrtoint ptr %x2157 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %x2157, align 2
  %conv158 = zext i16 %62 to i32
  %sub159 = add nsw i32 %conv158, -1
  %63 = tail call i32 @llvm.bswap.i32(i32 %sub159)
  %inc160 = add i32 %and152, 1
  %arrayidx161 = getelementptr i32, ptr %17, i32 %and152
  %64 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile i32 %63, ptr %arrayidx161, align 4
  %and162 = and i32 %inc160, %21
  %y1167 = getelementptr %struct.drm_clip_rect, ptr %boxes, i32 2, i32 1
  %65 = ptrtoint ptr %y1167 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %y1167, align 2
  %conv168 = zext i16 %66 to i32
  %67 = tail call i32 @llvm.bswap.i32(i32 %conv168)
  %inc169 = add i32 %and162, 1
  %arrayidx170 = getelementptr i32, ptr %17, i32 %and162
  %68 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile i32 %67, ptr %arrayidx170, align 4
  %and171 = and i32 %inc169, %21
  %y2176 = getelementptr %struct.drm_clip_rect, ptr %boxes, i32 2, i32 3
  %69 = ptrtoint ptr %y2176 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %y2176, align 2
  %conv177 = zext i16 %70 to i32
  %sub178 = add nsw i32 %conv177, -1
  %71 = tail call i32 @llvm.bswap.i32(i32 %sub178)
  %inc179 = add i32 %and171, 1
  %arrayidx180 = getelementptr i32, ptr %17, i32 %and171
  %72 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile i32 %71, ptr %arrayidx180, align 4
  %and181 = and i32 %inc179, %21
  br label %do.body186

do.body186:                                       ; preds = %do.body140, %if.end136.do.body186_crit_edge, %if.end87.do.body186_crit_edge, %if.end.do.body186_crit_edge
  %write.2 = phi i32 [ %and181, %do.body140 ], [ %and132, %if.end136.do.body186_crit_edge ], [ %and84, %if.end87.do.body186_crit_edge ], [ %19, %if.end.do.body186_crit_edge ]
  %aux_sc_cntl.2 = phi i32 [ 352321536, %do.body140 ], [ 83886080, %if.end136.do.body186_crit_edge ], [ 16777216, %if.end87.do.body186_crit_edge ], [ 0, %if.end.do.body186_crit_edge ]
  %inc187 = add i32 %write.2, 1
  %arrayidx188 = getelementptr i32, ptr %17, i32 %write.2
  %73 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile i32 -1744502784, ptr %arrayidx188, align 4
  %and189 = and i32 %inc187, %21
  %inc193 = add i32 %and189, 1
  %arrayidx194 = getelementptr i32, ptr %17, i32 %and189
  %74 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile i32 %aux_sc_cntl.2, ptr %arrayidx194, align 4
  %and195 = and i32 %inc193, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and195)
  %cmp199 = icmp slt i32 %and195, 32
  br i1 %cmp199, label %if.then201, label %do.body186.if.end206_crit_edge

do.body186.if.end206_crit_edge:                   ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end206

if.then201:                                       ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #9
  %end = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 1
  %75 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %end, align 4
  %77 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev_priv, align 4
  %mul205 = shl i32 %and195, 2
  %79 = call ptr @memcpy(ptr %76, ptr %78, i32 %mul205)
  br label %if.end206

if.end206:                                        ; preds = %if.then201, %do.body186.if.end206_crit_edge
  %80 = ptrtoint ptr %tail44 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %tail44, align 4
  %add209 = add i32 %81, %cond29
  %and210 = and i32 %add209, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %and210, i32 %and195)
  %cmp211.not = icmp eq i32 %and210, %and195
  br i1 %cmp211.not, label %if.else, label %if.then213

if.then213:                                       ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %and210, i32 noundef %and195, i32 noundef 86) #7
  br label %do.end222

if.else:                                          ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %tail44 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %and195, ptr %tail44, align 4
  br label %do.end222

do.end222:                                        ; preds = %if.else, %if.then213
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r128_cce_dispatch_indices(ptr nocapture noundef readonly %dev, ptr noundef %buf, i32 noundef %start, i32 noundef %end, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %dev_private1 = getelementptr inbounds %struct.drm_buf, ptr %buf, i32 0, i32 15
  %2 = ptrtoint ptr %dev_private1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private1, align 4
  %sarea_priv2 = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %sarea_priv2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sarea_priv2, align 4
  %vc_format = getelementptr inbounds %struct.drm_r128_sarea, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %vc_format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vc_format, align 4
  %agp_buffer_map = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 52
  %8 = ptrtoint ptr %agp_buffer_map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %agp_buffer_map, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %cce_buffers_offset = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %cce_buffers_offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cce_buffers_offset, align 4
  %sub = sub i32 %11, %13
  %prim4 = getelementptr inbounds %struct.drm_r128_buf_priv, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %prim4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %prim4, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.39, i32 noundef %start, i32 noundef %end, i32 noundef %count) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %end, i32 %start)
  %cmp.not = icmp eq i32 %end, %start
  br i1 %cmp.not, label %entry.if.end34_crit_edge, label %if.then

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then:                                          ; preds = %entry
  %dispatched = getelementptr inbounds %struct.drm_r128_buf_priv, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %dispatched to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %dispatched, align 4
  %dirty = getelementptr inbounds %struct.drm_r128_sarea, ptr %5, i32 0, i32 2
  %17 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dirty, align 4
  %and = and i32 %18, -513
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @r128_emit_state(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %sub6 = sub i32 3, %start
  %add = add i32 %sub6, %end
  %div183 = lshr i32 %add, 2
  %19 = ptrtoint ptr %agp_buffer_map to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %agp_buffer_map, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %handle, align 4
  %offset8 = getelementptr inbounds %struct.drm_buf, ptr %buf, i32 0, i32 4
  %23 = ptrtoint ptr %offset8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset8, align 4
  %add.ptr = getelementptr i8, ptr %22, i32 %24
  %add.ptr9 = getelementptr i8, ptr %add.ptr, i32 %start
  %sub10 = shl i32 %div183, 16
  %shl = add i32 %sub10, 1073610752
  %or = or i32 %shl, -1073732864
  %25 = tail call i32 @llvm.bswap.i32(i32 %or)
  %26 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %add.ptr9, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %arrayidx11 = getelementptr i32, ptr %add.ptr9, i32 1
  %28 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx11, align 4
  %arrayidx12 = getelementptr i32, ptr %add.ptr9, i32 2
  %29 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -65536, ptr %arrayidx12, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %7)
  %arrayidx13 = getelementptr i32, ptr %add.ptr9, i32 3
  %31 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx13, align 4
  %shl15 = shl i32 %count, 16
  %or14 = or i32 %shl15, %15
  %or16 = or i32 %or14, 16
  %32 = tail call i32 @llvm.bswap.i32(i32 %or16)
  %arrayidx17 = getelementptr i32, ptr %add.ptr9, i32 4
  %33 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx17, align 4
  %and18 = and i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end.if.end24_crit_edge, label %if.then20

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sub21 = add nsw i32 %div183, -1
  %arrayidx22 = getelementptr i32, ptr %add.ptr9, i32 %sub21
  %34 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx22, align 4
  %and23 = and i32 %35, -65536
  store i32 %and23, ptr %arrayidx22, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.end.if.end24_crit_edge
  %nbox = getelementptr inbounds %struct.drm_r128_sarea, ptr %5, i32 0, i32 6
  br label %do.body

do.body:                                          ; preds = %if.end30.do.body_crit_edge, %if.end24
  %i.0 = phi i32 [ 0, %if.end24 ], [ %add31, %if.end30.do.body_crit_edge ]
  %36 = ptrtoint ptr %nbox to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nbox, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %i.0)
  %cmp25 = icmp ugt i32 %37, %i.0
  br i1 %cmp25, label %if.then26, label %do.body.if.end30_crit_edge

do.body.if.end30_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx27 = getelementptr %struct.drm_r128_sarea, ptr %5, i32 0, i32 5, i32 %i.0
  %sub29 = sub i32 %37, %i.0
  tail call fastcc void @r128_emit_clip_rects(ptr noundef %1, ptr noundef %arrayidx27, i32 noundef %sub29)
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %do.body.if.end30_crit_edge
  tail call fastcc void @r128_cce_dispatch_indirect(ptr noundef %dev, ptr noundef %buf, i32 noundef %start, i32 noundef %end)
  %add31 = add i32 %i.0, 3
  %38 = ptrtoint ptr %nbox to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nbox, align 4
  %cmp33 = icmp ult i32 %add31, %39
  br i1 %cmp33, label %if.end30.do.body_crit_edge, label %if.end30.if.end34_crit_edge

if.end30.if.end34_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.end30.do.body_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end34:                                         ; preds = %if.end30.if.end34_crit_edge, %entry.if.end34_crit_edge
  %discard = getelementptr inbounds %struct.drm_r128_buf_priv, ptr %3, i32 0, i32 2
  %40 = ptrtoint ptr %discard to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %discard, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool35.not = icmp eq i32 %41, 0
  br i1 %tobool35.not, label %if.end34.if.end107_crit_edge, label %if.then36

if.end34.if.end107_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107

if.then36:                                        ; preds = %if.end34
  %42 = ptrtoint ptr %sarea_priv2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sarea_priv2, align 4
  %last_dispatch = getelementptr inbounds %struct.drm_r128_sarea, ptr %43, i32 0, i32 8
  %44 = ptrtoint ptr %last_dispatch to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %last_dispatch, align 4
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %3, align 4
  %space = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 6
  %47 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %space, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %48)
  %cmp40 = icmp ult i32 %48, 9
  br i1 %cmp40, label %do.body43, label %if.then36.if.end59_crit_edge

if.then36.if.end59_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

do.body43:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !243
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !244
  tail call void @arm_heavy_mb() #7
  %tail = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 4
  %49 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tail, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  %mmio = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 30
  %52 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmio, align 4
  %handle50 = getelementptr inbounds %struct.drm_local_map, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %handle50 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %handle50, align 4
  %add.ptr51 = getelementptr i8, ptr %55, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %51) #7, !srcloc !126
  %56 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mmio, align 4
  %handle53 = getelementptr inbounds %struct.drm_local_map, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %handle53 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %handle53, align 4
  %add.ptr54 = getelementptr i8, ptr %59, i32 1812
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  %call58 = tail call i32 @r128_wait_ring(ptr noundef %1, i32 noundef 8) #7
  br label %if.end59

if.end59:                                         ; preds = %do.body43, %if.then36.if.end59_crit_edge
  %61 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %space, align 4
  %sub62 = add i32 %62, -8
  store i32 %sub62, ptr %space, align 4
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 4
  %tail66 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 4
  %65 = ptrtoint ptr %tail66 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tail66, align 4
  %tail_mask68 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 5
  %67 = ptrtoint ptr %tail_mask68 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tail_mask68, align 4
  %inc = add i32 %66, 1
  %arrayidx72 = getelementptr i32, ptr %64, i32 %66
  %69 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile i32 2030370816, ptr %arrayidx72, align 4
  %and73 = and i32 %inc, %68
  %70 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %3, align 4
  %72 = tail call i32 @llvm.bswap.i32(i32 %71)
  %inc78 = add i32 %and73, 1
  %arrayidx79 = getelementptr i32, ptr %64, i32 %and73
  %73 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile i32 %72, ptr %arrayidx79, align 4
  %and80 = and i32 %inc78, %68
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and80)
  %cmp84 = icmp slt i32 %and80, 32
  br i1 %cmp84, label %if.then85, label %if.end59.if.end90_crit_edge

if.end59.if.end90_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

if.then85:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  %end87 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 1
  %74 = ptrtoint ptr %end87 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %end87, align 4
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %1, align 4
  %mul = shl i32 %and80, 2
  %78 = call ptr @memcpy(ptr %75, ptr %77, i32 %mul)
  br label %if.end90

if.end90:                                         ; preds = %if.then85, %if.end59.if.end90_crit_edge
  %79 = ptrtoint ptr %tail66 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tail66, align 4
  %add93 = add i32 %80, 2
  %and94 = and i32 %add93, %68
  call void @__sanitizer_cov_trace_cmp4(i32 %and94, i32 %and80)
  %cmp95.not = icmp eq i32 %and94, %and80
  br i1 %cmp95.not, label %if.else, label %if.then96

if.then96:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %and94, i32 noundef %and80, i32 noundef 765) #7
  br label %do.end105

if.else:                                          ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %tail66 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %and80, ptr %tail66, align 4
  br label %do.end105

do.end105:                                        ; preds = %if.else, %if.then96
  %pending = getelementptr inbounds %struct.drm_buf, ptr %buf, i32 0, i32 9
  %82 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile i32 1, ptr %pending, align 4
  %dispatched106 = getelementptr inbounds %struct.drm_r128_buf_priv, ptr %3, i32 0, i32 3
  %83 = ptrtoint ptr %dispatched106 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %dispatched106, align 4
  br label %if.end107

if.end107:                                        ; preds = %do.end105, %if.end34.if.end107_crit_edge
  %84 = ptrtoint ptr %sarea_priv2 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %sarea_priv2, align 4
  %last_dispatch109 = getelementptr inbounds %struct.drm_r128_sarea, ptr %85, i32 0, i32 8
  %86 = ptrtoint ptr %last_dispatch109 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %last_dispatch109, align 4
  %inc110 = add i32 %87, 1
  store i32 %inc110, ptr %last_dispatch109, align 4
  %dirty111 = getelementptr inbounds %struct.drm_r128_sarea, ptr %5, i32 0, i32 2
  %88 = ptrtoint ptr %dirty111 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %dirty111, align 4
  %and112 = and i32 %89, -513
  store i32 %and112, ptr %dirty111, align 4
  %nbox113 = getelementptr inbounds %struct.drm_r128_sarea, ptr %5, i32 0, i32 6
  %90 = ptrtoint ptr %nbox113 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %nbox113, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r128_cce_dispatch_indirect(ptr nocapture noundef readonly %dev, ptr noundef %buf, i32 noundef %start, i32 noundef %end) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %dev_private1 = getelementptr inbounds %struct.drm_buf, ptr %buf, i32 0, i32 15
  %2 = ptrtoint ptr %dev_private1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private1, align 4
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buf, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.40, i32 noundef %5, i32 noundef %start, i32 noundef %end) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %end, i32 %start)
  %cmp.not = icmp eq i32 %end, %start
  br i1 %cmp.not, label %entry.if.end77_crit_edge, label %if.then

entry.if.end77_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.then:                                          ; preds = %entry
  %bus_address = getelementptr inbounds %struct.drm_buf, ptr %buf, i32 0, i32 6
  %6 = ptrtoint ptr %bus_address to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bus_address, align 4
  %add = add i32 %7, %start
  %sub = sub i32 %end, %start
  %add2 = add i32 %sub, 3
  %div244 = lshr i32 %add2, 2
  %8 = and i32 %add2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %agp_buffer_map = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 52
  %9 = ptrtoint ptr %agp_buffer_map to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %agp_buffer_map, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %handle, align 4
  %offset4 = getelementptr inbounds %struct.drm_buf, ptr %buf, i32 0, i32 4
  %13 = ptrtoint ptr %offset4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset4, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 %14
  %add.ptr5 = getelementptr i8, ptr %add.ptr, i32 %start
  %inc = add nuw nsw i32 %div244, 1
  %arrayidx = getelementptr i32, ptr %add.ptr5, i32 %div244
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 128, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %dwords.0 = phi i32 [ %inc, %if.then3 ], [ %div244, %if.then.if.end_crit_edge ]
  %dispatched = getelementptr inbounds %struct.drm_r128_buf_priv, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %dispatched to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %dispatched, align 4
  %space = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %space, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %18)
  %cmp7 = icmp ult i32 %18, 13
  br i1 %cmp7, label %do.body10, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

do.body10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !246
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !247
  tail call void @arm_heavy_mb() #7
  %tail = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tail, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %mmio = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 30
  %22 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio, align 4
  %handle15 = getelementptr inbounds %struct.drm_local_map, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %handle15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %handle15, align 4
  %add.ptr16 = getelementptr i8, ptr %25, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %21) #7, !srcloc !126
  %26 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio, align 4
  %handle18 = getelementptr inbounds %struct.drm_local_map, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %handle18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %handle18, align 4
  %add.ptr19 = getelementptr i8, ptr %29, i32 1812
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !248
  %call23 = tail call i32 @r128_wait_ring(ptr noundef %1, i32 noundef 12) #7
  br label %if.end24

if.end24:                                         ; preds = %do.body10, %if.end.if.end24_crit_edge
  %31 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %space, align 4
  %sub27 = add i32 %32, -12
  store i32 %sub27, ptr %space, align 4
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %tail31 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 4
  %35 = ptrtoint ptr %tail31 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tail31, align 4
  %tail_mask33 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 5
  %37 = ptrtoint ptr %tail_mask33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tail_mask33, align 4
  %inc37 = add i32 %36, 1
  %arrayidx38 = getelementptr i32, ptr %34, i32 %36
  %39 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 -838795008, ptr %arrayidx38, align 4
  %and39 = and i32 %inc37, %38
  %40 = tail call i32 @llvm.bswap.i32(i32 %add)
  %inc43 = add i32 %and39, 1
  %arrayidx44 = getelementptr i32, ptr %34, i32 %and39
  %41 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 %40, ptr %arrayidx44, align 4
  %and45 = and i32 %inc43, %38
  %42 = tail call i32 @llvm.bswap.i32(i32 %dwords.0)
  %inc49 = add i32 %and45, 1
  %arrayidx50 = getelementptr i32, ptr %34, i32 %and45
  %43 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile i32 %42, ptr %arrayidx50, align 4
  %and51 = and i32 %inc49, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and51)
  %cmp55 = icmp slt i32 %and51, 32
  br i1 %cmp55, label %if.then56, label %if.end24.if.end61_crit_edge

if.end24.if.end61_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then56:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %end58 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 1
  %44 = ptrtoint ptr %end58 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %end58, align 4
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %mul = shl i32 %and51, 2
  %48 = call ptr @memcpy(ptr %45, ptr %47, i32 %mul)
  br label %if.end61

if.end61:                                         ; preds = %if.then56, %if.end24.if.end61_crit_edge
  %49 = ptrtoint ptr %tail31 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tail31, align 4
  %add64 = add i32 %50, 3
  %and65 = and i32 %add64, %38
  call void @__sanitizer_cov_trace_cmp4(i32 %and65, i32 %and51)
  %cmp66.not = icmp eq i32 %and65, %and51
  br i1 %cmp66.not, label %if.else, label %if.then67

if.then67:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %and65, i32 noundef %and51, i32 noundef 672) #7
  br label %if.end77

if.else:                                          ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %tail31 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %and51, ptr %tail31, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.else, %if.then67, %entry.if.end77_crit_edge
  %discard = getelementptr inbounds %struct.drm_r128_buf_priv, ptr %3, i32 0, i32 2
  %52 = ptrtoint ptr %discard to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %discard, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool78.not = icmp eq i32 %53, 0
  br i1 %tobool78.not, label %if.end77.if.end159_crit_edge, label %if.then79

if.end77.if.end159_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end159

if.then79:                                        ; preds = %if.end77
  %sarea_priv = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 1
  %54 = ptrtoint ptr %sarea_priv to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sarea_priv, align 4
  %last_dispatch = getelementptr inbounds %struct.drm_r128_sarea, ptr %55, i32 0, i32 8
  %56 = ptrtoint ptr %last_dispatch to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %last_dispatch, align 4
  %58 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %3, align 4
  %space82 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 6
  %59 = ptrtoint ptr %space82 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %space82, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %60)
  %cmp83 = icmp ult i32 %60, 9
  br i1 %cmp83, label %do.body86, label %if.then79.if.end108_crit_edge

if.then79.if.end108_crit_edge:                    ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end108

do.body86:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !249
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !250
  tail call void @arm_heavy_mb() #7
  %tail93 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 4
  %61 = ptrtoint ptr %tail93 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tail93, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  %mmio94 = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 30
  %64 = ptrtoint ptr %mmio94 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mmio94, align 4
  %handle95 = getelementptr inbounds %struct.drm_local_map, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %handle95 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %handle95, align 4
  %add.ptr96 = getelementptr i8, ptr %67, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr96, i32 %63) #7, !srcloc !126
  %68 = ptrtoint ptr %mmio94 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mmio94, align 4
  %handle100 = getelementptr inbounds %struct.drm_local_map, ptr %69, i32 0, i32 4
  %70 = ptrtoint ptr %handle100 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %handle100, align 4
  %add.ptr101 = getelementptr i8, ptr %71, i32 1812
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr101) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !251
  %call107 = tail call i32 @r128_wait_ring(ptr noundef %1, i32 noundef 8) #7
  br label %if.end108

if.end108:                                        ; preds = %do.body86, %if.then79.if.end108_crit_edge
  %73 = ptrtoint ptr %space82 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %space82, align 4
  %sub111 = add i32 %74, -8
  store i32 %sub111, ptr %space82, align 4
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %1, align 4
  %tail115 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 4
  %77 = ptrtoint ptr %tail115 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %tail115, align 4
  %tail_mask117 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 5
  %79 = ptrtoint ptr %tail_mask117 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tail_mask117, align 4
  %inc121 = add i32 %78, 1
  %arrayidx122 = getelementptr i32, ptr %76, i32 %78
  %81 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile i32 2030370816, ptr %arrayidx122, align 4
  %and123 = and i32 %inc121, %80
  %82 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %3, align 4
  %84 = tail call i32 @llvm.bswap.i32(i32 %83)
  %inc128 = add i32 %and123, 1
  %arrayidx129 = getelementptr i32, ptr %76, i32 %and123
  %85 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile i32 %84, ptr %arrayidx129, align 4
  %and130 = and i32 %inc128, %80
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and130)
  %cmp134 = icmp slt i32 %and130, 32
  br i1 %cmp134, label %if.then135, label %if.end108.if.end141_crit_edge

if.end108.if.end141_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141

if.then135:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #9
  %end137 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 1
  %86 = ptrtoint ptr %end137 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %end137, align 4
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %1, align 4
  %mul140 = shl i32 %and130, 2
  %90 = call ptr @memcpy(ptr %87, ptr %89, i32 %mul140)
  br label %if.end141

if.end141:                                        ; preds = %if.then135, %if.end108.if.end141_crit_edge
  %91 = ptrtoint ptr %tail115 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tail115, align 4
  %add144 = add i32 %92, 2
  %and145 = and i32 %add144, %80
  call void @__sanitizer_cov_trace_cmp4(i32 %and145, i32 %and130)
  %cmp146.not = icmp eq i32 %and145, %and130
  br i1 %cmp146.not, label %if.else152, label %if.then147

if.then147:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %and145, i32 noundef %and130, i32 noundef 684) #7
  br label %do.end157

if.else152:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #9
  %93 = ptrtoint ptr %tail115 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %and130, ptr %tail115, align 4
  br label %do.end157

do.end157:                                        ; preds = %if.else152, %if.then147
  %pending = getelementptr inbounds %struct.drm_buf, ptr %buf, i32 0, i32 9
  %94 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile i32 1, ptr %pending, align 4
  %used = getelementptr inbounds %struct.drm_buf, ptr %buf, i32 0, i32 3
  %95 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %used, align 4
  %dispatched158 = getelementptr inbounds %struct.drm_r128_buf_priv, ptr %3, i32 0, i32 3
  %96 = ptrtoint ptr %dispatched158 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %dispatched158, align 4
  br label %if.end159

if.end159:                                        ; preds = %do.end157, %if.end77.if.end159_crit_edge
  %sarea_priv160 = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 1
  %97 = ptrtoint ptr %sarea_priv160 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %sarea_priv160, align 4
  %last_dispatch161 = getelementptr inbounds %struct.drm_r128_sarea, ptr %98, i32 0, i32 8
  %99 = ptrtoint ptr %last_dispatch161 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %last_dispatch161, align 4
  %inc162 = add i32 %100, 1
  store i32 %inc162, ptr %last_dispatch161, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @r128_cce_dispatch_blit(ptr nocapture noundef readonly %dev, ptr noundef readnone %file_priv, ptr nocapture noundef readonly %blit) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %dma1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 45
  %2 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma1, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.22) #7
  %format = getelementptr inbounds %struct.drm_r128_blit, ptr %blit, i32 0, i32 3
  %4 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %format, align 4
  %switch.tableidx = add i32 %5, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 14
  br i1 %6, label %switch.hole_check, label %entry.sw.default_crit_edge

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

sw.default:                                       ; preds = %switch.hole_check.sw.default_crit_edge, %entry.sw.default_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.42, i32 noundef %5) #7
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 9879, %switch.maskindex
  %7 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %switch.lobit.not = icmp eq i16 %7, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.default_crit_edge, label %switch.lookup

switch.hole_check.sw.default_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [14 x i32], ptr @switch.table.r128_cce_dispatch_blit, i32 0, i32 %switch.tableidx
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  %space = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %space, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %10)
  %cmp = icmp ult i32 %10, 9
  br i1 %cmp, label %do.body7, label %switch.lookup.if.end_crit_edge

switch.lookup.if.end_crit_edge:                   ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body7:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !252
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !253
  tail call void @arm_heavy_mb() #7
  %tail = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tail, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %mmio = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 30
  %14 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %handle, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %13) #7, !srcloc !126
  %18 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio, align 4
  %handle13 = getelementptr inbounds %struct.drm_local_map, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %handle13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %handle13, align 4
  %add.ptr14 = getelementptr i8, ptr %21, i32 1812
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !254
  %call18 = tail call i32 @r128_wait_ring(ptr noundef %1, i32 noundef 8) #7
  br label %if.end

if.end:                                           ; preds = %do.body7, %switch.lookup.if.end_crit_edge
  %23 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %space, align 4
  %sub = add i32 %24, -8
  store i32 %sub, ptr %space, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %tail23 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %tail23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tail23, align 4
  %tail_mask25 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 5
  %29 = ptrtoint ptr %tail_mask25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tail_mask25, align 4
  %inc = add i32 %28, 1
  %arrayidx = getelementptr i32, ptr %26, i32 %28
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 -771424256, ptr %arrayidx, align 4
  %and = and i32 %inc, %30
  %inc32 = add i32 %and, 1
  %arrayidx33 = getelementptr i32, ptr %26, i32 %and
  %32 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 117440512, ptr %arrayidx33, align 4
  %and34 = and i32 %inc32, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and34)
  %cmp38 = icmp slt i32 %and34, 32
  br i1 %cmp38, label %if.then39, label %if.end.if.end43_crit_edge

if.end.if.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then39:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %end = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %end, align 4
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %mul = shl i32 %and34, 2
  %37 = call ptr @memcpy(ptr %34, ptr %36, i32 %mul)
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %if.end.if.end43_crit_edge
  %38 = ptrtoint ptr %tail23 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tail23, align 4
  %add = add i32 %39, 2
  %and46 = and i32 %add, %30
  call void @__sanitizer_cov_trace_cmp4(i32 %and46, i32 %and34)
  %cmp47.not = icmp eq i32 %and46, %and34
  br i1 %cmp47.not, label %if.else, label %if.then48

if.then48:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %and46, i32 noundef %and34, i32 noundef 825) #7
  br label %do.end57

if.else:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %tail23 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %and34, ptr %tail23, align 4
  br label %do.end57

do.end57:                                         ; preds = %if.else, %if.then48
  %buflist = getelementptr inbounds %struct.drm_device_dma, ptr %3, i32 0, i32 2
  %41 = ptrtoint ptr %buflist to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %buflist, align 4
  %43 = ptrtoint ptr %blit to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %blit, align 4
  %arrayidx58 = getelementptr ptr, ptr %42, i32 %44
  %45 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx58, align 4
  %dev_private59 = getelementptr inbounds %struct.drm_buf, ptr %46, i32 0, i32 15
  %47 = ptrtoint ptr %dev_private59 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_private59, align 4
  %file_priv60 = getelementptr inbounds %struct.drm_buf, ptr %46, i32 0, i32 10
  %49 = ptrtoint ptr %file_priv60 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %file_priv60, align 4
  %cmp61.not = icmp eq ptr %50, %file_priv
  br i1 %cmp61.not, label %if.end66, label %if.then62

if.then62:                                        ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #9
  %51 = tail call i32 @llvm.read_register.i32(metadata !112) #7
  %and.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 68
  %55 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.32, i32 noundef %56, ptr noundef %50) #7
  br label %cleanup

if.end66:                                         ; preds = %do.end57
  %pending = getelementptr inbounds %struct.drm_buf, ptr %46, i32 0, i32 9
  %57 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not = icmp eq i32 %58, 0
  br i1 %tobool.not, label %if.end69, label %if.then67

if.then67:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33, i32 noundef %44) #7
  br label %cleanup

if.end69:                                         ; preds = %if.end66
  %discard = getelementptr inbounds %struct.drm_r128_buf_priv, ptr %48, i32 0, i32 2
  %59 = ptrtoint ptr %discard to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %discard, align 4
  %width = getelementptr inbounds %struct.drm_r128_blit, ptr %blit, i32 0, i32 6
  %60 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %width, align 4
  %conv = zext i16 %61 to i32
  %height = getelementptr inbounds %struct.drm_r128_blit, ptr %blit, i32 0, i32 7
  %62 = ptrtoint ptr %height to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %height, align 2
  %conv70 = zext i16 %63 to i32
  %mul71 = mul nuw i32 %conv70, %conv
  %shr = ashr i32 %mul71, %switch.load
  %agp_buffer_map = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 52
  %64 = ptrtoint ptr %agp_buffer_map to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %agp_buffer_map, align 4
  %handle72 = getelementptr inbounds %struct.drm_local_map, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %handle72 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %handle72, align 4
  %offset = getelementptr inbounds %struct.drm_buf, ptr %46, i32 0, i32 4
  %68 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %offset, align 4
  %add.ptr73 = getelementptr i8, ptr %67, i32 %69
  %add74 = shl i32 %shr, 16
  %shl = add i32 %add74, 393216
  %or = or i32 %shl, -1073703936
  %70 = tail call i32 @llvm.bswap.i32(i32 %or)
  %71 = ptrtoint ptr %add.ptr73 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %add.ptr73, align 4
  %72 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %format, align 4
  %shl77 = shl i32 %73, 8
  %or84 = or i32 %shl77, 1942761714
  %74 = tail call i32 @llvm.bswap.i32(i32 %or84)
  %arrayidx85 = getelementptr i32, ptr %add.ptr73, i32 1
  %75 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %arrayidx85, align 4
  %pitch = getelementptr inbounds %struct.drm_r128_blit, ptr %blit, i32 0, i32 1
  %76 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pitch, align 4
  %shl86 = shl i32 %77, 21
  %offset87 = getelementptr inbounds %struct.drm_r128_blit, ptr %blit, i32 0, i32 2
  %78 = ptrtoint ptr %offset87 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %offset87, align 4
  %shr88 = ashr i32 %79, 5
  %or89 = or i32 %shr88, %shl86
  %80 = tail call i32 @llvm.bswap.i32(i32 %or89)
  %arrayidx90 = getelementptr i32, ptr %add.ptr73, i32 2
  %81 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %arrayidx90, align 4
  %arrayidx91 = getelementptr i32, ptr %add.ptr73, i32 3
  %82 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 -1, ptr %arrayidx91, align 4
  %arrayidx92 = getelementptr i32, ptr %add.ptr73, i32 4
  %83 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 -1, ptr %arrayidx92, align 4
  %y = getelementptr inbounds %struct.drm_r128_blit, ptr %blit, i32 0, i32 5
  %84 = ptrtoint ptr %y to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %y, align 2
  %conv93 = zext i16 %85 to i32
  %shl94 = shl nuw i32 %conv93, 16
  %x = getelementptr inbounds %struct.drm_r128_blit, ptr %blit, i32 0, i32 4
  %86 = ptrtoint ptr %x to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %x, align 4
  %conv95 = zext i16 %87 to i32
  %or96 = or i32 %shl94, %conv95
  %88 = tail call i32 @llvm.bswap.i32(i32 %or96)
  %arrayidx97 = getelementptr i32, ptr %add.ptr73, i32 5
  %89 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %arrayidx97, align 4
  %90 = ptrtoint ptr %height to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %height, align 2
  %conv99 = zext i16 %91 to i32
  %shl100 = shl nuw i32 %conv99, 16
  %92 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %width, align 4
  %conv102 = zext i16 %93 to i32
  %or103 = or i32 %shl100, %conv102
  %94 = tail call i32 @llvm.bswap.i32(i32 %or103)
  %arrayidx104 = getelementptr i32, ptr %add.ptr73, i32 6
  %95 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %arrayidx104, align 4
  %96 = tail call i32 @llvm.bswap.i32(i32 %shr)
  %arrayidx105 = getelementptr i32, ptr %add.ptr73, i32 7
  %97 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %arrayidx105, align 4
  %add106 = shl i32 %shr, 2
  %mul107 = add i32 %add106, 32
  %used = getelementptr inbounds %struct.drm_buf, ptr %46, i32 0, i32 3
  %98 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %mul107, ptr %used, align 4
  tail call fastcc void @r128_cce_dispatch_indirect(ptr noundef %dev, ptr noundef %46, i32 noundef 0, i32 noundef %mul107)
  %99 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %space, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %100)
  %cmp112 = icmp ult i32 %100, 9
  br i1 %cmp112, label %do.body116, label %if.end69.if.end138_crit_edge

if.end69.if.end138_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end138

do.body116:                                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !255
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !256
  tail call void @arm_heavy_mb() #7
  %101 = ptrtoint ptr %tail23 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %tail23, align 4
  %103 = tail call i32 @llvm.bswap.i32(i32 %102)
  %mmio124 = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 30
  %104 = ptrtoint ptr %mmio124 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mmio124, align 4
  %handle125 = getelementptr inbounds %struct.drm_local_map, ptr %105, i32 0, i32 4
  %106 = ptrtoint ptr %handle125 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %handle125, align 4
  %add.ptr126 = getelementptr i8, ptr %107, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr126, i32 %103) #7, !srcloc !126
  %108 = ptrtoint ptr %mmio124 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mmio124, align 4
  %handle130 = getelementptr inbounds %struct.drm_local_map, ptr %109, i32 0, i32 4
  %110 = ptrtoint ptr %handle130 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %handle130, align 4
  %add.ptr131 = getelementptr i8, ptr %111, i32 1812
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr131) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  %call137 = tail call i32 @r128_wait_ring(ptr noundef %1, i32 noundef 8) #7
  br label %if.end138

if.end138:                                        ; preds = %do.body116, %if.end69.if.end138_crit_edge
  %113 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %space, align 4
  %sub141 = add i32 %114, -8
  store i32 %sub141, ptr %space, align 4
  %115 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %1, align 4
  %117 = ptrtoint ptr %tail23 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %tail23, align 4
  %119 = ptrtoint ptr %tail_mask25 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %tail_mask25, align 4
  %inc151 = add i32 %118, 1
  %arrayidx152 = getelementptr i32, ptr %116, i32 %118
  %121 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile i32 -771424256, ptr %arrayidx152, align 4
  %and153 = and i32 %inc151, %120
  %inc157 = add i32 %and153, 1
  %arrayidx158 = getelementptr i32, ptr %116, i32 %and153
  %122 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile i32 50331648, ptr %arrayidx158, align 4
  %and159 = and i32 %inc157, %120
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and159)
  %cmp163 = icmp slt i32 %and159, 32
  br i1 %cmp163, label %if.then165, label %if.end138.if.end171_crit_edge

if.end138.if.end171_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end171

if.then165:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #9
  %end167 = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 1
  %123 = ptrtoint ptr %end167 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %end167, align 4
  %125 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %1, align 4
  %mul170 = shl i32 %and159, 2
  %127 = call ptr @memcpy(ptr %124, ptr %126, i32 %mul170)
  br label %if.end171

if.end171:                                        ; preds = %if.then165, %if.end138.if.end171_crit_edge
  %128 = ptrtoint ptr %tail23 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %tail23, align 4
  %add174 = add i32 %129, 2
  %and175 = and i32 %add174, %120
  call void @__sanitizer_cov_trace_cmp4(i32 %and175, i32 %and159)
  %cmp176.not = icmp eq i32 %and175, %and159
  br i1 %cmp176.not, label %if.else183, label %if.then178

if.then178:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %and175, i32 noundef %and159, i32 noundef 878) #7
  br label %cleanup

if.else183:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #9
  %130 = ptrtoint ptr %tail23 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %and159, ptr %tail23, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else183, %if.then178, %if.then67, %if.then62, %sw.default
  %retval.0 = phi i32 [ -22, %sw.default ], [ -22, %if.then62 ], [ -22, %if.then67 ], [ 0, %if.else183 ], [ 0, %if.then178 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110}
!llvm.named.register.sp = !{!112}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 1465, i32 2}
!2 = !{ptr @__func__.r128_cce_depth, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 1467, i32 2}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 1469, i32 2}
!7 = !{ptr @__func__.r128_cce_stipple, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 1497, i32 2}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 1590, i32 2}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 1601, i32 3}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 1622, i32 2}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 1623, i32 2}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 1624, i32 2}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 1625, i32 2}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 1626, i32 2}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 1627, i32 2}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 1629, i32 2}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 1631, i32 2}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 1632, i32 2}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 1633, i32 2}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 1634, i32 2}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 1635, i32 2}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 1636, i32 2}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 1637, i32 2}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 1628, i32 2}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 1638, i32 2}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 1630, i32 2}
!47 = !{ptr @r128_ioctls, !48, !"r128_ioctls", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 1621, i32 29}
!49 = !{ptr @r128_max_ioctl, !50, !"r128_max_ioctl", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 1641, i32 5}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 899, i32 2}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 942, i32 5}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!57 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 534, i32 2}
!64 = !{ptr @__func__.r128_cce_swap, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 1297, i32 2}
!66 = !{ptr @__func__.r128_cce_clear, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 1210, i32 2}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 386, i32 3}
!70 = !{ptr @__func__.r128_cce_vertex, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 1322, i32 2}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 1326, i32 2}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 1330, i32 3}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 1336, i32 3}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 1347, i32 3}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 1352, i32 3}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 582, i32 2}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 233, i32 2}
!86 = !{ptr @__func__.r128_cce_indices, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 1375, i32 2}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 1379, i32 2}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 1413, i32 3}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 1417, i32 3}
!94 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 709, i32 2}
!96 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 646, i32 2}
!98 = !{ptr @__func__.r128_cce_blit, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 1438, i32 2}
!100 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 1442, i32 2}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 811, i32 3}
!104 = !{ptr @__func__.r128_cce_indirect, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 1523, i32 2}
!106 = !{ptr @.str.43, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 1527, i32 2}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 1551, i32 3}
!110 = !{ptr @__func__.r128_cce_flip, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/r128/r128_state.c", i32 1276, i32 2}
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
!122 = !{i64 5019097}
!123 = !{i64 2154754808}
!124 = !{i64 2155448596}
!125 = !{i64 2155448958}
!126 = !{i64 5018679}
!127 = !{i64 2155449917}
!128 = !{!"auto-init"}
!129 = !{i64 2153915043, i64 2153915068}
!130 = !{!"branch_weights", i32 2000, i32 1}
!131 = !{i64 6410598}
!132 = !{i64 6410795}
!133 = !{i64 2153896028}
!134 = !{i64 2155242209}
!135 = !{i64 2155242571}
!136 = !{i64 2155243530}
!137 = !{i64 2155265319}
!138 = !{i64 2155265681}
!139 = !{i64 2155266640}
!140 = !{i64 2155288534}
!141 = !{i64 2155288896}
!142 = !{i64 2155289855}
!143 = !{i64 2155311702}
!144 = !{i64 2155312064}
!145 = !{i64 2155313023}
!146 = !{i64 2155334979}
!147 = !{i64 2155335341}
!148 = !{i64 2155336300}
!149 = !{i64 2155365349}
!150 = !{i64 2155365711}
!151 = !{i64 2155366670}
!152 = !{i64 2155391290}
!153 = !{i64 2155391652}
!154 = !{i64 2155392611}
!155 = !{i64 2155454217}
!156 = !{i64 2155454579}
!157 = !{i64 2155455538}
!158 = !{i64 2153915724, i64 2153915749}
!159 = !{i64 2155409063}
!160 = !{i64 2155409704}
!161 = !{i64 2155412165}
!162 = !{i64 2155412527}
!163 = !{i64 2155413486}
!164 = !{i64 2155055860}
!165 = !{i64 2155056222}
!166 = !{i64 2155057181}
!167 = !{i64 2155086512}
!168 = !{i64 2155086874}
!169 = !{i64 2155087833}
!170 = !{i64 2155423515}
!171 = !{i64 2155423877}
!172 = !{i64 2155424836}
!173 = !{i64 2154972942}
!174 = !{i64 2154973304}
!175 = !{i64 2154974263}
!176 = !{i64 2154986095}
!177 = !{i64 2154986457}
!178 = !{i64 2154987416}
!179 = !{i64 2155009273}
!180 = !{i64 2155009635}
!181 = !{i64 2155010594}
!182 = !{i64 2155032443}
!183 = !{i64 2155032805}
!184 = !{i64 2155033764}
!185 = !{i64 2155404506}
!186 = !{i64 2155404868}
!187 = !{i64 2155405827}
!188 = !{i64 2155430071}
!189 = !{i64 2155430433}
!190 = !{i64 2155431392}
!191 = !{i64 2155436780}
!192 = !{i64 2155437142}
!193 = !{i64 2155438101}
!194 = !{i64 2155442975}
!195 = !{i64 2155443337}
!196 = !{i64 2155444296}
!197 = !{i64 2155460751}
!198 = !{i64 2155461113}
!199 = !{i64 2155462072}
!200 = !{i64 2155406587}
!201 = !{i64 2155407287}
!202 = !{i64 2155407655}
!203 = !{i64 2155408333}
!204 = !{i64 2155417831}
!205 = !{i64 2155418193}
!206 = !{i64 2155419152}
!207 = !{i64 2155099997}
!208 = !{i64 2155100359}
!209 = !{i64 2155101318}
!210 = !{i64 2155120508}
!211 = !{i64 2155120870}
!212 = !{i64 2155121829}
!213 = !{i64 2155133954}
!214 = !{i64 2155134316}
!215 = !{i64 2155135275}
!216 = !{i64 2155153813}
!217 = !{i64 2155154175}
!218 = !{i64 2155155134}
!219 = !{i64 2154811911}
!220 = !{i64 2154812273}
!221 = !{i64 2154813232}
!222 = !{i64 2154825359}
!223 = !{i64 2154825721}
!224 = !{i64 2154826680}
!225 = !{i64 2154864176}
!226 = !{i64 2154864538}
!227 = !{i64 2154865497}
!228 = !{i64 2154880021}
!229 = !{i64 2154880383}
!230 = !{i64 2154881342}
!231 = !{i64 2154900753}
!232 = !{i64 2154901115}
!233 = !{i64 2154902074}
!234 = !{i64 2154914266}
!235 = !{i64 2154914628}
!236 = !{i64 2154915587}
!237 = !{i64 2154941976}
!238 = !{i64 2154942338}
!239 = !{i64 2154943297}
!240 = !{i64 2154759425}
!241 = !{i64 2154759787}
!242 = !{i64 2154760746}
!243 = !{i64 2155200661}
!244 = !{i64 2155201023}
!245 = !{i64 2155201982}
!246 = !{i64 2155171298}
!247 = !{i64 2155171660}
!248 = !{i64 2155172619}
!249 = !{i64 2155186548}
!250 = !{i64 2155186910}
!251 = !{i64 2155187869}
!252 = !{i64 2155214006}
!253 = !{i64 2155214368}
!254 = !{i64 2155215327}
!255 = !{i64 2155229006}
!256 = !{i64 2155229368}
!257 = !{i64 2155230327}
