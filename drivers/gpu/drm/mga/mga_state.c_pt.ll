; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/mga/mga_state.c_pt.bc'
source_filename = "../drivers/gpu/drm/mga/mga_state.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.drm_mga_private = type { %struct.drm_mga_primary_buffer, ptr, ptr, ptr, i32, [16 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.drm_mga_primary_buffer = type { ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_mga_getparam = type { i32, ptr }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.drm_master = type { %struct.kref, ptr, ptr, i32, %struct.idr, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.idr, %struct.idr, %struct.drm_lock_data }
%struct.drm_lock_data = type { ptr, ptr, %struct.wait_queue_head, i32, %struct.spinlock, i32, i32, i32 }
%struct._drm_mga_sarea = type { %struct.drm_mga_context_regs_t, %struct.drm_mga_server_regs_t, [2 x %struct.drm_mga_texture_regs_t], i32, i32, i32, [8 x %struct.drm_clip_rect], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.drm_clip_rect], [4 x i32], i32, %struct.drm_mga_age_t, i32, i32, i32, [2 x [17 x %struct.drm_tex_region]], [2 x i32], i32 }
%struct.drm_mga_context_regs_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_mga_server_regs_t = type { i32 }
%struct.drm_mga_texture_regs_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_clip_rect = type { i16, i16, i16, i16 }
%struct.drm_mga_age_t = type { i32, i32 }
%struct.drm_tex_region = type { i8, i8, i8, i8, i32 }
%struct.drm_local_map = type { i32, i32, i32, i32, ptr, i32 }
%struct.drm_mga_clear = type { i32, i32, i32, i32, i32 }
%struct.drm_device_dma = type { [23 x %struct.drm_buf_entry], i32, ptr, i32, i32, ptr, i32, i32 }
%struct.drm_buf_entry = type { i32, i32, ptr, i32, i32, ptr, i32, i32 }
%struct.drm_buf = type { i32, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.drm_mga_vertex = type { i32, i32, i32 }
%struct.drm_mga_buf_priv_t = type { ptr, i32, i32 }
%struct.drm_mga_freelist = type { ptr, ptr, %struct.drm_mga_age_t, ptr }
%struct.drm_mga_indices = type { i32, i32, i32, i32 }
%struct.drm_mga_iload = type { i32, i32, i32 }
%struct._drm_mga_blit = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"called with no initialization\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pid=%d\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"copy_to_user\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MGA_INIT\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MGA_FLUSH\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MGA_RESET\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MGA_SWAP\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MGA_CLEAR\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MGA_VERTEX\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MGA_INDICES\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MGA_ILOAD\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MGA_BLIT\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MGA_GETPARAM\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MGA_SET_FENCE\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MGA_WAIT_FENCE\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MGA_DMA_BOOTSTRAP\00", [46 x i8] zeroinitializer }, align 32
@mga_ioctls = dso_local constant { [13 x %struct.drm_ioctl_desc], [48 x i8] } { [13 x %struct.drm_ioctl_desc] [%struct.drm_ioctl_desc { i32 1079796800, i32 7, ptr @mga_dma_init, ptr @.str.3 }, %struct.drm_ioctl_desc { i32 1074291777, i32 1, ptr @mga_dma_flush, ptr @.str.4 }, %struct.drm_ioctl_desc { i32 25666, i32 1, ptr @mga_dma_reset, ptr @.str.5 }, %struct.drm_ioctl_desc { i32 25667, i32 1, ptr @mga_dma_swap, ptr @.str.6 }, %struct.drm_ioctl_desc { i32 1075078212, i32 1, ptr @mga_dma_clear, ptr @.str.7 }, %struct.drm_ioctl_desc { i32 1074553925, i32 1, ptr @mga_dma_vertex, ptr @.str.8 }, %struct.drm_ioctl_desc { i32 1074816070, i32 1, ptr @mga_dma_indices, ptr @.str.9 }, %struct.drm_ioctl_desc { i32 1074553927, i32 1, ptr @mga_dma_iload, ptr @.str.10 }, %struct.drm_ioctl_desc { i32 1077175368, i32 1, ptr @mga_dma_blit, ptr @.str.11 }, %struct.drm_ioctl_desc { i32 -1073191863, i32 1, ptr @mga_getparam, ptr @.str.12 }, %struct.drm_ioctl_desc { i32 1074029642, i32 1, ptr @mga_set_fence, ptr @.str.13 }, %struct.drm_ioctl_desc { i32 -1073454005, i32 1, ptr @mga_wait_fence, ptr @.str.14 }, %struct.drm_ioctl_desc { i32 -1071881140, i32 7, ptr @mga_dma_bootstrap, ptr @.str.15 }], [48 x i8] zeroinitializer }, align 32
@mga_max_ioctl = dso_local global { i32, [28 x i8] } { i32 13, [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s called without lock held, held  %d owner %p %p\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.mga_dma_swap = private unnamed_addr constant [13 x i8] c"mga_dma_swap\00", align 1
@.str.20 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"   from=%d,%d to=%d,%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"... done.\0A\00", [21 x i8] zeroinitializer }, align 32
@__func__.mga_dma_clear = private unnamed_addr constant [14 x i8] c"mga_dma_clear\00", align 1
@__func__.mga_dma_vertex = private unnamed_addr constant [15 x i8] c"mga_dma_vertex\00", align 1
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*** bad DSTORG: %x (front %x, back %x)\0A\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"*** bad TEXORG: 0x%x, unit %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"buf=%d used=%d\0A\00", [16 x i8] zeroinitializer }, align 32
@__func__.mga_dma_indices = private unnamed_addr constant [16 x i8] c"mga_dma_indices\00", align 1
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"buf=%d start=%d end=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.mga_dma_iload = private unnamed_addr constant [14 x i8] c"mga_dma_iload\00", align 1
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"*** bad iload DSTORG: 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"*** bad iload length: 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.mga_dma_blit = private unnamed_addr constant [13 x i8] c"mga_dma_blit\00", align 1
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"*** bad blit: src=0x%x dst=0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 1012, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 1016, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 1030, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 1084, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 1085, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 1086, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 1087, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 1088, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 1089, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 1090, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 1091, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 1092, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 1093, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 1094, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 1095, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 1096, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [11 x i8] c"mga_ioctls\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 1083, i32 29 }
@___asan_gen_.81 = private unnamed_addr constant [14 x i8] c"mga_max_ioctl\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 1099, i32 5 }
@___asan_gen_.85 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 174, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 854, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 577, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 602, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 619, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 388, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 409, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 631, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 678, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 452, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 457, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private constant [35 x i8] c"../drivers/gpu/drm/mga/mga_state.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 470, i32 3 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @mga_ioctls, ptr @mga_max_ioctl, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mga_ioctls to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mga_max_ioctl to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mga_getparam(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data, ptr nocapture readnone %file_priv) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #5
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = tail call i32 @llvm.read_register.i32(metadata !76) #5
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
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %9) #5
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %irq = getelementptr i8, ptr %3, i32 932
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %chipset = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb
  %storemerge.in = phi ptr [ %chipset, %sw.bb4 ], [ %irq, %sw.bb ]
  %13 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %storemerge = load i32, ptr %storemerge.in, align 4
  %14 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %storemerge, ptr %value, align 4
  %value5 = getelementptr inbounds %struct.drm_mga_getparam, ptr %data, i32 0, i32 1
  %15 = ptrtoint ptr %value5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %value5, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.18, i32 noundef 174) #5
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i, label %sw.epilog.if.then8_crit_edge, label %if.end.i.i

sw.epilog.if.then8_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

if.end.i.i:                                       ; preds = %sw.epilog
  %17 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %16, i32 4, i32 -1226833920) #8, !srcloc !86
  %asmresult.i.i = extractvalue { i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.if.then8_crit_edge

if.end.i.i.if.then8_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %value, i32 noundef 4) #5
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %16, ptr noundef nonnull %value, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool7.not = icmp eq i32 %call.i1.i.i, 0
  br i1 %tobool7.not, label %copy_to_user.exit.cleanup_crit_edge, label %copy_to_user.exit.if.then8_crit_edge

copy_to_user.exit.if.then8_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then8:                                         ; preds = %copy_to_user.exit.if.then8_crit_edge, %if.end.i.i.if.then8_crit_edge, %sw.epilog.if.then8_crit_edge
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %copy_to_user.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -14, %if.then8 ], [ -22, %if.then ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %copy_to_user.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mga_dma_init(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mga_dma_flush(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mga_dma_reset(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mga_dma_swap(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data, ptr noundef %file_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %sarea_priv1 = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sarea_priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sarea_priv1, align 4
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %file_priv5 = getelementptr inbounds %struct.drm_master, ptr %5, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %file_priv5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %file_priv5, align 4
  %cmp.not = icmp eq ptr %11, %file_priv
  br i1 %cmp.not, label %do.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.mga_dma_swap, i32 noundef %and10, ptr noundef %15, ptr noundef %file_priv) #5
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false
  %nbox = getelementptr inbounds %struct._drm_mga_sarea, ptr %3, i32 0, i32 7
  %16 = ptrtoint ptr %nbox to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nbox, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %17)
  %cmp14 = icmp ugt i32 %17, 8
  br i1 %cmp14, label %if.then15, label %do.end.do.body18_crit_edge

do.end.do.body18_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body18

if.then15:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %nbox to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 8, ptr %nbox, align 4
  br label %do.body18

do.body18:                                        ; preds = %if.then15, %do.end.do.body18_crit_edge
  %wrapped = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %wrapped to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %wrapped, align 4
  %and1.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool19.not = icmp eq i32 %and1.i, 0
  br i1 %tobool19.not, label %do.body18.do.end32_crit_edge, label %if.then20

do.body18.do.end32_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end32

if.then20:                                        ; preds = %do.body18
  %mmio.i = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 30
  %21 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio.i, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %handle.i, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 7700
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  %26 = and i32 %25, 16777984
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %26)
  %cmp.i.not = icmp eq i32 %26, 512
  br i1 %cmp.i.not, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mga_do_dma_wrap_end(ptr noundef %1) #5
  br label %do.end32

if.else:                                          ; preds = %if.then20
  %space = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %space, align 4
  %high_mark = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %1, i32 0, i32 9
  %29 = ptrtoint ptr %high_mark to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %high_mark, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp26 = icmp ult i32 %28, %30
  br i1 %cmp26, label %if.else.cleanup_crit_edge, label %if.else.do.end32_crit_edge

if.else.do.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end32

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end32:                                         ; preds = %if.else.do.end32_crit_edge, %if.then23, %do.body18.do.end32_crit_edge
  %31 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_private, align 4
  %sarea_priv1.i = getelementptr inbounds %struct.drm_mga_private, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %sarea_priv1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sarea_priv1.i, align 4
  %boxes.i = getelementptr inbounds %struct._drm_mga_sarea, ptr %34, i32 0, i32 6
  %nbox2.i = getelementptr inbounds %struct._drm_mga_sarea, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %nbox2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nbox2.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.20) #5
  %tail.i = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %32, i32 0, i32 3
  %37 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tail.i, align 4
  %last_frame.i = getelementptr inbounds %struct._drm_mga_sarea, ptr %34, i32 0, i32 25
  %39 = ptrtoint ptr %last_frame.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %last_frame.i, align 4
  %last_wrap.i = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %32, i32 0, i32 8
  %40 = ptrtoint ptr %last_wrap.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %last_wrap.i, align 4
  %wrap.i = getelementptr inbounds %struct._drm_mga_sarea, ptr %34, i32 0, i32 25, i32 1
  %42 = ptrtoint ptr %wrap.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %wrap.i, align 4
  %43 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %32, align 4
  %45 = load i32, ptr %tail.i, align 4
  %add.ptr.i48 = getelementptr i8, ptr %44, i32 %45
  %46 = ptrtoint ptr %add.ptr.i48 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile i32 -1819077355, ptr %add.ptr.i48, align 4
  %add.ptr16.i = getelementptr i8, ptr %add.ptr.i48, i32 4
  %47 = ptrtoint ptr %add.ptr16.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 0, ptr %add.ptr16.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %add.ptr.i48, i32 8
  %48 = ptrtoint ptr %add.ptr21.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 0, ptr %add.ptr21.i, align 4
  %add.ptr26.i = getelementptr i8, ptr %add.ptr.i48, i32 12
  %49 = ptrtoint ptr %add.ptr26.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 28928, ptr %add.ptr26.i, align 4
  %add.ptr31.i = getelementptr i8, ptr %add.ptr.i48, i32 16
  %50 = ptrtoint ptr %add.ptr31.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 28672, ptr %add.ptr31.i, align 4
  %add.i = add i32 %45, 20
  %add.ptr38.i = getelementptr i8, ptr %44, i32 %add.i
  %51 = ptrtoint ptr %add.ptr38.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile i32 497877422, ptr %add.ptr38.i, align 4
  %front_offset.i = getelementptr inbounds %struct.drm_mga_private, ptr %32, i32 0, i32 20
  %52 = ptrtoint ptr %front_offset.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %front_offset.i, align 4
  %add.ptr44.i = getelementptr i8, ptr %add.ptr38.i, i32 4
  %54 = ptrtoint ptr %add.ptr44.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 %53, ptr %add.ptr44.i, align 4
  %maccess.i = getelementptr inbounds %struct.drm_mga_private, ptr %32, i32 0, i32 14
  %55 = ptrtoint ptr %maccess.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %maccess.i, align 4
  %add.ptr49.i = getelementptr i8, ptr %add.ptr38.i, i32 8
  %57 = ptrtoint ptr %add.ptr49.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile i32 %56, ptr %add.ptr49.i, align 4
  %back_offset.i = getelementptr inbounds %struct.drm_mga_private, ptr %32, i32 0, i32 22
  %58 = ptrtoint ptr %back_offset.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %back_offset.i, align 4
  %add.ptr54.i = getelementptr i8, ptr %add.ptr38.i, i32 12
  %60 = ptrtoint ptr %add.ptr54.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile i32 %59, ptr %add.ptr54.i, align 4
  %front_pitch.i = getelementptr inbounds %struct.drm_mga_private, ptr %32, i32 0, i32 21
  %61 = ptrtoint ptr %front_pitch.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %front_pitch.i, align 4
  %add.ptr59.i = getelementptr i8, ptr %add.ptr38.i, i32 16
  %63 = ptrtoint ptr %add.ptr59.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile i32 %62, ptr %add.ptr59.i, align 4
  %add62.i = add i32 %45, 40
  %add.ptr67.i = getelementptr i8, ptr %44, i32 %add62.i
  %64 = ptrtoint ptr %add.ptr67.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile i32 464149, ptr %add.ptr67.i, align 4
  %add.ptr73.i = getelementptr i8, ptr %add.ptr67.i, i32 4
  %65 = ptrtoint ptr %add.ptr73.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile i32 0, ptr %add.ptr73.i, align 4
  %add.ptr78.i = getelementptr i8, ptr %add.ptr67.i, i32 8
  %66 = ptrtoint ptr %add.ptr78.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile i32 0, ptr %add.ptr78.i, align 4
  %add.ptr83.i = getelementptr i8, ptr %add.ptr67.i, i32 12
  %67 = ptrtoint ptr %add.ptr83.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile i32 -1, ptr %add.ptr83.i, align 4
  %add.ptr88.i = getelementptr i8, ptr %add.ptr67.i, i32 16
  %68 = ptrtoint ptr %add.ptr88.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile i32 -2079563768, ptr %add.ptr88.i, align 4
  %add91.i = add i32 %45, 60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp284.i = icmp sgt i32 %36, 0
  br i1 %cmp284.i, label %do.end32.for.body.i_crit_edge, label %do.end32.do.body151.i_crit_edge

do.end32.do.body151.i_crit_edge:                  ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body151.i

do.end32.for.body.i_crit_edge:                    ; preds = %do.end32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end32.for.body.i_crit_edge
  %write.0286.i = phi i32 [ %add147.i, %for.body.i.for.body.i_crit_edge ], [ %add91.i, %do.end32.for.body.i_crit_edge ]
  %i.0285.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.end32.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.drm_clip_rect, ptr %boxes.i, i32 %i.0285.i
  %y2.i = getelementptr %struct.drm_clip_rect, ptr %boxes.i, i32 %i.0285.i, i32 3
  %69 = ptrtoint ptr %y2.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %y2.i, align 2
  %conv.i49 = zext i16 %70 to i32
  %y1.i = getelementptr %struct.drm_clip_rect, ptr %boxes.i, i32 %i.0285.i, i32 1
  %71 = ptrtoint ptr %y1.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %y1.i, align 2
  %conv94.i = zext i16 %72 to i32
  %sub.i = sub nsw i32 %conv.i49, %conv94.i
  %73 = ptrtoint ptr %front_pitch.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %front_pitch.i, align 4
  %mul.i = mul i32 %74, %conv94.i
  %75 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %arrayidx.i, align 2
  %conv99.i = zext i16 %76 to i32
  %x2.i = getelementptr %struct.drm_clip_rect, ptr %boxes.i, i32 %i.0285.i, i32 2
  %77 = ptrtoint ptr %x2.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %x2.i, align 2
  %conv102.i = zext i16 %78 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.21, i32 noundef %conv99.i, i32 noundef %conv94.i, i32 noundef %conv102.i, i32 noundef %conv.i49) #5
  %add.ptr107.i = getelementptr i8, ptr %44, i32 %write.0286.i
  %79 = ptrtoint ptr %add.ptr107.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile i32 1646336792, ptr %add.ptr107.i, align 4
  %80 = ptrtoint ptr %x2.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %x2.i, align 2
  %conv113.i = zext i16 %81 to i32
  %add114.i = add i32 %mul.i, -1
  %sub115.i = add i32 %add114.i, %conv113.i
  %add.ptr117.i = getelementptr i8, ptr %add.ptr107.i, i32 4
  %82 = ptrtoint ptr %add.ptr117.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile i32 %sub115.i, ptr %add.ptr117.i, align 4
  %83 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %arrayidx.i, align 2
  %conv122.i = zext i16 %84 to i32
  %add123.i = add i32 %mul.i, %conv122.i
  %add.ptr125.i = getelementptr i8, ptr %add.ptr107.i, i32 8
  %85 = ptrtoint ptr %add.ptr125.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile i32 %add123.i, ptr %add.ptr125.i, align 4
  %86 = load i16, ptr %x2.i, align 2
  %conv130.i = zext i16 %86 to i32
  %sub131.i = shl nuw i32 %conv130.i, 16
  %shl.i = add i32 %sub131.i, -65536
  %87 = load i16, ptr %arrayidx.i, align 2
  %conv133.i = zext i16 %87 to i32
  %or.i = or i32 %shl.i, %conv133.i
  %add.ptr135.i = getelementptr i8, ptr %add.ptr107.i, i32 12
  %88 = ptrtoint ptr %add.ptr135.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile i32 %or.i, ptr %add.ptr135.i, align 4
  %89 = ptrtoint ptr %y1.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %y1.i, align 2
  %conv140.i = zext i16 %90 to i32
  %shl141.i = shl nuw i32 %conv140.i, 16
  %or142.i = or i32 %shl141.i, %sub.i
  %add.ptr144.i = getelementptr i8, ptr %add.ptr107.i, i32 16
  %91 = ptrtoint ptr %add.ptr144.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile i32 %or142.i, ptr %add.ptr144.i, align 4
  %add147.i = add i32 %write.0286.i, 20
  %inc.i = add nuw nsw i32 %i.0285.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %36
  br i1 %exitcond.not.i, label %for.body.i.do.body151.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.do.body151.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body151.i

do.body151.i:                                     ; preds = %for.body.i.do.body151.i_crit_edge, %do.end32.do.body151.i_crit_edge
  %write.0.lcssa.i = phi i32 [ %add91.i, %do.end32.do.body151.i_crit_edge ], [ %add147.i, %for.body.i.do.body151.i_crit_edge ]
  %add.ptr152.i = getelementptr i8, ptr %44, i32 %write.0.lcssa.i
  %92 = ptrtoint ptr %add.ptr152.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile i32 11339541, ptr %add.ptr152.i, align 4
  %add.ptr158.i = getelementptr i8, ptr %add.ptr152.i, i32 4
  %93 = ptrtoint ptr %add.ptr158.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile i32 0, ptr %add.ptr158.i, align 4
  %plnwt.i = getelementptr inbounds %struct.drm_mga_context_regs_t, ptr %34, i32 0, i32 2
  %94 = ptrtoint ptr %plnwt.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %plnwt.i, align 4
  %add.ptr163.i = getelementptr i8, ptr %add.ptr152.i, i32 8
  %96 = ptrtoint ptr %add.ptr163.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile i32 %95, ptr %add.ptr163.i, align 4
  %97 = ptrtoint ptr %front_offset.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %front_offset.i, align 4
  %add.ptr169.i = getelementptr i8, ptr %add.ptr152.i, i32 12
  %99 = ptrtoint ptr %add.ptr169.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile i32 %98, ptr %add.ptr169.i, align 4
  %dwgctl.i = getelementptr inbounds %struct.drm_mga_context_regs_t, ptr %34, i32 0, i32 3
  %100 = ptrtoint ptr %dwgctl.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %dwgctl.i, align 4
  %add.ptr174.i = getelementptr i8, ptr %add.ptr152.i, i32 16
  %102 = ptrtoint ptr %add.ptr174.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile i32 %101, ptr %add.ptr174.i, align 4
  %add177.i = add i32 %write.0.lcssa.i, 20
  %103 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %add177.i, ptr %tail.i, align 4
  %wrapped.i = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %32, i32 0, i32 5
  %104 = ptrtoint ptr %wrapped.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %wrapped.i, align 4
  %and1.i.i = and i32 %105, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body151.i.mga_dma_dispatch_swap.exit_crit_edge

do.body151.i.mga_dma_dispatch_swap.exit_crit_edge: ; preds = %do.body151.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mga_dma_dispatch_swap.exit

if.then.i:                                        ; preds = %do.body151.i
  %space.i = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %32, i32 0, i32 4
  %106 = ptrtoint ptr %space.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %space.i, align 4
  %high_mark.i = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %32, i32 0, i32 9
  %108 = ptrtoint ptr %high_mark.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %high_mark.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %107, i32 %109)
  %cmp189.i = icmp ult i32 %107, %109
  br i1 %cmp189.i, label %if.then191.i, label %if.else.i

if.then191.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mga_do_dma_wrap_start(ptr noundef %32) #5
  br label %mga_dma_dispatch_swap.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mga_do_dma_flush(ptr noundef %32) #5
  br label %mga_dma_dispatch_swap.exit

mga_dma_dispatch_swap.exit:                       ; preds = %if.else.i, %if.then191.i, %do.body151.i.mga_dma_dispatch_swap.exit_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.22) #5
  %110 = ptrtoint ptr %sarea_priv1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %sarea_priv1, align 4
  %dirty = getelementptr inbounds %struct._drm_mga_sarea, ptr %111, i32 0, i32 4
  %112 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %dirty, align 4
  %or = or i32 %113, 1
  store i32 %or, ptr %dirty, align 4
  br label %cleanup

cleanup:                                          ; preds = %mga_dma_dispatch_swap.exit, %if.else.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %mga_dma_dispatch_swap.exit ], [ -16, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mga_dma_clear(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data, ptr noundef %file_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %sarea_priv1 = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sarea_priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sarea_priv1, align 4
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %file_priv5 = getelementptr inbounds %struct.drm_master, ptr %5, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %file_priv5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %file_priv5, align 4
  %cmp.not = icmp eq ptr %11, %file_priv
  br i1 %cmp.not, label %do.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.mga_dma_clear, i32 noundef %and10, ptr noundef %15, ptr noundef %file_priv) #5
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false
  %nbox = getelementptr inbounds %struct._drm_mga_sarea, ptr %3, i32 0, i32 7
  %16 = ptrtoint ptr %nbox to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nbox, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %17)
  %cmp14 = icmp ugt i32 %17, 8
  br i1 %cmp14, label %if.then15, label %do.end.do.body18_crit_edge

do.end.do.body18_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body18

if.then15:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %nbox to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 8, ptr %nbox, align 4
  br label %do.body18

do.body18:                                        ; preds = %if.then15, %do.end.do.body18_crit_edge
  %wrapped = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %wrapped to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %wrapped, align 4
  %and1.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool19.not = icmp eq i32 %and1.i, 0
  br i1 %tobool19.not, label %do.body18.do.end32_crit_edge, label %if.then20

do.body18.do.end32_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end32

if.then20:                                        ; preds = %do.body18
  %mmio.i = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 30
  %21 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio.i, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %handle.i, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 7700
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  %26 = and i32 %25, 16777984
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %26)
  %cmp.i.not = icmp eq i32 %26, 512
  br i1 %cmp.i.not, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mga_do_dma_wrap_end(ptr noundef %1) #5
  br label %do.end32

if.else:                                          ; preds = %if.then20
  %space = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %space, align 4
  %high_mark = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %1, i32 0, i32 9
  %29 = ptrtoint ptr %high_mark to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %high_mark, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp26 = icmp ult i32 %28, %30
  br i1 %cmp26, label %if.else.cleanup_crit_edge, label %if.else.do.end32_crit_edge

if.else.do.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end32

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end32:                                         ; preds = %if.else.do.end32_crit_edge, %if.then23, %do.body18.do.end32_crit_edge
  %31 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_private, align 4
  %sarea_priv1.i = getelementptr inbounds %struct.drm_mga_private, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %sarea_priv1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sarea_priv1.i, align 4
  %boxes.i = getelementptr inbounds %struct._drm_mga_sarea, ptr %34, i32 0, i32 6
  %nbox2.i = getelementptr inbounds %struct._drm_mga_sarea, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %nbox2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nbox2.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.20) #5
  %37 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %32, align 4
  %tail.i = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %32, i32 0, i32 3
  %39 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tail.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %38, i32 %40
  %41 = ptrtoint ptr %add.ptr.i49 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 -1819077355, ptr %add.ptr.i49, align 4
  %add.ptr12.i = getelementptr i8, ptr %add.ptr.i49, i32 4
  %42 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile i32 0, ptr %add.ptr12.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %add.ptr.i49, i32 8
  %43 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile i32 0, ptr %add.ptr17.i, align 4
  %add.ptr22.i = getelementptr i8, ptr %add.ptr.i49, i32 12
  %44 = ptrtoint ptr %add.ptr22.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 28928, ptr %add.ptr22.i, align 4
  %add.ptr27.i = getelementptr i8, ptr %add.ptr.i49, i32 16
  %45 = ptrtoint ptr %add.ptr27.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 28672, ptr %add.ptr27.i, align 4
  %add.i = add i32 %40, 20
  store i32 %add.i, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp496.i = icmp sgt i32 %36, 0
  br i1 %cmp496.i, label %for.body.lr.ph.i, label %do.end32.do.body296.i_crit_edge

do.end32.do.body296.i_crit_edge:                  ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body296.i

for.body.lr.ph.i:                                 ; preds = %do.end32
  %color_mask.i = getelementptr inbounds %struct.drm_mga_clear, ptr %data, i32 0, i32 3
  %clear_color.i = getelementptr inbounds %struct.drm_mga_clear, ptr %data, i32 0, i32 1
  %front_offset.i = getelementptr inbounds %struct.drm_mga_private, ptr %32, i32 0, i32 20
  %clear_cmd.i = getelementptr inbounds %struct.drm_mga_private, ptr %32, i32 0, i32 13
  %back_offset.i = getelementptr inbounds %struct.drm_mga_private, ptr %32, i32 0, i32 22
  %depth_mask.i = getelementptr inbounds %struct.drm_mga_clear, ptr %data, i32 0, i32 4
  %clear_depth.i = getelementptr inbounds %struct.drm_mga_clear, ptr %data, i32 0, i32 2
  %depth_offset.i = getelementptr inbounds %struct.drm_mga_private, ptr %32, i32 0, i32 25
  br label %for.body.i

for.body.i:                                       ; preds = %if.end295.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0497.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end295.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.drm_clip_rect, ptr %boxes.i, i32 %i.0497.i
  %y2.i = getelementptr %struct.drm_clip_rect, ptr %boxes.i, i32 %i.0497.i, i32 3
  %46 = ptrtoint ptr %y2.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %y2.i, align 2
  %conv.i50 = zext i16 %47 to i32
  %y1.i = getelementptr %struct.drm_clip_rect, ptr %boxes.i, i32 %i.0497.i, i32 1
  %48 = ptrtoint ptr %y1.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %y1.i, align 2
  %conv37.i = zext i16 %49 to i32
  %sub.i = sub nsw i32 %conv.i50, %conv37.i
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx.i, align 2
  %conv38.i = zext i16 %51 to i32
  %x2.i = getelementptr %struct.drm_clip_rect, ptr %boxes.i, i32 %i.0497.i, i32 2
  %52 = ptrtoint ptr %x2.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %x2.i, align 2
  %conv41.i = zext i16 %53 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.21, i32 noundef %conv38.i, i32 noundef %conv37.i, i32 noundef %conv41.i, i32 noundef %conv.i50) #5
  %54 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %data, align 4
  %and.i = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %do.body44.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.body44.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %32, align 4
  %58 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tail.i, align 4
  %add.ptr53.i = getelementptr i8, ptr %57, i32 %59
  %60 = ptrtoint ptr %add.ptr53.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile i32 555878165, ptr %add.ptr53.i, align 4
  %add.ptr59.i = getelementptr i8, ptr %add.ptr53.i, i32 4
  %61 = ptrtoint ptr %add.ptr59.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 0, ptr %add.ptr59.i, align 4
  %62 = ptrtoint ptr %color_mask.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %color_mask.i, align 4
  %add.ptr64.i = getelementptr i8, ptr %add.ptr53.i, i32 8
  %64 = ptrtoint ptr %add.ptr64.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile i32 %63, ptr %add.ptr64.i, align 4
  %65 = ptrtoint ptr %y1.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %y1.i, align 2
  %conv69.i = zext i16 %66 to i32
  %shl.i = shl nuw i32 %conv69.i, 16
  %or.i = or i32 %shl.i, %sub.i
  %add.ptr71.i = getelementptr i8, ptr %add.ptr53.i, i32 12
  %67 = ptrtoint ptr %add.ptr71.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile i32 %or.i, ptr %add.ptr71.i, align 4
  %68 = ptrtoint ptr %x2.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %x2.i, align 2
  %conv76.i = zext i16 %69 to i32
  %shl77.i = shl nuw i32 %conv76.i, 16
  %70 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %arrayidx.i, align 2
  %conv79.i = zext i16 %71 to i32
  %or80.i = or i32 %shl77.i, %conv79.i
  %add.ptr82.i = getelementptr i8, ptr %add.ptr53.i, i32 16
  %72 = ptrtoint ptr %add.ptr82.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile i32 %or80.i, ptr %add.ptr82.i, align 4
  %add85.i = add i32 %59, 20
  %add.ptr90.i = getelementptr i8, ptr %57, i32 %add85.i
  %73 = ptrtoint ptr %add.ptr90.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile i32 1085147413, ptr %add.ptr90.i, align 4
  %add.ptr96.i = getelementptr i8, ptr %add.ptr90.i, i32 4
  %74 = ptrtoint ptr %add.ptr96.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile i32 0, ptr %add.ptr96.i, align 4
  %75 = ptrtoint ptr %clear_color.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %clear_color.i, align 4
  %add.ptr101.i = getelementptr i8, ptr %add.ptr90.i, i32 8
  %77 = ptrtoint ptr %add.ptr101.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile i32 %76, ptr %add.ptr101.i, align 4
  %78 = ptrtoint ptr %front_offset.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %front_offset.i, align 4
  %add.ptr106.i = getelementptr i8, ptr %add.ptr90.i, i32 12
  %80 = ptrtoint ptr %add.ptr106.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile i32 %79, ptr %add.ptr106.i, align 4
  %81 = ptrtoint ptr %clear_cmd.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %clear_cmd.i, align 4
  %add.ptr111.i = getelementptr i8, ptr %add.ptr90.i, i32 16
  %83 = ptrtoint ptr %add.ptr111.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile i32 %82, ptr %add.ptr111.i, align 4
  %add114.i = add i32 %59, 40
  store i32 %add114.i, ptr %tail.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %do.body44.i, %for.body.i.if.end.i_crit_edge
  %84 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %data, align 4
  %and123.i = and i32 %85, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123.i)
  %tobool124.not.i = icmp eq i32 %and123.i, 0
  br i1 %tobool124.not.i, label %if.end.i.if.end209.i_crit_edge, label %do.body126.i

if.end.i.if.end209.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end209.i

do.body126.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %86 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %32, align 4
  %88 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tail.i, align 4
  %add.ptr135.i = getelementptr i8, ptr %87, i32 %89
  %90 = ptrtoint ptr %add.ptr135.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile i32 555878165, ptr %add.ptr135.i, align 4
  %add.ptr141.i = getelementptr i8, ptr %add.ptr135.i, i32 4
  %91 = ptrtoint ptr %add.ptr141.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile i32 0, ptr %add.ptr141.i, align 4
  %92 = ptrtoint ptr %color_mask.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %color_mask.i, align 4
  %add.ptr147.i = getelementptr i8, ptr %add.ptr135.i, i32 8
  %94 = ptrtoint ptr %add.ptr147.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile i32 %93, ptr %add.ptr147.i, align 4
  %95 = ptrtoint ptr %y1.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %y1.i, align 2
  %conv152.i = zext i16 %96 to i32
  %shl153.i = shl nuw i32 %conv152.i, 16
  %or154.i = or i32 %shl153.i, %sub.i
  %add.ptr156.i = getelementptr i8, ptr %add.ptr135.i, i32 12
  %97 = ptrtoint ptr %add.ptr156.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile i32 %or154.i, ptr %add.ptr156.i, align 4
  %98 = ptrtoint ptr %x2.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %x2.i, align 2
  %conv161.i = zext i16 %99 to i32
  %shl162.i = shl nuw i32 %conv161.i, 16
  %100 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %arrayidx.i, align 2
  %conv164.i = zext i16 %101 to i32
  %or165.i = or i32 %shl162.i, %conv164.i
  %add.ptr167.i = getelementptr i8, ptr %add.ptr135.i, i32 16
  %102 = ptrtoint ptr %add.ptr167.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile i32 %or165.i, ptr %add.ptr167.i, align 4
  %add170.i = add i32 %89, 20
  %add.ptr175.i = getelementptr i8, ptr %87, i32 %add170.i
  %103 = ptrtoint ptr %add.ptr175.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile i32 1085147413, ptr %add.ptr175.i, align 4
  %add.ptr181.i = getelementptr i8, ptr %add.ptr175.i, i32 4
  %104 = ptrtoint ptr %add.ptr181.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile i32 0, ptr %add.ptr181.i, align 4
  %105 = ptrtoint ptr %clear_color.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %clear_color.i, align 4
  %add.ptr187.i = getelementptr i8, ptr %add.ptr175.i, i32 8
  %107 = ptrtoint ptr %add.ptr187.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile i32 %106, ptr %add.ptr187.i, align 4
  %108 = ptrtoint ptr %back_offset.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %back_offset.i, align 4
  %add.ptr192.i = getelementptr i8, ptr %add.ptr175.i, i32 12
  %110 = ptrtoint ptr %add.ptr192.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile i32 %109, ptr %add.ptr192.i, align 4
  %111 = ptrtoint ptr %clear_cmd.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %clear_cmd.i, align 4
  %add.ptr198.i = getelementptr i8, ptr %add.ptr175.i, i32 16
  %113 = ptrtoint ptr %add.ptr198.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile i32 %112, ptr %add.ptr198.i, align 4
  %add201.i = add i32 %89, 40
  store i32 %add201.i, ptr %tail.i, align 4
  br label %if.end209.i

if.end209.i:                                      ; preds = %do.body126.i, %if.end.i.if.end209.i_crit_edge
  %114 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %data, align 4
  %and211.i = and i32 %115, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and211.i)
  %tobool212.not.i = icmp eq i32 %and211.i, 0
  br i1 %tobool212.not.i, label %if.end209.i.if.end295.i_crit_edge, label %do.body214.i

if.end209.i.if.end295.i_crit_edge:                ; preds = %if.end209.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end295.i

do.body214.i:                                     ; preds = %if.end209.i
  call void @__sanitizer_cov_trace_pc() #7
  %116 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %32, align 4
  %118 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %tail.i, align 4
  %add.ptr223.i = getelementptr i8, ptr %117, i32 %119
  %120 = ptrtoint ptr %add.ptr223.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store volatile i32 555878165, ptr %add.ptr223.i, align 4
  %add.ptr229.i = getelementptr i8, ptr %add.ptr223.i, i32 4
  %121 = ptrtoint ptr %add.ptr229.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile i32 0, ptr %add.ptr229.i, align 4
  %122 = ptrtoint ptr %depth_mask.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %depth_mask.i, align 4
  %add.ptr234.i = getelementptr i8, ptr %add.ptr223.i, i32 8
  %124 = ptrtoint ptr %add.ptr234.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store volatile i32 %123, ptr %add.ptr234.i, align 4
  %125 = ptrtoint ptr %y1.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %y1.i, align 2
  %conv239.i = zext i16 %126 to i32
  %shl240.i = shl nuw i32 %conv239.i, 16
  %or241.i = or i32 %shl240.i, %sub.i
  %add.ptr243.i = getelementptr i8, ptr %add.ptr223.i, i32 12
  %127 = ptrtoint ptr %add.ptr243.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store volatile i32 %or241.i, ptr %add.ptr243.i, align 4
  %128 = ptrtoint ptr %x2.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %x2.i, align 2
  %conv248.i = zext i16 %129 to i32
  %shl249.i = shl nuw i32 %conv248.i, 16
  %130 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %arrayidx.i, align 2
  %conv251.i = zext i16 %131 to i32
  %or252.i = or i32 %shl249.i, %conv251.i
  %add.ptr254.i = getelementptr i8, ptr %add.ptr223.i, i32 16
  %132 = ptrtoint ptr %add.ptr254.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store volatile i32 %or252.i, ptr %add.ptr254.i, align 4
  %add257.i = add i32 %119, 20
  %add.ptr262.i = getelementptr i8, ptr %117, i32 %add257.i
  %133 = ptrtoint ptr %add.ptr262.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store volatile i32 1085147413, ptr %add.ptr262.i, align 4
  %add.ptr268.i = getelementptr i8, ptr %add.ptr262.i, i32 4
  %134 = ptrtoint ptr %add.ptr268.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile i32 0, ptr %add.ptr268.i, align 4
  %135 = ptrtoint ptr %clear_depth.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %clear_depth.i, align 4
  %add.ptr273.i = getelementptr i8, ptr %add.ptr262.i, i32 8
  %137 = ptrtoint ptr %add.ptr273.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store volatile i32 %136, ptr %add.ptr273.i, align 4
  %138 = ptrtoint ptr %depth_offset.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %depth_offset.i, align 4
  %add.ptr278.i = getelementptr i8, ptr %add.ptr262.i, i32 12
  %140 = ptrtoint ptr %add.ptr278.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile i32 %139, ptr %add.ptr278.i, align 4
  %141 = ptrtoint ptr %clear_cmd.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %clear_cmd.i, align 4
  %add.ptr284.i = getelementptr i8, ptr %add.ptr262.i, i32 16
  %143 = ptrtoint ptr %add.ptr284.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store volatile i32 %142, ptr %add.ptr284.i, align 4
  %add287.i = add i32 %119, 40
  store i32 %add287.i, ptr %tail.i, align 4
  br label %if.end295.i

if.end295.i:                                      ; preds = %do.body214.i, %if.end209.i.if.end295.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0497.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %36
  br i1 %exitcond.not.i, label %if.end295.i.do.body296.i_crit_edge, label %if.end295.i.for.body.i_crit_edge

if.end295.i.for.body.i_crit_edge:                 ; preds = %if.end295.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end295.i.do.body296.i_crit_edge:               ; preds = %if.end295.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body296.i

do.body296.i:                                     ; preds = %if.end295.i.do.body296.i_crit_edge, %do.end32.do.body296.i_crit_edge
  %144 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %32, align 4
  %146 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %tail.i, align 4
  %add.ptr305.i = getelementptr i8, ptr %145, i32 %147
  %148 = ptrtoint ptr %add.ptr305.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store volatile i32 464149, ptr %add.ptr305.i, align 4
  %add.ptr311.i = getelementptr i8, ptr %add.ptr305.i, i32 4
  %149 = ptrtoint ptr %add.ptr311.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store volatile i32 0, ptr %add.ptr311.i, align 4
  %add.ptr316.i = getelementptr i8, ptr %add.ptr305.i, i32 8
  %150 = ptrtoint ptr %add.ptr316.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store volatile i32 0, ptr %add.ptr316.i, align 4
  %plnwt.i = getelementptr inbounds %struct.drm_mga_context_regs_t, ptr %34, i32 0, i32 2
  %151 = ptrtoint ptr %plnwt.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %plnwt.i, align 4
  %add.ptr321.i = getelementptr i8, ptr %add.ptr305.i, i32 12
  %153 = ptrtoint ptr %add.ptr321.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store volatile i32 %152, ptr %add.ptr321.i, align 4
  %dwgctl.i = getelementptr inbounds %struct.drm_mga_context_regs_t, ptr %34, i32 0, i32 3
  %154 = ptrtoint ptr %dwgctl.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %dwgctl.i, align 4
  %add.ptr326.i = getelementptr i8, ptr %add.ptr305.i, i32 16
  %156 = ptrtoint ptr %add.ptr326.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store volatile i32 %155, ptr %add.ptr326.i, align 4
  %add329.i = add i32 %147, 20
  store i32 %add329.i, ptr %tail.i, align 4
  %wrapped.i = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %32, i32 0, i32 5
  %157 = ptrtoint ptr %wrapped.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load volatile i32, ptr %wrapped.i, align 4
  %and1.i.i = and i32 %158, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool339.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool339.not.i, label %if.then340.i, label %do.body296.i.mga_dma_dispatch_clear.exit_crit_edge

do.body296.i.mga_dma_dispatch_clear.exit_crit_edge: ; preds = %do.body296.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mga_dma_dispatch_clear.exit

if.then340.i:                                     ; preds = %do.body296.i
  %space.i = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %32, i32 0, i32 4
  %159 = ptrtoint ptr %space.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %space.i, align 4
  %high_mark.i = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %32, i32 0, i32 9
  %161 = ptrtoint ptr %high_mark.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %high_mark.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %160, i32 %162)
  %cmp343.i = icmp ult i32 %160, %162
  br i1 %cmp343.i, label %if.then345.i, label %if.else.i

if.then345.i:                                     ; preds = %if.then340.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mga_do_dma_wrap_start(ptr noundef %32) #5
  br label %mga_dma_dispatch_clear.exit

if.else.i:                                        ; preds = %if.then340.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mga_do_dma_flush(ptr noundef %32) #5
  br label %mga_dma_dispatch_clear.exit

mga_dma_dispatch_clear.exit:                      ; preds = %if.else.i, %if.then345.i, %do.body296.i.mga_dma_dispatch_clear.exit_crit_edge
  %163 = ptrtoint ptr %sarea_priv1 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %sarea_priv1, align 4
  %dirty = getelementptr inbounds %struct._drm_mga_sarea, ptr %164, i32 0, i32 4
  %165 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %dirty, align 4
  %or = or i32 %166, 1
  store i32 %or, ptr %dirty, align 4
  br label %cleanup

cleanup:                                          ; preds = %mga_dma_dispatch_clear.exit, %if.else.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %mga_dma_dispatch_clear.exit ], [ -16, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mga_dma_vertex(ptr noundef %dev, ptr nocapture noundef readonly %data, ptr noundef %file_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %file_priv5 = getelementptr inbounds %struct.drm_master, ptr %5, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %file_priv5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %file_priv5, align 4
  %cmp.not = icmp eq ptr %11, %file_priv
  br i1 %cmp.not, label %do.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.mga_dma_vertex, i32 noundef %and10, ptr noundef %15, ptr noundef %file_priv) #5
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp14 = icmp slt i32 %17, 0
  br i1 %cmp14, label %do.end.cleanup_crit_edge, label %lor.lhs.false15

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false15:                                  ; preds = %do.end
  %buf_count = getelementptr inbounds %struct.drm_device_dma, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buf_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp17 = icmp sgt i32 %17, %19
  br i1 %cmp17, label %lor.lhs.false15.cleanup_crit_edge, label %if.end19

lor.lhs.false15.cleanup_crit_edge:                ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false15
  %buflist = getelementptr inbounds %struct.drm_device_dma, ptr %3, i32 0, i32 2
  %20 = ptrtoint ptr %buflist to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buflist, align 4
  %arrayidx = getelementptr ptr, ptr %21, i32 %17
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %dev_private21 = getelementptr inbounds %struct.drm_buf, ptr %23, i32 0, i32 15
  %24 = ptrtoint ptr %dev_private21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_private21, align 4
  %used = getelementptr inbounds %struct.drm_mga_vertex, ptr %data, i32 0, i32 1
  %26 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %used, align 4
  %used22 = getelementptr inbounds %struct.drm_buf, ptr %23, i32 0, i32 3
  %28 = ptrtoint ptr %used22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %used22, align 4
  %discard = getelementptr inbounds %struct.drm_mga_vertex, ptr %data, i32 0, i32 2
  %29 = ptrtoint ptr %discard to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %discard, align 4
  %discard23 = getelementptr inbounds %struct.drm_mga_buf_priv_t, ptr %25, i32 0, i32 1
  %31 = ptrtoint ptr %discard23 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %discard23, align 4
  %call = tail call fastcc i32 @mga_verify_state(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool24.not = icmp eq i32 %call, 0
  br i1 %tobool24.not, label %if.then25, label %do.body49

if.then25:                                        ; preds = %if.end19
  %32 = ptrtoint ptr %discard to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %discard, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool27.not = icmp eq i32 %33, 0
  br i1 %tobool27.not, label %if.then25.cleanup_crit_edge, label %if.then28

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then28:                                        ; preds = %if.then25
  %dispatched = getelementptr inbounds %struct.drm_mga_buf_priv_t, ptr %25, i32 0, i32 2
  %34 = ptrtoint ptr %dispatched to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dispatched, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp29 = icmp eq i32 %35, 1
  br i1 %cmp29, label %if.then35, label %if.then28.if.end44_crit_edge

if.then28.if.end44_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then35:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %25, align 4
  %tail = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %1, i32 0, i32 3
  %38 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tail, align 4
  %primary = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 33
  %40 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %primary, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %add = add i32 %43, %39
  %age = getelementptr inbounds %struct.drm_mga_freelist, ptr %37, i32 0, i32 2
  %44 = ptrtoint ptr %age to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add, ptr %age, align 4
  %sarea_priv = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 1
  %45 = ptrtoint ptr %sarea_priv to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sarea_priv, align 4
  %last_wrap = getelementptr inbounds %struct._drm_mga_sarea, ptr %46, i32 0, i32 24
  %47 = ptrtoint ptr %last_wrap to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %last_wrap, align 4
  %wrap = getelementptr inbounds %struct.drm_mga_freelist, ptr %37, i32 0, i32 2, i32 1
  %49 = ptrtoint ptr %wrap to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %wrap, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then35, %if.then28.if.end44_crit_edge
  %50 = ptrtoint ptr %dispatched to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %dispatched, align 4
  %call46 = tail call i32 @mga_freelist_put(ptr noundef %dev, ptr noundef %23) #5
  br label %cleanup

do.body49:                                        ; preds = %if.end19
  %wrapped = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %1, i32 0, i32 5
  %51 = ptrtoint ptr %wrapped to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %wrapped, align 4
  %and1.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool52.not = icmp eq i32 %and1.i, 0
  br i1 %tobool52.not, label %do.body49.do.end66_crit_edge, label %if.then53

do.body49.do.end66_crit_edge:                     ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end66

if.then53:                                        ; preds = %do.body49
  %mmio.i = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 30
  %53 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mmio.i, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %handle.i, align 4
  %add.ptr.i = getelementptr i8, ptr %56, i32 7700
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  %58 = and i32 %57, 16777984
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %58)
  %cmp.i.not = icmp eq i32 %58, 512
  br i1 %cmp.i.not, label %if.then56, label %if.else57

if.then56:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mga_do_dma_wrap_end(ptr noundef %1) #5
  br label %do.end66

if.else57:                                        ; preds = %if.then53
  %space = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %1, i32 0, i32 4
  %59 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %space, align 4
  %high_mark = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %1, i32 0, i32 9
  %61 = ptrtoint ptr %high_mark to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %high_mark, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp60 = icmp ult i32 %60, %62
  br i1 %cmp60, label %if.else57.cleanup_crit_edge, label %if.else57.do.end66_crit_edge

if.else57.do.end66_crit_edge:                     ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end66

if.else57.cleanup_crit_edge:                      ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end66:                                         ; preds = %if.else57.do.end66_crit_edge, %if.then56, %do.body49.do.end66_crit_edge
  %63 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev_private, align 4
  %65 = ptrtoint ptr %dev_private21 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev_private21, align 4
  %sarea_priv2.i = getelementptr inbounds %struct.drm_mga_private, ptr %64, i32 0, i32 1
  %67 = ptrtoint ptr %sarea_priv2.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sarea_priv2.i, align 4
  %bus_address.i = getelementptr inbounds %struct.drm_buf, ptr %23, i32 0, i32 6
  %69 = ptrtoint ptr %bus_address.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %bus_address.i, align 4
  %71 = ptrtoint ptr %used22 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %used22, align 4
  %73 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %23, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.25, i32 noundef %74, i32 noundef %72) #5
  %75 = ptrtoint ptr %used22 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %used22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i = icmp eq i32 %76, 0
  br i1 %tobool.not.i, label %do.end66.if.end56.i_crit_edge, label %if.then.i

do.end66.if.end56.i_crit_edge:                    ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56.i

if.then.i:                                        ; preds = %do.end66
  %dispatched.i = getelementptr inbounds %struct.drm_mga_buf_priv_t, ptr %66, i32 0, i32 2
  %77 = ptrtoint ptr %dispatched.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1, ptr %dispatched.i, align 4
  %dirty.i = getelementptr inbounds %struct._drm_mga_sarea, ptr %68, i32 0, i32 4
  %78 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %dirty.i, align 4
  %and.i = and i32 %79, -257
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %if.then.i.do.end.i_crit_edge, label %if.then6.i

if.then.i.do.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

if.then6.i:                                       ; preds = %if.then.i
  %chipset.i = getelementptr inbounds %struct.drm_mga_private, ptr %64, i32 0, i32 6
  %80 = ptrtoint ptr %chipset.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %chipset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %81)
  %cmp.i103 = icmp sgt i32 %81, 1
  br i1 %cmp.i103, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @mga_g400_emit_state(ptr noundef %64) #5
  br label %do.end.i

if.else.i:                                        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @mga_g200_emit_state(ptr noundef %64) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.else.i, %if.then7.i, %if.then.i.do.end.i_crit_edge
  %nbox.i = getelementptr inbounds %struct._drm_mga_sarea, ptr %68, i32 0, i32 7
  %front_pitch.i.i = getelementptr inbounds %struct.drm_mga_private, ptr %64, i32 0, i32 21
  %tail.i.i = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %64, i32 0, i32 3
  %chipset.i.i = getelementptr inbounds %struct.drm_mga_private, ptr %64, i32 0, i32 6
  %or.i = or i32 %70, 3
  %add.i = add i32 %72, %70
  %dma_access.i = getelementptr inbounds %struct.drm_mga_private, ptr %64, i32 0, i32 9
  br label %do.body9.i

do.body9.i:                                       ; preds = %do.body13.i.do.body9.i_crit_edge, %do.end.i
  %i.0.i = phi i32 [ 0, %do.end.i ], [ %inc.i, %do.body13.i.do.body9.i_crit_edge ]
  %82 = ptrtoint ptr %nbox.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %nbox.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i, i32 %83)
  %cmp10.i = icmp ult i32 %i.0.i, %83
  br i1 %cmp10.i, label %if.then11.i, label %do.body9.i.do.body13.i_crit_edge

do.body9.i.do.body13.i_crit_edge:                 ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body13.i

if.then11.i:                                      ; preds = %do.body9.i
  %arrayidx.i = getelementptr %struct._drm_mga_sarea, ptr %68, i32 0, i32 6, i32 %i.0.i
  %84 = ptrtoint ptr %front_pitch.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %front_pitch.i.i, align 4
  %86 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %64, align 4
  %88 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tail.i.i, align 4
  %90 = ptrtoint ptr %chipset.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %chipset.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %91)
  %cmp.i.i = icmp sgt i32 %91, 1
  br i1 %cmp.i.i, label %do.body5.i.i, label %if.then11.i.mga_emit_clip_rect.exit.i_crit_edge

if.then11.i.mga_emit_clip_rect.exit.i_crit_edge:  ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mga_emit_clip_rect.exit.i

do.body5.i.i:                                     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #7
  %92 = ptrtoint ptr %sarea_priv2.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %sarea_priv2.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %87, i32 %89
  %94 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile i32 1459640064, ptr %add.ptr.i.i, align 4
  %dwgctl.i.i = getelementptr inbounds %struct.drm_mga_context_regs_t, ptr %93, i32 0, i32 3
  %95 = ptrtoint ptr %dwgctl.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %dwgctl.i.i, align 4
  %add.ptr11.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 4
  %97 = ptrtoint ptr %add.ptr11.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile i32 %96, ptr %add.ptr11.i.i, align 4
  %add.ptr16.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 8
  %98 = ptrtoint ptr %add.ptr16.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile i32 -2147483648, ptr %add.ptr16.i.i, align 4
  %99 = load i32, ptr %dwgctl.i.i, align 4
  %add.ptr22.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 12
  %100 = ptrtoint ptr %add.ptr22.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile i32 %99, ptr %add.ptr22.i.i, align 4
  %add.ptr27.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 16
  %101 = ptrtoint ptr %add.ptr27.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile i32 -2147483648, ptr %add.ptr27.i.i, align 4
  %add.i.i = add i32 %89, 20
  br label %mga_emit_clip_rect.exit.i

mga_emit_clip_rect.exit.i:                        ; preds = %do.body5.i.i, %if.then11.i.mga_emit_clip_rect.exit.i_crit_edge
  %write.0.i.i = phi i32 [ %add.i.i, %do.body5.i.i ], [ %89, %if.then11.i.mga_emit_clip_rect.exit.i_crit_edge ]
  %add.ptr34.i.i = getelementptr i8, ptr %87, i32 %write.0.i.i
  %102 = ptrtoint ptr %add.ptr34.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile i32 656810005, ptr %add.ptr34.i.i, align 4
  %add.ptr40.i.i = getelementptr i8, ptr %add.ptr34.i.i, i32 4
  %103 = ptrtoint ptr %add.ptr40.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile i32 0, ptr %add.ptr40.i.i, align 4
  %x2.i.i = getelementptr %struct._drm_mga_sarea, ptr %68, i32 0, i32 6, i32 %i.0.i, i32 2
  %104 = ptrtoint ptr %x2.i.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %x2.i.i, align 2
  %conv.i.i = zext i16 %105 to i32
  %sub.i.i = shl nuw i32 %conv.i.i, 16
  %shl.i.i = add i32 %sub.i.i, -65536
  %106 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %arrayidx.i, align 2
  %conv44.i.i = zext i16 %107 to i32
  %or.i.i = or i32 %shl.i.i, %conv44.i.i
  %add.ptr46.i.i = getelementptr i8, ptr %add.ptr34.i.i, i32 8
  %108 = ptrtoint ptr %add.ptr46.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile i32 %or.i.i, ptr %add.ptr46.i.i, align 4
  %y1.i.i = getelementptr %struct._drm_mga_sarea, ptr %68, i32 0, i32 6, i32 %i.0.i, i32 1
  %109 = ptrtoint ptr %y1.i.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %y1.i.i, align 2
  %conv50.i.i = zext i16 %110 to i32
  %mul.i.i = mul i32 %85, %conv50.i.i
  %add.ptr52.i.i = getelementptr i8, ptr %add.ptr34.i.i, i32 12
  %111 = ptrtoint ptr %add.ptr52.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile i32 %mul.i.i, ptr %add.ptr52.i.i, align 4
  %y2.i.i = getelementptr %struct._drm_mga_sarea, ptr %68, i32 0, i32 6, i32 %i.0.i, i32 3
  %112 = ptrtoint ptr %y2.i.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %y2.i.i, align 2
  %conv56.i.i = zext i16 %113 to i32
  %sub57.i.i = add nsw i32 %conv56.i.i, -1
  %mul58.i.i = mul i32 %sub57.i.i, %85
  %add.ptr60.i.i = getelementptr i8, ptr %add.ptr34.i.i, i32 16
  %114 = ptrtoint ptr %add.ptr60.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile i32 %mul58.i.i, ptr %add.ptr60.i.i, align 4
  %add63.i.i = add i32 %write.0.i.i, 20
  %115 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %add63.i.i, ptr %tail.i.i, align 4
  br label %do.body13.i

do.body13.i:                                      ; preds = %mga_emit_clip_rect.exit.i, %do.body9.i.do.body13.i_crit_edge
  %116 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %64, align 4
  %118 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %tail.i.i, align 4
  %add.ptr.i104 = getelementptr i8, ptr %117, i32 %119
  %120 = ptrtoint ptr %add.ptr.i104 to i32
  call void @__asan_store4_noabort(i32 %120)
  store volatile i32 -1852828395, ptr %add.ptr.i104, align 4
  %add.ptr25.i = getelementptr i8, ptr %add.ptr.i104, i32 4
  %121 = ptrtoint ptr %add.ptr25.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile i32 0, ptr %add.ptr25.i, align 4
  %add.ptr30.i = getelementptr i8, ptr %add.ptr.i104, i32 8
  %122 = ptrtoint ptr %add.ptr30.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile i32 0, ptr %add.ptr30.i, align 4
  %add.ptr35.i = getelementptr i8, ptr %add.ptr.i104, i32 12
  %123 = ptrtoint ptr %add.ptr35.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile i32 %or.i, ptr %add.ptr35.i, align 4
  %124 = ptrtoint ptr %dma_access.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %dma_access.i, align 4
  %or39.i = or i32 %125, %add.i
  %add.ptr41.i = getelementptr i8, ptr %add.ptr.i104, i32 16
  %126 = ptrtoint ptr %add.ptr41.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile i32 %or39.i, ptr %add.ptr41.i, align 4
  %add44.i = add i32 %119, 20
  store i32 %add44.i, ptr %tail.i.i, align 4
  %inc.i = add nuw i32 %i.0.i, 1
  %127 = ptrtoint ptr %nbox.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %nbox.i, align 4
  %cmp54.i = icmp ult i32 %inc.i, %128
  br i1 %cmp54.i, label %do.body13.i.do.body9.i_crit_edge, label %do.body13.i.if.end56.i_crit_edge

do.body13.i.if.end56.i_crit_edge:                 ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56.i

do.body13.i.do.body9.i_crit_edge:                 ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body9.i

if.end56.i:                                       ; preds = %do.body13.i.if.end56.i_crit_edge, %do.end66.if.end56.i_crit_edge
  %discard.i = getelementptr inbounds %struct.drm_mga_buf_priv_t, ptr %66, i32 0, i32 1
  %129 = ptrtoint ptr %discard.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %discard.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool57.not.i = icmp eq i32 %130, 0
  br i1 %tobool57.not.i, label %if.end56.i.do.body80.i_crit_edge, label %do.body59.i

if.end56.i.do.body80.i_crit_edge:                 ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body80.i

do.body59.i:                                      ; preds = %if.end56.i
  %131 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %66, align 4
  %dispatched61.i = getelementptr inbounds %struct.drm_mga_buf_priv_t, ptr %66, i32 0, i32 2
  %133 = ptrtoint ptr %dispatched61.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %dispatched61.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool62.not.i = icmp eq i32 %134, 0
  br i1 %tobool62.not.i, label %if.else69.i, label %if.then63.i

if.then63.i:                                      ; preds = %do.body59.i
  call void @__sanitizer_cov_trace_pc() #7
  %tail65.i = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %64, i32 0, i32 3
  %135 = ptrtoint ptr %tail65.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %tail65.i, align 4
  %primary.i = getelementptr inbounds %struct.drm_mga_private, ptr %64, i32 0, i32 33
  %137 = ptrtoint ptr %primary.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %primary.i, align 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %138, align 4
  %add66.i = add i32 %140, %136
  %age.i = getelementptr inbounds %struct.drm_mga_freelist, ptr %132, i32 0, i32 2
  %141 = ptrtoint ptr %age.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %add66.i, ptr %age.i, align 4
  %142 = ptrtoint ptr %sarea_priv2.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %sarea_priv2.i, align 4
  %last_wrap.i = getelementptr inbounds %struct._drm_mga_sarea, ptr %143, i32 0, i32 24
  %144 = ptrtoint ptr %last_wrap.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %last_wrap.i, align 4
  br label %if.end74.i

if.else69.i:                                      ; preds = %do.body59.i
  call void @__sanitizer_cov_trace_pc() #7
  %age70.i = getelementptr inbounds %struct.drm_mga_freelist, ptr %132, i32 0, i32 2
  %146 = ptrtoint ptr %age70.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 0, ptr %age70.i, align 4
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.else69.i, %if.then63.i
  %.sink.i = phi i32 [ 0, %if.else69.i ], [ %145, %if.then63.i ]
  %147 = getelementptr inbounds %struct.drm_mga_freelist, ptr %132, i32 0, i32 2, i32 1
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %.sink.i, ptr %147, align 4
  %pending.i = getelementptr inbounds %struct.drm_buf, ptr %23, i32 0, i32 9
  %149 = ptrtoint ptr %pending.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store volatile i32 0, ptr %pending.i, align 4
  %150 = ptrtoint ptr %used22 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 0, ptr %used22, align 4
  %151 = ptrtoint ptr %dispatched61.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %dispatched61.i, align 4
  %call.i = tail call i32 @mga_freelist_put(ptr noundef %dev, ptr noundef %23) #5
  br label %do.body80.i

do.body80.i:                                      ; preds = %if.end74.i, %if.end56.i.do.body80.i_crit_edge
  %wrapped.i = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %64, i32 0, i32 5
  %152 = ptrtoint ptr %wrapped.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile i32, ptr %wrapped.i, align 4
  %and1.i.i = and i32 %153, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool83.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool83.not.i, label %if.then84.i, label %do.body80.i.cleanup_crit_edge

do.body80.i.cleanup_crit_edge:                    ; preds = %do.body80.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then84.i:                                      ; preds = %do.body80.i
  %space.i = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %64, i32 0, i32 4
  %154 = ptrtoint ptr %space.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %space.i, align 4
  %high_mark.i = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %64, i32 0, i32 9
  %156 = ptrtoint ptr %high_mark.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %high_mark.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %155, i32 %157)
  %cmp87.i = icmp ult i32 %155, %157
  br i1 %cmp87.i, label %if.then88.i, label %if.else89.i

if.then88.i:                                      ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mga_do_dma_wrap_start(ptr noundef %64) #5
  br label %cleanup

if.else89.i:                                      ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mga_do_dma_flush(ptr noundef %64) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else89.i, %if.then88.i, %do.body80.i.cleanup_crit_edge, %if.else57.cleanup_crit_edge, %if.end44, %if.then25.cleanup_crit_edge, %lor.lhs.false15.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %lor.lhs.false15.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ -22, %if.end44 ], [ -22, %if.then25.cleanup_crit_edge ], [ -16, %if.else57.cleanup_crit_edge ], [ 0, %do.body80.i.cleanup_crit_edge ], [ 0, %if.then88.i ], [ 0, %if.else89.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mga_dma_indices(ptr noundef %dev, ptr nocapture noundef readonly %data, ptr noundef %file_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %file_priv5 = getelementptr inbounds %struct.drm_master, ptr %5, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %file_priv5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %file_priv5, align 4
  %cmp.not = icmp eq ptr %11, %file_priv
  br i1 %cmp.not, label %do.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.mga_dma_indices, i32 noundef %and10, ptr noundef %15, ptr noundef %file_priv) #5
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp14 = icmp slt i32 %17, 0
  br i1 %cmp14, label %do.end.cleanup_crit_edge, label %lor.lhs.false15

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false15:                                  ; preds = %do.end
  %buf_count = getelementptr inbounds %struct.drm_device_dma, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buf_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp17 = icmp sgt i32 %17, %19
  br i1 %cmp17, label %lor.lhs.false15.cleanup_crit_edge, label %if.end19

lor.lhs.false15.cleanup_crit_edge:                ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false15
  %buflist = getelementptr inbounds %struct.drm_device_dma, ptr %3, i32 0, i32 2
  %20 = ptrtoint ptr %buflist to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buflist, align 4
  %arrayidx = getelementptr ptr, ptr %21, i32 %17
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %dev_private21 = getelementptr inbounds %struct.drm_buf, ptr %23, i32 0, i32 15
  %24 = ptrtoint ptr %dev_private21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_private21, align 4
  %discard = getelementptr inbounds %struct.drm_mga_indices, ptr %data, i32 0, i32 3
  %26 = ptrtoint ptr %discard to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %discard, align 4
  %discard22 = getelementptr inbounds %struct.drm_mga_buf_priv_t, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %discard22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %discard22, align 4
  %call = tail call fastcc i32 @mga_verify_state(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool23.not = icmp eq i32 %call, 0
  br i1 %tobool23.not, label %if.then24, label %do.body48

if.then24:                                        ; preds = %if.end19
  %29 = ptrtoint ptr %discard to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %discard, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool26.not = icmp eq i32 %30, 0
  br i1 %tobool26.not, label %if.then24.cleanup_crit_edge, label %if.then27

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then27:                                        ; preds = %if.then24
  %dispatched = getelementptr inbounds %struct.drm_mga_buf_priv_t, ptr %25, i32 0, i32 2
  %31 = ptrtoint ptr %dispatched to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dispatched, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp28 = icmp eq i32 %32, 1
  br i1 %cmp28, label %if.then34, label %if.then27.if.end43_crit_edge

if.then27.if.end43_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.then34:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %25, align 4
  %tail = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %1, i32 0, i32 3
  %35 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tail, align 4
  %primary = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 33
  %37 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %primary, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %add = add i32 %40, %36
  %age = getelementptr inbounds %struct.drm_mga_freelist, ptr %34, i32 0, i32 2
  %41 = ptrtoint ptr %age to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add, ptr %age, align 4
  %sarea_priv = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 1
  %42 = ptrtoint ptr %sarea_priv to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sarea_priv, align 4
  %last_wrap = getelementptr inbounds %struct._drm_mga_sarea, ptr %43, i32 0, i32 24
  %44 = ptrtoint ptr %last_wrap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %last_wrap, align 4
  %wrap = getelementptr inbounds %struct.drm_mga_freelist, ptr %34, i32 0, i32 2, i32 1
  %46 = ptrtoint ptr %wrap to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %wrap, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then34, %if.then27.if.end43_crit_edge
  %47 = ptrtoint ptr %dispatched to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %dispatched, align 4
  %call45 = tail call i32 @mga_freelist_put(ptr noundef %dev, ptr noundef %23) #5
  br label %cleanup

do.body48:                                        ; preds = %if.end19
  %wrapped = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %1, i32 0, i32 5
  %48 = ptrtoint ptr %wrapped to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %wrapped, align 4
  %and1.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool51.not = icmp eq i32 %and1.i, 0
  br i1 %tobool51.not, label %do.body48.do.end65_crit_edge, label %if.then52

do.body48.do.end65_crit_edge:                     ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end65

if.then52:                                        ; preds = %do.body48
  %mmio.i = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 30
  %50 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mmio.i, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %handle.i, align 4
  %add.ptr.i = getelementptr i8, ptr %53, i32 7700
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  %55 = and i32 %54, 16777984
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %55)
  %cmp.i.not = icmp eq i32 %55, 512
  br i1 %cmp.i.not, label %if.then55, label %if.else56

if.then55:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mga_do_dma_wrap_end(ptr noundef %1) #5
  br label %do.end65

if.else56:                                        ; preds = %if.then52
  %space = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %1, i32 0, i32 4
  %56 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %space, align 4
  %high_mark = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %1, i32 0, i32 9
  %58 = ptrtoint ptr %high_mark to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %high_mark, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp59 = icmp ult i32 %57, %59
  br i1 %cmp59, label %if.else56.cleanup_crit_edge, label %if.else56.do.end65_crit_edge

if.else56.do.end65_crit_edge:                     ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end65

if.else56.cleanup_crit_edge:                      ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end65:                                         ; preds = %if.else56.do.end65_crit_edge, %if.then55, %do.body48.do.end65_crit_edge
  %start = getelementptr inbounds %struct.drm_mga_indices, ptr %data, i32 0, i32 1
  %60 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %start, align 4
  %end = getelementptr inbounds %struct.drm_mga_indices, ptr %data, i32 0, i32 2
  %62 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %end, align 4
  %64 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev_private, align 4
  %66 = ptrtoint ptr %dev_private21 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev_private21, align 4
  %sarea_priv2.i = getelementptr inbounds %struct.drm_mga_private, ptr %65, i32 0, i32 1
  %68 = ptrtoint ptr %sarea_priv2.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sarea_priv2.i, align 4
  %bus_address.i = getelementptr inbounds %struct.drm_buf, ptr %23, i32 0, i32 6
  %70 = ptrtoint ptr %bus_address.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %bus_address.i, align 4
  %72 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %23, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.26, i32 noundef %73, i32 noundef %61, i32 noundef %63) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %63)
  %cmp.not.i = icmp eq i32 %61, %63
  br i1 %cmp.not.i, label %do.end65.if.end55.i_crit_edge, label %if.then.i

do.end65.if.end55.i_crit_edge:                    ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55.i

if.then.i:                                        ; preds = %do.end65
  %dispatched.i = getelementptr inbounds %struct.drm_mga_buf_priv_t, ptr %67, i32 0, i32 2
  %74 = ptrtoint ptr %dispatched.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %dispatched.i, align 4
  %dirty.i = getelementptr inbounds %struct._drm_mga_sarea, ptr %69, i32 0, i32 4
  %75 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %dirty.i, align 4
  %and.i = and i32 %76, -257
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i.do.end.i_crit_edge, label %if.then3.i

if.then.i.do.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

if.then3.i:                                       ; preds = %if.then.i
  %chipset.i = getelementptr inbounds %struct.drm_mga_private, ptr %65, i32 0, i32 6
  %77 = ptrtoint ptr %chipset.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %chipset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %78)
  %cmp4.i = icmp sgt i32 %78, 1
  br i1 %cmp4.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @mga_g400_emit_state(ptr noundef %65) #5
  br label %do.end.i

if.else.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @mga_g200_emit_state(ptr noundef %65) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.else.i, %if.then5.i, %if.then.i.do.end.i_crit_edge
  %nbox.i = getelementptr inbounds %struct._drm_mga_sarea, ptr %69, i32 0, i32 7
  %front_pitch.i.i = getelementptr inbounds %struct.drm_mga_private, ptr %65, i32 0, i32 21
  %tail.i.i = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %65, i32 0, i32 3
  %chipset.i.i = getelementptr inbounds %struct.drm_mga_private, ptr %65, i32 0, i32 6
  %add.i = add i32 %71, %61
  %add38.i = add i32 %71, %63
  %dma_access.i = getelementptr inbounds %struct.drm_mga_private, ptr %65, i32 0, i32 9
  br label %do.body7.i

do.body7.i:                                       ; preds = %do.body11.i.do.body7.i_crit_edge, %do.end.i
  %i.0.i = phi i32 [ 0, %do.end.i ], [ %inc.i, %do.body11.i.do.body7.i_crit_edge ]
  %79 = ptrtoint ptr %nbox.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %nbox.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i, i32 %80)
  %cmp8.i = icmp ult i32 %i.0.i, %80
  br i1 %cmp8.i, label %if.then9.i, label %do.body7.i.do.body11.i_crit_edge

do.body7.i.do.body11.i_crit_edge:                 ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body11.i

if.then9.i:                                       ; preds = %do.body7.i
  %arrayidx.i = getelementptr %struct._drm_mga_sarea, ptr %69, i32 0, i32 6, i32 %i.0.i
  %81 = ptrtoint ptr %front_pitch.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %front_pitch.i.i, align 4
  %83 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %65, align 4
  %85 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tail.i.i, align 4
  %87 = ptrtoint ptr %chipset.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %chipset.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %88)
  %cmp.i.i = icmp sgt i32 %88, 1
  br i1 %cmp.i.i, label %do.body5.i.i, label %if.then9.i.mga_emit_clip_rect.exit.i_crit_edge

if.then9.i.mga_emit_clip_rect.exit.i_crit_edge:   ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mga_emit_clip_rect.exit.i

do.body5.i.i:                                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #7
  %89 = ptrtoint ptr %sarea_priv2.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %sarea_priv2.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %84, i32 %86
  %91 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile i32 1459640064, ptr %add.ptr.i.i, align 4
  %dwgctl.i.i = getelementptr inbounds %struct.drm_mga_context_regs_t, ptr %90, i32 0, i32 3
  %92 = ptrtoint ptr %dwgctl.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %dwgctl.i.i, align 4
  %add.ptr11.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 4
  %94 = ptrtoint ptr %add.ptr11.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile i32 %93, ptr %add.ptr11.i.i, align 4
  %add.ptr16.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 8
  %95 = ptrtoint ptr %add.ptr16.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile i32 -2147483648, ptr %add.ptr16.i.i, align 4
  %96 = load i32, ptr %dwgctl.i.i, align 4
  %add.ptr22.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 12
  %97 = ptrtoint ptr %add.ptr22.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile i32 %96, ptr %add.ptr22.i.i, align 4
  %add.ptr27.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 16
  %98 = ptrtoint ptr %add.ptr27.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile i32 -2147483648, ptr %add.ptr27.i.i, align 4
  %add.i.i = add i32 %86, 20
  br label %mga_emit_clip_rect.exit.i

mga_emit_clip_rect.exit.i:                        ; preds = %do.body5.i.i, %if.then9.i.mga_emit_clip_rect.exit.i_crit_edge
  %write.0.i.i = phi i32 [ %add.i.i, %do.body5.i.i ], [ %86, %if.then9.i.mga_emit_clip_rect.exit.i_crit_edge ]
  %add.ptr34.i.i = getelementptr i8, ptr %84, i32 %write.0.i.i
  %99 = ptrtoint ptr %add.ptr34.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile i32 656810005, ptr %add.ptr34.i.i, align 4
  %add.ptr40.i.i = getelementptr i8, ptr %add.ptr34.i.i, i32 4
  %100 = ptrtoint ptr %add.ptr40.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile i32 0, ptr %add.ptr40.i.i, align 4
  %x2.i.i = getelementptr %struct._drm_mga_sarea, ptr %69, i32 0, i32 6, i32 %i.0.i, i32 2
  %101 = ptrtoint ptr %x2.i.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %x2.i.i, align 2
  %conv.i.i = zext i16 %102 to i32
  %sub.i.i = shl nuw i32 %conv.i.i, 16
  %shl.i.i = add i32 %sub.i.i, -65536
  %103 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %arrayidx.i, align 2
  %conv44.i.i = zext i16 %104 to i32
  %or.i.i = or i32 %shl.i.i, %conv44.i.i
  %add.ptr46.i.i = getelementptr i8, ptr %add.ptr34.i.i, i32 8
  %105 = ptrtoint ptr %add.ptr46.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile i32 %or.i.i, ptr %add.ptr46.i.i, align 4
  %y1.i.i = getelementptr %struct._drm_mga_sarea, ptr %69, i32 0, i32 6, i32 %i.0.i, i32 1
  %106 = ptrtoint ptr %y1.i.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %y1.i.i, align 2
  %conv50.i.i = zext i16 %107 to i32
  %mul.i.i = mul i32 %82, %conv50.i.i
  %add.ptr52.i.i = getelementptr i8, ptr %add.ptr34.i.i, i32 12
  %108 = ptrtoint ptr %add.ptr52.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile i32 %mul.i.i, ptr %add.ptr52.i.i, align 4
  %y2.i.i = getelementptr %struct._drm_mga_sarea, ptr %69, i32 0, i32 6, i32 %i.0.i, i32 3
  %109 = ptrtoint ptr %y2.i.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %y2.i.i, align 2
  %conv56.i.i = zext i16 %110 to i32
  %sub57.i.i = add nsw i32 %conv56.i.i, -1
  %mul58.i.i = mul i32 %sub57.i.i, %82
  %add.ptr60.i.i = getelementptr i8, ptr %add.ptr34.i.i, i32 16
  %111 = ptrtoint ptr %add.ptr60.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile i32 %mul58.i.i, ptr %add.ptr60.i.i, align 4
  %add63.i.i = add i32 %write.0.i.i, 20
  %112 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %add63.i.i, ptr %tail.i.i, align 4
  br label %do.body11.i

do.body11.i:                                      ; preds = %mga_emit_clip_rect.exit.i, %do.body7.i.do.body11.i_crit_edge
  %113 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %65, align 4
  %115 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %tail.i.i, align 4
  %add.ptr.i102 = getelementptr i8, ptr %114, i32 %116
  %117 = ptrtoint ptr %add.ptr.i102 to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile i32 -1246489323, ptr %add.ptr.i102, align 4
  %add.ptr24.i = getelementptr i8, ptr %add.ptr.i102, i32 4
  %118 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile i32 0, ptr %add.ptr24.i, align 4
  %add.ptr29.i = getelementptr i8, ptr %add.ptr.i102, i32 8
  %119 = ptrtoint ptr %add.ptr29.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile i32 0, ptr %add.ptr29.i, align 4
  %add.ptr34.i = getelementptr i8, ptr %add.ptr.i102, i32 12
  %120 = ptrtoint ptr %add.ptr34.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store volatile i32 %add.i, ptr %add.ptr34.i, align 4
  %121 = ptrtoint ptr %dma_access.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %dma_access.i, align 4
  %or.i = or i32 %122, %add38.i
  %add.ptr40.i = getelementptr i8, ptr %add.ptr.i102, i32 16
  %123 = ptrtoint ptr %add.ptr40.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile i32 %or.i, ptr %add.ptr40.i, align 4
  %add43.i = add i32 %116, 20
  store i32 %add43.i, ptr %tail.i.i, align 4
  %inc.i = add nuw i32 %i.0.i, 1
  %124 = ptrtoint ptr %nbox.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %nbox.i, align 4
  %cmp53.i = icmp ult i32 %inc.i, %125
  br i1 %cmp53.i, label %do.body11.i.do.body7.i_crit_edge, label %do.body11.i.if.end55.i_crit_edge

do.body11.i.if.end55.i_crit_edge:                 ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55.i

do.body11.i.do.body7.i_crit_edge:                 ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body7.i

if.end55.i:                                       ; preds = %do.body11.i.if.end55.i_crit_edge, %do.end65.if.end55.i_crit_edge
  %discard.i = getelementptr inbounds %struct.drm_mga_buf_priv_t, ptr %67, i32 0, i32 1
  %126 = ptrtoint ptr %discard.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %discard.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool56.not.i = icmp eq i32 %127, 0
  br i1 %tobool56.not.i, label %if.end55.i.do.body78.i_crit_edge, label %do.body58.i

if.end55.i.do.body78.i_crit_edge:                 ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body78.i

do.body58.i:                                      ; preds = %if.end55.i
  %128 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %67, align 4
  %dispatched60.i = getelementptr inbounds %struct.drm_mga_buf_priv_t, ptr %67, i32 0, i32 2
  %130 = ptrtoint ptr %dispatched60.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %dispatched60.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool61.not.i = icmp eq i32 %131, 0
  br i1 %tobool61.not.i, label %if.else68.i, label %if.then62.i

if.then62.i:                                      ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #7
  %tail64.i = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %65, i32 0, i32 3
  %132 = ptrtoint ptr %tail64.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %tail64.i, align 4
  %primary.i = getelementptr inbounds %struct.drm_mga_private, ptr %65, i32 0, i32 33
  %134 = ptrtoint ptr %primary.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %primary.i, align 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %135, align 4
  %add65.i = add i32 %137, %133
  %age.i = getelementptr inbounds %struct.drm_mga_freelist, ptr %129, i32 0, i32 2
  %138 = ptrtoint ptr %age.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %add65.i, ptr %age.i, align 4
  %139 = ptrtoint ptr %sarea_priv2.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %sarea_priv2.i, align 4
  %last_wrap.i = getelementptr inbounds %struct._drm_mga_sarea, ptr %140, i32 0, i32 24
  %141 = ptrtoint ptr %last_wrap.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %last_wrap.i, align 4
  br label %if.end73.i

if.else68.i:                                      ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #7
  %age69.i = getelementptr inbounds %struct.drm_mga_freelist, ptr %129, i32 0, i32 2
  %143 = ptrtoint ptr %age69.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 0, ptr %age69.i, align 4
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.else68.i, %if.then62.i
  %.sink.i = phi i32 [ 0, %if.else68.i ], [ %142, %if.then62.i ]
  %144 = getelementptr inbounds %struct.drm_mga_freelist, ptr %129, i32 0, i32 2, i32 1
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %.sink.i, ptr %144, align 4
  %pending.i = getelementptr inbounds %struct.drm_buf, ptr %23, i32 0, i32 9
  %146 = ptrtoint ptr %pending.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile i32 0, ptr %pending.i, align 4
  %used.i = getelementptr inbounds %struct.drm_buf, ptr %23, i32 0, i32 3
  %147 = ptrtoint ptr %used.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 0, ptr %used.i, align 4
  %148 = ptrtoint ptr %dispatched60.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 0, ptr %dispatched60.i, align 4
  %call.i = tail call i32 @mga_freelist_put(ptr noundef %dev, ptr noundef %23) #5
  br label %do.body78.i

do.body78.i:                                      ; preds = %if.end73.i, %if.end55.i.do.body78.i_crit_edge
  %wrapped.i = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %65, i32 0, i32 5
  %149 = ptrtoint ptr %wrapped.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load volatile i32, ptr %wrapped.i, align 4
  %and1.i.i = and i32 %150, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool81.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool81.not.i, label %if.then82.i, label %do.body78.i.cleanup_crit_edge

do.body78.i.cleanup_crit_edge:                    ; preds = %do.body78.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then82.i:                                      ; preds = %do.body78.i
  %space.i = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %65, i32 0, i32 4
  %151 = ptrtoint ptr %space.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %space.i, align 4
  %high_mark.i = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %65, i32 0, i32 9
  %153 = ptrtoint ptr %high_mark.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %high_mark.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %152, i32 %154)
  %cmp85.i = icmp ult i32 %152, %154
  br i1 %cmp85.i, label %if.then86.i, label %if.else87.i

if.then86.i:                                      ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mga_do_dma_wrap_start(ptr noundef %65) #5
  br label %cleanup

if.else87.i:                                      ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mga_do_dma_flush(ptr noundef %65) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else87.i, %if.then86.i, %do.body78.i.cleanup_crit_edge, %if.else56.cleanup_crit_edge, %if.end43, %if.then24.cleanup_crit_edge, %lor.lhs.false15.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %lor.lhs.false15.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ -22, %if.end43 ], [ -22, %if.then24.cleanup_crit_edge ], [ -16, %if.else56.cleanup_crit_edge ], [ 0, %do.body78.i.cleanup_crit_edge ], [ 0, %if.then86.i ], [ 0, %if.else87.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mga_dma_iload(ptr noundef %dev, ptr nocapture noundef readonly %data, ptr noundef %file_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 45
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.20) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %file_priv5 = getelementptr inbounds %struct.drm_master, ptr %5, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %file_priv5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %file_priv5, align 4
  %cmp.not = icmp eq ptr %11, %file_priv
  br i1 %cmp.not, label %do.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.mga_dma_iload, i32 noundef %and10, ptr noundef %15, ptr noundef %file_priv) #5
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp14 = icmp slt i32 %17, 0
  br i1 %cmp14, label %do.end.cleanup_crit_edge, label %lor.lhs.false15

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false15:                                  ; preds = %do.end
  %buf_count = getelementptr inbounds %struct.drm_device_dma, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buf_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp17 = icmp sgt i32 %17, %19
  br i1 %cmp17, label %lor.lhs.false15.cleanup_crit_edge, label %if.end19

lor.lhs.false15.cleanup_crit_edge:                ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false15
  %buflist = getelementptr inbounds %struct.drm_device_dma, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %buflist to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buflist, align 4
  %arrayidx = getelementptr ptr, ptr %21, i32 %17
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %dstorg = getelementptr inbounds %struct.drm_mga_iload, ptr %data, i32 0, i32 1
  %24 = ptrtoint ptr %dstorg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dstorg, align 4
  %length = getelementptr inbounds %struct.drm_mga_iload, ptr %data, i32 0, i32 2
  %26 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %length, align 4
  %texture_offset.i = getelementptr inbounds %struct.drm_mga_private, ptr %3, i32 0, i32 27
  %28 = ptrtoint ptr %texture_offset.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %texture_offset.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %25)
  %cmp.i = icmp ugt i32 %29, %25
  br i1 %cmp.i, label %if.end19.if.then.i_crit_edge, label %lor.lhs.false.i

if.end19.if.then.i_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end19
  %add.i = add i32 %27, %25
  %texture_size.i = getelementptr inbounds %struct.drm_mga_private, ptr %3, i32 0, i32 28
  %30 = ptrtoint ptr %texture_size.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %texture_size.i, align 4
  %add2.i = add i32 %31, %29
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %add2.i)
  %cmp3.i = icmp ugt i32 %add.i, %add2.i
  br i1 %cmp3.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %if.end.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end19.if.then.i_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.27, i32 noundef %25) #5
  br label %if.then22

if.end.i:                                         ; preds = %lor.lhs.false.i
  %and.i = and i32 %27, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body25, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.28, i32 noundef %and.i) #5
  br label %if.then22

if.then22:                                        ; preds = %if.then4.i, %if.then.i
  %call23 = tail call i32 @mga_freelist_put(ptr noundef %dev, ptr noundef %23) #5
  br label %cleanup

do.body25:                                        ; preds = %if.end.i
  %wrapped = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %3, i32 0, i32 5
  %32 = ptrtoint ptr %wrapped to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %wrapped, align 4
  %and1.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool27.not = icmp eq i32 %and1.i, 0
  br i1 %tobool27.not, label %do.body25.do.end40_crit_edge, label %if.then28

do.body25.do.end40_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end40

if.then28:                                        ; preds = %do.body25
  %mmio.i = getelementptr inbounds %struct.drm_mga_private, ptr %3, i32 0, i32 30
  %34 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio.i, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %handle.i, align 4
  %add.ptr.i = getelementptr i8, ptr %37, i32 7700
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  %39 = and i32 %38, 16777984
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %39)
  %cmp.i68.not = icmp eq i32 %39, 512
  br i1 %cmp.i68.not, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mga_do_dma_wrap_end(ptr noundef %3) #5
  br label %do.end40

if.else:                                          ; preds = %if.then28
  %space = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %3, i32 0, i32 4
  %40 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %space, align 4
  %high_mark = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %3, i32 0, i32 9
  %42 = ptrtoint ptr %high_mark to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %high_mark, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp34 = icmp ult i32 %41, %43
  br i1 %cmp34, label %if.else.cleanup_crit_edge, label %if.else.do.end40_crit_edge

if.else.do.end40_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end40

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end40:                                         ; preds = %if.else.do.end40_crit_edge, %if.then31, %do.body25.do.end40_crit_edge
  %44 = ptrtoint ptr %dstorg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dstorg, align 4
  %46 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %length, align 4
  tail call fastcc void @mga_dma_dispatch_iload(ptr noundef %dev, ptr noundef %23, i32 noundef %45, i32 noundef %47)
  %sarea_priv = getelementptr inbounds %struct.drm_mga_private, ptr %3, i32 0, i32 1
  %48 = ptrtoint ptr %sarea_priv to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sarea_priv, align 4
  %dirty = getelementptr inbounds %struct._drm_mga_sarea, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dirty, align 4
  %or = or i32 %51, 1
  store i32 %or, ptr %dirty, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end40, %if.else.cleanup_crit_edge, %if.then22, %lor.lhs.false15.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then22 ], [ 0, %do.end40 ], [ -22, %lor.lhs.false15.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ -16, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mga_dma_blit(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data, ptr noundef %file_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %sarea_priv1 = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sarea_priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sarea_priv1, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.20) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %file_priv5 = getelementptr inbounds %struct.drm_master, ptr %5, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %file_priv5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %file_priv5, align 4
  %cmp.not = icmp eq ptr %11, %file_priv
  br i1 %cmp.not, label %do.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.mga_dma_blit, i32 noundef %and10, ptr noundef %15, ptr noundef %file_priv) #5
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false
  %nbox = getelementptr inbounds %struct._drm_mga_sarea, ptr %3, i32 0, i32 7
  %16 = ptrtoint ptr %nbox to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nbox, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %17)
  %cmp14 = icmp ugt i32 %17, 8
  br i1 %cmp14, label %if.then15, label %do.end.if.end17_crit_edge

do.end.if.end17_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then15:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %nbox to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 8, ptr %nbox, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %do.end.if.end17_crit_edge
  %srcorg = getelementptr inbounds %struct._drm_mga_blit, ptr %data, i32 0, i32 1
  %19 = ptrtoint ptr %srcorg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %srcorg, align 4
  %dstorg = getelementptr inbounds %struct._drm_mga_blit, ptr %data, i32 0, i32 2
  %21 = ptrtoint ptr %dstorg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dstorg, align 4
  %and.i = and i32 %20, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 1
  %and1.i56 = and i32 %22, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and1.i56)
  %cmp2.i = icmp eq i32 %and1.i56, 1
  %or.cond.i = or i1 %cmp.i, %cmp2.i
  br i1 %or.cond.i, label %mga_verify_blit.exit, label %do.body21

mga_verify_blit.exit:                             ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.29, i32 noundef %20, i32 noundef %22) #5
  br label %cleanup

do.body21:                                        ; preds = %if.end17
  %wrapped = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %wrapped to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %wrapped, align 4
  %and1.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool23.not = icmp eq i32 %and1.i, 0
  br i1 %tobool23.not, label %do.body21.do.end36_crit_edge, label %if.then24

do.body21.do.end36_crit_edge:                     ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end36

if.then24:                                        ; preds = %do.body21
  %mmio.i = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 30
  %25 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio.i, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %handle.i, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 7700
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  %30 = and i32 %29, 16777984
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %30)
  %cmp.i57.not = icmp eq i32 %30, 512
  br i1 %cmp.i57.not, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mga_do_dma_wrap_end(ptr noundef %1) #5
  br label %do.end36

if.else:                                          ; preds = %if.then24
  %space = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %space, align 4
  %high_mark = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %1, i32 0, i32 9
  %33 = ptrtoint ptr %high_mark to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %high_mark, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp30 = icmp ult i32 %32, %34
  br i1 %cmp30, label %if.else.cleanup_crit_edge, label %if.else.do.end36_crit_edge

if.else.do.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end36

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end36:                                         ; preds = %if.else.do.end36_crit_edge, %if.then27, %do.body21.do.end36_crit_edge
  %35 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_private, align 4
  %sarea_priv1.i = getelementptr inbounds %struct.drm_mga_private, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %sarea_priv1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sarea_priv1.i, align 4
  %boxes.i = getelementptr inbounds %struct._drm_mga_sarea, ptr %38, i32 0, i32 6
  %nbox2.i = getelementptr inbounds %struct._drm_mga_sarea, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %nbox2.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nbox2.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.20) #5
  %41 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %36, align 4
  %tail.i = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %36, i32 0, i32 3
  %43 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tail.i, align 4
  %add.ptr.i58 = getelementptr i8, ptr %42, i32 %44
  %45 = ptrtoint ptr %add.ptr.i58 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 -1819077355, ptr %add.ptr.i58, align 4
  %add.ptr12.i = getelementptr i8, ptr %add.ptr.i58, i32 4
  %46 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile i32 0, ptr %add.ptr12.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %add.ptr.i58, i32 8
  %47 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 0, ptr %add.ptr17.i, align 4
  %add.ptr22.i = getelementptr i8, ptr %add.ptr.i58, i32 12
  %48 = ptrtoint ptr %add.ptr22.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 28928, ptr %add.ptr22.i, align 4
  %add.ptr27.i = getelementptr i8, ptr %add.ptr.i58, i32 16
  %49 = ptrtoint ptr %add.ptr27.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 28672, ptr %add.ptr27.i, align 4
  %add.i = add i32 %44, 20
  %add.ptr34.i = getelementptr i8, ptr %42, i32 %add.i
  %50 = ptrtoint ptr %add.ptr34.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 -1364392192, ptr %add.ptr34.i, align 4
  %add.ptr40.i = getelementptr i8, ptr %add.ptr34.i, i32 4
  %51 = ptrtoint ptr %add.ptr40.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile i32 -2079563768, ptr %add.ptr40.i, align 4
  %52 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %data, align 4
  %add.ptr45.i = getelementptr i8, ptr %add.ptr34.i, i32 8
  %54 = ptrtoint ptr %add.ptr45.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 %53, ptr %add.ptr45.i, align 4
  %55 = ptrtoint ptr %srcorg to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %srcorg, align 4
  %add.ptr50.i = getelementptr i8, ptr %add.ptr34.i, i32 12
  %57 = ptrtoint ptr %add.ptr50.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile i32 %56, ptr %add.ptr50.i, align 4
  %58 = ptrtoint ptr %dstorg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dstorg, align 4
  %add.ptr55.i = getelementptr i8, ptr %add.ptr34.i, i32 16
  %60 = ptrtoint ptr %add.ptr55.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile i32 %59, ptr %add.ptr55.i, align 4
  %add58.i = add i32 %44, 40
  %add.ptr63.i = getelementptr i8, ptr %42, i32 %add58.i
  %61 = ptrtoint ptr %add.ptr63.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 589103382, ptr %add.ptr63.i, align 4
  %add.ptr69.i = getelementptr i8, ptr %add.ptr63.i, i32 4
  %62 = ptrtoint ptr %add.ptr69.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile i32 0, ptr %add.ptr69.i, align 4
  %maccess.i = getelementptr inbounds %struct.drm_mga_private, ptr %36, i32 0, i32 14
  %63 = ptrtoint ptr %maccess.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %maccess.i, align 4
  %add.ptr74.i = getelementptr i8, ptr %add.ptr63.i, i32 8
  %65 = ptrtoint ptr %add.ptr74.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile i32 %64, ptr %add.ptr74.i, align 4
  %ydir.i = getelementptr inbounds %struct._drm_mga_blit, ptr %data, i32 0, i32 10
  %66 = ptrtoint ptr %ydir.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ydir.i, align 4
  %src_pitch.i = getelementptr inbounds %struct._drm_mga_blit, ptr %data, i32 0, i32 3
  %68 = ptrtoint ptr %src_pitch.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %src_pitch.i, align 4
  %mul.i = mul i32 %69, %67
  %add.ptr79.i = getelementptr i8, ptr %add.ptr63.i, i32 12
  %70 = ptrtoint ptr %add.ptr79.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile i32 %mul.i, ptr %add.ptr79.i, align 4
  %dst_pitch.i = getelementptr inbounds %struct._drm_mga_blit, ptr %data, i32 0, i32 4
  %71 = ptrtoint ptr %dst_pitch.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %dst_pitch.i, align 4
  %add.ptr84.i = getelementptr i8, ptr %add.ptr63.i, i32 16
  %73 = ptrtoint ptr %add.ptr84.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile i32 %72, ptr %add.ptr84.i, align 4
  %add87.i = add i32 %44, 60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp284.not.i = icmp eq i32 %40, 0
  br i1 %cmp284.not.i, label %do.end36.mga_dma_dispatch_blit.exit_crit_edge, label %for.body.lr.ph.i

do.end36.mga_dma_dispatch_blit.exit_crit_edge:    ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %mga_dma_dispatch_blit.exit

for.body.lr.ph.i:                                 ; preds = %do.end36
  %delta_sx.i = getelementptr inbounds %struct._drm_mga_blit, ptr %data, i32 0, i32 5
  %delta_sy.i = getelementptr inbounds %struct._drm_mga_blit, ptr %data, i32 0, i32 6
  %delta_dx.i = getelementptr inbounds %struct._drm_mga_blit, ptr %data, i32 0, i32 7
  %delta_dy.i = getelementptr inbounds %struct._drm_mga_blit, ptr %data, i32 0, i32 8
  %height.i = getelementptr inbounds %struct._drm_mga_blit, ptr %data, i32 0, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %write.0286.i = phi i32 [ %add87.i, %for.body.lr.ph.i ], [ %add153.i, %if.end.i.for.body.i_crit_edge ]
  %i.0285.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.drm_clip_rect, ptr %boxes.i, i32 %i.0285.i
  %74 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx.i, align 2
  %conv.i59 = zext i16 %75 to i32
  %76 = ptrtoint ptr %delta_sx.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %delta_sx.i, align 4
  %add90.i = add i32 %77, %conv.i59
  %y1.i = getelementptr %struct.drm_clip_rect, ptr %boxes.i, i32 %i.0285.i, i32 1
  %78 = ptrtoint ptr %y1.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %y1.i, align 2
  %conv92.i = zext i16 %79 to i32
  %80 = ptrtoint ptr %delta_sy.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %delta_sy.i, align 4
  %add93.i = add i32 %81, %conv92.i
  %82 = ptrtoint ptr %delta_dx.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %delta_dx.i, align 4
  %add97.i = add i32 %83, %conv.i59
  %84 = ptrtoint ptr %delta_dy.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %delta_dy.i, align 4
  %add101.i = add i32 %85, %conv92.i
  %y2.i = getelementptr %struct.drm_clip_rect, ptr %boxes.i, i32 %i.0285.i, i32 3
  %86 = ptrtoint ptr %y2.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %y2.i, align 2
  %conv103.i = zext i16 %87 to i32
  %sub.i = sub nsw i32 %conv103.i, %conv92.i
  %x2.i = getelementptr %struct.drm_clip_rect, ptr %boxes.i, i32 %i.0285.i, i32 2
  %88 = ptrtoint ptr %x2.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %x2.i, align 2
  %conv108.i = zext i16 %89 to i32
  %90 = xor i32 %conv.i59, -1
  %sub113.i = add nsw i32 %conv108.i, %90
  %91 = ptrtoint ptr %ydir.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ydir.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %92)
  %cmp116.i = icmp eq i32 %92, -1
  br i1 %cmp116.i, label %if.then.i60, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i60:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %93 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %height.i, align 4
  %95 = xor i32 %add93.i, -1
  %sub119.i = add i32 %94, %95
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i60, %for.body.i.if.end.i_crit_edge
  %srcy.0.i = phi i32 [ %sub119.i, %if.then.i60 ], [ %add93.i, %for.body.i.if.end.i_crit_edge ]
  %96 = ptrtoint ptr %src_pitch.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %src_pitch.i, align 4
  %mul121.i = mul i32 %97, %srcy.0.i
  %add122.i = add i32 %add90.i, %mul121.i
  %add.ptr125.i = getelementptr i8, ptr %42, i32 %write.0286.i
  %98 = ptrtoint ptr %add.ptr125.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile i32 1646336792, ptr %add.ptr125.i, align 4
  %add130.i = add i32 %add122.i, %sub113.i
  %add.ptr132.i = getelementptr i8, ptr %add.ptr125.i, i32 4
  %99 = ptrtoint ptr %add.ptr132.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile i32 %add130.i, ptr %add.ptr132.i, align 4
  %add.ptr137.i = getelementptr i8, ptr %add.ptr125.i, i32 8
  %100 = ptrtoint ptr %add.ptr137.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile i32 %add122.i, ptr %add.ptr137.i, align 4
  %add141.i = add i32 %sub113.i, %add97.i
  %shl.i = shl i32 %add141.i, 16
  %and.i61 = and i32 %add97.i, 65535
  %or.i = or i32 %shl.i, %and.i61
  %add.ptr143.i = getelementptr i8, ptr %add.ptr125.i, i32 12
  %101 = ptrtoint ptr %add.ptr143.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile i32 %or.i, ptr %add.ptr143.i, align 4
  %shl147.i = shl i32 %add101.i, 16
  %or148.i = or i32 %sub.i, %shl147.i
  %add.ptr150.i = getelementptr i8, ptr %add.ptr125.i, i32 16
  %102 = ptrtoint ptr %add.ptr150.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile i32 %or148.i, ptr %add.ptr150.i, align 4
  %add153.i = add i32 %write.0286.i, 20
  %inc.i = add nuw i32 %i.0285.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %40
  br i1 %exitcond.not.i, label %if.end.i.mga_dma_dispatch_blit.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end.i.mga_dma_dispatch_blit.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mga_dma_dispatch_blit.exit

mga_dma_dispatch_blit.exit:                       ; preds = %if.end.i.mga_dma_dispatch_blit.exit_crit_edge, %do.end36.mga_dma_dispatch_blit.exit_crit_edge
  %write.0.lcssa.i = phi i32 [ %add87.i, %do.end36.mga_dma_dispatch_blit.exit_crit_edge ], [ %add153.i, %if.end.i.mga_dma_dispatch_blit.exit_crit_edge ]
  %add.ptr158.i = getelementptr i8, ptr %42, i32 %write.0.lcssa.i
  %103 = ptrtoint ptr %add.ptr158.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile i32 2295573, ptr %add.ptr158.i, align 4
  %add.ptr164.i = getelementptr i8, ptr %add.ptr158.i, i32 4
  %104 = ptrtoint ptr %add.ptr164.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile i32 0, ptr %add.ptr164.i, align 4
  %plnwt.i = getelementptr inbounds %struct.drm_mga_context_regs_t, ptr %38, i32 0, i32 2
  %105 = ptrtoint ptr %plnwt.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %plnwt.i, align 4
  %add.ptr169.i = getelementptr i8, ptr %add.ptr158.i, i32 8
  %107 = ptrtoint ptr %add.ptr169.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile i32 %106, ptr %add.ptr169.i, align 4
  %front_pitch.i = getelementptr inbounds %struct.drm_mga_private, ptr %36, i32 0, i32 21
  %108 = ptrtoint ptr %front_pitch.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %front_pitch.i, align 4
  %add.ptr174.i = getelementptr i8, ptr %add.ptr158.i, i32 12
  %110 = ptrtoint ptr %add.ptr174.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile i32 %109, ptr %add.ptr174.i, align 4
  %dwgctl.i = getelementptr inbounds %struct.drm_mga_context_regs_t, ptr %38, i32 0, i32 3
  %111 = ptrtoint ptr %dwgctl.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %dwgctl.i, align 4
  %add.ptr179.i = getelementptr i8, ptr %add.ptr158.i, i32 16
  %113 = ptrtoint ptr %add.ptr179.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile i32 %112, ptr %add.ptr179.i, align 4
  %add182.i = add i32 %write.0.lcssa.i, 20
  %114 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %add182.i, ptr %tail.i, align 4
  %115 = ptrtoint ptr %sarea_priv1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %sarea_priv1, align 4
  %dirty = getelementptr inbounds %struct._drm_mga_sarea, ptr %116, i32 0, i32 4
  %117 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %dirty, align 4
  %or = or i32 %118, 1
  store i32 %or, ptr %dirty, align 4
  br label %cleanup

cleanup:                                          ; preds = %mga_dma_dispatch_blit.exit, %if.else.cleanup_crit_edge, %mga_verify_blit.exit, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %mga_dma_dispatch_blit.exit ], [ -22, %mga_verify_blit.exit ], [ -16, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mga_set_fence(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %data, ptr nocapture noundef readnone %file_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = tail call i32 @llvm.read_register.i32(metadata !76) #5
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 68
  %6 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid.i, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %7) #5
  %next_fence_to_post = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 18
  %8 = ptrtoint ptr %next_fence_to_post to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %next_fence_to_post, align 4
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %data, align 4
  %11 = load i32, ptr %next_fence_to_post, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %next_fence_to_post, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %tail = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tail, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 %15
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 -1844112107, ptr %add.ptr, align 4
  %add.ptr12 = getelementptr i8, ptr %add.ptr, i32 4
  %17 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 0, ptr %add.ptr12, align 4
  %add.ptr17 = getelementptr i8, ptr %add.ptr, i32 8
  %18 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 0, ptr %add.ptr17, align 4
  %add.ptr22 = getelementptr i8, ptr %add.ptr, i32 12
  %19 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 0, ptr %add.ptr22, align 4
  %add.ptr27 = getelementptr i8, ptr %add.ptr, i32 16
  %20 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 0, ptr %add.ptr27, align 4
  %add = add i32 %15, 20
  store i32 %add, ptr %tail, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mga_wait_fence(ptr noundef %dev, ptr noundef %data, ptr nocapture noundef readnone %file_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = tail call i32 @llvm.read_register.i32(metadata !76) #5
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 68
  %6 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid.i, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %7) #5
  tail call void @mga_driver_fence_wait(ptr noundef %dev, ptr noundef %data) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mga_dma_bootstrap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mga_do_dma_wrap_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mga_do_dma_wrap_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mga_do_dma_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mga_verify_state(ptr nocapture noundef readonly %dev_priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sarea_priv1 = getelementptr inbounds %struct.drm_mga_private, ptr %dev_priv, i32 0, i32 1
  %0 = ptrtoint ptr %sarea_priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sarea_priv1, align 4
  %dirty2 = getelementptr inbounds %struct._drm_mga_sarea, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dirty2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dirty2, align 4
  %nbox = getelementptr inbounds %struct._drm_mga_sarea, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %nbox to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nbox, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp = icmp ugt i32 %5, 8
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %nbox to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8, ptr %nbox, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then4:                                         ; preds = %if.end
  %7 = ptrtoint ptr %sarea_priv1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sarea_priv1, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %front_offset.i = getelementptr inbounds %struct.drm_mga_private, ptr %dev_priv, i32 0, i32 20
  %11 = ptrtoint ptr %front_offset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %front_offset.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.not.i = icmp eq i32 %10, %12
  br i1 %cmp.not.i, label %if.then4.if.end5_crit_edge, label %land.lhs.true.i

if.then4.if.end5_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

land.lhs.true.i:                                  ; preds = %if.then4
  %back_offset.i = getelementptr inbounds %struct.drm_mga_private, ptr %dev_priv, i32 0, i32 22
  %13 = ptrtoint ptr %back_offset.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %back_offset.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %14)
  %cmp3.not.i = icmp eq i32 %10, %14
  br i1 %cmp3.not.i, label %land.lhs.true.i.if.end5_crit_edge, label %if.then.i

land.lhs.true.i.if.end5_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %10, i32 noundef %12, i32 noundef %14) #5
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %8, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then.i, %land.lhs.true.i.if.end5_crit_edge, %if.then4.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.if.end5_crit_edge ], [ -22, %if.then.i ], [ 0, %land.lhs.true.i.if.end5_crit_edge ], [ 0, %if.then4.if.end5_crit_edge ]
  %and6 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end5.if.end11_crit_edge, label %if.then8

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then8:                                         ; preds = %if.end5
  %16 = ptrtoint ptr %sarea_priv1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sarea_priv1, align 4
  %texorg.i = getelementptr %struct._drm_mga_sarea, ptr %17, i32 0, i32 2, i32 0, i32 4
  %18 = ptrtoint ptr %texorg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %texorg.i, align 4
  %and.i = and i32 %19, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 1
  br i1 %cmp.i, label %if.then.i55, label %if.then8.mga_verify_tex.exit_crit_edge

if.then8.mga_verify_tex.exit_crit_edge:           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %mga_verify_tex.exit

if.then.i55:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.24, i32 noundef %19, i32 noundef 0) #5
  %20 = ptrtoint ptr %texorg.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %texorg.i, align 4
  br label %mga_verify_tex.exit

mga_verify_tex.exit:                              ; preds = %if.then.i55, %if.then8.mga_verify_tex.exit_crit_edge
  %retval.0.i56 = phi i32 [ -22, %if.then.i55 ], [ 0, %if.then8.mga_verify_tex.exit_crit_edge ]
  %or10 = or i32 %retval.0.i56, %ret.0
  br label %if.end11

if.end11:                                         ; preds = %mga_verify_tex.exit, %if.end5.if.end11_crit_edge
  %ret.1 = phi i32 [ %or10, %mga_verify_tex.exit ], [ %ret.0, %if.end5.if.end11_crit_edge ]
  %chipset = getelementptr inbounds %struct.drm_mga_private, ptr %dev_priv, i32 0, i32 6
  %21 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chipset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp12 = icmp sgt i32 %22, 1
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end11
  %and14 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.then13.if.end19_crit_edge, label %if.then16

if.then13.if.end19_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then16:                                        ; preds = %if.then13
  %23 = ptrtoint ptr %sarea_priv1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sarea_priv1, align 4
  %texorg.i58 = getelementptr %struct._drm_mga_sarea, ptr %24, i32 0, i32 2, i32 1, i32 4
  %25 = ptrtoint ptr %texorg.i58 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %texorg.i58, align 4
  %and.i59 = and i32 %26, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i59)
  %cmp.i60 = icmp eq i32 %and.i59, 1
  br i1 %cmp.i60, label %if.then.i61, label %if.then16.mga_verify_tex.exit63_crit_edge

if.then16.mga_verify_tex.exit63_crit_edge:        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %mga_verify_tex.exit63

if.then.i61:                                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.24, i32 noundef %26, i32 noundef 1) #5
  %27 = ptrtoint ptr %texorg.i58 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %texorg.i58, align 4
  br label %mga_verify_tex.exit63

mga_verify_tex.exit63:                            ; preds = %if.then.i61, %if.then16.mga_verify_tex.exit63_crit_edge
  %retval.0.i62 = phi i32 [ -22, %if.then.i61 ], [ 0, %if.then16.mga_verify_tex.exit63_crit_edge ]
  %or18 = or i32 %retval.0.i62, %ret.1
  br label %if.end19

if.end19:                                         ; preds = %mga_verify_tex.exit63, %if.then13.if.end19_crit_edge
  %ret.2 = phi i32 [ %or18, %mga_verify_tex.exit63 ], [ %ret.1, %if.then13.if.end19_crit_edge ]
  %and20 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.if.end34_crit_edge, label %if.end19.if.end34.sink.split_crit_edge

if.end19.if.end34.sink.split_crit_edge:           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34.sink.split

if.end19.if.end34_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.else:                                          ; preds = %if.end11
  %and26 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.else.if.end34_crit_edge, label %if.else.if.end34.sink.split_crit_edge

if.else.if.end34.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34.sink.split

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.end34.sink.split:                              ; preds = %if.else.if.end34.sink.split_crit_edge, %if.end19.if.end34.sink.split_crit_edge
  %.sink64 = phi i32 [ 16, %if.end19.if.end34.sink.split_crit_edge ], [ 8, %if.else.if.end34.sink.split_crit_edge ]
  %ret.1.sink = phi i32 [ %ret.2, %if.end19.if.end34.sink.split_crit_edge ], [ %ret.1, %if.else.if.end34.sink.split_crit_edge ]
  %warp_pipe29 = getelementptr inbounds %struct._drm_mga_sarea, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %warp_pipe29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %warp_pipe29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %.sink64)
  %cmp30 = icmp ugt i32 %29, %.sink64
  %conv31 = zext i1 %cmp30 to i32
  %or32 = or i32 %ret.1.sink, %conv31
  br label %if.end34

if.end34:                                         ; preds = %if.end34.sink.split, %if.else.if.end34_crit_edge, %if.end19.if.end34_crit_edge
  %ret.3 = phi i32 [ %ret.2, %if.end19.if.end34_crit_edge ], [ %ret.1, %if.else.if.end34_crit_edge ], [ %or32, %if.end34.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3)
  %cmp35 = icmp eq i32 %ret.3, 0
  %conv36 = zext i1 %cmp35 to i32
  ret i32 %conv36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mga_freelist_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mga_g400_emit_state(ptr nocapture noundef %dev_priv) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sarea_priv1 = getelementptr inbounds %struct.drm_mga_private, ptr %dev_priv, i32 0, i32 1
  %0 = ptrtoint ptr %sarea_priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sarea_priv1, align 4
  %dirty2 = getelementptr inbounds %struct._drm_mga_sarea, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dirty2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dirty2, align 4
  %warp_pipe = getelementptr inbounds %struct._drm_mga_sarea, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %warp_pipe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %warp_pipe, align 4
  %and = and i32 %5, 8
  %warp_pipe4 = getelementptr inbounds %struct.drm_mga_private, ptr %dev_priv, i32 0, i32 4
  %6 = ptrtoint ptr %warp_pipe4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %warp_pipe4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp eq i32 %5, %7
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_priv, align 4
  %tail.i = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %dev_priv, i32 0, i32 3
  %10 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tail.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %11
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 353703286, ptr %add.ptr.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %add.ptr.i, i32 4
  %13 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 0, ptr %add.ptr11.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %add.ptr.i, i32 8
  %14 = ptrtoint ptr %add.ptr16.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 0, ptr %add.ptr16.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %add.ptr.i, i32 12
  %15 = ptrtoint ptr %add.ptr21.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 0, ptr %add.ptr21.i, align 4
  %add.ptr26.i = getelementptr i8, ptr %add.ptr.i, i32 16
  %16 = ptrtoint ptr %add.ptr26.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 0, ptr %add.ptr26.i, align 4
  %add.i = add i32 %11, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not.i = icmp eq i32 %and, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.body32.i

do.body32.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr33.i = getelementptr i8, ptr %9, i32 %add.i
  %17 = ptrtoint ptr %add.ptr33.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 353703283, ptr %add.ptr33.i, align 4
  %add.ptr39.i = getelementptr i8, ptr %add.ptr33.i, i32 4
  %18 = ptrtoint ptr %add.ptr39.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 7689, ptr %add.ptr39.i, align 4
  %add.ptr44.i = getelementptr i8, ptr %add.ptr33.i, i32 8
  %19 = ptrtoint ptr %add.ptr44.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 0, ptr %add.ptr44.i, align 4
  %add.ptr49.i = getelementptr i8, ptr %add.ptr33.i, i32 12
  %20 = ptrtoint ptr %add.ptr49.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 0, ptr %add.ptr49.i, align 4
  %add.ptr54.i = getelementptr i8, ptr %add.ptr33.i, i32 16
  %21 = ptrtoint ptr %add.ptr54.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 0, ptr %add.ptr54.i, align 4
  %add57.i = add i32 %11, 40
  %add.ptr62.i = getelementptr i8, ptr %9, i32 %add57.i
  %22 = ptrtoint ptr %add.ptr62.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 1970632053, ptr %add.ptr62.i, align 4
  %add.ptr68.i = getelementptr i8, ptr %add.ptr62.i, i32 4
  %23 = ptrtoint ptr %add.ptr68.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 0, ptr %add.ptr68.i, align 4
  %add.ptr73.i = getelementptr i8, ptr %add.ptr62.i, i32 8
  %24 = ptrtoint ptr %add.ptr73.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 0, ptr %add.ptr73.i, align 4
  %add.ptr78.i = getelementptr i8, ptr %add.ptr62.i, i32 12
  %25 = ptrtoint ptr %add.ptr78.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 0, ptr %add.ptr78.i, align 4
  %add.ptr83.i = getelementptr i8, ptr %add.ptr62.i, i32 16
  %26 = ptrtoint ptr %add.ptr83.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 503316480, ptr %add.ptr83.i, align 4
  %add86.i = add i32 %11, 60
  br label %mga_g400_emit_pipe.exit

if.else.i:                                        ; preds = %if.then
  %27 = ptrtoint ptr %warp_pipe4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %warp_pipe4, align 4
  %and90.i = and i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90.i)
  %tobool91.not.i = icmp eq i32 %and90.i, 0
  br i1 %tobool91.not.i, label %if.else.i.do.body181.i_crit_edge, label %do.body94.i

if.else.i.do.body181.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body181.i

do.body94.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr95.i = getelementptr i8, ptr %9, i32 %add.i
  %29 = ptrtoint ptr %add.ptr95.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 2828836, ptr %add.ptr95.i, align 4
  %add.ptr101.i = getelementptr i8, ptr %add.ptr95.i, i32 4
  %30 = ptrtoint ptr %add.ptr101.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 0, ptr %add.ptr101.i, align 4
  %add.ptr106.i = getelementptr i8, ptr %add.ptr95.i, i32 8
  %31 = ptrtoint ptr %add.ptr106.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 0, ptr %add.ptr106.i, align 4
  %add.ptr111.i = getelementptr i8, ptr %add.ptr95.i, i32 12
  %32 = ptrtoint ptr %add.ptr111.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 1, ptr %add.ptr111.i, align 4
  %add.ptr116.i = getelementptr i8, ptr %add.ptr95.i, i32 16
  %33 = ptrtoint ptr %add.ptr116.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 16527478, ptr %add.ptr116.i, align 4
  %add119.i = add i32 %11, 40
  %add.ptr124.i = getelementptr i8, ptr %9, i32 %add119.i
  %34 = ptrtoint ptr %add.ptr124.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 1469027159, ptr %add.ptr124.i, align 4
  %add.ptr130.i = getelementptr i8, ptr %add.ptr124.i, i32 4
  %35 = ptrtoint ptr %add.ptr130.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 1, ptr %add.ptr130.i, align 4
  %add.ptr135.i = getelementptr i8, ptr %add.ptr124.i, i32 8
  %36 = ptrtoint ptr %add.ptr135.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 28672, ptr %add.ptr135.i, align 4
  %add.ptr140.i = getelementptr i8, ptr %add.ptr124.i, i32 12
  %37 = ptrtoint ptr %add.ptr140.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 32768, ptr %add.ptr140.i, align 4
  %add.ptr145.i = getelementptr i8, ptr %add.ptr124.i, i32 16
  %38 = ptrtoint ptr %add.ptr145.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile i32 0, ptr %add.ptr145.i, align 4
  %add148.i = add i32 %11, 60
  %add.ptr153.i = getelementptr i8, ptr %9, i32 %add148.i
  %39 = ptrtoint ptr %add.ptr153.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 361715599, ptr %add.ptr153.i, align 4
  %add.ptr159.i = getelementptr i8, ptr %add.ptr153.i, i32 4
  %40 = ptrtoint ptr %add.ptr159.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 32896, ptr %add.ptr159.i, align 4
  %add.ptr164.i = getelementptr i8, ptr %add.ptr153.i, i32 8
  %41 = ptrtoint ptr %add.ptr164.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 0, ptr %add.ptr164.i, align 4
  %add.ptr169.i = getelementptr i8, ptr %add.ptr153.i, i32 12
  %42 = ptrtoint ptr %add.ptr169.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile i32 32768, ptr %add.ptr169.i, align 4
  %add.ptr174.i = getelementptr i8, ptr %add.ptr153.i, i32 16
  %43 = ptrtoint ptr %add.ptr174.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile i32 0, ptr %add.ptr174.i, align 4
  %add177.i = add i32 %11, 80
  br label %do.body181.i

do.body181.i:                                     ; preds = %do.body94.i, %if.else.i.do.body181.i_crit_edge
  %write.0.i = phi i32 [ %add177.i, %do.body94.i ], [ %add.i, %if.else.i.do.body181.i_crit_edge ]
  %add.ptr182.i = getelementptr i8, ptr %9, i32 %write.0.i
  %44 = ptrtoint ptr %add.ptr182.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 353703283, ptr %add.ptr182.i, align 4
  %add.ptr188.i = getelementptr i8, ptr %add.ptr182.i, i32 4
  %45 = ptrtoint ptr %add.ptr188.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 6151, ptr %add.ptr188.i, align 4
  %add.ptr193.i = getelementptr i8, ptr %add.ptr182.i, i32 8
  %46 = ptrtoint ptr %add.ptr193.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile i32 0, ptr %add.ptr193.i, align 4
  %add.ptr198.i = getelementptr i8, ptr %add.ptr182.i, i32 12
  %47 = ptrtoint ptr %add.ptr198.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 0, ptr %add.ptr198.i, align 4
  %add.ptr203.i = getelementptr i8, ptr %add.ptr182.i, i32 16
  %48 = ptrtoint ptr %add.ptr203.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 0, ptr %add.ptr203.i, align 4
  %add206.i = add i32 %write.0.i, 20
  %add.ptr211.i = getelementptr i8, ptr %9, i32 %add206.i
  %49 = ptrtoint ptr %add.ptr211.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 1970632053, ptr %add.ptr211.i, align 4
  %add.ptr217.i = getelementptr i8, ptr %add.ptr211.i, i32 4
  %50 = ptrtoint ptr %add.ptr217.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 0, ptr %add.ptr217.i, align 4
  %add.ptr222.i = getelementptr i8, ptr %add.ptr211.i, i32 8
  %51 = ptrtoint ptr %add.ptr222.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile i32 0, ptr %add.ptr222.i, align 4
  %add.ptr227.i = getelementptr i8, ptr %add.ptr211.i, i32 12
  %52 = ptrtoint ptr %add.ptr227.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile i32 0, ptr %add.ptr227.i, align 4
  %add.ptr232.i = getelementptr i8, ptr %add.ptr211.i, i32 16
  %53 = ptrtoint ptr %add.ptr232.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 402653184, ptr %add.ptr232.i, align 4
  %add235.i = add i32 %write.0.i, 40
  br label %mga_g400_emit_pipe.exit

mga_g400_emit_pipe.exit:                          ; preds = %do.body181.i, %do.body32.i
  %write.1.i = phi i32 [ %add86.i, %do.body32.i ], [ %add235.i, %do.body181.i ]
  %add.ptr241.i = getelementptr i8, ptr %9, i32 %write.1.i
  %54 = ptrtoint ptr %add.ptr241.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 368605297, ptr %add.ptr241.i, align 4
  %add.ptr247.i = getelementptr i8, ptr %add.ptr241.i, i32 4
  %55 = ptrtoint ptr %add.ptr247.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile i32 0, ptr %add.ptr247.i, align 4
  %add.ptr252.i = getelementptr i8, ptr %add.ptr241.i, i32 8
  %56 = ptrtoint ptr %add.ptr252.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile i32 0, ptr %add.ptr252.i, align 4
  %add.ptr257.i = getelementptr i8, ptr %add.ptr241.i, i32 12
  %57 = ptrtoint ptr %add.ptr257.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile i32 1179123712, ptr %add.ptr257.i, align 4
  %add.ptr262.i = getelementptr i8, ptr %add.ptr241.i, i32 16
  %58 = ptrtoint ptr %add.ptr262.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile i32 0, ptr %add.ptr262.i, align 4
  %add265.i = add i32 %write.1.i, 20
  %add.ptr270.i = getelementptr i8, ptr %9, i32 %add265.i
  %59 = ptrtoint ptr %add.ptr270.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile i32 -34211343, ptr %add.ptr270.i, align 4
  %add.ptr276.i = getelementptr i8, ptr %add.ptr270.i, i32 4
  %60 = ptrtoint ptr %add.ptr276.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile i32 0, ptr %add.ptr276.i, align 4
  %add.ptr281.i = getelementptr i8, ptr %add.ptr270.i, i32 8
  %61 = ptrtoint ptr %add.ptr281.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 0, ptr %add.ptr281.i, align 4
  %add.ptr286.i = getelementptr i8, ptr %add.ptr270.i, i32 12
  %62 = ptrtoint ptr %add.ptr286.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile i32 0, ptr %add.ptr286.i, align 4
  %add.ptr291.i = getelementptr i8, ptr %add.ptr270.i, i32 16
  %63 = ptrtoint ptr %add.ptr291.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile i32 0, ptr %add.ptr291.i, align 4
  %add294.i = add i32 %write.1.i, 40
  %add.ptr299.i = getelementptr i8, ptr %9, i32 %add294.i
  %64 = ptrtoint ptr %add.ptr299.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile i32 -51052810, ptr %add.ptr299.i, align 4
  %add.ptr305.i = getelementptr i8, ptr %add.ptr299.i, i32 4
  %65 = ptrtoint ptr %add.ptr305.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile i32 64, ptr %add.ptr305.i, align 4
  %add.ptr310.i = getelementptr i8, ptr %add.ptr299.i, i32 8
  %66 = ptrtoint ptr %add.ptr310.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile i32 64, ptr %add.ptr310.i, align 4
  %add.ptr315.i = getelementptr i8, ptr %add.ptr299.i, i32 12
  %67 = ptrtoint ptr %add.ptr315.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile i32 64, ptr %add.ptr315.i, align 4
  %add.ptr320.i = getelementptr i8, ptr %add.ptr299.i, i32 16
  %68 = ptrtoint ptr %add.ptr320.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile i32 64, ptr %add.ptr320.i, align 4
  %add323.i = add i32 %write.1.i, 60
  %add.ptr328.i = getelementptr i8, ptr %9, i32 %add323.i
  %69 = ptrtoint ptr %add.ptr328.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile i32 1981093141, ptr %add.ptr328.i, align 4
  %add.ptr334.i = getelementptr i8, ptr %add.ptr328.i, i32 4
  %70 = ptrtoint ptr %add.ptr334.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile i32 -1, ptr %add.ptr334.i, align 4
  %add.ptr339.i = getelementptr i8, ptr %add.ptr328.i, i32 8
  %71 = ptrtoint ptr %add.ptr339.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile i32 -1, ptr %add.ptr339.i, align 4
  %add.ptr344.i = getelementptr i8, ptr %add.ptr328.i, i32 12
  %72 = ptrtoint ptr %add.ptr344.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile i32 -1, ptr %add.ptr344.i, align 4
  %arrayidx.i = getelementptr %struct.drm_mga_private, ptr %dev_priv, i32 0, i32 5, i32 %5
  %73 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.i, align 4
  %wagp_enable.i = getelementptr inbounds %struct.drm_mga_private, ptr %dev_priv, i32 0, i32 10
  %75 = ptrtoint ptr %wagp_enable.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %wagp_enable.i, align 4
  %or.i = or i32 %74, %76
  %or348.i = or i32 %or.i, 3
  %add.ptr350.i = getelementptr i8, ptr %add.ptr328.i, i32 16
  %77 = ptrtoint ptr %add.ptr350.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile i32 %or348.i, ptr %add.ptr350.i, align 4
  %add353.i = add i32 %write.1.i, 80
  %78 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %add353.i, ptr %tail.i, align 4
  %79 = ptrtoint ptr %warp_pipe to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %warp_pipe, align 4
  %81 = ptrtoint ptr %warp_pipe4 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %warp_pipe4, align 4
  br label %if.end

if.end:                                           ; preds = %mga_g400_emit_pipe.exit, %entry.if.end_crit_edge
  %and7 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not = icmp eq i32 %and7, 0
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %if.then8

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %82 = ptrtoint ptr %sarea_priv1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %sarea_priv1, align 4
  %84 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev_priv, align 4
  %tail.i40 = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %dev_priv, i32 0, i32 3
  %86 = ptrtoint ptr %tail.i40 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %tail.i40, align 4
  %add.ptr.i41 = getelementptr i8, ptr %85, i32 %87
  %88 = ptrtoint ptr %add.ptr.i41 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile i32 459182, ptr %add.ptr.i41, align 4
  %89 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %83, align 4
  %add.ptr11.i42 = getelementptr i8, ptr %add.ptr.i41, i32 4
  %91 = ptrtoint ptr %add.ptr11.i42 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile i32 %90, ptr %add.ptr11.i42, align 4
  %maccess.i = getelementptr inbounds %struct.drm_mga_context_regs_t, ptr %83, i32 0, i32 1
  %92 = ptrtoint ptr %maccess.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %maccess.i, align 4
  %add.ptr16.i43 = getelementptr i8, ptr %add.ptr.i41, i32 8
  %94 = ptrtoint ptr %add.ptr16.i43 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile i32 %93, ptr %add.ptr16.i43, align 4
  %plnwt.i = getelementptr inbounds %struct.drm_mga_context_regs_t, ptr %83, i32 0, i32 2
  %95 = ptrtoint ptr %plnwt.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %plnwt.i, align 4
  %add.ptr21.i44 = getelementptr i8, ptr %add.ptr.i41, i32 12
  %97 = ptrtoint ptr %add.ptr21.i44 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile i32 %96, ptr %add.ptr21.i44, align 4
  %dwgctl.i = getelementptr inbounds %struct.drm_mga_context_regs_t, ptr %83, i32 0, i32 3
  %98 = ptrtoint ptr %dwgctl.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %dwgctl.i, align 4
  %add.ptr26.i45 = getelementptr i8, ptr %add.ptr.i41, i32 16
  %100 = ptrtoint ptr %add.ptr26.i45 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile i32 %99, ptr %add.ptr26.i45, align 4
  %add.i46 = add i32 %87, 20
  %add.ptr33.i47 = getelementptr i8, ptr %85, i32 %add.i46
  %101 = ptrtoint ptr %add.ptr33.i47 to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile i32 57752991, ptr %add.ptr33.i47, align 4
  %alphactrl.i = getelementptr inbounds %struct.drm_mga_context_regs_t, ptr %83, i32 0, i32 4
  %102 = ptrtoint ptr %alphactrl.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %alphactrl.i, align 4
  %add.ptr39.i48 = getelementptr i8, ptr %add.ptr33.i47, i32 4
  %104 = ptrtoint ptr %add.ptr39.i48 to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile i32 %103, ptr %add.ptr39.i48, align 4
  %fogcolor.i = getelementptr inbounds %struct.drm_mga_context_regs_t, ptr %83, i32 0, i32 5
  %105 = ptrtoint ptr %fogcolor.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %fogcolor.i, align 4
  %add.ptr44.i49 = getelementptr i8, ptr %add.ptr33.i47, i32 8
  %107 = ptrtoint ptr %add.ptr44.i49 to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile i32 %106, ptr %add.ptr44.i49, align 4
  %wflag.i = getelementptr inbounds %struct.drm_mga_context_regs_t, ptr %83, i32 0, i32 6
  %108 = ptrtoint ptr %wflag.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %wflag.i, align 4
  %add.ptr49.i50 = getelementptr i8, ptr %add.ptr33.i47, i32 12
  %110 = ptrtoint ptr %add.ptr49.i50 to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile i32 %109, ptr %add.ptr49.i50, align 4
  %depth_offset.i = getelementptr inbounds %struct.drm_mga_private, ptr %dev_priv, i32 0, i32 25
  %111 = ptrtoint ptr %depth_offset.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %depth_offset.i, align 4
  %add.ptr54.i51 = getelementptr i8, ptr %add.ptr33.i47, i32 16
  %113 = ptrtoint ptr %add.ptr54.i51 to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile i32 %112, ptr %add.ptr54.i51, align 4
  %add57.i52 = add i32 %87, 40
  %add.ptr62.i53 = getelementptr i8, ptr %85, i32 %add57.i52
  %114 = ptrtoint ptr %add.ptr62.i53 to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile i32 163561080, ptr %add.ptr62.i53, align 4
  %115 = load i32, ptr %wflag.i, align 4
  %add.ptr69.i = getelementptr i8, ptr %add.ptr62.i53, i32 4
  %116 = ptrtoint ptr %add.ptr69.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile i32 %115, ptr %add.ptr69.i, align 4
  %tdualstage0.i = getelementptr inbounds %struct.drm_mga_context_regs_t, ptr %83, i32 0, i32 7
  %117 = ptrtoint ptr %tdualstage0.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %tdualstage0.i, align 4
  %add.ptr74.i = getelementptr i8, ptr %add.ptr62.i53, i32 8
  %119 = ptrtoint ptr %add.ptr74.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile i32 %118, ptr %add.ptr74.i, align 4
  %tdualstage1.i = getelementptr inbounds %struct.drm_mga_context_regs_t, ptr %83, i32 0, i32 8
  %120 = ptrtoint ptr %tdualstage1.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %tdualstage1.i, align 4
  %add.ptr79.i = getelementptr i8, ptr %add.ptr62.i53, i32 12
  %122 = ptrtoint ptr %add.ptr79.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile i32 %121, ptr %add.ptr79.i, align 4
  %fcol.i = getelementptr inbounds %struct.drm_mga_context_regs_t, ptr %83, i32 0, i32 9
  %123 = ptrtoint ptr %fcol.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %fcol.i, align 4
  %add.ptr84.i = getelementptr i8, ptr %add.ptr62.i53, i32 16
  %125 = ptrtoint ptr %add.ptr84.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile i32 %124, ptr %add.ptr84.i, align 4
  %add87.i = add i32 %87, 60
  %add.ptr92.i = getelementptr i8, ptr %85, i32 %add87.i
  %126 = ptrtoint ptr %add.ptr92.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile i32 353743794, ptr %add.ptr92.i, align 4
  %stencil.i = getelementptr inbounds %struct.drm_mga_context_regs_t, ptr %83, i32 0, i32 10
  %127 = ptrtoint ptr %stencil.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %stencil.i, align 4
  %add.ptr98.i = getelementptr i8, ptr %add.ptr92.i, i32 4
  %129 = ptrtoint ptr %add.ptr98.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile i32 %128, ptr %add.ptr98.i, align 4
  %stencilctl.i = getelementptr inbounds %struct.drm_mga_context_regs_t, ptr %83, i32 0, i32 11
  %130 = ptrtoint ptr %stencilctl.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %stencilctl.i, align 4
  %add.ptr103.i = getelementptr i8, ptr %add.ptr92.i, i32 8
  %132 = ptrtoint ptr %add.ptr103.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store volatile i32 %131, ptr %add.ptr103.i, align 4
  %add.ptr108.i = getelementptr i8, ptr %add.ptr92.i, i32 12
  %133 = ptrtoint ptr %add.ptr108.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store volatile i32 0, ptr %add.ptr108.i, align 4
  %add.ptr113.i = getelementptr i8, ptr %add.ptr92.i, i32 16
  %134 = ptrtoint ptr %add.ptr113.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile i32 0, ptr %add.ptr113.i, align 4
  %add116.i = add i32 %87, 80
  store i32 %add116.i, ptr %tail.i40, align 4
  %135 = ptrtoint ptr %dirty2 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %dirty2, align 4
  %and10 = and i32 %136, -2
  store i32 %and10, ptr %dirty2, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  %and12 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end17_crit_edge, label %if.then14

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %137 = ptrtoint ptr %sarea_priv1 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %sarea_priv1, align 4
  %tex_state.i = getelementptr inbounds %struct._drm_mga_sarea, ptr %138, i32 0, i32 2
  %139 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev_priv, align 4
  %tail.i55 = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %dev_priv, i32 0, i32 3
  %141 = ptrtoint ptr %tail.i55 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %tail.i55, align 4
  %add.ptr.i56 = getelementptr i8, ptr %140, i32 %142
  %143 = ptrtoint ptr %add.ptr.i56 to i32
  call void @__asan_store4_noabort(i32 %143)
  store volatile i32 -1751741297, ptr %add.ptr.i56, align 4
  %texctl2.i = getelementptr inbounds %struct._drm_mga_sarea, ptr %138, i32 0, i32 2, i32 0, i32 1
  %144 = ptrtoint ptr %texctl2.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %texctl2.i, align 4
  %or.i57 = or i32 %145, 32768
  %add.ptr11.i58 = getelementptr i8, ptr %add.ptr.i56, i32 4
  %146 = ptrtoint ptr %add.ptr11.i58 to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile i32 %or.i57, ptr %add.ptr11.i58, align 4
  %147 = ptrtoint ptr %tex_state.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %tex_state.i, align 4
  %add.ptr16.i59 = getelementptr i8, ptr %add.ptr.i56, i32 8
  %149 = ptrtoint ptr %add.ptr16.i59 to i32
  call void @__asan_store4_noabort(i32 %149)
  store volatile i32 %148, ptr %add.ptr16.i59, align 4
  %texfilter.i = getelementptr inbounds %struct._drm_mga_sarea, ptr %138, i32 0, i32 2, i32 0, i32 2
  %150 = ptrtoint ptr %texfilter.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %texfilter.i, align 4
  %add.ptr21.i60 = getelementptr i8, ptr %add.ptr.i56, i32 12
  %152 = ptrtoint ptr %add.ptr21.i60 to i32
  call void @__asan_store4_noabort(i32 %152)
  store volatile i32 %151, ptr %add.ptr21.i60, align 4
  %texbordercol.i = getelementptr inbounds %struct._drm_mga_sarea, ptr %138, i32 0, i32 2, i32 0, i32 3
  %153 = ptrtoint ptr %texbordercol.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %texbordercol.i, align 4
  %add.ptr26.i61 = getelementptr i8, ptr %add.ptr.i56, i32 16
  %155 = ptrtoint ptr %add.ptr26.i61 to i32
  call void @__asan_store4_noabort(i32 %155)
  store volatile i32 %154, ptr %add.ptr26.i61, align 4
  %add.i62 = add i32 %142, 20
  %add.ptr33.i63 = getelementptr i8, ptr %140, i32 %add.i62
  %156 = ptrtoint ptr %add.ptr33.i63 to i32
  call void @__asan_store4_noabort(i32 %156)
  store volatile i32 -1414878839, ptr %add.ptr33.i63, align 4
  %texorg.i = getelementptr inbounds %struct._drm_mga_sarea, ptr %138, i32 0, i32 2, i32 0, i32 4
  %157 = ptrtoint ptr %texorg.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %texorg.i, align 4
  %add.ptr39.i64 = getelementptr i8, ptr %add.ptr33.i63, i32 4
  %159 = ptrtoint ptr %add.ptr39.i64 to i32
  call void @__asan_store4_noabort(i32 %159)
  store volatile i32 %158, ptr %add.ptr39.i64, align 4
  %texorg1.i = getelementptr inbounds %struct._drm_mga_sarea, ptr %138, i32 0, i32 2, i32 0, i32 7
  %160 = ptrtoint ptr %texorg1.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %texorg1.i, align 4
  %add.ptr44.i65 = getelementptr i8, ptr %add.ptr33.i63, i32 8
  %162 = ptrtoint ptr %add.ptr44.i65 to i32
  call void @__asan_store4_noabort(i32 %162)
  store volatile i32 %161, ptr %add.ptr44.i65, align 4
  %texorg2.i = getelementptr inbounds %struct._drm_mga_sarea, ptr %138, i32 0, i32 2, i32 0, i32 8
  %163 = ptrtoint ptr %texorg2.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %texorg2.i, align 4
  %add.ptr49.i66 = getelementptr i8, ptr %add.ptr33.i63, i32 12
  %165 = ptrtoint ptr %add.ptr49.i66 to i32
  call void @__asan_store4_noabort(i32 %165)
  store volatile i32 %164, ptr %add.ptr49.i66, align 4
  %texorg3.i = getelementptr inbounds %struct._drm_mga_sarea, ptr %138, i32 0, i32 2, i32 0, i32 9
  %166 = ptrtoint ptr %texorg3.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %texorg3.i, align 4
  %add.ptr54.i67 = getelementptr i8, ptr %add.ptr33.i63, i32 16
  %168 = ptrtoint ptr %add.ptr54.i67 to i32
  call void @__asan_store4_noabort(i32 %168)
  store volatile i32 %167, ptr %add.ptr54.i67, align 4
  %add57.i68 = add i32 %142, 40
  %add.ptr62.i69 = getelementptr i8, ptr %140, i32 %add57.i68
  %169 = ptrtoint ptr %add.ptr62.i69 to i32
  call void @__asan_store4_noabort(i32 %169)
  store volatile i32 -242513236, ptr %add.ptr62.i69, align 4
  %texorg4.i = getelementptr inbounds %struct._drm_mga_sarea, ptr %138, i32 0, i32 2, i32 0, i32 10
  %170 = ptrtoint ptr %texorg4.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %texorg4.i, align 4
  %add.ptr68.i70 = getelementptr i8, ptr %add.ptr62.i69, i32 4
  %172 = ptrtoint ptr %add.ptr68.i70 to i32
  call void @__asan_store4_noabort(i32 %172)
  store volatile i32 %171, ptr %add.ptr68.i70, align 4
  %texwidth.i = getelementptr inbounds %struct._drm_mga_sarea, ptr %138, i32 0, i32 2, i32 0, i32 5
  %173 = ptrtoint ptr %texwidth.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %texwidth.i, align 4
  %add.ptr73.i71 = getelementptr i8, ptr %add.ptr62.i69, i32 8
  %175 = ptrtoint ptr %add.ptr73.i71 to i32
  call void @__asan_store4_noabort(i32 %175)
  store volatile i32 %174, ptr %add.ptr73.i71, align 4
  %texheight.i = getelementptr inbounds %struct._drm_mga_sarea, ptr %138, i32 0, i32 2, i32 0, i32 6
  %176 = ptrtoint ptr %texheight.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %texheight.i, align 4
  %add.ptr78.i72 = getelementptr i8, ptr %add.ptr62.i69, i32 12
  %178 = ptrtoint ptr %add.ptr78.i72 to i32
  call void @__asan_store4_noabort(i32 %178)
  store volatile i32 %177, ptr %add.ptr78.i72, align 4
  %add.ptr83.i73 = getelementptr i8, ptr %add.ptr62.i69, i32 16
  %179 = ptrtoint ptr %add.ptr83.i73 to i32
  call void @__asan_store4_noabort(i32 %179)
  store volatile i32 0, ptr %add.ptr83.i73, align 4
  %add86.i74 = add i32 %142, 60
  %add.ptr91.i = getelementptr i8, ptr %140, i32 %add86.i74
  %180 = ptrtoint ptr %add.ptr91.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store volatile i32 -184683015, ptr %add.ptr91.i, align 4
  %add.ptr97.i = getelementptr i8, ptr %add.ptr91.i, i32 4
  %181 = ptrtoint ptr %add.ptr97.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store volatile i32 0, ptr %add.ptr97.i, align 4
  %add.ptr102.i = getelementptr i8, ptr %add.ptr91.i, i32 8
  %182 = ptrtoint ptr %add.ptr102.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store volatile i32 0, ptr %add.ptr102.i, align 4
  %add.ptr107.i = getelementptr i8, ptr %add.ptr91.i, i32 12
  %183 = ptrtoint ptr %add.ptr107.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store volatile i32 0, ptr %add.ptr107.i, align 4
  %add.ptr112.i = getelementptr i8, ptr %add.ptr91.i, i32 16
  %184 = ptrtoint ptr %add.ptr112.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store volatile i32 64, ptr %add.ptr112.i, align 4
  %add115.i = add i32 %142, 80
  %add.ptr120.i = getelementptr i8, ptr %140, i32 %add115.i
  %185 = ptrtoint ptr %add.ptr120.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store volatile i32 369030908, ptr %add.ptr120.i, align 4
  %add.ptr126.i = getelementptr i8, ptr %add.ptr120.i, i32 4
  %186 = ptrtoint ptr %add.ptr126.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store volatile i32 64, ptr %add.ptr126.i, align 4
  %187 = load i32, ptr %texwidth.i, align 4
  %or131.i = or i32 %187, 64
  %add.ptr133.i = getelementptr i8, ptr %add.ptr120.i, i32 8
  %188 = ptrtoint ptr %add.ptr133.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store volatile i32 %or131.i, ptr %add.ptr133.i, align 4
  %189 = load i32, ptr %texheight.i, align 4
  %or138.i = or i32 %189, 64
  %add.ptr140.i75 = getelementptr i8, ptr %add.ptr120.i, i32 12
  %190 = ptrtoint ptr %add.ptr140.i75 to i32
  call void @__asan_store4_noabort(i32 %190)
  store volatile i32 %or138.i, ptr %add.ptr140.i75, align 4
  %add.ptr145.i76 = getelementptr i8, ptr %add.ptr120.i, i32 16
  %191 = ptrtoint ptr %add.ptr145.i76 to i32
  call void @__asan_store4_noabort(i32 %191)
  store volatile i32 0, ptr %add.ptr145.i76, align 4
  %add148.i77 = add i32 %142, 100
  %add.ptr153.i78 = getelementptr i8, ptr %140, i32 %add148.i77
  %192 = ptrtoint ptr %add.ptr153.i78 to i32
  call void @__asan_store4_noabort(i32 %192)
  store volatile i32 -1903356651, ptr %add.ptr153.i78, align 4
  %add.ptr159.i79 = getelementptr i8, ptr %add.ptr153.i78, i32 4
  %193 = ptrtoint ptr %add.ptr159.i79 to i32
  call void @__asan_store4_noabort(i32 %193)
  store volatile i32 0, ptr %add.ptr159.i79, align 4
  %add.ptr164.i80 = getelementptr i8, ptr %add.ptr153.i78, i32 8
  %194 = ptrtoint ptr %add.ptr164.i80 to i32
  call void @__asan_store4_noabort(i32 %194)
  store volatile i32 0, ptr %add.ptr164.i80, align 4
  %add.ptr169.i81 = getelementptr i8, ptr %add.ptr153.i78, i32 12
  %195 = ptrtoint ptr %add.ptr169.i81 to i32
  call void @__asan_store4_noabort(i32 %195)
  store volatile i32 65535, ptr %add.ptr169.i81, align 4
  %add.ptr174.i82 = getelementptr i8, ptr %add.ptr153.i78, i32 16
  %196 = ptrtoint ptr %add.ptr174.i82 to i32
  call void @__asan_store4_noabort(i32 %196)
  store volatile i32 65535, ptr %add.ptr174.i82, align 4
  %add177.i83 = add i32 %142, 120
  store i32 %add177.i83, ptr %tail.i55, align 4
  %197 = ptrtoint ptr %dirty2 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %dirty2, align 4
  %and16 = and i32 %198, -3
  store i32 %and16, ptr %dirty2, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end11.if.end17_crit_edge
  %and18 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool19.not, i1 true, i1 %tobool20.not
  br i1 %or.cond, label %if.end17.if.end24_crit_edge, label %if.then21

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %199 = ptrtoint ptr %sarea_priv1 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %sarea_priv1, align 4
  %arrayidx.i85 = getelementptr %struct._drm_mga_sarea, ptr %200, i32 0, i32 2, i32 1
  %201 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %dev_priv, align 4
  %tail.i86 = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %dev_priv, i32 0, i32 3
  %203 = ptrtoint ptr %tail.i86 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %tail.i86, align 4
  %add.ptr.i87 = getelementptr i8, ptr %202, i32 %204
  %205 = ptrtoint ptr %add.ptr.i87 to i32
  call void @__asan_store4_noabort(i32 %205)
  store volatile i32 -1751741297, ptr %add.ptr.i87, align 4
  %texctl2.i88 = getelementptr %struct._drm_mga_sarea, ptr %200, i32 0, i32 2, i32 1, i32 1
  %206 = ptrtoint ptr %texctl2.i88 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %texctl2.i88, align 4
  %or10.i = or i32 %207, -2147450880
  %add.ptr12.i = getelementptr i8, ptr %add.ptr.i87, i32 4
  %208 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store volatile i32 %or10.i, ptr %add.ptr12.i, align 4
  %209 = ptrtoint ptr %arrayidx.i85 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %arrayidx.i85, align 4
  %add.ptr17.i = getelementptr i8, ptr %add.ptr.i87, i32 8
  %211 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store volatile i32 %210, ptr %add.ptr17.i, align 4
  %texfilter.i89 = getelementptr %struct._drm_mga_sarea, ptr %200, i32 0, i32 2, i32 1, i32 2
  %212 = ptrtoint ptr %texfilter.i89 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %texfilter.i89, align 4
  %add.ptr22.i = getelementptr i8, ptr %add.ptr.i87, i32 12
  %214 = ptrtoint ptr %add.ptr22.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store volatile i32 %213, ptr %add.ptr22.i, align 4
  %texbordercol.i90 = getelementptr %struct._drm_mga_sarea, ptr %200, i32 0, i32 2, i32 1, i32 3
  %215 = ptrtoint ptr %texbordercol.i90 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %texbordercol.i90, align 4
  %add.ptr27.i = getelementptr i8, ptr %add.ptr.i87, i32 16
  %217 = ptrtoint ptr %add.ptr27.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store volatile i32 %216, ptr %add.ptr27.i, align 4
  %add.i91 = add i32 %204, 20
  %add.ptr34.i = getelementptr i8, ptr %202, i32 %add.i91
  %218 = ptrtoint ptr %add.ptr34.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store volatile i32 -1414878839, ptr %add.ptr34.i, align 4
  %texorg.i92 = getelementptr %struct._drm_mga_sarea, ptr %200, i32 0, i32 2, i32 1, i32 4
  %219 = ptrtoint ptr %texorg.i92 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %texorg.i92, align 4
  %add.ptr40.i = getelementptr i8, ptr %add.ptr34.i, i32 4
  %221 = ptrtoint ptr %add.ptr40.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store volatile i32 %220, ptr %add.ptr40.i, align 4
  %texorg1.i93 = getelementptr %struct._drm_mga_sarea, ptr %200, i32 0, i32 2, i32 1, i32 7
  %222 = ptrtoint ptr %texorg1.i93 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %texorg1.i93, align 4
  %add.ptr45.i = getelementptr i8, ptr %add.ptr34.i, i32 8
  %224 = ptrtoint ptr %add.ptr45.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store volatile i32 %223, ptr %add.ptr45.i, align 4
  %texorg2.i94 = getelementptr %struct._drm_mga_sarea, ptr %200, i32 0, i32 2, i32 1, i32 8
  %225 = ptrtoint ptr %texorg2.i94 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %texorg2.i94, align 4
  %add.ptr50.i = getelementptr i8, ptr %add.ptr34.i, i32 12
  %227 = ptrtoint ptr %add.ptr50.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store volatile i32 %226, ptr %add.ptr50.i, align 4
  %texorg3.i95 = getelementptr %struct._drm_mga_sarea, ptr %200, i32 0, i32 2, i32 1, i32 9
  %228 = ptrtoint ptr %texorg3.i95 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %texorg3.i95, align 4
  %add.ptr55.i = getelementptr i8, ptr %add.ptr34.i, i32 16
  %230 = ptrtoint ptr %add.ptr55.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store volatile i32 %229, ptr %add.ptr55.i, align 4
  %add58.i = add i32 %204, 40
  %add.ptr63.i = getelementptr i8, ptr %202, i32 %add58.i
  %231 = ptrtoint ptr %add.ptr63.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store volatile i32 -242513236, ptr %add.ptr63.i, align 4
  %texorg4.i96 = getelementptr %struct._drm_mga_sarea, ptr %200, i32 0, i32 2, i32 1, i32 10
  %232 = ptrtoint ptr %texorg4.i96 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %texorg4.i96, align 4
  %add.ptr69.i97 = getelementptr i8, ptr %add.ptr63.i, i32 4
  %234 = ptrtoint ptr %add.ptr69.i97 to i32
  call void @__asan_store4_noabort(i32 %234)
  store volatile i32 %233, ptr %add.ptr69.i97, align 4
  %texwidth.i98 = getelementptr %struct._drm_mga_sarea, ptr %200, i32 0, i32 2, i32 1, i32 5
  %235 = ptrtoint ptr %texwidth.i98 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %texwidth.i98, align 4
  %add.ptr74.i99 = getelementptr i8, ptr %add.ptr63.i, i32 8
  %237 = ptrtoint ptr %add.ptr74.i99 to i32
  call void @__asan_store4_noabort(i32 %237)
  store volatile i32 %236, ptr %add.ptr74.i99, align 4
  %texheight.i100 = getelementptr %struct._drm_mga_sarea, ptr %200, i32 0, i32 2, i32 1, i32 6
  %238 = ptrtoint ptr %texheight.i100 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %texheight.i100, align 4
  %add.ptr79.i101 = getelementptr i8, ptr %add.ptr63.i, i32 12
  %240 = ptrtoint ptr %add.ptr79.i101 to i32
  call void @__asan_store4_noabort(i32 %240)
  store volatile i32 %239, ptr %add.ptr79.i101, align 4
  %add.ptr84.i102 = getelementptr i8, ptr %add.ptr63.i, i32 16
  %241 = ptrtoint ptr %add.ptr84.i102 to i32
  call void @__asan_store4_noabort(i32 %241)
  store volatile i32 0, ptr %add.ptr84.i102, align 4
  %add87.i103 = add i32 %204, 60
  %add.ptr92.i104 = getelementptr i8, ptr %202, i32 %add87.i103
  %242 = ptrtoint ptr %add.ptr92.i104 to i32
  call void @__asan_store4_noabort(i32 %242)
  store volatile i32 -184683015, ptr %add.ptr92.i104, align 4
  %add.ptr98.i105 = getelementptr i8, ptr %add.ptr92.i104, i32 4
  %243 = ptrtoint ptr %add.ptr98.i105 to i32
  call void @__asan_store4_noabort(i32 %243)
  store volatile i32 0, ptr %add.ptr98.i105, align 4
  %add.ptr103.i106 = getelementptr i8, ptr %add.ptr92.i104, i32 8
  %244 = ptrtoint ptr %add.ptr103.i106 to i32
  call void @__asan_store4_noabort(i32 %244)
  store volatile i32 0, ptr %add.ptr103.i106, align 4
  %add.ptr108.i107 = getelementptr i8, ptr %add.ptr92.i104, i32 12
  %245 = ptrtoint ptr %add.ptr108.i107 to i32
  call void @__asan_store4_noabort(i32 %245)
  store volatile i32 0, ptr %add.ptr108.i107, align 4
  %246 = load i32, ptr %texwidth.i98, align 4
  %or113.i = or i32 %246, 64
  %add.ptr115.i = getelementptr i8, ptr %add.ptr92.i104, i32 16
  %247 = ptrtoint ptr %add.ptr115.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store volatile i32 %or113.i, ptr %add.ptr115.i, align 4
  %add118.i = add i32 %204, 80
  %add.ptr123.i = getelementptr i8, ptr %202, i32 %add118.i
  %248 = ptrtoint ptr %add.ptr123.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store volatile i32 -1886482948, ptr %add.ptr123.i, align 4
  %249 = load i32, ptr %texheight.i100, align 4
  %or129.i = or i32 %249, 64
  %add.ptr131.i = getelementptr i8, ptr %add.ptr123.i, i32 4
  %250 = ptrtoint ptr %add.ptr131.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store volatile i32 %or129.i, ptr %add.ptr131.i, align 4
  %add.ptr136.i = getelementptr i8, ptr %add.ptr123.i, i32 8
  %251 = ptrtoint ptr %add.ptr136.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store volatile i32 65535, ptr %add.ptr136.i, align 4
  %add.ptr141.i = getelementptr i8, ptr %add.ptr123.i, i32 12
  %252 = ptrtoint ptr %add.ptr141.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store volatile i32 65535, ptr %add.ptr141.i, align 4
  %253 = load i32, ptr %texctl2.i88, align 4
  %or146.i = or i32 %253, 32768
  %add.ptr148.i = getelementptr i8, ptr %add.ptr123.i, i32 16
  %254 = ptrtoint ptr %add.ptr148.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store volatile i32 %or146.i, ptr %add.ptr148.i, align 4
  %add151.i = add i32 %204, 100
  store i32 %add151.i, ptr %tail.i86, align 4
  %255 = ptrtoint ptr %dirty2 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %dirty2, align 4
  %and23 = and i32 %256, -5
  store i32 %and23, ptr %dirty2, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end17.if.end24_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mga_g200_emit_state(ptr nocapture noundef %dev_priv) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sarea_priv1 = getelementptr inbounds %struct.drm_mga_private, ptr %dev_priv, i32 0, i32 1
  %0 = ptrtoint ptr %sarea_priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sarea_priv1, align 4
  %dirty2 = getelementptr inbounds %struct._drm_mga_sarea, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dirty2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dirty2, align 4
  %warp_pipe = getelementptr inbounds %struct._drm_mga_sarea, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %warp_pipe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %warp_pipe, align 4
  %warp_pipe3 = getelementptr inbounds %struct.drm_mga_private, ptr %dev_priv, i32 0, i32 4
  %6 = ptrtoint ptr %warp_pipe3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %warp_pipe3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp eq i32 %5, %7
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_priv, align 4
  %tail.i = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %dev_priv, i32 0, i32 3
  %10 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tail.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %11
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 -663653520, ptr %add.ptr.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %add.ptr.i, i32 4
  %13 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 0, ptr %add.ptr11.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %add.ptr.i, i32 8
  %14 = ptrtoint ptr %add.ptr16.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 7, ptr %add.ptr16.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %add.ptr.i, i32 12
  %15 = ptrtoint ptr %add.ptr21.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 0, ptr %add.ptr21.i, align 4
  %add.ptr26.i = getelementptr i8, ptr %add.ptr.i, i32 16
  %16 = ptrtoint ptr %add.ptr26.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 0, ptr %add.ptr26.i, align 4
  %add.i = add i32 %11, 20
  %add.ptr33.i = getelementptr i8, ptr %9, i32 %add.i
  %17 = ptrtoint ptr %add.ptr33.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 -51715367, ptr %add.ptr33.i, align 4
  %add.ptr39.i = getelementptr i8, ptr %add.ptr33.i, i32 4
  %18 = ptrtoint ptr %add.ptr39.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 256, ptr %add.ptr39.i, align 4
  %add.ptr44.i = getelementptr i8, ptr %add.ptr33.i, i32 8
  %19 = ptrtoint ptr %add.ptr44.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 0, ptr %add.ptr44.i, align 4
  %add.ptr49.i = getelementptr i8, ptr %add.ptr33.i, i32 12
  %20 = ptrtoint ptr %add.ptr49.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 65535, ptr %add.ptr49.i, align 4
  %add.ptr54.i = getelementptr i8, ptr %add.ptr33.i, i32 16
  %21 = ptrtoint ptr %add.ptr54.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 65535, ptr %add.ptr54.i, align 4
  %add57.i = add i32 %11, 40
  %add.ptr62.i = getelementptr i8, ptr %9, i32 %add57.i
  %22 = ptrtoint ptr %add.ptr62.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 1880429845, ptr %add.ptr62.i, align 4
  %add.ptr68.i = getelementptr i8, ptr %add.ptr62.i, i32 4
  %23 = ptrtoint ptr %add.ptr68.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 -1, ptr %add.ptr68.i, align 4
  %add.ptr73.i = getelementptr i8, ptr %add.ptr62.i, i32 8
  %24 = ptrtoint ptr %add.ptr73.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 -1, ptr %add.ptr73.i, align 4
  %add.ptr78.i = getelementptr i8, ptr %add.ptr62.i, i32 12
  %25 = ptrtoint ptr %add.ptr78.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 -1, ptr %add.ptr78.i, align 4
  %arrayidx.i = getelementptr %struct.drm_mga_private, ptr %dev_priv, i32 0, i32 5, i32 %5
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  %wagp_enable.i = getelementptr inbounds %struct.drm_mga_private, ptr %dev_priv, i32 0, i32 10
  %28 = ptrtoint ptr %wagp_enable.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %wagp_enable.i, align 4
  %or.i = or i32 %27, %29
  %or82.i = or i32 %or.i, 3
  %add.ptr84.i = getelementptr i8, ptr %add.ptr62.i, i32 16
  %30 = ptrtoint ptr %add.ptr84.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 %or82.i, ptr %add.ptr84.i, align 4
  %add87.i = add i32 %11, 60
  store i32 %add87.i, ptr %tail.i, align 4
  %31 = ptrtoint ptr %warp_pipe to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %warp_pipe, align 4
  %33 = ptrtoint ptr %warp_pipe3 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %warp_pipe3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %sarea_priv1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sarea_priv1, align 4
  %36 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_priv, align 4
  %tail.i27 = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %dev_priv, i32 0, i32 3
  %38 = ptrtoint ptr %tail.i27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tail.i27, align 4
  %add.ptr.i28 = getelementptr i8, ptr %37, i32 %39
  %40 = ptrtoint ptr %add.ptr.i28 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 459182, ptr %add.ptr.i28, align 4
  %41 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %35, align 4
  %add.ptr11.i29 = getelementptr i8, ptr %add.ptr.i28, i32 4
  %43 = ptrtoint ptr %add.ptr11.i29 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile i32 %42, ptr %add.ptr11.i29, align 4
  %maccess.i = getelementptr inbounds %struct.drm_mga_context_regs_t, ptr %35, i32 0, i32 1
  %44 = ptrtoint ptr %maccess.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %maccess.i, align 4
  %add.ptr16.i30 = getelementptr i8, ptr %add.ptr.i28, i32 8
  %46 = ptrtoint ptr %add.ptr16.i30 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile i32 %45, ptr %add.ptr16.i30, align 4
  %plnwt.i = getelementptr inbounds %struct.drm_mga_context_regs_t, ptr %35, i32 0, i32 2
  %47 = ptrtoint ptr %plnwt.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %plnwt.i, align 4
  %add.ptr21.i31 = getelementptr i8, ptr %add.ptr.i28, i32 12
  %49 = ptrtoint ptr %add.ptr21.i31 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 %48, ptr %add.ptr21.i31, align 4
  %dwgctl.i = getelementptr inbounds %struct.drm_mga_context_regs_t, ptr %35, i32 0, i32 3
  %50 = ptrtoint ptr %dwgctl.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dwgctl.i, align 4
  %add.ptr26.i32 = getelementptr i8, ptr %add.ptr.i28, i32 16
  %52 = ptrtoint ptr %add.ptr26.i32 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile i32 %51, ptr %add.ptr26.i32, align 4
  %add.i33 = add i32 %39, 20
  %add.ptr33.i34 = getelementptr i8, ptr %37, i32 %add.i33
  %53 = ptrtoint ptr %add.ptr33.i34 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 57752991, ptr %add.ptr33.i34, align 4
  %alphactrl.i = getelementptr inbounds %struct.drm_mga_context_regs_t, ptr %35, i32 0, i32 4
  %54 = ptrtoint ptr %alphactrl.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %alphactrl.i, align 4
  %add.ptr39.i35 = getelementptr i8, ptr %add.ptr33.i34, i32 4
  %56 = ptrtoint ptr %add.ptr39.i35 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile i32 %55, ptr %add.ptr39.i35, align 4
  %fogcolor.i = getelementptr inbounds %struct.drm_mga_context_regs_t, ptr %35, i32 0, i32 5
  %57 = ptrtoint ptr %fogcolor.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %fogcolor.i, align 4
  %add.ptr44.i36 = getelementptr i8, ptr %add.ptr33.i34, i32 8
  %59 = ptrtoint ptr %add.ptr44.i36 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile i32 %58, ptr %add.ptr44.i36, align 4
  %wflag.i = getelementptr inbounds %struct.drm_mga_context_regs_t, ptr %35, i32 0, i32 6
  %60 = ptrtoint ptr %wflag.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %wflag.i, align 4
  %add.ptr49.i37 = getelementptr i8, ptr %add.ptr33.i34, i32 12
  %62 = ptrtoint ptr %add.ptr49.i37 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile i32 %61, ptr %add.ptr49.i37, align 4
  %depth_offset.i = getelementptr inbounds %struct.drm_mga_private, ptr %dev_priv, i32 0, i32 25
  %63 = ptrtoint ptr %depth_offset.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %depth_offset.i, align 4
  %add.ptr54.i38 = getelementptr i8, ptr %add.ptr33.i34, i32 16
  %65 = ptrtoint ptr %add.ptr54.i38 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile i32 %64, ptr %add.ptr54.i38, align 4
  %add57.i39 = add i32 %39, 40
  %add.ptr62.i40 = getelementptr i8, ptr %37, i32 %add57.i39
  %66 = ptrtoint ptr %add.ptr62.i40 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile i32 353703177, ptr %add.ptr62.i40, align 4
  %fcol.i = getelementptr inbounds %struct.drm_mga_context_regs_t, ptr %35, i32 0, i32 9
  %67 = ptrtoint ptr %fcol.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %fcol.i, align 4
  %add.ptr68.i41 = getelementptr i8, ptr %add.ptr62.i40, i32 4
  %69 = ptrtoint ptr %add.ptr68.i41 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile i32 %68, ptr %add.ptr68.i41, align 4
  %add.ptr73.i42 = getelementptr i8, ptr %add.ptr62.i40, i32 8
  %70 = ptrtoint ptr %add.ptr73.i42 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile i32 0, ptr %add.ptr73.i42, align 4
  %add.ptr78.i43 = getelementptr i8, ptr %add.ptr62.i40, i32 12
  %71 = ptrtoint ptr %add.ptr78.i43 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile i32 0, ptr %add.ptr78.i43, align 4
  %add.ptr83.i = getelementptr i8, ptr %add.ptr62.i40, i32 16
  %72 = ptrtoint ptr %add.ptr83.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile i32 0, ptr %add.ptr83.i, align 4
  %add86.i = add i32 %39, 60
  store i32 %add86.i, ptr %tail.i27, align 4
  %73 = ptrtoint ptr %dirty2 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %dirty2, align 4
  %and8 = and i32 %74, -2
  store i32 %and8, ptr %dirty2, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %and10 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end15_crit_edge, label %if.then12

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %75 = ptrtoint ptr %sarea_priv1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sarea_priv1, align 4
  %tex_state.i = getelementptr inbounds %struct._drm_mga_sarea, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev_priv, align 4
  %tail.i45 = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %dev_priv, i32 0, i32 3
  %79 = ptrtoint ptr %tail.i45 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tail.i45, align 4
  %add.ptr.i46 = getelementptr i8, ptr %78, i32 %80
  %81 = ptrtoint ptr %add.ptr.i46 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile i32 -1751741297, ptr %add.ptr.i46, align 4
  %texctl2.i = getelementptr inbounds %struct._drm_mga_sarea, ptr %76, i32 0, i32 2, i32 0, i32 1
  %82 = ptrtoint ptr %texctl2.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %texctl2.i, align 4
  %add.ptr11.i47 = getelementptr i8, ptr %add.ptr.i46, i32 4
  %84 = ptrtoint ptr %add.ptr11.i47 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile i32 %83, ptr %add.ptr11.i47, align 4
  %85 = ptrtoint ptr %tex_state.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tex_state.i, align 4
  %add.ptr16.i48 = getelementptr i8, ptr %add.ptr.i46, i32 8
  %87 = ptrtoint ptr %add.ptr16.i48 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile i32 %86, ptr %add.ptr16.i48, align 4
  %texfilter.i = getelementptr inbounds %struct._drm_mga_sarea, ptr %76, i32 0, i32 2, i32 0, i32 2
  %88 = ptrtoint ptr %texfilter.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %texfilter.i, align 4
  %add.ptr21.i49 = getelementptr i8, ptr %add.ptr.i46, i32 12
  %90 = ptrtoint ptr %add.ptr21.i49 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile i32 %89, ptr %add.ptr21.i49, align 4
  %texbordercol.i = getelementptr inbounds %struct._drm_mga_sarea, ptr %76, i32 0, i32 2, i32 0, i32 3
  %91 = ptrtoint ptr %texbordercol.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %texbordercol.i, align 4
  %add.ptr26.i50 = getelementptr i8, ptr %add.ptr.i46, i32 16
  %93 = ptrtoint ptr %add.ptr26.i50 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile i32 %92, ptr %add.ptr26.i50, align 4
  %add.i51 = add i32 %80, 20
  %add.ptr33.i52 = getelementptr i8, ptr %78, i32 %add.i51
  %94 = ptrtoint ptr %add.ptr33.i52 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile i32 -1414878839, ptr %add.ptr33.i52, align 4
  %texorg.i = getelementptr inbounds %struct._drm_mga_sarea, ptr %76, i32 0, i32 2, i32 0, i32 4
  %95 = ptrtoint ptr %texorg.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %texorg.i, align 4
  %add.ptr39.i53 = getelementptr i8, ptr %add.ptr33.i52, i32 4
  %97 = ptrtoint ptr %add.ptr39.i53 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile i32 %96, ptr %add.ptr39.i53, align 4
  %texorg1.i = getelementptr inbounds %struct._drm_mga_sarea, ptr %76, i32 0, i32 2, i32 0, i32 7
  %98 = ptrtoint ptr %texorg1.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %texorg1.i, align 4
  %add.ptr44.i54 = getelementptr i8, ptr %add.ptr33.i52, i32 8
  %100 = ptrtoint ptr %add.ptr44.i54 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile i32 %99, ptr %add.ptr44.i54, align 4
  %texorg2.i = getelementptr inbounds %struct._drm_mga_sarea, ptr %76, i32 0, i32 2, i32 0, i32 8
  %101 = ptrtoint ptr %texorg2.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %texorg2.i, align 4
  %add.ptr49.i55 = getelementptr i8, ptr %add.ptr33.i52, i32 12
  %103 = ptrtoint ptr %add.ptr49.i55 to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile i32 %102, ptr %add.ptr49.i55, align 4
  %texorg3.i = getelementptr inbounds %struct._drm_mga_sarea, ptr %76, i32 0, i32 2, i32 0, i32 9
  %104 = ptrtoint ptr %texorg3.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %texorg3.i, align 4
  %add.ptr54.i56 = getelementptr i8, ptr %add.ptr33.i52, i32 16
  %106 = ptrtoint ptr %add.ptr54.i56 to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile i32 %105, ptr %add.ptr54.i56, align 4
  %add57.i57 = add i32 %80, 40
  %add.ptr62.i58 = getelementptr i8, ptr %78, i32 %add57.i57
  %107 = ptrtoint ptr %add.ptr62.i58 to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile i32 -661943636, ptr %add.ptr62.i58, align 4
  %texorg4.i = getelementptr inbounds %struct._drm_mga_sarea, ptr %76, i32 0, i32 2, i32 0, i32 10
  %108 = ptrtoint ptr %texorg4.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %texorg4.i, align 4
  %add.ptr68.i59 = getelementptr i8, ptr %add.ptr62.i58, i32 4
  %110 = ptrtoint ptr %add.ptr68.i59 to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile i32 %109, ptr %add.ptr68.i59, align 4
  %texwidth.i = getelementptr inbounds %struct._drm_mga_sarea, ptr %76, i32 0, i32 2, i32 0, i32 5
  %111 = ptrtoint ptr %texwidth.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %texwidth.i, align 4
  %add.ptr73.i60 = getelementptr i8, ptr %add.ptr62.i58, i32 8
  %113 = ptrtoint ptr %add.ptr73.i60 to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile i32 %112, ptr %add.ptr73.i60, align 4
  %texheight.i = getelementptr inbounds %struct._drm_mga_sarea, ptr %76, i32 0, i32 2, i32 0, i32 6
  %114 = ptrtoint ptr %texheight.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %texheight.i, align 4
  %add.ptr78.i61 = getelementptr i8, ptr %add.ptr62.i58, i32 12
  %116 = ptrtoint ptr %add.ptr78.i61 to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile i32 %115, ptr %add.ptr78.i61, align 4
  %117 = load i32, ptr %texwidth.i, align 4
  %add.ptr84.i62 = getelementptr i8, ptr %add.ptr62.i58, i32 16
  %118 = ptrtoint ptr %add.ptr84.i62 to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile i32 %117, ptr %add.ptr84.i62, align 4
  %add87.i63 = add i32 %80, 60
  %add.ptr92.i = getelementptr i8, ptr %78, i32 %add87.i63
  %119 = ptrtoint ptr %add.ptr92.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile i32 361663970, ptr %add.ptr92.i, align 4
  %120 = load i32, ptr %texheight.i, align 4
  %add.ptr99.i = getelementptr i8, ptr %add.ptr92.i, i32 4
  %121 = ptrtoint ptr %add.ptr99.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile i32 %120, ptr %add.ptr99.i, align 4
  %add.ptr104.i = getelementptr i8, ptr %add.ptr92.i, i32 8
  %122 = ptrtoint ptr %add.ptr104.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile i32 65535, ptr %add.ptr104.i, align 4
  %add.ptr109.i = getelementptr i8, ptr %add.ptr92.i, i32 12
  %123 = ptrtoint ptr %add.ptr109.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile i32 65535, ptr %add.ptr109.i, align 4
  %add.ptr114.i = getelementptr i8, ptr %add.ptr92.i, i32 16
  %124 = ptrtoint ptr %add.ptr114.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store volatile i32 0, ptr %add.ptr114.i, align 4
  %add117.i = add i32 %80, 80
  store i32 %add117.i, ptr %tail.i45, align 4
  %125 = ptrtoint ptr %dirty2 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %dirty2, align 4
  %and14 = and i32 %126, -3
  store i32 %and14, ptr %dirty2, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end9.if.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mga_dma_dispatch_iload(ptr noundef %dev, ptr noundef %buf, i32 noundef %dstorg, i32 noundef %length) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %dev_private1 = getelementptr inbounds %struct.drm_buf, ptr %buf, i32 0, i32 15
  %2 = ptrtoint ptr %dev_private1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private1, align 4
  %sarea_priv = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %sarea_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sarea_priv, align 4
  %bus_address = getelementptr inbounds %struct.drm_buf, ptr %buf, i32 0, i32 6
  %6 = ptrtoint ptr %bus_address to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bus_address, align 4
  %dma_access = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %dma_access to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_access, align 4
  %or = or i32 %7, %9
  %or2 = or i32 %or, 1
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf, align 4
  %used = getelementptr inbounds %struct.drm_buf, ptr %buf, i32 0, i32 3
  %12 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %used, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.25, i32 noundef %11, i32 noundef %13) #5
  %div261 = lshr i32 %length, 6
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %tail = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tail, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 %17
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 -1819077355, ptr %add.ptr, align 4
  %add.ptr12 = getelementptr i8, ptr %add.ptr, i32 4
  %19 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 0, ptr %add.ptr12, align 4
  %add.ptr17 = getelementptr i8, ptr %add.ptr, i32 8
  %20 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 0, ptr %add.ptr17, align 4
  %add.ptr22 = getelementptr i8, ptr %add.ptr, i32 12
  %21 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 28928, ptr %add.ptr22, align 4
  %add.ptr27 = getelementptr i8, ptr %add.ptr, i32 16
  %22 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 28672, ptr %add.ptr27, align 4
  %add = add i32 %17, 20
  %add.ptr34 = getelementptr i8, ptr %15, i32 %add
  %23 = ptrtoint ptr %add.ptr34 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 497877422, ptr %add.ptr34, align 4
  %add.ptr40 = getelementptr i8, ptr %add.ptr34, i32 4
  %24 = ptrtoint ptr %add.ptr40 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 %dstorg, ptr %add.ptr40, align 4
  %add.ptr45 = getelementptr i8, ptr %add.ptr34, i32 8
  %25 = ptrtoint ptr %add.ptr45 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 0, ptr %add.ptr45, align 4
  %add.ptr50 = getelementptr i8, ptr %add.ptr34, i32 12
  %26 = ptrtoint ptr %add.ptr50 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 %or2, ptr %add.ptr50, align 4
  %add.ptr55 = getelementptr i8, ptr %add.ptr34, i32 16
  %27 = ptrtoint ptr %add.ptr55 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 64, ptr %add.ptr55, align 4
  %add58 = add i32 %17, 40
  %add.ptr63 = getelementptr i8, ptr %15, i32 %add58
  %28 = ptrtoint ptr %add.ptr63 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 1378083, ptr %add.ptr63, align 4
  %add.ptr69 = getelementptr i8, ptr %add.ptr63, i32 4
  %29 = ptrtoint ptr %add.ptr69 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 64, ptr %add.ptr69, align 4
  %add.ptr74 = getelementptr i8, ptr %add.ptr63, i32 8
  %30 = ptrtoint ptr %add.ptr74 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 -1, ptr %add.ptr74, align 4
  %add.ptr79 = getelementptr i8, ptr %add.ptr63, i32 12
  %31 = ptrtoint ptr %add.ptr79 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 0, ptr %add.ptr79, align 4
  %add.ptr84 = getelementptr i8, ptr %add.ptr63, i32 16
  %32 = ptrtoint ptr %add.ptr84 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 -2079563768, ptr %add.ptr84, align 4
  %add87 = add i32 %17, 60
  %add.ptr92 = getelementptr i8, ptr %15, i32 %add87
  %33 = ptrtoint ptr %add.ptr92 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 1646336792, ptr %add.ptr92, align 4
  %add.ptr98 = getelementptr i8, ptr %add.ptr92, i32 4
  %34 = ptrtoint ptr %add.ptr98 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 63, ptr %add.ptr98, align 4
  %add.ptr103 = getelementptr i8, ptr %add.ptr92, i32 8
  %35 = ptrtoint ptr %add.ptr103 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 0, ptr %add.ptr103, align 4
  %add.ptr108 = getelementptr i8, ptr %add.ptr92, i32 12
  %36 = ptrtoint ptr %add.ptr108 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 4128768, ptr %add.ptr108, align 4
  %add.ptr113 = getelementptr i8, ptr %add.ptr92, i32 16
  %37 = ptrtoint ptr %add.ptr113 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 %div261, ptr %add.ptr113, align 4
  %add116 = add i32 %17, 80
  %add.ptr121 = getelementptr i8, ptr %15, i32 %add116
  %38 = ptrtoint ptr %add.ptr121 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile i32 -1826378489, ptr %add.ptr121, align 4
  %plnwt = getelementptr inbounds %struct.drm_mga_context_regs_t, ptr %5, i32 0, i32 2
  %39 = ptrtoint ptr %plnwt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %plnwt, align 4
  %add.ptr127 = getelementptr i8, ptr %add.ptr121, i32 4
  %41 = ptrtoint ptr %add.ptr127 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 %40, ptr %add.ptr127, align 4
  %front_offset = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 20
  %42 = ptrtoint ptr %front_offset to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %front_offset, align 4
  %add.ptr132 = getelementptr i8, ptr %add.ptr121, i32 8
  %44 = ptrtoint ptr %add.ptr132 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 %43, ptr %add.ptr132, align 4
  %front_pitch = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 21
  %45 = ptrtoint ptr %front_pitch to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %front_pitch, align 4
  %add.ptr137 = getelementptr i8, ptr %add.ptr121, i32 12
  %47 = ptrtoint ptr %add.ptr137 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 %46, ptr %add.ptr137, align 4
  %add.ptr142 = getelementptr i8, ptr %add.ptr121, i32 16
  %48 = ptrtoint ptr %add.ptr142 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 28672, ptr %add.ptr142, align 4
  %add145 = add i32 %17, 100
  store i32 %add145, ptr %tail, align 4
  %49 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %3, align 4
  %dispatched = getelementptr inbounds %struct.drm_mga_buf_priv_t, ptr %3, i32 0, i32 2
  %51 = ptrtoint ptr %dispatched to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dispatched, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not = icmp eq i32 %52, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %primary = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 33
  %53 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %primary, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  %add157 = add i32 %56, %add145
  %age = getelementptr inbounds %struct.drm_mga_freelist, ptr %50, i32 0, i32 2
  %57 = ptrtoint ptr %age to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add157, ptr %age, align 4
  %58 = ptrtoint ptr %sarea_priv to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sarea_priv, align 4
  %last_wrap = getelementptr inbounds %struct._drm_mga_sarea, ptr %59, i32 0, i32 24
  %60 = ptrtoint ptr %last_wrap to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %last_wrap, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %age160 = getelementptr inbounds %struct.drm_mga_freelist, ptr %50, i32 0, i32 2
  %62 = ptrtoint ptr %age160 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %age160, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ 0, %if.else ], [ %61, %if.then ]
  %63 = getelementptr inbounds %struct.drm_mga_freelist, ptr %50, i32 0, i32 2, i32 1
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %.sink, ptr %63, align 4
  %pending = getelementptr inbounds %struct.drm_buf, ptr %buf, i32 0, i32 9
  %65 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile i32 0, ptr %pending, align 4
  %66 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %used, align 4
  %67 = ptrtoint ptr %dispatched to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %dispatched, align 4
  %call = tail call i32 @mga_freelist_put(ptr noundef %dev, ptr noundef %buf) #5
  %wrapped = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %1, i32 0, i32 5
  %68 = ptrtoint ptr %wrapped to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %wrapped, align 4
  %and1.i = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool171.not = icmp eq i32 %and1.i, 0
  br i1 %tobool171.not, label %if.then172, label %if.end.do.end180_crit_edge

if.end.do.end180_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end180

if.then172:                                       ; preds = %if.end
  %space = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %1, i32 0, i32 4
  %70 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %space, align 4
  %high_mark = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %1, i32 0, i32 9
  %72 = ptrtoint ptr %high_mark to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %high_mark, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %73)
  %cmp = icmp ult i32 %71, %73
  br i1 %cmp, label %if.then175, label %if.else176

if.then175:                                       ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mga_do_dma_wrap_start(ptr noundef %1) #5
  br label %do.end180

if.else176:                                       ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mga_do_dma_flush(ptr noundef %1) #5
  br label %do.end180

do.end180:                                        ; preds = %if.else176, %if.then175, %if.end.do.end180_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mga_driver_fence_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39, !41, !43, !45, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74}
!llvm.named.register.sp = !{!76}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/mga/mga_state.c", i32 1012, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/mga/mga_state.c", i32 1016, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/mga/mga_state.c", i32 1030, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/mga/mga_state.c", i32 1084, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/mga/mga_state.c", i32 1085, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/mga/mga_state.c", i32 1086, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/mga/mga_state.c", i32 1087, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/mga/mga_state.c", i32 1088, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/mga/mga_state.c", i32 1089, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/mga/mga_state.c", i32 1090, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/mga/mga_state.c", i32 1091, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/mga/mga_state.c", i32 1092, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/mga/mga_state.c", i32 1093, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/mga/mga_state.c", i32 1094, i32 2}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/mga/mga_state.c", i32 1095, i32 2}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/mga/mga_state.c", i32 1096, i32 2}
!32 = !{ptr @mga_ioctls, !33, !"mga_ioctls", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/mga/mga_state.c", i32 1083, i32 29}
!34 = !{ptr @mga_max_ioctl, !35, !"mga_max_ioctl", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/mga/mga_state.c", i32 1099, i32 5}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!38 = distinct !{null, !37, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/mga/mga_state.c", i32 854, i32 2}
!45 = !{ptr @__func__.mga_dma_swap, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/mga/mga_state.c", i32 577, i32 2}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/mga/mga_state.c", i32 602, i32 3}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/mga/mga_state.c", i32 619, i32 2}
!52 = !{ptr @__func__.mga_dma_clear, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/mga/mga_state.c", i32 833, i32 2}
!54 = !{ptr @__func__.mga_dma_vertex, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/mga/mga_state.c", i32 878, i32 2}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/mga/mga_state.c", i32 388, i32 3}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/mga/mga_state.c", i32 409, i32 3}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/mga/mga_state.c", i32 631, i32 2}
!62 = !{ptr @__func__.mga_dma_indices, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/mga/mga_state.c", i32 913, i32 2}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/mga/mga_state.c", i32 678, i32 2}
!66 = !{ptr @__func__.mga_dma_iload, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/mga/mga_state.c", i32 948, i32 2}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/mga/mga_state.c", i32 452, i32 3}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/mga/mga_state.c", i32 457, i32 3}
!72 = !{ptr @__func__.mga_dma_blit, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/mga/mga_state.c", i32 985, i32 2}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/mga/mga_state.c", i32 470, i32 3}
!76 = !{!"sp"}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{i64 2153923650, i64 2153923675}
!87 = !{i64 5027023}
!88 = !{i64 2155113420}
