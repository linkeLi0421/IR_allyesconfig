; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/savage/savage_bci.c_pt.bc'
source_filename = "../drivers/gpu/drm/savage/savage_bci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_ioctl_desc = type { i32, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_savage_private = type { ptr, %struct.drm_savage_buf_priv, %struct.drm_savage_buf_priv, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.drm_local_map, [3 x i32], ptr, ptr, i32, i16, i32, ptr, i32, i32, i32, %struct.drm_savage_age, i32, i32, i32, i32, %union.drm_savage_state_t, i32, ptr, ptr, ptr, ptr }
%struct.drm_savage_buf_priv = type { ptr, ptr, %struct.drm_savage_age, ptr }
%struct.drm_local_map = type { i32, i32, i32, i32, ptr, i32 }
%struct.drm_savage_age = type { i16, i32 }
%union.drm_savage_state_t = type { %struct.anon.75 }
%struct.anon.75 = type { [4 x i8], i32, i32, i32, i32, i32, i32, i32 }
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
%struct.drm_buf = type { i32, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.drm_savage_dma_page = type { %struct.drm_savage_age, i32, i32 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.drm_master = type { %struct.kref, ptr, ptr, i32, %struct.idr, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.idr, %struct.idr, %struct.drm_lock_data }
%struct.drm_lock_data = type { ptr, ptr, %struct.wait_queue_head, i32, %struct.spinlock, i32, i32, i32 }
%struct.drm_dma = type { i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, i32 }
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
%struct.drm_device_dma = type { [23 x %struct.drm_buf_entry], i32, ptr, i32, i32, ptr, i32, i32 }
%struct.drm_buf_entry = type { i32, i32, ptr, i32, i32, ptr, i32, i32 }
%struct.drm_savage_init = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_savage_event = type { i32, i32 }

@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"age=0x%04x wrap=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"entry already on freelist.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wait_evnt failed!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"cur=%u, cur->used=%u, n=%u, rest=%u, nr_pages=%u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unflushed page %u: used=%u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cur=%u, cur->used=%u, n=%u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"strange pci_resource_len %08llx\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s called without lock held, held  %d owner %p %p\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.savage_bci_buffers = private unnamed_addr constant [19 x i8] c"savage_bci_buffers\00", align 1
@.str.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Process %d trying to send %d buffers via drmDMA\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Process %d trying to get %d buffers (of %d max)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reclaimed from client\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SAVAGE_BCI_INIT\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SAVAGE_BCI_CMDBUF\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SAVAGE_BCI_EVENT_EMIT\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SAVAGE_BCI_EVENT_WAIT\00", [42 x i8] zeroinitializer }, align 32
@savage_ioctls = dso_local constant { [4 x %struct.drm_ioctl_desc], [32 x i8] } { [4 x %struct.drm_ioctl_desc] [%struct.drm_ioctl_desc { i32 1079010368, i32 7, ptr @savage_bci_init, ptr @.str.11 }, %struct.drm_ioctl_desc { i32 1076126785, i32 1, ptr @savage_bci_cmdbuf, ptr @.str.12 }, %struct.drm_ioctl_desc { i32 -1073191870, i32 1, ptr @savage_bci_event_emit, ptr @.str.13 }, %struct.drm_ioctl_desc { i32 1074291779, i32 1, ptr @savage_bci_event_wait, ptr @.str.14 }], [32 x i8] zeroinitializer }, align 32
@savage_max_ioctl = dso_local global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.15 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"   tail=0x%04x %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"   head=0x%04x %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"returning NULL, tail->buf=%p!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__func__.savage_bci_init = private unnamed_addr constant [16 x i8] c"savage_bci_init\00", align 1
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid frame buffer bpp %d!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid depth buffer bpp %d!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid dma memory type %d!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"could not find sarea!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"could not find shadow status region!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"could not find DMA buffer region!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to ioremap DMA buffer region!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"could not find agp texture region!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"command DMA not supported on Savage3D/MX/IX.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"command and vertex DMA not supported at the same time.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"could not find command DMA region!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"AGP command DMA region is not a _DRM_AGP map!\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to ioremap command DMA region!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"PCI command DMA region is not a _DRM_CONSISTENT map!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"falling back to faked command DMA.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"could not allocate faked DMA buffer!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"could not initialize command DMA\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"first=%u, cur=%u, first->flushed=%u, cur->used=%u, pad=%u, align=%u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"phys_addr=%lx, len=%u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"first=cur=%u, cur->used=%u, cur->flushed=%u\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"first=%u, cur=%u, cur->used=%u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"partial DMA page %u: used=%u\00", [35 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Trying to emit %d words (more than guaranteed space in COB)\0A\00", [35 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"failed!\0A\00", [23 x i8] zeroinitializer }, align 32
@savage_bci_wait_fifo_shadow._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.49, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016[drm]    status=0x%08x, threshold=0x%08x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"savage_bci_wait_fifo_shadow\00", [36 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/gpu/drm/savage/savage_bci.c\00", [60 x i8] zeroinitializer }, align 32
@savage_bci_wait_fifo_shadow._entry_ptr = internal global ptr @savage_bci_wait_fifo_shadow._entry, section ".printk_index", align 4
@savage_bci_wait_event_shadow._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.49, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016[drm]    status=0x%08x, e=0x%04x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"savage_bci_wait_event_shadow\00", [35 x i8] zeroinitializer }, align 32
@savage_bci_wait_event_shadow._entry_ptr = internal global ptr @savage_bci_wait_event_shadow._entry, section ".printk_index", align 4
@savage_bci_wait_fifo_s3d._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.49, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016[drm]    status=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"savage_bci_wait_fifo_s3d\00", [39 x i8] zeroinitializer }, align 32
@savage_bci_wait_fifo_s3d._entry_ptr = internal global ptr @savage_bci_wait_fifo_s3d._entry, section ".printk_index", align 4
@savage_bci_wait_fifo_s4._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.54, ptr @.str.49, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"savage_bci_wait_fifo_s4\00", [40 x i8] zeroinitializer }, align 32
@savage_bci_wait_fifo_s4._entry_ptr = internal global ptr @savage_bci_wait_fifo_s4._entry, section ".printk_index", align 4
@savage_bci_wait_event_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.55, ptr @.str.49, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"savage_bci_wait_event_reg\00", [38 x i8] zeroinitializer }, align 32
@savage_bci_wait_event_reg._entry_ptr = internal global ptr @savage_bci_wait_event_reg._entry, section ".printk_index", align 4
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"count=%d\0A\00", [22 x i8] zeroinitializer }, align 32
@__func__.savage_bci_event_emit = private unnamed_addr constant [22 x i8] c"savage_bci_event_emit\00", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 286, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 289, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 368, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 382, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 408, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 420, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 598, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1011, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1016, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1024, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1064, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1076, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1077, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1078, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1079, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [14 x i8] c"savage_ioctls\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1075, i32 29 }
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"savage_max_ioctl\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1082, i32 5 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 254, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 265, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 266, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 277, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 174, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 671, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 675, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 680, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 703, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 710, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 722, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 728, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 737, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 747, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 753, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 760, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 766, i32 5 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 773, i32 5 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 779, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 790, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 797, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 880, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 446, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 471, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 506, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 520, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 533, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 56, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 69, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 70, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 145, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 91, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 112, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 167, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.241 = private constant [39 x i8] c"../drivers/gpu/drm/savage/savage_bci.c\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 222, i32 2 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @savage_bci_wait_event_reg._entry, ptr @savage_bci_wait_event_reg._entry_ptr, ptr @savage_bci_wait_event_shadow._entry, ptr @savage_bci_wait_event_shadow._entry_ptr, ptr @savage_bci_wait_fifo_s3d._entry, ptr @savage_bci_wait_fifo_s3d._entry_ptr, ptr @savage_bci_wait_fifo_s4._entry, ptr @savage_bci_wait_fifo_s4._entry_ptr, ptr @savage_bci_wait_fifo_shadow._entry, ptr @savage_bci_wait_fifo_shadow._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @savage_ioctls, ptr @savage_max_ioctl, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @savage_ioctls to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @savage_max_ioctl to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @savage_bci_wait_fifo_shadow._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @savage_bci_wait_event_shadow._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @savage_bci_wait_fifo_s3d._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @savage_bci_wait_fifo_s4._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @savage_bci_wait_event_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @savage_bci_emit_event(ptr noundef %dev_priv, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %status_ptr = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 30
  %0 = ptrtoint ptr %status_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %status_ptr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr i32, ptr %1, i32 1023
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx, align 4
  %conv = trunc i32 %3 to i16
  %conv2 = and i32 %3, 65535
  %event_counter = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 33
  %4 = ptrtoint ptr %event_counter to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %event_counter, align 4
  %conv3 = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2, i32 %conv3)
  %cmp = icmp ult i32 %conv2, %conv3
  br i1 %cmp, label %if.then5, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %event_wrap = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 34
  %6 = ptrtoint ptr %event_wrap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %event_wrap, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %event_wrap, align 4
  br label %if.end7

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %event_counter6 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 33
  %8 = ptrtoint ptr %event_counter6 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %event_counter6, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5, %if.then.if.end7_crit_edge
  %count.0 = phi i16 [ %conv, %if.then5 ], [ %conv, %if.then.if.end7_crit_edge ], [ %9, %if.else ]
  %10 = add i16 %count.0, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp11 = icmp eq i16 %10, 0
  br i1 %cmp11, label %if.then13, label %if.end7.if.end17_crit_edge

if.end7.if.end17_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %event_wrap15 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 34
  %11 = ptrtoint ptr %event_wrap15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %event_wrap15, align 4
  %inc16 = add i32 %12, 1
  store i32 %inc16, ptr %event_wrap15, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end7.if.end17_crit_edge
  %count.1 = phi i16 [ 1, %if.then13 ], [ %10, %if.end7.if.end17_crit_edge ]
  %event_counter18 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 33
  %13 = ptrtoint ptr %event_counter18 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %count.1, ptr %event_counter18, align 4
  br i1 %tobool.not, label %if.end17.if.end25_crit_edge, label %if.then21

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %conv22 = zext i16 %count.1 to i32
  %arrayidx24 = getelementptr i32, ptr %1, i32 1023
  %14 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 %conv22, ptr %arrayidx24, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.end17.if.end25_crit_edge
  %and26 = and i32 %flags, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %do.body40, label %if.then28

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %and29 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %spec.select = select i1 %tobool30.not, i32 -1073741824, i32 -1073610752
  %and33 = shl i32 %flags, 15
  %15 = and i32 %and33, 65536
  %16 = or i32 %spec.select, %15
  %wait_fifo = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 46
  %17 = ptrtoint ptr %wait_fifo to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wait_fifo, align 4
  %call = tail call i32 %18(ptr noundef %dev_priv, i32 noundef 2) #8
  %bci_ptr38 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 31
  %19 = ptrtoint ptr %bci_ptr38 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bci_ptr38, align 4
  %incdec.ptr = getelementptr i32, ptr %20, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 %16, ptr %20, align 4
  br label %if.end46

do.body40:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %wait_fifo41 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 46
  %22 = ptrtoint ptr %wait_fifo41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wait_fifo41, align 4
  %call42 = tail call i32 %23(ptr noundef %dev_priv, i32 noundef 1) #8
  %bci_ptr43 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 31
  %24 = ptrtoint ptr %bci_ptr43 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bci_ptr43, align 4
  br label %if.end46

if.end46:                                         ; preds = %do.body40, %if.then28
  %bci_ptr.0 = phi ptr [ %incdec.ptr, %if.then28 ], [ %25, %do.body40 ]
  %conv47 = zext i16 %count.1 to i32
  %or48 = or i32 %conv47, -1744830464
  %26 = ptrtoint ptr %bci_ptr.0 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 %or48, ptr %bci_ptr.0, align 4
  ret i16 %count.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @savage_freelist_put(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %dev_private2 = getelementptr inbounds %struct.drm_buf, ptr %buf, i32 0, i32 15
  %2 = ptrtoint ptr %dev_private2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private2, align 4
  %age = getelementptr inbounds %struct.drm_savage_buf_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %age to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %age, align 4
  %conv = zext i16 %5 to i32
  %wrap = getelementptr inbounds %struct.drm_savage_buf_priv, ptr %3, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %wrap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wrap, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %conv, i32 noundef %7) #8
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %cmp.not = icmp eq ptr %9, null
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %prev6 = getelementptr inbounds %struct.drm_savage_buf_priv, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %prev6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev6, align 4
  %cmp7.not = icmp eq ptr %11, null
  br i1 %cmp7.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %head = getelementptr inbounds %struct.drm_savage_private, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head, align 4
  store ptr %3, ptr %head, align 4
  %prev11 = getelementptr inbounds %struct.drm_savage_buf_priv, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %3, ptr %prev11, align 4
  %15 = ptrtoint ptr %prev6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %head, ptr %prev6, align 4
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @savage_dma_reset(ptr noundef %dev_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %status_ptr.i = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 30
  %0 = ptrtoint ptr %status_ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %status_ptr.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %arrayidx.i = getelementptr i32, ptr %1, i32 1023
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i, align 4
  %conv.i = trunc i32 %3 to i16
  %conv2.i = and i32 %3, 65535
  %event_counter.i = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 33
  %4 = ptrtoint ptr %event_counter.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %event_counter.i, align 4
  %conv3.i = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.i, i32 %conv3.i)
  %cmp.i = icmp ult i32 %conv2.i, %conv3.i
  br i1 %cmp.i, label %if.then5.i, label %if.then.i.if.end7.i_crit_edge

if.then.i.if.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %event_wrap.i = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 34
  %6 = ptrtoint ptr %event_wrap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %event_wrap.i, align 4
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr %event_wrap.i, align 4
  br label %if.end7.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %event_counter6.i = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 33
  %8 = ptrtoint ptr %event_counter6.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %event_counter6.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i, %if.then5.i, %if.then.i.if.end7.i_crit_edge
  %count.0.i = phi i16 [ %conv.i, %if.then5.i ], [ %conv.i, %if.then.i.if.end7.i_crit_edge ], [ %9, %if.else.i ]
  %10 = add i16 %count.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp11.i = icmp eq i16 %10, 0
  br i1 %cmp11.i, label %if.then13.i, label %if.end7.i.if.end17.i_crit_edge

if.end7.i.if.end17.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

if.then13.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %event_wrap15.i = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 34
  %11 = ptrtoint ptr %event_wrap15.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %event_wrap15.i, align 4
  %inc16.i = add i32 %12, 1
  store i32 %inc16.i, ptr %event_wrap15.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then13.i, %if.end7.i.if.end17.i_crit_edge
  %count.1.i = phi i16 [ 1, %if.then13.i ], [ %10, %if.end7.i.if.end17.i_crit_edge ]
  %event_counter18.i = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 33
  %13 = ptrtoint ptr %event_counter18.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %count.1.i, ptr %event_counter18.i, align 4
  %.pre = zext i16 %count.1.i to i32
  br i1 %tobool.not.i, label %if.end17.i.savage_bci_emit_event.exit_crit_edge, label %if.then21.i

if.end17.i.savage_bci_emit_event.exit_crit_edge:  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %savage_bci_emit_event.exit

if.then21.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx24.i = getelementptr i32, ptr %1, i32 1023
  %14 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 %.pre, ptr %arrayidx24.i, align 4
  br label %savage_bci_emit_event.exit

savage_bci_emit_event.exit:                       ; preds = %if.then21.i, %if.end17.i.savage_bci_emit_event.exit_crit_edge
  %wait_fifo41.i = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 46
  %15 = ptrtoint ptr %wait_fifo41.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wait_fifo41.i, align 4
  %call42.i = tail call i32 %16(ptr noundef %dev_priv, i32 noundef 1) #8
  %bci_ptr43.i = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 31
  %17 = ptrtoint ptr %bci_ptr43.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bci_ptr43.i, align 4
  %or48.i = or i32 %.pre, -1744830464
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 %or48.i, ptr %18, align 4
  %event_wrap = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 34
  %20 = ptrtoint ptr %event_wrap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %event_wrap, align 4
  %nr_dma_pages = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 36
  %22 = ptrtoint ptr %nr_dma_pages to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr_dma_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp33.not = icmp eq i32 %23, 0
  br i1 %cmp33.not, label %savage_bci_emit_event.exit.do.body10_crit_edge, label %do.body.lr.ph

savage_bci_emit_event.exit.do.body10_crit_edge:   ; preds = %savage_bci_emit_event.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body10

do.body.lr.ph:                                    ; preds = %savage_bci_emit_event.exit
  %dma_pages = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 35
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %i.034 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %do.body.do.body_crit_edge ]
  %24 = ptrtoint ptr %dma_pages to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dma_pages, align 4
  %arrayidx = getelementptr %struct.drm_savage_dma_page, ptr %25, i32 %i.034
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %count.1.i, ptr %arrayidx, align 4
  %27 = load ptr, ptr %dma_pages, align 4
  %wrap5 = getelementptr %struct.drm_savage_dma_page, ptr %27, i32 %i.034, i32 0, i32 1
  %28 = ptrtoint ptr %wrap5 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %21, ptr %wrap5, align 4
  %29 = load ptr, ptr %dma_pages, align 4
  %used = getelementptr %struct.drm_savage_dma_page, ptr %29, i32 %i.034, i32 1
  %30 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %used, align 4
  %31 = load ptr, ptr %dma_pages, align 4
  %flushed = getelementptr %struct.drm_savage_dma_page, ptr %31, i32 %i.034, i32 2
  %32 = ptrtoint ptr %flushed to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %flushed, align 4
  %inc = add nuw i32 %i.034, 1
  %33 = ptrtoint ptr %nr_dma_pages to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr_dma_pages, align 4
  %cmp = icmp ult i32 %inc, %34
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.do.body10_crit_edge

do.body.do.body10_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body10

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body10:                                        ; preds = %do.body.do.body10_crit_edge, %savage_bci_emit_event.exit.do.body10_crit_edge
  %last_dma_age = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 39
  %35 = ptrtoint ptr %last_dma_age to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %count.1.i, ptr %last_dma_age, align 4
  %wrap13 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 39, i32 1
  %36 = ptrtoint ptr %wrap13 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %21, ptr %wrap13, align 4
  %current_dma_page = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 38
  %37 = ptrtoint ptr %current_dma_page to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %current_dma_page, align 4
  %first_dma_page = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 37
  %38 = ptrtoint ptr %first_dma_page to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %first_dma_page, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @savage_dma_wait(ptr noundef %dev_priv, i32 noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_dma = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 27
  %0 = ptrtoint ptr %cmd_dma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd_dma, align 4
  %fake_dma = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 28
  %cmp = icmp eq ptr %1, %fake_dma
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  %status_ptr = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 30
  %2 = ptrtoint ptr %status_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %status_ptr, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %do.body
  %arrayidx = getelementptr i32, ptr %3, i32 1023
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx, align 4
  %conv = trunc i32 %5 to i16
  %conv3 = and i32 %5, 65535
  %event_counter = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 33
  %6 = ptrtoint ptr %event_counter to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %event_counter, align 4
  %conv4 = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3, i32 %conv4)
  %cmp5 = icmp ult i32 %conv3, %conv4
  br i1 %cmp5, label %if.then7, label %if.then1.if.then13_crit_edge

if.then1.if.then13_crit_edge:                     ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.then7:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  %event_wrap = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 34
  %8 = ptrtoint ptr %event_wrap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %event_wrap, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %event_wrap, align 4
  br label %if.then13

if.then13:                                        ; preds = %if.then7, %if.then1.if.then13_crit_edge
  %10 = ptrtoint ptr %event_counter to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %event_counter, align 4
  %arrayidx15 = getelementptr i32, ptr %3, i32 1
  %11 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %arrayidx15, align 4
  %and = and i32 %12, 65535
  br label %if.end20

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %mmio = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 22
  %13 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %handle, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 297988
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  %18 = and i32 %17, -65536
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then13
  %event.0.in = phi i32 [ %and, %if.then13 ], [ %19, %if.else ]
  %event_wrap21 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 34
  %20 = ptrtoint ptr %event_wrap21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %event_wrap21, align 4
  %conv22 = and i32 %event.0.in, 65535
  %event_counter23 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 33
  %22 = ptrtoint ptr %event_counter23 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %event_counter23, align 4
  %conv24 = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv22, i32 %conv24)
  %cmp25 = icmp ugt i32 %conv22, %conv24
  %dec = sext i1 %cmp25 to i32
  %spec.select = add i32 %21, %dec
  %dma_pages = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 35
  %24 = ptrtoint ptr %dma_pages to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dma_pages, align 4
  %arrayidx29 = getelementptr %struct.drm_savage_dma_page, ptr %25, i32 %page
  %wrap30 = getelementptr inbounds %struct.drm_savage_age, ptr %arrayidx29, i32 0, i32 1
  %26 = ptrtoint ptr %wrap30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %wrap30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %spec.select)
  %cmp31 = icmp ugt i32 %27, %spec.select
  br i1 %cmp31, label %if.end20.if.then47_crit_edge, label %lor.lhs.false

if.end20.if.then47_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then47

lor.lhs.false:                                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %spec.select)
  %cmp37 = icmp eq i32 %27, %spec.select
  br i1 %cmp37, label %land.lhs.true, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %lor.lhs.false
  %28 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx29, align 4
  %conv43 = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv22, i32 %conv43)
  %cmp45 = icmp ult i32 %conv22, %conv43
  br i1 %cmp45, label %land.lhs.true.if.then47_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.then47_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then47

if.then47:                                        ; preds = %land.lhs.true.if.then47_crit_edge, %if.end20.if.then47_crit_edge
  %wait_evnt = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 47
  %30 = ptrtoint ptr %wait_evnt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wait_evnt, align 4
  %32 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx29, align 4
  %call52 = tail call i32 %31(ptr noundef %dev_priv, i16 noundef zeroext %33) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.then55, label %if.then47.cleanup_crit_edge

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then55:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %if.then47.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @savage_dma_alloc(ptr noundef %dev_priv, i32 noundef %n) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %current_dma_page = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 38
  %0 = ptrtoint ptr %current_dma_page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_dma_page, align 4
  %dma_pages = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 35
  %2 = ptrtoint ptr %dma_pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_pages, align 4
  %used = getelementptr %struct.drm_savage_dma_page, ptr %3, i32 %1, i32 1
  %4 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %used, align 4
  %sub = sub i32 1024, %5
  %sub.neg136 = add i32 %5, %n
  %sub2 = add i32 %sub.neg136, -1
  %div126 = lshr i32 %sub2, 10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef %1, i32 noundef %5, i32 noundef %n, i32 noundef %sub, i32 noundef %div126) #8
  %add6 = add i32 %div126, %1
  %nr_dma_pages = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 36
  %6 = ptrtoint ptr %nr_dma_pages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_dma_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add6, i32 %7)
  %cmp = icmp ult i32 %add6, %7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cmd_dma = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 27
  %8 = ptrtoint ptr %cmd_dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmd_dma, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handle, align 4
  %mul = shl i32 %1, 10
  %add.ptr = getelementptr i32, ptr %11, i32 %mul
  %12 = ptrtoint ptr %dma_pages to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_pages, align 4
  %used9 = getelementptr %struct.drm_savage_dma_page, ptr %13, i32 %1, i32 1
  %14 = ptrtoint ptr %used9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %used9, align 4
  %add.ptr10 = getelementptr i32, ptr %add.ptr, i32 %15
  %16 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %n)
  %add16 = add i32 %15, %16
  %17 = ptrtoint ptr %used9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add16, ptr %used9, align 4
  %sub17 = sub i32 %n, %16
  %inc = add i32 %1, 1
  br label %if.end33

if.else:                                          ; preds = %entry
  %dma_flush = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 49
  %18 = ptrtoint ptr %dma_flush to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dma_flush, align 4
  tail call void %19(ptr noundef %dev_priv) #8
  %sub19 = add i32 %n, 1023
  %div20127 = lshr i32 %sub19, 10
  %20 = ptrtoint ptr %nr_dma_pages to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr_dma_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %21)
  %cmp22128 = icmp ult i32 %1, %21
  br i1 %cmp22128, label %for.body.lr.ph, label %if.else.for.end_crit_edge

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.else
  %last_dma_age = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 39
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0129 = phi i32 [ %1, %for.body.lr.ph ], [ %inc30, %for.body.for.body_crit_edge ]
  %22 = ptrtoint ptr %dma_pages to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dma_pages, align 4
  %arrayidx24 = getelementptr %struct.drm_savage_dma_page, ptr %23, i32 %i.0129
  %24 = ptrtoint ptr %last_dma_age to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %last_dma_age, align 4
  %26 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %25, ptr %arrayidx24, align 4
  %27 = load ptr, ptr %dma_pages, align 4
  %used27 = getelementptr %struct.drm_savage_dma_page, ptr %27, i32 %i.0129, i32 1
  %28 = ptrtoint ptr %used27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %used27, align 4
  %29 = load ptr, ptr %dma_pages, align 4
  %flushed = getelementptr %struct.drm_savage_dma_page, ptr %29, i32 %i.0129, i32 2
  %30 = ptrtoint ptr %flushed to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %flushed, align 4
  %inc30 = add nuw i32 %i.0129, 1
  %31 = ptrtoint ptr %nr_dma_pages to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nr_dma_pages, align 4
  %cmp22 = icmp ult i32 %inc30, %32
  br i1 %cmp22, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.else.for.end_crit_edge
  %cmd_dma31 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 27
  %33 = ptrtoint ptr %cmd_dma31 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cmd_dma31, align 4
  %handle32 = getelementptr inbounds %struct.drm_local_map, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %handle32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %handle32, align 4
  %first_dma_page = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 37
  %37 = ptrtoint ptr %first_dma_page to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %first_dma_page, align 4
  br label %if.end33

if.end33:                                         ; preds = %for.end, %if.then
  %n.addr.0 = phi i32 [ %sub17, %if.then ], [ %n, %for.end ]
  %cur.0 = phi i32 [ %inc, %if.then ], [ 0, %for.end ]
  %nr_pages.0 = phi i32 [ %div126, %if.then ], [ %div20127, %for.end ]
  %dma_ptr.0 = phi ptr [ %add.ptr10, %if.then ], [ %36, %for.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_pages.0)
  %cmp35.not130 = icmp eq i32 %nr_pages.0, 0
  br i1 %cmp35.not130, label %if.end33.for.end58_crit_edge, label %if.end33.for.body36_crit_edge

if.end33.for.body36_crit_edge:                    ; preds = %if.end33
  br label %for.body36

if.end33.for.end58_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end58

for.body36:                                       ; preds = %if.end44.for.body36_crit_edge, %if.end33.for.body36_crit_edge
  %i.1133 = phi i32 [ %inc57, %if.end44.for.body36_crit_edge ], [ %cur.0, %if.end33.for.body36_crit_edge ]
  %nr_pages.1132 = phi i32 [ %dec, %if.end44.for.body36_crit_edge ], [ %nr_pages.0, %if.end33.for.body36_crit_edge ]
  %n.addr.1131 = phi i32 [ %sub55, %if.end44.for.body36_crit_edge ], [ %n.addr.0, %if.end33.for.body36_crit_edge ]
  %38 = ptrtoint ptr %dma_pages to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dma_pages, align 4
  %used39 = getelementptr %struct.drm_savage_dma_page, ptr %39, i32 %i.1133, i32 1
  %40 = ptrtoint ptr %used39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %used39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not = icmp eq i32 %41, 0
  br i1 %tobool.not, label %for.body36.if.end44_crit_edge, label %if.then40

for.body36.if.end44_crit_edge:                    ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then40:                                        ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4, i32 noundef %i.1133, i32 noundef %41) #8
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %for.body36.if.end44_crit_edge
  %42 = ptrtoint ptr %dma_pages to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dma_pages, align 4
  %used49 = getelementptr %struct.drm_savage_dma_page, ptr %43, i32 %i.1133, i32 1
  %44 = call i32 @llvm.umin.i32(i32 %n.addr.1131, i32 1024)
  %45 = ptrtoint ptr %used49 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %used49, align 4
  %sub55 = add i32 %n.addr.1131, -1024
  %inc57 = add i32 %i.1133, 1
  %dec = add nsw i32 %nr_pages.1132, -1
  %cmp35.not = icmp eq i32 %dec, 0
  br i1 %cmp35.not, label %if.end44.for.end58_crit_edge, label %if.end44.for.body36_crit_edge

if.end44.for.body36_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body36

if.end44.for.end58_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end58

for.end58:                                        ; preds = %if.end44.for.end58_crit_edge, %if.end33.for.end58_crit_edge
  %n.addr.1.lcssa = phi i32 [ %n.addr.0, %if.end33.for.end58_crit_edge ], [ %sub55, %if.end44.for.end58_crit_edge ]
  %i.1.lcssa = phi i32 [ %cur.0, %if.end33.for.end58_crit_edge ], [ %inc57, %if.end44.for.end58_crit_edge ]
  %dec59 = add i32 %i.1.lcssa, -1
  %46 = ptrtoint ptr %current_dma_page to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %dec59, ptr %current_dma_page, align 4
  %47 = ptrtoint ptr %dma_pages to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dma_pages, align 4
  %used63 = getelementptr %struct.drm_savage_dma_page, ptr %48, i32 %dec59, i32 1
  %49 = ptrtoint ptr %used63 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %used63, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef %dec59, i32 noundef %50, i32 noundef %n.addr.1.lcssa) #8
  %51 = ptrtoint ptr %current_dma_page to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %current_dma_page, align 4
  tail call void @savage_dma_wait(ptr noundef %dev_priv, i32 noundef %52)
  ret ptr %dma_ptr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @savage_driver_load(ptr nocapture noundef %dev, i32 noundef %chipset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 292) #11
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %1, i32 -136
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %3 = ptrtoint ptr %dev_private to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %dev_private, align 4
  %chipset2 = getelementptr inbounds %struct.drm_savage_private, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %chipset2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %chipset, ptr %chipset2, align 4
  tail call void @pci_set_master(ptr noundef %add.ptr) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @savage_driver_firstopen(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %chipset = getelementptr inbounds %struct.drm_savage_private, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chipset, align 4
  %6 = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %7 = icmp ult i32 %6, 2
  br i1 %7, label %if.then, label %if.else42

if.then:                                          ; preds = %entry
  %resource = getelementptr i8, ptr %3, i32 936
  %8 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %resource, align 8
  %add = add i32 %9, 16777216
  %add4 = add i32 %9, 33554432
  %end = getelementptr i8, ptr %3, i32 940
  %10 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp7 = icmp eq i32 %11, 0
  %sub = sub i32 %11, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217727, i32 %sub)
  %phi.cmp195 = icmp eq i32 %sub, 134217727
  %not.cmp7 = xor i1 %cmp7, true
  %cond = select i1 %not.cmp7, i1 %phi.cmp195, i1 false
  br i1 %cond, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %mtrr_handles = getelementptr inbounds %struct.drm_savage_private, ptr %1, i32 0, i32 29
  %12 = ptrtoint ptr %mtrr_handles to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %mtrr_handles, align 4
  %arrayidx21 = getelementptr %struct.drm_savage_private, ptr %1, i32 0, i32 29, i32 1
  %13 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %arrayidx21, align 4
  %arrayidx25 = getelementptr %struct.drm_savage_private, ptr %1, i32 0, i32 29, i32 2
  %14 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %arrayidx25, align 4
  br label %if.end129

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %add39 = add i32 %sub, 1
  %spec.select = select i1 %cmp7, i32 0, i32 %add39
  %conv = zext i32 %spec.select to i64
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6, i64 noundef %conv) #8
  br label %if.end129

if.else42:                                        ; preds = %entry
  %.off = add i32 %5, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %resource102 = getelementptr i8, ptr %3, i32 936
  %15 = ptrtoint ptr %resource102 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %resource102, align 8
  %arrayidx106 = getelementptr i8, ptr %3, i32 968
  %17 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx106, align 8
  br i1 %switch, label %if.else101, label %if.then50

if.then50:                                        ; preds = %if.else42
  %add57 = add i32 %18, 33554432
  %end60 = getelementptr i8, ptr %3, i32 972
  %19 = ptrtoint ptr %end60 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %end60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp61 = icmp eq i32 %20, 0
  %sub71 = sub i32 %20, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217727, i32 %sub71)
  %phi.cmp = icmp eq i32 %sub71, 134217727
  %not.cmp61 = xor i1 %cmp61, true
  %cond74 = select i1 %not.cmp61, i1 %phi.cmp, i1 false
  br i1 %cond74, label %if.then77, label %if.else81

if.then77:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  %mtrr_handles79 = getelementptr inbounds %struct.drm_savage_private, ptr %1, i32 0, i32 29
  %21 = ptrtoint ptr %mtrr_handles79 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %mtrr_handles79, align 4
  br label %if.end129

if.else81:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  %add96 = add i32 %sub71, 1
  %spec.select196 = select i1 %cmp61, i32 0, i32 %add96
  %conv99 = zext i32 %spec.select196 to i64
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6, i64 noundef %conv99) #8
  br label %if.end129

if.else101:                                       ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #10
  %end110 = getelementptr i8, ptr %3, i32 972
  %22 = ptrtoint ptr %end110 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %end110, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp111 = icmp eq i32 %23, 0
  %sub121 = sub i32 1, %18
  %add122 = add i32 %sub121, %23
  %cond124 = select i1 %cmp111, i32 0, i32 %add122
  %arrayidx126 = getelementptr i8, ptr %3, i32 1000
  %24 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx126, align 8
  br label %if.end129

if.end129:                                        ; preds = %if.else101, %if.else81, %if.then77, %if.else, %if.then16
  %mmio_base.0 = phi i32 [ %add, %if.then16 ], [ %add, %if.else ], [ %16, %if.then77 ], [ %16, %if.else81 ], [ %16, %if.else101 ]
  %fb_base.0 = phi i32 [ %9, %if.then16 ], [ %9, %if.else ], [ %18, %if.then77 ], [ %18, %if.else81 ], [ %18, %if.else101 ]
  %fb_size.0 = phi i32 [ 16777216, %if.then16 ], [ 16777216, %if.else ], [ 33554432, %if.then77 ], [ 33554432, %if.else81 ], [ %cond124, %if.else101 ]
  %aperture_base.0 = phi i32 [ %add4, %if.then16 ], [ %add4, %if.else ], [ %add57, %if.then77 ], [ %add57, %if.else81 ], [ %25, %if.else101 ]
  %mmio = getelementptr inbounds %struct.drm_savage_private, ptr %1, i32 0, i32 22
  %call130 = tail call i32 @drm_legacy_addmap(ptr noundef %dev, i32 noundef %mmio_base.0, i32 noundef 524288, i32 noundef 1, i32 noundef 2, ptr noundef %mmio) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool.not = icmp eq i32 %call130, 0
  br i1 %tobool.not, label %if.end132, label %if.end129.cleanup_crit_edge

if.end129.cleanup_crit_edge:                      ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end132:                                        ; preds = %if.end129
  %fb = getelementptr inbounds %struct.drm_savage_private, ptr %1, i32 0, i32 23
  %call133 = tail call i32 @drm_legacy_addmap(ptr noundef %dev, i32 noundef %fb_base.0, i32 noundef %fb_size.0, i32 noundef 0, i32 noundef 16, ptr noundef %fb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.end136, label %if.end132.cleanup_crit_edge

if.end132.cleanup_crit_edge:                      ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end136:                                        ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #10
  %aperture = getelementptr inbounds %struct.drm_savage_private, ptr %1, i32 0, i32 24
  %call137 = tail call i32 @drm_legacy_addmap(ptr noundef %dev, i32 noundef %aperture_base.0, i32 noundef 83886080, i32 noundef 0, i32 noundef 16, ptr noundef %aperture) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end136, %if.end132.cleanup_crit_edge, %if.end129.cleanup_crit_edge
  %retval.0 = phi i32 [ %call137, %if.end136 ], [ %call130, %if.end129.cleanup_crit_edge ], [ %call133, %if.end132.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_addmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @savage_driver_lastclose(ptr nocapture noundef readonly %dev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %uglygep = getelementptr i8, ptr %1, i32 168
  %2 = call ptr @memset(ptr %uglygep, i32 0, i32 12)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @savage_driver_unload(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @savage_bci_buffers(ptr nocapture noundef readonly %dev, ptr nocapture noundef %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 45
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1, align 4
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %file_priv5 = getelementptr inbounds %struct.drm_master, ptr %3, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %file_priv5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %file_priv5, align 4
  %cmp.not = icmp eq ptr %9, %file_priv
  br i1 %cmp.not, label %do.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %5, align 4
  %and10 = and i32 %11, -2147483648
  %file_priv13 = getelementptr inbounds %struct.drm_master, ptr %3, i32 0, i32 12, i32 1
  %12 = ptrtoint ptr %file_priv13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %file_priv13, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.savage_bci_buffers, i32 noundef %and10, ptr noundef %13, ptr noundef %file_priv) #8
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false
  %send_count = getelementptr inbounds %struct.drm_dma, ptr %data, i32 0, i32 1
  %14 = ptrtoint ptr %send_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %send_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp14.not = icmp eq i32 %15, 0
  br i1 %cmp14.not, label %if.end18, label %if.then15

if.then15:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = tail call i32 @llvm.read_register.i32(metadata !130) #8
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
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8, i32 noundef %21, i32 noundef %15) #8
  br label %cleanup

if.end18:                                         ; preds = %do.end
  %request_count = getelementptr inbounds %struct.drm_dma, ptr %data, i32 0, i32 5
  %22 = ptrtoint ptr %request_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %request_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp19 = icmp slt i32 %23, 0
  br i1 %cmp19, label %if.end18.if.then23_crit_edge, label %lor.lhs.false20

if.end18.if.then23_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23

lor.lhs.false20:                                  ; preds = %if.end18
  %buf_count = getelementptr inbounds %struct.drm_device_dma, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %buf_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp22 = icmp sgt i32 %23, %25
  br i1 %cmp22, label %lor.lhs.false20.if.then23_crit_edge, label %if.end29

lor.lhs.false20.if.then23_crit_edge:              ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23

if.then23:                                        ; preds = %lor.lhs.false20.if.then23_crit_edge, %if.end18.if.then23_crit_edge
  %26 = tail call i32 @llvm.read_register.i32(metadata !130) #8
  %and.i52 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i52 to ptr
  %task25 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task25, align 8
  %pid.i53 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 68
  %30 = ptrtoint ptr %pid.i53 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pid.i53, align 8
  %buf_count28 = getelementptr inbounds %struct.drm_device_dma, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %buf_count28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_count28, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9, i32 noundef %31, i32 noundef %23, i32 noundef %33) #8
  br label %cleanup

if.end29:                                         ; preds = %lor.lhs.false20
  %granted_count = getelementptr inbounds %struct.drm_dma, ptr %data, i32 0, i32 9
  %34 = ptrtoint ptr %granted_count to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %granted_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool31.not = icmp eq i32 %23, 0
  br i1 %tobool31.not, label %if.end29.cleanup_crit_edge, label %if.then32

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %call33 = tail call fastcc i32 @savage_bci_get_buffers(ptr noundef %dev, ptr noundef %file_priv, ptr noundef %data)
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.end29.cleanup_crit_edge, %if.then23, %if.then15, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then15 ], [ -22, %if.then23 ], [ %call33, %if.then32 ], [ 0, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @savage_bci_get_buffers(ptr nocapture noundef readonly %dev, ptr noundef %file_priv, ptr nocapture noundef %d) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %granted_count = getelementptr inbounds %struct.drm_dma, ptr %d, i32 0, i32 9
  %0 = ptrtoint ptr %granted_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %granted_count, align 4
  %request_count = getelementptr inbounds %struct.drm_dma, ptr %d, i32 0, i32 5
  %2 = ptrtoint ptr %request_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %request_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp47 = icmp slt i32 %1, %3
  br i1 %cmp47, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %request_indices = getelementptr inbounds %struct.drm_dma, ptr %d, i32 0, i32 7
  %request_sizes = getelementptr inbounds %struct.drm_dma, ptr %d, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %if.end10.for.body_crit_edge, %for.body.lr.ph
  %i.048 = phi i32 [ %1, %for.body.lr.ph ], [ %inc12, %if.end10.for.body_crit_edge ]
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %prev.i = getelementptr inbounds %struct.drm_savage_private, ptr %5, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.15) #8
  %status_ptr.i = getelementptr inbounds %struct.drm_savage_private, ptr %5, i32 0, i32 30
  %8 = ptrtoint ptr %status_ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %status_ptr.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i36

if.then.i36:                                      ; preds = %for.body
  %arrayidx.i = getelementptr i32, ptr %9, i32 1023
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i, align 4
  %conv.i = trunc i32 %11 to i16
  %conv3.i = and i32 %11, 65535
  %event_counter.i = getelementptr inbounds %struct.drm_savage_private, ptr %5, i32 0, i32 33
  %12 = ptrtoint ptr %event_counter.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %event_counter.i, align 4
  %conv4.i = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3.i, i32 %conv4.i)
  %cmp.i = icmp ult i32 %conv3.i, %conv4.i
  br i1 %cmp.i, label %if.then6.i, label %if.then.i36.if.then11.i_crit_edge

if.then.i36.if.then11.i_crit_edge:                ; preds = %if.then.i36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i

if.then6.i:                                       ; preds = %if.then.i36
  call void @__sanitizer_cov_trace_pc() #10
  %event_wrap.i = getelementptr inbounds %struct.drm_savage_private, ptr %5, i32 0, i32 34
  %14 = ptrtoint ptr %event_wrap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %event_wrap.i, align 4
  %inc.i = add i32 %15, 1
  store i32 %inc.i, ptr %event_wrap.i, align 4
  br label %if.then11.i

if.then11.i:                                      ; preds = %if.then6.i, %if.then.i36.if.then11.i_crit_edge
  %16 = ptrtoint ptr %event_counter.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i, ptr %event_counter.i, align 4
  %arrayidx13.i = getelementptr i32, ptr %9, i32 1
  %17 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %arrayidx13.i, align 4
  %and.i = and i32 %18, 65535
  br label %if.end18.i

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %mmio.i = getelementptr inbounds %struct.drm_savage_private, ptr %5, i32 0, i32 22
  %19 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio.i, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %handle.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 297988
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  %24 = and i32 %23, -65536
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #8
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else.i, %if.then11.i
  %event.0.in.i = phi i32 [ %and.i, %if.then11.i ], [ %25, %if.else.i ]
  %event_wrap19.i = getelementptr inbounds %struct.drm_savage_private, ptr %5, i32 0, i32 34
  %26 = ptrtoint ptr %event_wrap19.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %event_wrap19.i, align 4
  %conv20.i = and i32 %event.0.in.i, 65535
  %event_counter21.i = getelementptr inbounds %struct.drm_savage_private, ptr %5, i32 0, i32 33
  %28 = ptrtoint ptr %event_counter21.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %event_counter21.i, align 4
  %conv22.i = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv20.i, i32 %conv22.i)
  %cmp23.i = icmp ugt i32 %conv20.i, %conv22.i
  %dec.i = sext i1 %cmp23.i to i32
  %spec.select.i = add i32 %27, %dec.i
  %age.i = getelementptr inbounds %struct.drm_savage_buf_priv, ptr %7, i32 0, i32 2
  %30 = ptrtoint ptr %age.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %age.i, align 4
  %conv28.i = zext i16 %31 to i32
  %wrap30.i = getelementptr inbounds %struct.drm_savage_buf_priv, ptr %7, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %wrap30.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %wrap30.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.16, i32 noundef %conv28.i, i32 noundef %33) #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.17, i32 noundef %conv20.i, i32 noundef %spec.select.i) #8
  %buf.i = getelementptr inbounds %struct.drm_savage_buf_priv, ptr %7, i32 0, i32 3
  %34 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %buf.i, align 4
  %tobool32.not.i = icmp eq ptr %35, null
  br i1 %tobool32.not.i, label %if.end18.i.savage_freelist_get.exit.thread_crit_edge, label %land.lhs.true.i

if.end18.i.savage_freelist_get.exit.thread_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %savage_freelist_get.exit.thread

land.lhs.true.i:                                  ; preds = %if.end18.i
  %36 = ptrtoint ptr %wrap30.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %wrap30.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %spec.select.i)
  %cmp35.i = icmp ult i32 %37, %spec.select.i
  br i1 %cmp35.i, label %land.lhs.true.i.savage_freelist_get.exit_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.savage_freelist_get.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %savage_freelist_get.exit

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %spec.select.i)
  %cmp39.i = icmp eq i32 %37, %spec.select.i
  br i1 %cmp39.i, label %land.lhs.true41.i, label %lor.lhs.false48.i

land.lhs.true41.i:                                ; preds = %lor.lhs.false.i
  %38 = ptrtoint ptr %age.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %age.i, align 4
  %conv44.i = zext i16 %39 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv20.i, i32 %conv44.i)
  %cmp46.not.i = icmp uge i32 %conv20.i, %conv44.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv20.i)
  %cmp50.i = icmp eq i32 %conv20.i, 0
  %or.cond.i = or i1 %cmp50.i, %cmp46.not.i
  br i1 %or.cond.i, label %land.lhs.true41.i.savage_freelist_get.exit_crit_edge, label %land.lhs.true41.i.savage_freelist_get.exit.thread_crit_edge

land.lhs.true41.i.savage_freelist_get.exit.thread_crit_edge: ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %savage_freelist_get.exit.thread

land.lhs.true41.i.savage_freelist_get.exit_crit_edge: ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %savage_freelist_get.exit

lor.lhs.false48.i:                                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv20.i)
  %cmp50.old.i = icmp eq i32 %conv20.i, 0
  br i1 %cmp50.old.i, label %lor.lhs.false48.i.savage_freelist_get.exit_crit_edge, label %lor.lhs.false48.i.savage_freelist_get.exit.thread_crit_edge

lor.lhs.false48.i.savage_freelist_get.exit.thread_crit_edge: ; preds = %lor.lhs.false48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %savage_freelist_get.exit.thread

lor.lhs.false48.i.savage_freelist_get.exit_crit_edge: ; preds = %lor.lhs.false48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %savage_freelist_get.exit

savage_freelist_get.exit.thread:                  ; preds = %lor.lhs.false48.i.savage_freelist_get.exit.thread_crit_edge, %land.lhs.true41.i.savage_freelist_get.exit.thread_crit_edge, %if.end18.i.savage_freelist_get.exit.thread_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.18, ptr noundef %35) #8
  br label %cleanup

savage_freelist_get.exit:                         ; preds = %lor.lhs.false48.i.savage_freelist_get.exit_crit_edge, %land.lhs.true41.i.savage_freelist_get.exit_crit_edge, %land.lhs.true.i.savage_freelist_get.exit_crit_edge
  %40 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %7, align 4
  %prev55.i = getelementptr inbounds %struct.drm_savage_buf_priv, ptr %7, i32 0, i32 1
  %42 = ptrtoint ptr %prev55.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev55.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %43, align 4
  %prev57.i = getelementptr inbounds %struct.drm_savage_buf_priv, ptr %41, i32 0, i32 1
  %45 = ptrtoint ptr %prev57.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %43, ptr %prev57.i, align 4
  store ptr null, ptr %prev55.i, align 4
  store ptr null, ptr %7, align 4
  %46 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %buf.i, align 4
  %tobool.not = icmp eq ptr %47, null
  br i1 %tobool.not, label %savage_freelist_get.exit.cleanup_crit_edge, label %if.end

savage_freelist_get.exit.cleanup_crit_edge:       ; preds = %savage_freelist_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %savage_freelist_get.exit
  %file_priv1 = getelementptr inbounds %struct.drm_buf, ptr %47, i32 0, i32 10
  %48 = ptrtoint ptr %file_priv1 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %file_priv, ptr %file_priv1, align 4
  %49 = ptrtoint ptr %request_indices to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %request_indices, align 4
  %arrayidx = getelementptr i32, ptr %50, i32 %i.048
  tail call void @__might_fault(ptr noundef nonnull @.str.21, i32 noundef 174) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.end.cleanup_crit_edge, label %if.end.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  %51 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arrayidx, i32 4, i32 -1226833920) #12, !srcloc !143
  %asmresult.i.i = extractvalue { i32, i32 } %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %47, i32 noundef 4) #8
  %call.i1.i.i = tail call i32 @arm_copy_to_user(ptr noundef %arrayidx, ptr noundef nonnull %47, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool3.not = icmp eq i32 %call.i1.i.i, 0
  br i1 %tobool3.not, label %if.end5, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %copy_to_user.exit
  %52 = ptrtoint ptr %request_sizes to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %request_sizes, align 4
  %arrayidx6 = getelementptr i32, ptr %53, i32 %i.048
  %total = getelementptr inbounds %struct.drm_buf, ptr %47, i32 0, i32 1
  tail call void @__might_fault(ptr noundef nonnull @.str.21, i32 noundef 174) #8
  %call.i.i26 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i26, label %if.end5.cleanup_crit_edge, label %if.end.i.i30

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i30:                                     ; preds = %if.end5
  %54 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arrayidx6, i32 4, i32 -1226833920) #12, !srcloc !143
  %asmresult.i.i28 = extractvalue { i32, i32 } %54, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i28)
  %cmp.i.i29 = icmp eq i32 %asmresult.i.i28, 0
  br i1 %cmp.i.i29, label %copy_to_user.exit35, label %if.end.i.i30.cleanup_crit_edge

if.end.i.i30.cleanup_crit_edge:                   ; preds = %if.end.i.i30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

copy_to_user.exit35:                              ; preds = %if.end.i.i30
  %call.i.i.i31 = tail call zeroext i1 @__kasan_check_read(ptr noundef %total, i32 noundef 4) #8
  %call.i1.i.i32 = tail call i32 @arm_copy_to_user(ptr noundef %arrayidx6, ptr noundef %total, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i32)
  %tobool8.not = icmp eq i32 %call.i1.i.i32, 0
  br i1 %tobool8.not, label %if.end10, label %copy_to_user.exit35.cleanup_crit_edge

copy_to_user.exit35.cleanup_crit_edge:            ; preds = %copy_to_user.exit35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %copy_to_user.exit35
  %55 = ptrtoint ptr %granted_count to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %granted_count, align 4
  %inc = add i32 %56, 1
  store i32 %inc, ptr %granted_count, align 4
  %inc12 = add nsw i32 %i.048, 1
  %57 = ptrtoint ptr %request_count to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %request_count, align 4
  %cmp = icmp slt i32 %inc12, %58
  br i1 %cmp, label %if.end10.for.body_crit_edge, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %if.end10.cleanup_crit_edge, %copy_to_user.exit35.cleanup_crit_edge, %if.end.i.i30.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %copy_to_user.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %savage_freelist_get.exit.cleanup_crit_edge, %savage_freelist_get.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %savage_freelist_get.exit.thread ], [ 0, %entry.cleanup_crit_edge ], [ -11, %savage_freelist_get.exit.cleanup_crit_edge ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %copy_to_user.exit35.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ -14, %if.end5.cleanup_crit_edge ], [ -14, %if.end.i.i30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @savage_reclaim_buffers(ptr nocapture noundef readonly %dev, ptr noundef readonly %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 45
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %tobool.not = icmp eq ptr %1, null
  %tobool2.not = icmp eq ptr %3, null
  %or.cond59 = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond59, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %entry
  %buflist = getelementptr inbounds %struct.drm_device_dma, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %buflist to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buflist, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %master = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 8
  %6 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %if.end7.if.end14_crit_edge, label %land.lhs.true

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end7
  %lock = getelementptr inbounds %struct.drm_master, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lock, align 4
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %land.lhs.true.if.end14_crit_edge, label %if.then11

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_legacy_idlelock_take(ptr noundef %lock) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %land.lhs.true.if.end14_crit_edge, %if.end7.if.end14_crit_edge
  %tobool29.not = phi i1 [ false, %if.then11 ], [ true, %land.lhs.true.if.end14_crit_edge ], [ true, %if.end7.if.end14_crit_edge ]
  %buf_count = getelementptr inbounds %struct.drm_device_dma, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp62 = icmp sgt i32 %11, 0
  br i1 %cmp62, label %for.body.lr.ph, label %if.end14.for.end_crit_edge

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end14
  %status_ptr.i = getelementptr inbounds %struct.drm_savage_private, ptr %3, i32 0, i32 30
  %event_counter.i = getelementptr inbounds %struct.drm_savage_private, ptr %3, i32 0, i32 33
  %event_wrap.i = getelementptr inbounds %struct.drm_savage_private, ptr %3, i32 0, i32 34
  %wait_fifo.i = getelementptr inbounds %struct.drm_savage_private, ptr %3, i32 0, i32 46
  %bci_ptr38.i = getelementptr inbounds %struct.drm_savage_private, ptr %3, i32 0, i32 31
  br label %for.body

for.body:                                         ; preds = %if.end28.for.body_crit_edge, %for.body.lr.ph
  %i.063 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end28.for.body_crit_edge ]
  %12 = ptrtoint ptr %buflist to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buflist, align 4
  %arrayidx = getelementptr ptr, ptr %13, i32 %i.063
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %dev_private16 = getelementptr inbounds %struct.drm_buf, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %dev_private16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_private16, align 4
  %file_priv17 = getelementptr inbounds %struct.drm_buf, ptr %15, i32 0, i32 10
  %18 = ptrtoint ptr %file_priv17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %file_priv17, align 4
  %cmp18 = icmp ne ptr %19, %file_priv
  %tobool20.not = icmp eq ptr %17, null
  %or.cond = select i1 %cmp18, i1 true, i1 %tobool20.not
  br i1 %or.cond, label %for.body.if.end28_crit_edge, label %land.lhs.true21

for.body.if.end28_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

land.lhs.true21:                                  ; preds = %for.body
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 4
  %cmp22 = icmp eq ptr %21, null
  br i1 %cmp22, label %land.lhs.true23, label %land.lhs.true21.if.end28_crit_edge

land.lhs.true21.if.end28_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

land.lhs.true23:                                  ; preds = %land.lhs.true21
  %prev = getelementptr inbounds %struct.drm_savage_buf_priv, ptr %17, i32 0, i32 1
  %22 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev, align 4
  %cmp24 = icmp eq ptr %23, null
  br i1 %cmp24, label %if.then25, label %land.lhs.true23.if.end28_crit_edge

land.lhs.true23.if.end28_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then25:                                        ; preds = %land.lhs.true23
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.10) #8
  %24 = ptrtoint ptr %status_ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %status_ptr.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then25
  %arrayidx.i = getelementptr i32, ptr %25, i32 1023
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %arrayidx.i, align 4
  %conv.i = trunc i32 %27 to i16
  %conv2.i = and i32 %27, 65535
  %28 = ptrtoint ptr %event_counter.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %event_counter.i, align 4
  %conv3.i = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.i, i32 %conv3.i)
  %cmp.i = icmp ult i32 %conv2.i, %conv3.i
  br i1 %cmp.i, label %if.then5.i, label %if.then.i.if.end7.i_crit_edge

if.then.i.if.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %event_wrap.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %event_wrap.i, align 4
  %inc.i = add i32 %31, 1
  store i32 %inc.i, ptr %event_wrap.i, align 4
  br label %if.end7.i

if.else.i:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %event_counter.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %event_counter.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i, %if.then5.i, %if.then.i.if.end7.i_crit_edge
  %count.0.i = phi i16 [ %conv.i, %if.then5.i ], [ %conv.i, %if.then.i.if.end7.i_crit_edge ], [ %33, %if.else.i ]
  %34 = add i16 %count.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp11.i = icmp eq i16 %34, 0
  br i1 %cmp11.i, label %if.then13.i, label %if.end7.i.if.end17.i_crit_edge

if.end7.i.if.end17.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

if.then13.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %event_wrap.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %event_wrap.i, align 4
  %inc16.i = add i32 %36, 1
  store i32 %inc16.i, ptr %event_wrap.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then13.i, %if.end7.i.if.end17.i_crit_edge
  %count.1.i = phi i16 [ 1, %if.then13.i ], [ %34, %if.end7.i.if.end17.i_crit_edge ]
  %37 = ptrtoint ptr %event_counter.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %count.1.i, ptr %event_counter.i, align 4
  %.pre = zext i16 %count.1.i to i32
  br i1 %tobool.not.i, label %if.end17.i.savage_bci_emit_event.exit_crit_edge, label %if.then21.i

if.end17.i.savage_bci_emit_event.exit_crit_edge:  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %savage_bci_emit_event.exit

if.then21.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx24.i = getelementptr i32, ptr %25, i32 1023
  %38 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile i32 %.pre, ptr %arrayidx24.i, align 4
  br label %savage_bci_emit_event.exit

savage_bci_emit_event.exit:                       ; preds = %if.then21.i, %if.end17.i.savage_bci_emit_event.exit_crit_edge
  %39 = ptrtoint ptr %wait_fifo.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %wait_fifo.i, align 4
  %call.i = tail call i32 %40(ptr noundef %3, i32 noundef 2) #8
  %41 = ptrtoint ptr %bci_ptr38.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bci_ptr38.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %42, i32 1
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile i32 -1073676288, ptr %42, align 4
  %or48.i = or i32 %.pre, -1744830464
  %44 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 %or48.i, ptr %incdec.ptr.i, align 4
  %age = getelementptr inbounds %struct.drm_savage_buf_priv, ptr %17, i32 0, i32 2
  %45 = ptrtoint ptr %age to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %count.1.i, ptr %age, align 4
  %46 = ptrtoint ptr %event_wrap.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %event_wrap.i, align 4
  %wrap = getelementptr inbounds %struct.drm_savage_buf_priv, ptr %17, i32 0, i32 2, i32 1
  %48 = ptrtoint ptr %wrap to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %wrap, align 4
  %49 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev_private, align 4
  %51 = ptrtoint ptr %dev_private16 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev_private16, align 4
  %age.i = getelementptr inbounds %struct.drm_savage_buf_priv, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %age.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %age.i, align 4
  %conv.i60 = zext i16 %54 to i32
  %wrap.i = getelementptr inbounds %struct.drm_savage_buf_priv, ptr %52, i32 0, i32 2, i32 1
  %55 = ptrtoint ptr %wrap.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %wrap.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %conv.i60, i32 noundef %56) #8
  %57 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %52, align 4
  %cmp.not.i = icmp eq ptr %58, null
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %savage_bci_emit_event.exit.if.then.i61_crit_edge

savage_bci_emit_event.exit.if.then.i61_crit_edge: ; preds = %savage_bci_emit_event.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i61

lor.lhs.false.i:                                  ; preds = %savage_bci_emit_event.exit
  %prev6.i = getelementptr inbounds %struct.drm_savage_buf_priv, ptr %52, i32 0, i32 1
  %59 = ptrtoint ptr %prev6.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev6.i, align 4
  %cmp7.not.i = icmp eq ptr %60, null
  br i1 %cmp7.not.i, label %if.end.i, label %lor.lhs.false.i.if.then.i61_crit_edge

lor.lhs.false.i.if.then.i61_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i61

if.then.i61:                                      ; preds = %lor.lhs.false.i.if.then.i61_crit_edge, %savage_bci_emit_event.exit.if.then.i61_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #8
  br label %if.end28

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %head.i = getelementptr inbounds %struct.drm_savage_private, ptr %50, i32 0, i32 1
  %61 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %head.i, align 4
  store ptr %52, ptr %head.i, align 4
  %prev11.i = getelementptr inbounds %struct.drm_savage_buf_priv, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %prev11.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %52, ptr %prev11.i, align 4
  %64 = ptrtoint ptr %prev6.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %head.i, ptr %prev6.i, align 4
  %65 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %52, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.end.i, %if.then.i61, %land.lhs.true23.if.end28_crit_edge, %land.lhs.true21.if.end28_crit_edge, %for.body.if.end28_crit_edge
  %inc = add nuw nsw i32 %i.063, 1
  %66 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %buf_count, align 4
  %cmp = icmp slt i32 %inc, %67
  br i1 %cmp, label %if.end28.for.body_crit_edge, label %if.end28.for.end_crit_edge

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end28.for.end_crit_edge, %if.end14.for.end_crit_edge
  br i1 %tobool29.not, label %for.end.cleanup_crit_edge, label %if.then30

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then30:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %master, align 4
  %lock32 = getelementptr inbounds %struct.drm_master, ptr %69, i32 0, i32 12
  tail call void @drm_legacy_idlelock_release(ptr noundef %lock32) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %for.end.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_legacy_idlelock_take(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_legacy_idlelock_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @savage_bci_init(ptr noundef %dev, ptr nocapture noundef readonly %data, ptr noundef %file_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 8
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %lock = getelementptr inbounds %struct.drm_master, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool.not = icmp sgt i32 %5, -1
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %file_priv4 = getelementptr inbounds %struct.drm_master, ptr %1, i32 0, i32 12, i32 1
  %6 = ptrtoint ptr %file_priv4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %file_priv4, align 4
  %cmp.not = icmp eq ptr %7, %file_priv
  br i1 %cmp.not, label %do.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %3, align 4
  %and9 = and i32 %9, -2147483648
  %file_priv12 = getelementptr inbounds %struct.drm_master, ptr %1, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %file_priv12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %file_priv12, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.savage_bci_init, i32 noundef %and9, ptr noundef %11, ptr noundef %file_priv) #8
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %do.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb13
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %15 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_private.i, align 4
  %fb_bpp.i = getelementptr inbounds %struct.drm_savage_init, ptr %data, i32 0, i32 6
  %17 = ptrtoint ptr %fb_bpp.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fb_bpp.i, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %18, label %if.then.i [
    i32 16, label %sw.bb.if.end.i_crit_edge
    i32 32, label %sw.bb.if.end.i_crit_edge22
  ]

sw.bb.if.end.i_crit_edge22:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.22, i32 noundef %18) #8
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb.if.end.i_crit_edge, %sw.bb.if.end.i_crit_edge22
  %depth_bpp.i = getelementptr inbounds %struct.drm_savage_init, ptr %data, i32 0, i32 11
  %20 = ptrtoint ptr %depth_bpp.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %depth_bpp.i, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %21, label %if.then8.i [
    i32 16, label %if.end.i.if.end10.i_crit_edge
    i32 32, label %if.end.i.if.end10.i_crit_edge23
  ]

if.end.i.if.end10.i_crit_edge23:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %18) #8
  br label %cleanup

if.end10.i:                                       ; preds = %if.end.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge23
  %dma_type.i = getelementptr inbounds %struct.drm_savage_init, ptr %data, i32 0, i32 5
  %23 = ptrtoint ptr %dma_type.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_type.i, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %24, label %if.then15.i [
    i32 3, label %if.end10.i.if.end17.i_crit_edge
    i32 1, label %if.end10.i.if.end17.i_crit_edge24
  ]

if.end10.i.if.end17.i_crit_edge24:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

if.end10.i.if.end17.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

if.then15.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.24, i32 noundef %24) #8
  br label %cleanup

if.end17.i:                                       ; preds = %if.end10.i.if.end17.i_crit_edge, %if.end10.i.if.end17.i_crit_edge24
  %cob_size.i = getelementptr inbounds %struct.drm_savage_init, ptr %data, i32 0, i32 2
  %26 = ptrtoint ptr %cob_size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cob_size.i, align 4
  %cob_size18.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 4
  %28 = ptrtoint ptr %cob_size18.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %cob_size18.i, align 4
  %bci_threshold_lo.i = getelementptr inbounds %struct.drm_savage_init, ptr %data, i32 0, i32 3
  %29 = ptrtoint ptr %bci_threshold_lo.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bci_threshold_lo.i, align 4
  %bci_threshold_lo19.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 5
  %31 = ptrtoint ptr %bci_threshold_lo19.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %bci_threshold_lo19.i, align 4
  %bci_threshold_hi.i = getelementptr inbounds %struct.drm_savage_init, ptr %data, i32 0, i32 4
  %32 = ptrtoint ptr %bci_threshold_hi.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bci_threshold_hi.i, align 4
  %bci_threshold_hi20.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 6
  %34 = ptrtoint ptr %bci_threshold_hi20.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %bci_threshold_hi20.i, align 4
  %35 = ptrtoint ptr %dma_type.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dma_type.i, align 4
  %dma_type22.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 7
  %37 = ptrtoint ptr %dma_type22.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %dma_type22.i, align 4
  %38 = ptrtoint ptr %fb_bpp.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %fb_bpp.i, align 4
  %fb_bpp24.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 8
  %40 = ptrtoint ptr %fb_bpp24.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %fb_bpp24.i, align 4
  %front_offset.i = getelementptr inbounds %struct.drm_savage_init, ptr %data, i32 0, i32 7
  %41 = ptrtoint ptr %front_offset.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %front_offset.i, align 4
  %front_offset25.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 9
  %43 = ptrtoint ptr %front_offset25.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %front_offset25.i, align 4
  %front_pitch.i = getelementptr inbounds %struct.drm_savage_init, ptr %data, i32 0, i32 8
  %44 = ptrtoint ptr %front_pitch.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %front_pitch.i, align 4
  %front_pitch26.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 10
  %46 = ptrtoint ptr %front_pitch26.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %front_pitch26.i, align 4
  %back_offset.i = getelementptr inbounds %struct.drm_savage_init, ptr %data, i32 0, i32 9
  %47 = ptrtoint ptr %back_offset.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %back_offset.i, align 4
  %back_offset27.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 11
  %49 = ptrtoint ptr %back_offset27.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %back_offset27.i, align 4
  %back_pitch.i = getelementptr inbounds %struct.drm_savage_init, ptr %data, i32 0, i32 10
  %50 = ptrtoint ptr %back_pitch.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %back_pitch.i, align 4
  %back_pitch28.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 12
  %52 = ptrtoint ptr %back_pitch28.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %back_pitch28.i, align 4
  %53 = ptrtoint ptr %depth_bpp.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %depth_bpp.i, align 4
  %depth_bpp30.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 13
  %55 = ptrtoint ptr %depth_bpp30.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %depth_bpp30.i, align 4
  %depth_offset.i = getelementptr inbounds %struct.drm_savage_init, ptr %data, i32 0, i32 12
  %56 = ptrtoint ptr %depth_offset.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %depth_offset.i, align 4
  %depth_offset31.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 14
  %58 = ptrtoint ptr %depth_offset31.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %depth_offset31.i, align 4
  %depth_pitch.i = getelementptr inbounds %struct.drm_savage_init, ptr %data, i32 0, i32 13
  %59 = ptrtoint ptr %depth_pitch.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %depth_pitch.i, align 4
  %depth_pitch32.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 15
  %61 = ptrtoint ptr %depth_pitch32.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %depth_pitch32.i, align 4
  %texture_offset.i = getelementptr inbounds %struct.drm_savage_init, ptr %data, i32 0, i32 14
  %62 = ptrtoint ptr %texture_offset.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %texture_offset.i, align 4
  %texture_offset33.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 19
  %64 = ptrtoint ptr %texture_offset33.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %texture_offset33.i, align 4
  %texture_size.i = getelementptr inbounds %struct.drm_savage_init, ptr %data, i32 0, i32 15
  %65 = ptrtoint ptr %texture_size.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %texture_size.i, align 4
  %texture_size34.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 20
  %67 = ptrtoint ptr %texture_size34.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %texture_size34.i, align 4
  %call.i = tail call ptr @drm_legacy_getsarea(ptr noundef %dev) #8
  %sarea.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 21
  %68 = ptrtoint ptr %sarea.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call.i, ptr %sarea.i, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then36.i, label %if.end38.i

if.then36.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.25) #8
  tail call fastcc void @savage_do_cleanup_bci(ptr noundef %dev) #8
  br label %cleanup

if.end38.i:                                       ; preds = %if.end17.i
  %status_offset.i = getelementptr inbounds %struct.drm_savage_init, ptr %data, i32 0, i32 16
  %69 = ptrtoint ptr %status_offset.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %status_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp39.not.i = icmp eq i32 %70, 0
  br i1 %cmp39.not.i, label %if.else.i, label %if.then40.i

if.then40.i:                                      ; preds = %if.end38.i
  %call42.i = tail call ptr @drm_legacy_findmap(ptr noundef %dev, i32 noundef %70) #8
  %status.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 25
  %71 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call42.i, ptr %status.i, align 4
  %tobool44.not.i = icmp eq ptr %call42.i, null
  br i1 %tobool44.not.i, label %if.then45.i, label %if.then40.i.if.end49.i_crit_edge

if.then40.i.if.end49.i_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.i

if.then45.i:                                      ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26) #8
  tail call fastcc void @savage_do_cleanup_bci(ptr noundef %dev) #8
  br label %cleanup

if.else.i:                                        ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  %status48.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 25
  %72 = ptrtoint ptr %status48.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %status48.i, align 4
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.else.i, %if.then40.i.if.end49.i_crit_edge
  %73 = ptrtoint ptr %dma_type22.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %dma_type22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %74)
  %cmp51.i = icmp eq i32 %74, 3
  br i1 %cmp51.i, label %land.lhs.true52.i, label %if.end49.i.if.end69.i_crit_edge

if.end49.i.if.end69.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69.i

land.lhs.true52.i:                                ; preds = %if.end49.i
  %buffers_offset.i = getelementptr inbounds %struct.drm_savage_init, ptr %data, i32 0, i32 17
  %75 = ptrtoint ptr %buffers_offset.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %buffers_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool53.not.i = icmp eq i32 %76, 0
  br i1 %tobool53.not.i, label %land.lhs.true52.i.if.end69.i_crit_edge, label %if.then54.i

land.lhs.true52.i.if.end69.i_crit_edge:           ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69.i

if.then54.i:                                      ; preds = %land.lhs.true52.i
  %agp_buffer_token.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 53
  %77 = ptrtoint ptr %agp_buffer_token.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %agp_buffer_token.i, align 4
  %78 = ptrtoint ptr %buffers_offset.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %buffers_offset.i, align 4
  %call57.i = tail call ptr @drm_legacy_findmap(ptr noundef %dev, i32 noundef %79) #8
  %agp_buffer_map.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 52
  %80 = ptrtoint ptr %agp_buffer_map.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call57.i, ptr %agp_buffer_map.i, align 4
  %tobool59.not.i = icmp eq ptr %call57.i, null
  br i1 %tobool59.not.i, label %if.then60.i, label %if.end62.i

if.then60.i:                                      ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.27) #8
  tail call fastcc void @savage_do_cleanup_bci(ptr noundef %dev) #8
  br label %cleanup

if.end62.i:                                       ; preds = %if.then54.i
  tail call void @drm_legacy_ioremap(ptr noundef nonnull %call57.i, ptr noundef %dev) #8
  %81 = ptrtoint ptr %agp_buffer_map.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %agp_buffer_map.i, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %82, i32 0, i32 4
  %83 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %handle.i, align 4
  %tobool65.not.i = icmp eq ptr %84, null
  br i1 %tobool65.not.i, label %if.then66.i, label %if.end62.i.if.end69.i_crit_edge

if.end62.i.if.end69.i_crit_edge:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69.i

if.then66.i:                                      ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.28) #8
  tail call fastcc void @savage_do_cleanup_bci(ptr noundef %dev) #8
  br label %cleanup

if.end69.i:                                       ; preds = %if.end62.i.if.end69.i_crit_edge, %land.lhs.true52.i.if.end69.i_crit_edge, %if.end49.i.if.end69.i_crit_edge
  %agp_textures_offset.i = getelementptr inbounds %struct.drm_savage_init, ptr %data, i32 0, i32 18
  %85 = ptrtoint ptr %agp_textures_offset.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %agp_textures_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool70.not.i = icmp eq i32 %86, 0
  br i1 %tobool70.not.i, label %if.else79.i, label %if.then71.i

if.then71.i:                                      ; preds = %if.end69.i
  %call73.i = tail call ptr @drm_legacy_findmap(ptr noundef %dev, i32 noundef %86) #8
  %agp_textures.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 26
  %87 = ptrtoint ptr %agp_textures.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call73.i, ptr %agp_textures.i, align 4
  %tobool75.not.i = icmp eq ptr %call73.i, null
  br i1 %tobool75.not.i, label %if.then76.i, label %if.then71.i.if.end81.i_crit_edge

if.then71.i.if.end81.i_crit_edge:                 ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81.i

if.then76.i:                                      ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.29) #8
  tail call fastcc void @savage_do_cleanup_bci(ptr noundef %dev) #8
  br label %cleanup

if.else79.i:                                      ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #10
  %agp_textures80.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 26
  %88 = ptrtoint ptr %agp_textures80.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %agp_textures80.i, align 4
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.else79.i, %if.then71.i.if.end81.i_crit_edge
  %cmd_dma_offset.i = getelementptr inbounds %struct.drm_savage_init, ptr %data, i32 0, i32 19
  %89 = ptrtoint ptr %cmd_dma_offset.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %cmd_dma_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool82.not.i = icmp eq i32 %90, 0
  br i1 %tobool82.not.i, label %if.else128.i, label %if.then83.i

if.then83.i:                                      ; preds = %if.end81.i
  %chipset.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 3
  %91 = ptrtoint ptr %chipset.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %chipset.i, align 4
  %93 = add i32 %92, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %93)
  %94 = icmp ult i32 %93, 2
  br i1 %94, label %if.then88.i, label %if.end90.i

if.then88.i:                                      ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.30) #8
  tail call fastcc void @savage_do_cleanup_bci(ptr noundef %dev) #8
  br label %cleanup

if.end90.i:                                       ; preds = %if.then83.i
  %dma.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 45
  %95 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dma.i, align 4
  %tobool91.not.i = icmp eq ptr %96, null
  br i1 %tobool91.not.i, label %if.end90.i.if.end97.i_crit_edge, label %land.lhs.true92.i

if.end90.i.if.end97.i_crit_edge:                  ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97.i

land.lhs.true92.i:                                ; preds = %if.end90.i
  %buflist.i = getelementptr inbounds %struct.drm_device_dma, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %buflist.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %buflist.i, align 4
  %tobool94.not.i = icmp eq ptr %98, null
  br i1 %tobool94.not.i, label %land.lhs.true92.i.if.end97.i_crit_edge, label %if.then95.i

land.lhs.true92.i.if.end97.i_crit_edge:           ; preds = %land.lhs.true92.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97.i

if.then95.i:                                      ; preds = %land.lhs.true92.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.31) #8
  tail call fastcc void @savage_do_cleanup_bci(ptr noundef %dev) #8
  br label %cleanup

if.end97.i:                                       ; preds = %land.lhs.true92.i.if.end97.i_crit_edge, %if.end90.i.if.end97.i_crit_edge
  %call99.i = tail call ptr @drm_legacy_findmap(ptr noundef %dev, i32 noundef %90) #8
  %cmd_dma.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 27
  %99 = ptrtoint ptr %cmd_dma.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call99.i, ptr %cmd_dma.i, align 4
  %tobool101.not.i = icmp eq ptr %call99.i, null
  br i1 %tobool101.not.i, label %if.then102.i, label %if.end104.i

if.then102.i:                                     ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.32) #8
  tail call fastcc void @savage_do_cleanup_bci(ptr noundef %dev) #8
  br label %cleanup

if.end104.i:                                      ; preds = %if.end97.i
  %100 = ptrtoint ptr %dma_type22.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %dma_type22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %101)
  %cmp106.i = icmp eq i32 %101, 3
  %type.i = getelementptr inbounds %struct.drm_local_map, ptr %call99.i, i32 0, i32 2
  %102 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %type.i, align 4
  br i1 %cmp106.i, label %if.then107.i, label %if.else120.i

if.then107.i:                                     ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %103)
  %cmp109.not.i = icmp eq i32 %103, 3
  br i1 %cmp109.not.i, label %if.end112.i, label %if.then110.i

if.then110.i:                                     ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33) #8
  tail call fastcc void @savage_do_cleanup_bci(ptr noundef %dev) #8
  br label %cleanup

if.end112.i:                                      ; preds = %if.then107.i
  tail call void @drm_legacy_ioremap(ptr noundef nonnull %call99.i, ptr noundef %dev) #8
  %104 = ptrtoint ptr %cmd_dma.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cmd_dma.i, align 4
  %handle115.i = getelementptr inbounds %struct.drm_local_map, ptr %105, i32 0, i32 4
  %106 = ptrtoint ptr %handle115.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %handle115.i, align 4
  %tobool116.not.i = icmp eq ptr %107, null
  br i1 %tobool116.not.i, label %if.then117.i, label %if.end112.i.if.end130.i_crit_edge

if.end112.i.if.end130.i_crit_edge:                ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end130.i

if.then117.i:                                     ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34) #8
  tail call fastcc void @savage_do_cleanup_bci(ptr noundef %dev) #8
  br label %cleanup

if.else120.i:                                     ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %103)
  %cmp123.not.i = icmp eq i32 %103, 5
  br i1 %cmp123.not.i, label %if.else120.i.if.end130.i_crit_edge, label %if.then124.i

if.else120.i.if.end130.i_crit_edge:               ; preds = %if.else120.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end130.i

if.then124.i:                                     ; preds = %if.else120.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  tail call fastcc void @savage_do_cleanup_bci(ptr noundef %dev) #8
  br label %cleanup

if.else128.i:                                     ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #10
  %cmd_dma129.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 27
  %108 = ptrtoint ptr %cmd_dma129.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr null, ptr %cmd_dma129.i, align 4
  br label %if.end130.i

if.end130.i:                                      ; preds = %if.else128.i, %if.else120.i.if.end130.i_crit_edge, %if.end112.i.if.end130.i_crit_edge
  %dma_flush.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 49
  %109 = ptrtoint ptr %dma_flush.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @savage_dma_flush, ptr %dma_flush.i, align 4
  %cmd_dma131.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 27
  %110 = ptrtoint ptr %cmd_dma131.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %cmd_dma131.i, align 4
  %tobool132.not.i = icmp eq ptr %111, null
  br i1 %tobool132.not.i, label %if.then133.i, label %if.end130.i.if.end149.i_crit_edge

if.end130.i.if.end149.i_crit_edge:                ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end149.i

if.then133.i:                                     ; preds = %if.end130.i
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.36) #8
  %fake_dma.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 28
  %112 = ptrtoint ptr %fake_dma.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %fake_dma.i, align 4
  %size.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 28, i32 1
  %113 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 16384, ptr %size.i, align 4
  %type136.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 28, i32 2
  %114 = ptrtoint ptr %type136.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 2, ptr %type136.i, align 4
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 16384, i32 noundef 3264, i32 noundef 2) #13
  %handle139.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 28, i32 4
  %115 = ptrtoint ptr %handle139.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call1.i.i.i, ptr %handle139.i, align 4
  %tobool142.not.i = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool142.not.i, label %if.then143.i, label %if.end145.i

if.then143.i:                                     ; preds = %if.then133.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.37) #8
  tail call fastcc void @savage_do_cleanup_bci(ptr noundef %dev) #8
  br label %cleanup

if.end145.i:                                      ; preds = %if.then133.i
  call void @__sanitizer_cov_trace_pc() #10
  %116 = ptrtoint ptr %cmd_dma131.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %fake_dma.i, ptr %cmd_dma131.i, align 4
  %117 = ptrtoint ptr %dma_flush.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @savage_fake_dma_flush, ptr %dma_flush.i, align 4
  br label %if.end149.i

if.end149.i:                                      ; preds = %if.end145.i, %if.end130.i.if.end149.i_crit_edge
  %118 = ptrtoint ptr %sarea.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %sarea.i, align 4
  %handle151.i = getelementptr inbounds %struct.drm_local_map, ptr %119, i32 0, i32 4
  %120 = ptrtoint ptr %handle151.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %handle151.i, align 4
  %sarea_priv_offset.i = getelementptr inbounds %struct.drm_savage_init, ptr %data, i32 0, i32 1
  %122 = ptrtoint ptr %sarea_priv_offset.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %sarea_priv_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %121, i32 %123
  %124 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %add.ptr.i, ptr %16, align 4
  %chipset152.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 3
  %125 = ptrtoint ptr %chipset152.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %chipset152.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %126)
  %cmp153.i = icmp ult i32 %126, 4
  br i1 %cmp153.i, label %if.then154.i, label %if.end149.i.if.end161.i_crit_edge

if.end149.i.if.end161.i_crit_edge:                ; preds = %if.end149.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end161.i

if.then154.i:                                     ; preds = %if.end149.i
  call void @__sanitizer_cov_trace_pc() #10
  %127 = ptrtoint ptr %fb_bpp24.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %fb_bpp24.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %128)
  %cmp156.i = icmp eq i32 %128, 16
  %cond.i = select i1 %cmp156.i, i32 33554432, i32 50331648
  %129 = ptrtoint ptr %depth_bpp30.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %depth_bpp30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %130)
  %cmp158.i = icmp eq i32 %130, 16
  %phi.bo = select i1 %cmp158.i, i32 301989888, i32 318767104
  br label %if.end161.i

if.end161.i:                                      ; preds = %if.then154.i, %if.end149.i.if.end161.i_crit_edge
  %color_tile_format.0.i = phi i32 [ %cond.i, %if.then154.i ], [ 16777216, %if.end149.i.if.end161.i_crit_edge ]
  %depth_tile_format.0.i = phi i32 [ %phi.bo, %if.then154.i ], [ 285212672, %if.end149.i.if.end161.i_crit_edge ]
  %131 = ptrtoint ptr %front_pitch26.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %front_pitch26.i, align 4
  %133 = ptrtoint ptr %fb_bpp24.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %fb_bpp24.i, align 4
  %div404.i = lshr i32 %134, 3
  %div164.i = udiv i32 %132, %div404.i
  %135 = ptrtoint ptr %back_pitch28.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %back_pitch28.i, align 4
  %div168.i = udiv i32 %136, %div404.i
  %137 = ptrtoint ptr %depth_pitch32.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %depth_pitch32.i, align 4
  %139 = ptrtoint ptr %depth_bpp30.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %depth_bpp30.i, align 4
  %div171405.i = lshr i32 %140, 3
  %div172.i = udiv i32 %138, %div171405.i
  %shl.i = shl i32 %134, 16
  %or.i = or i32 %shl.i, %color_tile_format.0.i
  %or174.i = or i32 %or.i, %div164.i
  %or176.i = or i32 %or174.i, 268435456
  %front_bd.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 16
  %141 = ptrtoint ptr %front_bd.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %or176.i, ptr %front_bd.i, align 4
  %or180.i = or i32 %or.i, %div168.i
  %or182.i = or i32 %or180.i, 268435456
  %back_bd.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 17
  %142 = ptrtoint ptr %back_bd.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %or182.i, ptr %back_bd.i, align 4
  %shl185.i = shl i32 %140, 16
  %or186.i = or i32 %depth_tile_format.0.i, %shl185.i
  %or188.i = or i32 %or186.i, %div172.i
  %depth_bd.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 18
  %143 = ptrtoint ptr %depth_bd.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %or188.i, ptr %depth_bd.i, align 4
  %event_counter.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 33
  %144 = ptrtoint ptr %event_counter.i to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 0, ptr %event_counter.i, align 4
  %event_wrap.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 34
  %145 = ptrtoint ptr %event_wrap.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 0, ptr %event_wrap.i, align 4
  %mmio.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 22
  %146 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %mmio.i, align 4
  %handle189.i = getelementptr inbounds %struct.drm_local_map, ptr %147, i32 0, i32 4
  %148 = ptrtoint ptr %handle189.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %handle189.i, align 4
  %add.ptr190.i = getelementptr i8, ptr %149, i32 65536
  %bci_ptr.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 31
  %150 = ptrtoint ptr %bci_ptr.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %add.ptr190.i, ptr %bci_ptr.i, align 4
  %151 = add i32 %126, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %151)
  %152 = icmp ult i32 %151, 2
  %spec.select.i = select i1 %152, i32 131071, i32 2097151
  %153 = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 32
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %spec.select.i, ptr %153, align 4
  %status200.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 25
  %155 = ptrtoint ptr %status200.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %status200.i, align 4
  %cmp201.not.i = icmp eq ptr %156, null
  br i1 %cmp201.not.i, label %if.else207.i, label %if.then202.i

if.then202.i:                                     ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #10
  %handle204.i = getelementptr inbounds %struct.drm_local_map, ptr %156, i32 0, i32 4
  %157 = ptrtoint ptr %handle204.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %handle204.i, align 4
  %status_ptr.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 30
  %159 = ptrtoint ptr %status_ptr.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %158, ptr %status_ptr.i, align 4
  %wait_fifo.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 46
  %160 = ptrtoint ptr %wait_fifo.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr @savage_bci_wait_fifo_shadow, ptr %wait_fifo.i, align 4
  %wait_evnt.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 47
  %161 = ptrtoint ptr %wait_evnt.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr @savage_bci_wait_event_shadow, ptr %wait_evnt.i, align 4
  %arrayidx.i = getelementptr i32, ptr %158, i32 1023
  %162 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store volatile i32 0, ptr %arrayidx.i, align 4
  br label %if.end222.i

if.else207.i:                                     ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #10
  %status_ptr208.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 30
  %163 = ptrtoint ptr %status_ptr208.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr null, ptr %status_ptr208.i, align 4
  %spec.select415.i = select i1 %152, ptr @savage_bci_wait_fifo_s3d, ptr @savage_bci_wait_fifo_s4
  %164 = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 46
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %spec.select415.i, ptr %164, align 4
  %wait_evnt221.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 47
  %166 = ptrtoint ptr %wait_evnt221.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr @savage_bci_wait_event_reg, ptr %wait_evnt221.i, align 4
  br label %if.end222.i

if.end222.i:                                      ; preds = %if.else207.i, %if.then202.i
  %167 = ptrtoint ptr %chipset152.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %chipset152.i, align 4
  %169 = add i32 %168, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %169)
  %170 = icmp ult i32 %169, 2
  %spec.select416.i = select i1 %170, ptr @savage_emit_clip_rect_s3d, ptr @savage_emit_clip_rect_s4
  %171 = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 48
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %spec.select416.i, ptr %171, align 4
  %173 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dev_private.i, align 4
  %dma1.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 45
  %175 = ptrtoint ptr %dma1.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %dma1.i.i, align 4
  %buf_count.i.i = getelementptr inbounds %struct.drm_device_dma, ptr %176, i32 0, i32 1
  %177 = ptrtoint ptr %buf_count.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %buf_count.i.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.56, i32 noundef %178) #8
  %tail.i.i = getelementptr inbounds %struct.drm_savage_private, ptr %174, i32 0, i32 2
  %head.i.i = getelementptr inbounds %struct.drm_savage_private, ptr %174, i32 0, i32 1
  %179 = ptrtoint ptr %head.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %tail.i.i, ptr %head.i.i, align 4
  %prev.i.i = getelementptr inbounds %struct.drm_savage_private, ptr %174, i32 0, i32 1, i32 1
  %180 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr null, ptr %prev.i.i, align 4
  %buf5.i.i = getelementptr inbounds %struct.drm_savage_private, ptr %174, i32 0, i32 1, i32 3
  %181 = ptrtoint ptr %buf5.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr null, ptr %buf5.i.i, align 4
  %182 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr null, ptr %tail.i.i, align 4
  %prev10.i.i = getelementptr inbounds %struct.drm_savage_private, ptr %174, i32 0, i32 2, i32 1
  %183 = ptrtoint ptr %prev10.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %head.i.i, ptr %prev10.i.i, align 4
  %buf12.i.i = getelementptr inbounds %struct.drm_savage_private, ptr %174, i32 0, i32 2, i32 3
  %184 = ptrtoint ptr %buf12.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr null, ptr %buf12.i.i, align 4
  %185 = ptrtoint ptr %buf_count.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %buf_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %cmp1.i.i = icmp sgt i32 %186, 0
  br i1 %cmp1.i.i, label %for.body.lr.ph.i.i, label %if.end222.i.savage_freelist_init.exit.i_crit_edge

if.end222.i.savage_freelist_init.exit.i_crit_edge: ; preds = %if.end222.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %savage_freelist_init.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end222.i
  %buflist.i.i = getelementptr inbounds %struct.drm_device_dma, ptr %176, i32 0, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.02.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %187 = ptrtoint ptr %buflist.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %buflist.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %188, i32 %i.02.i.i
  %189 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %arrayidx.i.i, align 4
  %dev_private14.i.i = getelementptr inbounds %struct.drm_buf, ptr %190, i32 0, i32 15
  %191 = ptrtoint ptr %dev_private14.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %dev_private14.i.i, align 4
  %age.i.i = getelementptr inbounds %struct.drm_savage_buf_priv, ptr %192, i32 0, i32 2
  %193 = ptrtoint ptr %age.i.i to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 0, ptr %age.i.i, align 4
  %wrap.i.i = getelementptr inbounds %struct.drm_savage_buf_priv, ptr %192, i32 0, i32 2, i32 1
  %194 = ptrtoint ptr %wrap.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 0, ptr %wrap.i.i, align 4
  %buf16.i.i = getelementptr inbounds %struct.drm_savage_buf_priv, ptr %192, i32 0, i32 3
  %195 = ptrtoint ptr %buf16.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %190, ptr %buf16.i.i, align 4
  %196 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %head.i.i, align 4
  %198 = ptrtoint ptr %192 to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %197, ptr %192, align 4
  %prev21.i.i = getelementptr inbounds %struct.drm_savage_buf_priv, ptr %192, i32 0, i32 1
  %199 = ptrtoint ptr %prev21.i.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %head.i.i, ptr %prev21.i.i, align 4
  %200 = load ptr, ptr %head.i.i, align 4
  %prev24.i.i = getelementptr inbounds %struct.drm_savage_buf_priv, ptr %200, i32 0, i32 1
  %201 = ptrtoint ptr %prev24.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %192, ptr %prev24.i.i, align 4
  store ptr %192, ptr %head.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.02.i.i, 1
  %202 = ptrtoint ptr %buf_count.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %buf_count.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %203
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.savage_freelist_init.exit.i_crit_edge

for.body.i.i.savage_freelist_init.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %savage_freelist_init.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

savage_freelist_init.exit.i:                      ; preds = %for.body.i.i.savage_freelist_init.exit.i_crit_edge, %if.end222.i.savage_freelist_init.exit.i_crit_edge
  %204 = ptrtoint ptr %cmd_dma131.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %cmd_dma131.i, align 4
  %size.i.i = getelementptr inbounds %struct.drm_local_map, ptr %205, i32 0, i32 1
  %206 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %size.i.i, align 4
  %div37.i.i = lshr i32 %207, 12
  %nr_dma_pages.i.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 36
  %208 = ptrtoint ptr %nr_dma_pages.i.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %div37.i.i, ptr %nr_dma_pages.i.i, align 4
  %209 = shl nuw nsw i32 %div37.i.i, 4
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %209, i32 noundef 3264) #13
  %dma_pages.i.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 35
  %210 = ptrtoint ptr %dma_pages.i.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %call8.i.i.i, ptr %dma_pages.i.i, align 4
  %cmp.i409.i = icmp eq ptr %call8.i.i.i, null
  br i1 %cmp.i409.i, label %if.then243.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %savage_freelist_init.exit.i
  %211 = ptrtoint ptr %nr_dma_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %nr_dma_pages.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %cmp441.not.i.i = icmp eq i32 %212, 0
  br i1 %cmp441.not.i.i, label %for.cond.preheader.i.i.savage_dma_init.exit.i_crit_edge, label %for.cond.preheader.i.i.do.body.i.i_crit_edge

for.cond.preheader.i.i.do.body.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  br label %do.body.i.i

for.cond.preheader.i.i.savage_dma_init.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %savage_dma_init.exit.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %for.cond.preheader.i.i.do.body.i.i_crit_edge
  %i.042.i.i = phi i32 [ %inc.i412.i, %do.body.i.i.do.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.do.body.i.i_crit_edge ]
  %213 = ptrtoint ptr %dma_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %dma_pages.i.i, align 4
  %arrayidx.i410.i = getelementptr %struct.drm_savage_dma_page, ptr %214, i32 %i.042.i.i
  %215 = ptrtoint ptr %arrayidx.i410.i to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 0, ptr %arrayidx.i410.i, align 4
  %216 = load ptr, ptr %dma_pages.i.i, align 4
  %wrap.i411.i = getelementptr %struct.drm_savage_dma_page, ptr %216, i32 %i.042.i.i, i32 0, i32 1
  %217 = ptrtoint ptr %wrap.i411.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 0, ptr %wrap.i411.i, align 4
  %218 = load ptr, ptr %dma_pages.i.i, align 4
  %used.i.i = getelementptr %struct.drm_savage_dma_page, ptr %218, i32 %i.042.i.i, i32 1
  %219 = ptrtoint ptr %used.i.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 0, ptr %used.i.i, align 4
  %220 = load ptr, ptr %dma_pages.i.i, align 4
  %flushed.i.i = getelementptr %struct.drm_savage_dma_page, ptr %220, i32 %i.042.i.i, i32 2
  %221 = ptrtoint ptr %flushed.i.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 0, ptr %flushed.i.i, align 4
  %inc.i412.i = add nuw i32 %i.042.i.i, 1
  %222 = ptrtoint ptr %nr_dma_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %nr_dma_pages.i.i, align 4
  %cmp4.i.i = icmp ult i32 %inc.i412.i, %223
  br i1 %cmp4.i.i, label %do.body.i.i.do.body.i.i_crit_edge, label %do.body.i.i.savage_dma_init.exit.i_crit_edge

do.body.i.i.savage_dma_init.exit.i_crit_edge:     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %savage_dma_init.exit.i

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

savage_dma_init.exit.i:                           ; preds = %do.body.i.i.savage_dma_init.exit.i_crit_edge, %for.cond.preheader.i.i.savage_dma_init.exit.i_crit_edge
  %last_dma_age.i.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 39
  %224 = ptrtoint ptr %last_dma_age.i.i to i32
  call void @__asan_store2_noabort(i32 %224)
  store i16 0, ptr %last_dma_age.i.i, align 4
  %wrap16.i.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 39, i32 1
  %225 = ptrtoint ptr %wrap16.i.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 0, ptr %wrap16.i.i, align 4
  %first_dma_page.i.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 37
  %226 = ptrtoint ptr %first_dma_page.i.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 0, ptr %first_dma_page.i.i, align 4
  %current_dma_page.i.i = getelementptr inbounds %struct.drm_savage_private, ptr %16, i32 0, i32 38
  %227 = ptrtoint ptr %current_dma_page.i.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 0, ptr %current_dma_page.i.i, align 4
  br label %cleanup

if.then243.i:                                     ; preds = %savage_freelist_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.39) #8
  tail call fastcc void @savage_do_cleanup_bci(ptr noundef %dev) #8
  br label %cleanup

sw.bb13:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @savage_do_cleanup_bci(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb13, %if.then243.i, %savage_dma_init.exit.i, %if.then143.i, %if.then124.i, %if.then117.i, %if.then110.i, %if.then102.i, %if.then95.i, %if.then88.i, %if.then76.i, %if.then66.i, %if.then60.i, %if.then45.i, %if.then36.i, %if.then15.i, %if.then8.i, %if.then.i, %do.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %sw.bb13 ], [ -22, %do.end.cleanup_crit_edge ], [ -22, %if.then.i ], [ -22, %if.then8.i ], [ -22, %if.then15.i ], [ -22, %if.then88.i ], [ -22, %if.then95.i ], [ -22, %if.then110.i ], [ -12, %if.then243.i ], [ -12, %if.then143.i ], [ -12, %if.then117.i ], [ -22, %if.then124.i ], [ -22, %if.then102.i ], [ -22, %if.then76.i ], [ -12, %if.then66.i ], [ -22, %if.then60.i ], [ -22, %if.then45.i ], [ -22, %if.then36.i ], [ 0, %savage_dma_init.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @savage_bci_cmdbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @savage_bci_event_emit(ptr nocapture noundef readonly %dev, ptr nocapture noundef %data, ptr noundef %file_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.15) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %file_priv4 = getelementptr inbounds %struct.drm_master, ptr %3, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %file_priv4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %file_priv4, align 4
  %cmp.not = icmp eq ptr %9, %file_priv
  br i1 %cmp.not, label %do.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.savage_bci_event_emit, i32 noundef %and9, ptr noundef %13, ptr noundef %file_priv) #8
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.drm_savage_event, ptr %data, i32 0, i32 1
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %status_ptr.i = getelementptr inbounds %struct.drm_savage_private, ptr %1, i32 0, i32 30
  %16 = ptrtoint ptr %status_ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %status_ptr.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.end
  %arrayidx.i = getelementptr i32, ptr %17, i32 1023
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %arrayidx.i, align 4
  %conv.i = trunc i32 %19 to i16
  %conv2.i = and i32 %19, 65535
  %event_counter.i = getelementptr inbounds %struct.drm_savage_private, ptr %1, i32 0, i32 33
  %20 = ptrtoint ptr %event_counter.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %event_counter.i, align 4
  %conv3.i = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.i, i32 %conv3.i)
  %cmp.i = icmp ult i32 %conv2.i, %conv3.i
  br i1 %cmp.i, label %if.then5.i, label %if.then.i.if.end7.i_crit_edge

if.then.i.if.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %event_wrap.i = getelementptr inbounds %struct.drm_savage_private, ptr %1, i32 0, i32 34
  %22 = ptrtoint ptr %event_wrap.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %event_wrap.i, align 4
  %inc.i = add i32 %23, 1
  store i32 %inc.i, ptr %event_wrap.i, align 4
  br label %if.end7.i

if.else.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %event_counter6.i = getelementptr inbounds %struct.drm_savage_private, ptr %1, i32 0, i32 33
  %24 = ptrtoint ptr %event_counter6.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %event_counter6.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i, %if.then5.i, %if.then.i.if.end7.i_crit_edge
  %count.0.i = phi i16 [ %conv.i, %if.then5.i ], [ %conv.i, %if.then.i.if.end7.i_crit_edge ], [ %25, %if.else.i ]
  %26 = add i16 %count.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp11.i = icmp eq i16 %26, 0
  br i1 %cmp11.i, label %if.then13.i, label %if.end7.i.if.end17.i_crit_edge

if.end7.i.if.end17.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

if.then13.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %event_wrap15.i = getelementptr inbounds %struct.drm_savage_private, ptr %1, i32 0, i32 34
  %27 = ptrtoint ptr %event_wrap15.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %event_wrap15.i, align 4
  %inc16.i = add i32 %28, 1
  store i32 %inc16.i, ptr %event_wrap15.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then13.i, %if.end7.i.if.end17.i_crit_edge
  %count.1.i = phi i16 [ 1, %if.then13.i ], [ %26, %if.end7.i.if.end17.i_crit_edge ]
  %event_counter18.i = getelementptr inbounds %struct.drm_savage_private, ptr %1, i32 0, i32 33
  %29 = ptrtoint ptr %event_counter18.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %count.1.i, ptr %event_counter18.i, align 4
  br i1 %tobool.not.i, label %if.end17.i.if.end25.i_crit_edge, label %if.then21.i

if.end17.i.if.end25.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i

if.then21.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv22.i = zext i16 %count.1.i to i32
  %arrayidx24.i = getelementptr i32, ptr %17, i32 1023
  %30 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 %conv22.i, ptr %arrayidx24.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then21.i, %if.end17.i.if.end25.i_crit_edge
  %and26.i = and i32 %15, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %do.body40.i, label %if.then28.i

if.then28.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  %and29.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  %spec.select.i = select i1 %tobool30.not.i, i32 -1073741824, i32 -1073610752
  %and33.i = shl i32 %15, 15
  %31 = and i32 %and33.i, 65536
  %32 = or i32 %spec.select.i, %31
  %wait_fifo.i = getelementptr inbounds %struct.drm_savage_private, ptr %1, i32 0, i32 46
  %33 = ptrtoint ptr %wait_fifo.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wait_fifo.i, align 4
  %call.i = tail call i32 %34(ptr noundef %1, i32 noundef 2) #8
  %bci_ptr38.i = getelementptr inbounds %struct.drm_savage_private, ptr %1, i32 0, i32 31
  %35 = ptrtoint ptr %bci_ptr38.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bci_ptr38.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %36, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 %32, ptr %36, align 4
  br label %savage_bci_emit_event.exit

do.body40.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  %wait_fifo41.i = getelementptr inbounds %struct.drm_savage_private, ptr %1, i32 0, i32 46
  %38 = ptrtoint ptr %wait_fifo41.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wait_fifo41.i, align 4
  %call42.i = tail call i32 %39(ptr noundef %1, i32 noundef 1) #8
  %bci_ptr43.i = getelementptr inbounds %struct.drm_savage_private, ptr %1, i32 0, i32 31
  %40 = ptrtoint ptr %bci_ptr43.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bci_ptr43.i, align 4
  br label %savage_bci_emit_event.exit

savage_bci_emit_event.exit:                       ; preds = %do.body40.i, %if.then28.i
  %bci_ptr.0.i = phi ptr [ %incdec.ptr.i, %if.then28.i ], [ %41, %do.body40.i ]
  %conv47.i = zext i16 %count.1.i to i32
  %or48.i = or i32 %conv47.i, -1744830464
  %42 = ptrtoint ptr %bci_ptr.0.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile i32 %or48.i, ptr %bci_ptr.0.i, align 4
  %43 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv47.i, ptr %data, align 4
  %event_wrap = getelementptr inbounds %struct.drm_savage_private, ptr %1, i32 0, i32 34
  %44 = ptrtoint ptr %event_wrap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %event_wrap, align 4
  %shl = shl i32 %45, 16
  %or = or i32 %shl, %conv47.i
  store i32 %or, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %savage_bci_emit_event.exit, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %savage_bci_emit_event.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @savage_bci_event_wait(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data, ptr nocapture noundef readnone %file_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.15) #8
  %status_ptr = getelementptr inbounds %struct.drm_savage_private, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %status_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %status_ptr, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr i32, ptr %3, i32 1023
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx, align 4
  %conv = trunc i32 %5 to i16
  %conv2 = and i32 %5, 65535
  %event_counter = getelementptr inbounds %struct.drm_savage_private, ptr %1, i32 0, i32 33
  %6 = ptrtoint ptr %event_counter to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %event_counter, align 4
  %conv3 = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2, i32 %conv3)
  %cmp = icmp ult i32 %conv2, %conv3
  br i1 %cmp, label %if.then5, label %if.then.if.then10_crit_edge

if.then.if.then10_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %event_wrap = getelementptr inbounds %struct.drm_savage_private, ptr %1, i32 0, i32 34
  %8 = ptrtoint ptr %event_wrap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %event_wrap, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %event_wrap, align 4
  br label %if.then10

if.then10:                                        ; preds = %if.then5, %if.then.if.then10_crit_edge
  %10 = ptrtoint ptr %event_counter to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %event_counter, align 4
  %arrayidx12 = getelementptr i32, ptr %3, i32 1
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %arrayidx12, align 4
  %and = and i32 %12, 65535
  br label %if.end15

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mmio = getelementptr inbounds %struct.drm_savage_private, ptr %1, i32 0, i32 22
  %13 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %handle, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 297988
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %18 = and i32 %17, -65536
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then10
  %hw_e.0 = phi i32 [ %and, %if.then10 ], [ %19, %if.else ]
  %event_wrap16 = getelementptr inbounds %struct.drm_savage_private, ptr %1, i32 0, i32 34
  %20 = ptrtoint ptr %event_wrap16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %event_wrap16, align 4
  %event_counter17 = getelementptr inbounds %struct.drm_savage_private, ptr %1, i32 0, i32 33
  %22 = ptrtoint ptr %event_counter17 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %event_counter17, align 4
  %conv18 = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %hw_e.0, i32 %conv18)
  %cmp19 = icmp ugt i32 %hw_e.0, %conv18
  %dec = sext i1 %cmp19 to i32
  %spec.select = add i32 %21, %dec
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data, align 4
  %shr = lshr i32 %25, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %spec.select)
  %cmp26 = icmp ult i32 %shr, %spec.select
  br i1 %cmp26, label %if.end15.cleanup_crit_edge, label %lor.lhs.false

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end15
  %and24 = and i32 %25, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %spec.select)
  %cmp28 = icmp ne i32 %shr, %spec.select
  call void @__sanitizer_cov_trace_cmp4(i32 %and24, i32 %hw_e.0)
  %cmp30.not = icmp ugt i32 %and24, %hw_e.0
  %or.cond = select i1 %cmp28, i1 true, i1 %cmp30.not
  br i1 %or.cond, label %if.else33, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else33:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %wait_evnt = getelementptr inbounds %struct.drm_savage_private, ptr %1, i32 0, i32 47
  %26 = ptrtoint ptr %wait_evnt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wait_evnt, align 4
  %conv34 = trunc i32 %25 to i16
  %call35 = tail call i32 %27(ptr noundef %1, i16 noundef zeroext %conv34) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else33, %lor.lhs.false.cleanup_crit_edge, %if.end15.cleanup_crit_edge
  %retval.0 = phi i32 [ %call35, %if.else33 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @savage_do_cleanup_bci(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %cmd_dma = getelementptr inbounds %struct.drm_savage_private, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %cmd_dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd_dma, align 4
  %fake_dma = getelementptr inbounds %struct.drm_savage_private, ptr %1, i32 0, i32 28
  %cmp = icmp eq ptr %3, %fake_dma
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %handle = getelementptr inbounds %struct.drm_savage_private, ptr %1, i32 0, i32 28, i32 4
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handle, align 4
  tail call void @kfree(ptr noundef %5) #8
  br label %if.end13

if.else:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else.if.end13_crit_edge, label %land.lhs.true

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

land.lhs.true:                                    ; preds = %if.else
  %handle4 = getelementptr inbounds %struct.drm_local_map, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %handle4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %handle4, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %land.lhs.true.if.end13_crit_edge, label %land.lhs.true6

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

land.lhs.true6:                                   ; preds = %land.lhs.true
  %type = getelementptr inbounds %struct.drm_local_map, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp8 = icmp eq i32 %9, 3
  br i1 %cmp8, label %land.lhs.true9, label %land.lhs.true6.if.end13_crit_edge

land.lhs.true6.if.end13_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %dma_type = getelementptr inbounds %struct.drm_savage_private, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %dma_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp10 = icmp eq i32 %11, 3
  br i1 %cmp10, label %if.then11, label %land.lhs.true9.if.end13_crit_edge

land.lhs.true9.if.end13_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_legacy_ioremapfree(ptr noundef nonnull %3, ptr noundef %dev) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %land.lhs.true9.if.end13_crit_edge, %land.lhs.true6.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge, %if.else.if.end13_crit_edge, %if.then
  %dma_type14 = getelementptr inbounds %struct.drm_savage_private, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %dma_type14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_type14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp15 = icmp eq i32 %13, 3
  br i1 %cmp15, label %land.lhs.true16, label %if.end13.if.end25_crit_edge

if.end13.if.end25_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

land.lhs.true16:                                  ; preds = %if.end13
  %agp_buffer_map = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 52
  %14 = ptrtoint ptr %agp_buffer_map to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %agp_buffer_map, align 4
  %tobool17.not = icmp eq ptr %15, null
  br i1 %tobool17.not, label %land.lhs.true16.if.end25_crit_edge, label %land.lhs.true18

land.lhs.true16.if.end25_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

land.lhs.true18:                                  ; preds = %land.lhs.true16
  %handle20 = getelementptr inbounds %struct.drm_local_map, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %handle20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %handle20, align 4
  %tobool21.not = icmp eq ptr %17, null
  br i1 %tobool21.not, label %land.lhs.true18.if.end25_crit_edge, label %if.then22

land.lhs.true18.if.end25_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then22:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_legacy_ioremapfree(ptr noundef nonnull %15, ptr noundef %dev) #8
  %18 = ptrtoint ptr %agp_buffer_map to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %agp_buffer_map, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %land.lhs.true18.if.end25_crit_edge, %land.lhs.true16.if.end25_crit_edge, %if.end13.if.end25_crit_edge
  %dma_pages = getelementptr inbounds %struct.drm_savage_private, ptr %1, i32 0, i32 35
  %19 = ptrtoint ptr %dma_pages to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dma_pages, align 4
  tail call void @kfree(ptr noundef %20) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_legacy_getsarea(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_legacy_findmap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_legacy_ioremap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @savage_dma_flush(ptr noundef %dev_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %first_dma_page = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 37
  %0 = ptrtoint ptr %first_dma_page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %first_dma_page, align 4
  %current_dma_page = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 38
  %2 = ptrtoint ptr %current_dma_page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_dma_page, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp = icmp eq i32 %3, %1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dma_pages = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 35
  %4 = ptrtoint ptr %dma_pages to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_pages, align 4
  %used = getelementptr %struct.drm_savage_dma_page, ptr %5, i32 %1, i32 1
  %6 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %used, align 4
  %flushed = getelementptr %struct.drm_savage_dma_page, ptr %5, i32 %1, i32 2
  %8 = ptrtoint ptr %flushed to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flushed, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp3 = icmp eq i32 %7, %9
  br i1 %cmp3, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %dma_pages4 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 35
  %10 = ptrtoint ptr %dma_pages4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_pages4, align 4
  %used6 = getelementptr %struct.drm_savage_dma_page, ptr %11, i32 %3, i32 1
  %12 = ptrtoint ptr %used6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %used6, align 4
  %and = and i32 %13, 1
  %add = add i32 %13, %and
  %sub10 = sub i32 0, %add
  %and11 = and i32 %sub10, 7
  %flushed14 = getelementptr %struct.drm_savage_dma_page, ptr %11, i32 %1, i32 2
  %14 = ptrtoint ptr %flushed14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flushed14, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.40, i32 noundef %1, i32 noundef %3, i32 noundef %15, i32 noundef %13, i32 noundef %and, i32 noundef %and11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.do.body_crit_edge, label %if.then18

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %cmd_dma = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 27
  %16 = ptrtoint ptr %cmd_dma to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cmd_dma, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %handle, align 4
  %mul = shl i32 %3, 10
  %add.ptr = getelementptr i32, ptr %19, i32 %mul
  %20 = ptrtoint ptr %dma_pages4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dma_pages4, align 4
  %used21 = getelementptr %struct.drm_savage_dma_page, ptr %21, i32 %3, i32 1
  %22 = ptrtoint ptr %used21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %used21, align 4
  %add.ptr22 = getelementptr i32, ptr %add.ptr, i32 %23
  %add26 = add i32 %23, 1
  store i32 %add26, ptr %used21, align 4
  %24 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1073741824, ptr %add.ptr22, align 4
  br label %do.body

do.body:                                          ; preds = %if.then18, %if.end.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  %cmd_dma29 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 27
  %25 = ptrtoint ptr %cmd_dma29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cmd_dma29, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %mul30 = shl i32 %1, 10
  %29 = ptrtoint ptr %dma_pages4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dma_pages4, align 4
  %flushed33 = getelementptr %struct.drm_savage_dma_page, ptr %30, i32 %1, i32 2
  %31 = ptrtoint ptr %flushed33 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flushed33, align 4
  %add34 = add i32 %32, %mul30
  %mul35 = shl i32 %add34, 2
  %add36 = add i32 %mul35, %28
  %sub37 = sub i32 %3, %1
  %mul38 = shl i32 %sub37, 10
  %used41 = getelementptr %struct.drm_savage_dma_page, ptr %30, i32 %3, i32 1
  %33 = ptrtoint ptr %used41 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %used41, align 4
  %add42 = sub i32 %mul38, %32
  %sub46 = add i32 %add42, %34
  %dma_type = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 7
  %35 = ptrtoint ptr %dma_type to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dma_type, align 4
  %or = or i32 %add36, %36
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.41, i32 noundef %or, i32 noundef %sub46) #8
  %wait_fifo = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 46
  %37 = ptrtoint ptr %wait_fifo to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wait_fifo, align 4
  %call = tail call i32 %38(ptr noundef %dev_priv, i32 noundef 3) #8
  %bci_ptr48 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 31
  %39 = ptrtoint ptr %bci_ptr48 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bci_ptr48, align 4
  %incdec.ptr51 = getelementptr i32, ptr %40, i32 1
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 -1778319279, ptr %40, align 4
  %42 = ptrtoint ptr %dma_type to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dma_type, align 4
  %or53 = or i32 %43, %add36
  %incdec.ptr54 = getelementptr i32, ptr %40, i32 2
  %44 = ptrtoint ptr %incdec.ptr51 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 %or53, ptr %incdec.ptr51, align 4
  %shr = lshr i32 %sub46, 1
  %sub55 = add nuw i32 %shr, 2147483647
  %or56 = or i32 %sub55, -1476395008
  %45 = ptrtoint ptr %incdec.ptr54 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 %or56, ptr %incdec.ptr54, align 4
  %46 = ptrtoint ptr %dma_pages4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dma_pages4, align 4
  %used60 = getelementptr %struct.drm_savage_dma_page, ptr %47, i32 %3, i32 1
  %48 = ptrtoint ptr %used60 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %used60, align 4
  %add61 = add i32 %49, %and11
  store i32 %add61, ptr %used60, align 4
  %status_ptr.i = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 30
  %50 = ptrtoint ptr %status_ptr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %status_ptr.i, align 4
  %tobool.not.i = icmp eq ptr %51, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.body
  %arrayidx.i = getelementptr i32, ptr %51, i32 1023
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %arrayidx.i, align 4
  %conv.i = trunc i32 %53 to i16
  %conv2.i = and i32 %53, 65535
  %event_counter.i = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 33
  %54 = ptrtoint ptr %event_counter.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %event_counter.i, align 4
  %conv3.i = zext i16 %55 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.i, i32 %conv3.i)
  %cmp.i = icmp ult i32 %conv2.i, %conv3.i
  br i1 %cmp.i, label %if.then5.i, label %if.then.i.if.end7.i_crit_edge

if.then.i.if.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %event_wrap.i = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 34
  %56 = ptrtoint ptr %event_wrap.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %event_wrap.i, align 4
  %inc.i = add i32 %57, 1
  store i32 %inc.i, ptr %event_wrap.i, align 4
  br label %if.end7.i

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %event_counter6.i = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 33
  %58 = ptrtoint ptr %event_counter6.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %event_counter6.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i, %if.then5.i, %if.then.i.if.end7.i_crit_edge
  %count.0.i = phi i16 [ %conv.i, %if.then5.i ], [ %conv.i, %if.then.i.if.end7.i_crit_edge ], [ %59, %if.else.i ]
  %60 = add i16 %count.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %cmp11.i = icmp eq i16 %60, 0
  br i1 %cmp11.i, label %if.then13.i, label %if.end7.i.if.end17.i_crit_edge

if.end7.i.if.end17.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

if.then13.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %event_wrap15.i = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 34
  %61 = ptrtoint ptr %event_wrap15.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %event_wrap15.i, align 4
  %inc16.i = add i32 %62, 1
  store i32 %inc16.i, ptr %event_wrap15.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then13.i, %if.end7.i.if.end17.i_crit_edge
  %count.1.i = phi i16 [ 1, %if.then13.i ], [ %60, %if.end7.i.if.end17.i_crit_edge ]
  %event_counter18.i = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 33
  %63 = ptrtoint ptr %event_counter18.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %count.1.i, ptr %event_counter18.i, align 4
  %.pre = zext i16 %count.1.i to i32
  br i1 %tobool.not.i, label %if.end17.i.savage_bci_emit_event.exit_crit_edge, label %if.then21.i

if.end17.i.savage_bci_emit_event.exit_crit_edge:  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %savage_bci_emit_event.exit

if.then21.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx24.i = getelementptr i32, ptr %51, i32 1023
  %64 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile i32 %.pre, ptr %arrayidx24.i, align 4
  br label %savage_bci_emit_event.exit

savage_bci_emit_event.exit:                       ; preds = %if.then21.i, %if.end17.i.savage_bci_emit_event.exit_crit_edge
  %65 = ptrtoint ptr %wait_fifo to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %wait_fifo, align 4
  %call42.i = tail call i32 %66(ptr noundef %dev_priv, i32 noundef 1) #8
  %67 = ptrtoint ptr %bci_ptr48 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bci_ptr48, align 4
  %or48.i = or i32 %.pre, -1744830464
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile i32 %or48.i, ptr %68, align 4
  %event_wrap = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 34
  %70 = ptrtoint ptr %event_wrap to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %event_wrap, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp63232 = icmp ugt i32 %3, %1
  br i1 %cmp63232, label %savage_bci_emit_event.exit.do.body64_crit_edge, label %savage_bci_emit_event.exit.for.end_crit_edge

savage_bci_emit_event.exit.for.end_crit_edge:     ; preds = %savage_bci_emit_event.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

savage_bci_emit_event.exit.do.body64_crit_edge:   ; preds = %savage_bci_emit_event.exit
  br label %do.body64

do.body64:                                        ; preds = %do.body64.do.body64_crit_edge, %savage_bci_emit_event.exit.do.body64_crit_edge
  %i.0233 = phi i32 [ %inc, %do.body64.do.body64_crit_edge ], [ %1, %savage_bci_emit_event.exit.do.body64_crit_edge ]
  %72 = ptrtoint ptr %dma_pages4 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dma_pages4, align 4
  %arrayidx66 = getelementptr %struct.drm_savage_dma_page, ptr %73, i32 %i.0233
  %74 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %count.1.i, ptr %arrayidx66, align 4
  %75 = load ptr, ptr %dma_pages4, align 4
  %wrap71 = getelementptr %struct.drm_savage_dma_page, ptr %75, i32 %i.0233, i32 0, i32 1
  %76 = ptrtoint ptr %wrap71 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %71, ptr %wrap71, align 4
  %77 = load ptr, ptr %dma_pages4, align 4
  %used76 = getelementptr %struct.drm_savage_dma_page, ptr %77, i32 %i.0233, i32 1
  %78 = ptrtoint ptr %used76 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %used76, align 4
  %79 = load ptr, ptr %dma_pages4, align 4
  %flushed79 = getelementptr %struct.drm_savage_dma_page, ptr %79, i32 %i.0233, i32 2
  %80 = ptrtoint ptr %flushed79 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %flushed79, align 4
  %inc = add nuw i32 %i.0233, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %do.body64.for.end_crit_edge, label %do.body64.do.body64_crit_edge

do.body64.do.body64_crit_edge:                    ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body64

do.body64.for.end_crit_edge:                      ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %do.body64.for.end_crit_edge, %savage_bci_emit_event.exit.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %1, %savage_bci_emit_event.exit.for.end_crit_edge ], [ %3, %do.body64.for.end_crit_edge ]
  %81 = ptrtoint ptr %dma_pages4 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dma_pages4, align 4
  %used82 = getelementptr %struct.drm_savage_dma_page, ptr %82, i32 %3, i32 1
  %83 = ptrtoint ptr %used82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %used82, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %84)
  %cmp83 = icmp eq i32 %84, 1024
  br i1 %cmp83, label %do.body85, label %if.else

do.body85:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx81 = getelementptr %struct.drm_savage_dma_page, ptr %82, i32 %3
  %85 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %count.1.i, ptr %arrayidx81, align 4
  %86 = ptrtoint ptr %dma_pages4 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dma_pages4, align 4
  %wrap93 = getelementptr %struct.drm_savage_dma_page, ptr %87, i32 %3, i32 0, i32 1
  %88 = ptrtoint ptr %wrap93 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %71, ptr %wrap93, align 4
  %89 = load ptr, ptr %dma_pages4, align 4
  %used98 = getelementptr %struct.drm_savage_dma_page, ptr %89, i32 %3, i32 1
  %90 = ptrtoint ptr %used98 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %used98, align 4
  %91 = load ptr, ptr %dma_pages4, align 4
  %flushed101 = getelementptr %struct.drm_savage_dma_page, ptr %91, i32 %3, i32 2
  %92 = ptrtoint ptr %flushed101 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %flushed101, align 4
  %inc102 = add i32 %3, 1
  %nr_dma_pages = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 36
  %93 = ptrtoint ptr %nr_dma_pages to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %nr_dma_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc102, i32 %94)
  %cmp103 = icmp eq i32 %inc102, %94
  %spec.store.select = select i1 %cmp103, i32 0, i32 %inc102
  %95 = ptrtoint ptr %current_dma_page to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %spec.store.select, ptr %current_dma_page, align 4
  %96 = ptrtoint ptr %first_dma_page to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %spec.store.select, ptr %first_dma_page, align 4
  br label %do.body116

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %97 = ptrtoint ptr %first_dma_page to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %3, ptr %first_dma_page, align 4
  %used111 = getelementptr %struct.drm_savage_dma_page, ptr %82, i32 %i.0.lcssa, i32 1
  %98 = ptrtoint ptr %used111 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %used111, align 4
  %flushed114 = getelementptr %struct.drm_savage_dma_page, ptr %82, i32 %3, i32 2
  %100 = ptrtoint ptr %flushed114 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %flushed114, align 4
  br label %do.body116

do.body116:                                       ; preds = %if.else, %do.body85
  %cur.0 = phi i32 [ %spec.store.select, %do.body85 ], [ %3, %if.else ]
  %last_dma_age = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 39
  %101 = ptrtoint ptr %last_dma_age to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %count.1.i, ptr %last_dma_age, align 4
  %wrap119 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 39, i32 1
  %102 = ptrtoint ptr %wrap119 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %71, ptr %wrap119, align 4
  %103 = ptrtoint ptr %dma_pages4 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dma_pages4, align 4
  %used124 = getelementptr %struct.drm_savage_dma_page, ptr %104, i32 %cur.0, i32 1
  %105 = ptrtoint ptr %used124 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %used124, align 4
  %flushed127 = getelementptr %struct.drm_savage_dma_page, ptr %104, i32 %cur.0, i32 2
  %107 = ptrtoint ptr %flushed127 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %flushed127, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.42, i32 noundef %cur.0, i32 noundef %106, i32 noundef %108) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body116, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @savage_fake_dma_flush(ptr noundef %dev_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %first_dma_page = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 37
  %0 = ptrtoint ptr %first_dma_page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %first_dma_page, align 4
  %current_dma_page = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 38
  %2 = ptrtoint ptr %current_dma_page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_dma_page, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dma_pages = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 35
  %4 = ptrtoint ptr %dma_pages to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_pages, align 4
  %used = getelementptr %struct.drm_savage_dma_page, ptr %5, i32 %1, i32 1
  %6 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2 = icmp eq i32 %7, 0
  br i1 %cmp2, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %dma_pages5 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 35
  %8 = ptrtoint ptr %dma_pages5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_pages5, align 4
  %used8 = getelementptr %struct.drm_savage_dma_page, ptr %9, i32 %3, i32 1
  %10 = ptrtoint ptr %used8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %used8, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.43, i32 noundef %1, i32 noundef %3, i32 noundef %11) #8
  %12 = ptrtoint ptr %first_dma_page to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %first_dma_page, align 4
  %14 = ptrtoint ptr %current_dma_page to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %current_dma_page, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp11.not88 = icmp ugt i32 %13, %15
  br i1 %cmp11.not88, label %if.end.for.end43_crit_edge, label %land.rhs.lr.ph

if.end.for.end43_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end43

land.rhs.lr.ph:                                   ; preds = %if.end
  %cmd_dma = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 27
  %wait_fifo = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 46
  %bci_ptr30 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 31
  br label %land.rhs

land.rhs:                                         ; preds = %for.end.land.rhs_crit_edge, %land.rhs.lr.ph
  %16 = phi i32 [ %15, %land.rhs.lr.ph ], [ %46, %for.end.land.rhs_crit_edge ]
  %i.089 = phi i32 [ %13, %land.rhs.lr.ph ], [ %inc42, %for.end.land.rhs_crit_edge ]
  %17 = ptrtoint ptr %dma_pages5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dma_pages5, align 4
  %used14 = getelementptr %struct.drm_savage_dma_page, ptr %18, i32 %i.089, i32 1
  %19 = ptrtoint ptr %used14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %used14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %land.rhs.for.end43_crit_edge, label %for.body

land.rhs.for.end43_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end43

for.body:                                         ; preds = %land.rhs
  %21 = ptrtoint ptr %cmd_dma to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cmd_dma, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %handle, align 4
  %mul = shl i32 %i.089, 10
  %add.ptr = getelementptr i32, ptr %24, i32 %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %i.089, i32 %16)
  %cmp16 = icmp uge i32 %i.089, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %20)
  %cmp21.not = icmp eq i32 %20, 1024
  %or.cond = select i1 %cmp16, i1 true, i1 %cmp21.not
  br i1 %or.cond, label %for.body.do.body_crit_edge, label %if.then22

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then22:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.44, i32 noundef %i.089, i32 noundef %20) #8
  br label %do.body

do.body:                                          ; preds = %if.then22, %for.body.do.body_crit_edge
  %25 = ptrtoint ptr %wait_fifo to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wait_fifo, align 4
  %27 = ptrtoint ptr %dma_pages5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dma_pages5, align 4
  %used29 = getelementptr %struct.drm_savage_dma_page, ptr %28, i32 %i.089, i32 1
  %29 = ptrtoint ptr %used29 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %used29, align 4
  %call = tail call i32 %26(ptr noundef %dev_priv, i32 noundef %30) #8
  %31 = ptrtoint ptr %dma_pages5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dma_pages5, align 4
  %used3484 = getelementptr %struct.drm_savage_dma_page, ptr %32, i32 %i.089, i32 1
  %33 = ptrtoint ptr %used3484 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %used3484, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp3585.not = icmp eq i32 %34, 0
  br i1 %cmp3585.not, label %do.body.for.end_crit_edge, label %for.body36.preheader

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body36.preheader:                             ; preds = %do.body
  %35 = ptrtoint ptr %bci_ptr30 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bci_ptr30, align 4
  br label %for.body36

for.body36:                                       ; preds = %for.body36.for.body36_crit_edge, %for.body36.preheader
  %bci_ptr.087 = phi ptr [ %incdec.ptr, %for.body36.for.body36_crit_edge ], [ %36, %for.body36.preheader ]
  %j.086 = phi i32 [ %inc, %for.body36.for.body36_crit_edge ], [ 0, %for.body36.preheader ]
  %arrayidx37 = getelementptr i32, ptr %add.ptr, i32 %j.086
  %37 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx37, align 4
  %incdec.ptr = getelementptr i32, ptr %bci_ptr.087, i32 1
  %39 = ptrtoint ptr %bci_ptr.087 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 %38, ptr %bci_ptr.087, align 4
  %inc = add nuw i32 %j.086, 1
  %40 = ptrtoint ptr %dma_pages5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dma_pages5, align 4
  %used34 = getelementptr %struct.drm_savage_dma_page, ptr %41, i32 %i.089, i32 1
  %42 = ptrtoint ptr %used34 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %used34, align 4
  %cmp35 = icmp ult i32 %inc, %43
  br i1 %cmp35, label %for.body36.for.body36_crit_edge, label %for.body36.for.end_crit_edge

for.body36.for.end_crit_edge:                     ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body36.for.body36_crit_edge:                  ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body36

for.end:                                          ; preds = %for.body36.for.end_crit_edge, %do.body.for.end_crit_edge
  %used34.lcssa = phi ptr [ %used3484, %do.body.for.end_crit_edge ], [ %used34, %for.body36.for.end_crit_edge ]
  %44 = ptrtoint ptr %used34.lcssa to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %used34.lcssa, align 4
  %inc42 = add i32 %i.089, 1
  %45 = ptrtoint ptr %current_dma_page to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %current_dma_page, align 4
  %cmp11.not = icmp ugt i32 %inc42, %46
  br i1 %cmp11.not, label %for.end.for.end43_crit_edge, label %for.end.land.rhs_crit_edge

for.end.land.rhs_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

for.end.for.end43_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end43

for.end43:                                        ; preds = %for.end.for.end43_crit_edge, %land.rhs.for.end43_crit_edge, %if.end.for.end43_crit_edge
  %47 = ptrtoint ptr %current_dma_page to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %current_dma_page, align 4
  %48 = ptrtoint ptr %first_dma_page to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %first_dma_page, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end43, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @savage_bci_wait_fifo_shadow(ptr nocapture noundef readonly %dev_priv, i32 noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %status_used_mask = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 32
  %0 = ptrtoint ptr %status_used_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status_used_mask, align 4
  %bci_threshold_hi = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 6
  %2 = ptrtoint ptr %bci_threshold_hi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bci_threshold_hi, align 4
  %cob_size = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 4
  %4 = ptrtoint ptr %cob_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cob_size, align 4
  %add = sub i32 32, %3
  %sub = add i32 %add, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %n)
  %cmp = icmp ult i32 %sub, %n
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.45, i32 noundef %n) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %status_ptr = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 30
  br label %do.body

do.body:                                          ; preds = %if.end4.do.body_crit_edge, %if.end
  %i.020 = phi i32 [ 0, %if.end ], [ %inc, %if.end4.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %status_ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %status_ptr, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %and = and i32 %9, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %3)
  %cmp2 = icmp ult i32 %and, %3
  br i1 %cmp2, label %do.body.cleanup_crit_edge, label %if.end4

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #8
  %inc = add nuw nsw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, 1000000
  br i1 %exitcond.not, label %for.end, label %if.end4.do.body_crit_edge

if.end4.do.body_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.end:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.46) #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %9, i32 noundef %3) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %for.end ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @savage_bci_wait_event_shadow(ptr nocapture noundef readonly %dev_priv, i16 noundef zeroext %e) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %status_ptr = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 30
  %conv = zext i16 %e to i32
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %i.017 = phi i32 [ 0, %entry ], [ %inc, %if.end.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  tail call void @arm_heavy_mb() #8
  %0 = ptrtoint ptr %status_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %status_ptr, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx, align 4
  %sub = sub i32 %3, %conv
  %and1 = and i32 %sub, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %cmp2.not.not = icmp eq i32 %and1, 0
  %and = and i32 %3, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp5 = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp2.not.not, i1 true, i1 %cmp5
  br i1 %or.cond, label %do.body.cleanup_crit_edge, label %if.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #8
  %inc = add nuw nsw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, 5000000
  br i1 %exitcond.not, label %for.end, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.46) #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %3, i32 noundef %conv) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %for.end ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @savage_bci_wait_fifo_s3d(ptr nocapture noundef readonly %dev_priv, i32 noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cob_size = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 4
  %0 = ptrtoint ptr %cob_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cob_size, align 4
  %add = sub i32 32, %n
  %sub = add i32 %add, %1
  %mmio = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.011 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handle, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 297984
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !140
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  %and = and i32 %7, 131071
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %sub)
  %cmp2.not = icmp ugt i32 %and, %sub
  br i1 %cmp2.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #8
  %inc = add nuw nsw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, 1000000
  br i1 %exitcond.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.46) #8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %7) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %for.end ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @savage_bci_wait_fifo_s4(ptr nocapture noundef readonly %dev_priv, i32 noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cob_size = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 4
  %0 = ptrtoint ptr %cob_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cob_size, align 4
  %add = sub i32 32, %n
  %sub = add i32 %add, %1
  %mmio = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.011 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handle, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 298080
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !140
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  %and = and i32 %7, 2097151
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %sub)
  %cmp2.not = icmp ugt i32 %and, %sub
  br i1 %cmp2.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #8
  %inc = add nuw nsw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, 1000000
  br i1 %exitcond.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.46) #8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %7) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %for.end ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @savage_bci_wait_event_reg(ptr nocapture noundef readonly %dev_priv, i16 noundef zeroext %e) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 22
  %conv = zext i16 %e to i32
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.017 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 297988
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !140
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  %sub = sub i32 %5, %conv
  %and2 = and i32 %sub, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %cmp3.not.not = icmp eq i32 %and2, 0
  %and = and i32 %5, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp6 = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp3.not.not, i1 true, i1 %cmp6
  br i1 %or.cond, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #8
  %inc = add nuw nsw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, 5000000
  br i1 %exitcond.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.46) #8
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %5, i32 noundef %conv) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %for.end ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @savage_emit_clip_rect_s3d(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @savage_emit_clip_rect_s4(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_legacy_ioremapfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !105, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128}
!llvm.named.register.sp = !{!130}
!llvm.module.flags = !{!131, !132, !133, !134, !135, !136, !137, !138}
!llvm.ident = !{!139}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 286, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 289, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 368, i32 4}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 382, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 408, i32 4}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 420, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 598, i32 4}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 1011, i32 2}
!16 = !{ptr @__func__.savage_bci_buffers, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 1016, i32 3}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 1024, i32 3}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 1064, i32 4}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 1076, i32 2}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 1077, i32 2}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 1078, i32 2}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 1079, i32 2}
!31 = !{ptr @savage_ioctls, !32, !"savage_ioctls", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 1075, i32 29}
!33 = !{ptr @savage_max_ioctl, !34, !"savage_max_ioctl", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 1082, i32 5}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 254, i32 2}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 265, i32 2}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 266, i32 2}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 277, i32 2}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!45 = distinct !{null, !44, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!50 = !{ptr @__func__.savage_bci_init, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 917, i32 2}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 671, i32 3}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 675, i32 3}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 680, i32 3}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 703, i32 3}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 710, i32 4}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 722, i32 4}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 728, i32 4}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 737, i32 4}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 747, i32 4}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 753, i32 4}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 760, i32 4}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 766, i32 5}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 773, i32 5}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 779, i32 4}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 790, i32 3}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 797, i32 4}
!84 = distinct !{null, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 874, i32 3}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 880, i32 3}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 446, i32 2}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 471, i32 2}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 506, i32 2}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 520, i32 2}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 533, i32 4}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 56, i32 3}
!100 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 69, i32 2}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 70, i32 2}
!104 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @savage_bci_wait_fifo_shadow._entry, !103, !"_entry", i1 false, i1 false}
!107 = !{ptr @savage_bci_wait_fifo_shadow._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.50, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 145, i32 2}
!110 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @savage_bci_wait_event_shadow._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @savage_bci_wait_event_shadow._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 91, i32 2}
!115 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @savage_bci_wait_fifo_s3d._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @savage_bci_wait_fifo_s3d._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 112, i32 2}
!120 = !{ptr @savage_bci_wait_fifo_s4._entry, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @savage_bci_wait_fifo_s4._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 167, i32 2}
!124 = !{ptr @savage_bci_wait_event_reg._entry, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @savage_bci_wait_event_reg._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.56, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 222, i32 2}
!128 = !{ptr @__func__.savage_bci_event_emit, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/savage/savage_bci.c", i32 936, i32 2}
!130 = !{!"sp"}
!131 = !{i32 1, !"wchar_size", i32 2}
!132 = !{i32 1, !"min_enum_size", i32 4}
!133 = !{i32 8, !"branch-target-enforcement", i32 0}
!134 = !{i32 8, !"sign-return-address", i32 0}
!135 = !{i32 8, !"sign-return-address-all", i32 0}
!136 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!137 = !{i32 7, !"uwtable", i32 1}
!138 = !{i32 7, !"frame-pointer", i32 2}
!139 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!140 = !{i64 5016736}
!141 = !{i64 2154760425}
!142 = !{i64 2154758177}
!143 = !{i64 2153913363, i64 2153913388}
!144 = !{i64 2154772591}
!145 = !{i64 2154761273}
!146 = !{i64 2154742622}
!147 = !{i64 2154751171}
!148 = !{i64 2154745778}
!149 = !{i64 2154748757}
!150 = !{i64 2154754229}
