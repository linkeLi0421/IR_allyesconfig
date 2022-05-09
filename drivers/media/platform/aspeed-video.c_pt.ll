; ModuleID = '/llk/IR_all_yes/drivers/media/platform/aspeed-video.c_pt.bc'
source_filename = "../drivers/media/platform/aspeed-video.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_event_src_change = type { i32 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.atomic_t = type { i32 }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_dv_timings_cap = type { i32, i32, [2 x i32], %union.anon.116 }
%union.anon.116 = type { %struct.v4l2_bt_timings_cap, [24 x i8] }
%struct.v4l2_bt_timings_cap = type { i32, i32, i32, i32, i64, i64, i32, i32, [16 x i32] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.aspeed_video_config = type { i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.aspeed_video = type { ptr, ptr, ptr, ptr, %struct.v4l2_ctrl_handler, %struct.v4l2_device, %struct.v4l2_pix_format, %struct.v4l2_bt_timings, %struct.v4l2_bt_timings, i32, %struct.vb2_queue, %struct.video_device, %struct.mutex, i32, i32, %struct.wait_queue_head, %struct.spinlock, %struct.delayed_work, %struct.list_head, i32, i32, i32, [2 x %struct.aspeed_video_addr], %struct.aspeed_video_addr, i8, i32, i32, i32, i32, i32, i32, %struct.aspeed_video_perf }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.97, i32, i32 }
%union.anon.97 = type { i32 }
%struct.v4l2_bt_timings = type <{ i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_fract, i8, i8, [46 x i8] }>
%struct.v4l2_fract = type { i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.90 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.90 = type { %struct.anon.91 }
%struct.anon.91 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.87], %struct.media_entity_enum, i32 }
%struct.anon.87 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.aspeed_video_addr = type { i32, i32, ptr }
%struct.aspeed_video_perf = type { i64, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
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
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.95, i32 }
%union.anon.95 = type { i32 }
%struct.aspeed_video_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.96 }
%union.anon.96 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.98, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.98 = type { i8 }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_streamparm = type { i32, %union.anon.112 }
%union.anon.112 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.113, [2 x i32] }
%union.anon.113 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_frmivalenum = type { i32, i32, i32, i32, i32, %union.anon.114, [2 x i32] }
%union.anon.114 = type { %struct.v4l2_frmival_stepwise }
%struct.v4l2_frmival_stepwise = type { %struct.v4l2_fract, %struct.v4l2_fract, %struct.v4l2_fract }
%struct.v4l2_dv_timings = type { i32, %union.anon.115 }
%union.anon.115 = type { [32 x i32] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.79 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.81 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__initcall__kmod_aspeed_video__368_1876_aspeed_video_driver_init6 = internal global ptr @aspeed_video_driver_init, section ".initcall6.init", align 4
@aspeed_video_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @aspeed_video_probe, ptr @aspeed_video_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @aspeed_video_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_aspeed_video_driver_exit = internal global ptr @aspeed_video_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description369 = internal constant [52 x i8] c"aspeed_video.description=ASPEED Video Engine Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author370 = internal constant [32 x i8] c"aspeed_video.author=Eddie James\00", section ".modinfo", align 1
@__UNIQUE_ID_file371 = internal constant [54 x i8] c"aspeed_video.file=drivers/media/platform/aspeed-video\00", section ".modinfo", align 1
@__UNIQUE_ID_license372 = internal constant [28 x i8] c"aspeed_video.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"aspeed-video\00", [19 x i8] zeroinitializer }, align 32
@aspeed_video_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-video-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2400_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-video-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2500_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2600-video-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2600_config }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@aspeed_video_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&video->lock\00", [19 x i8] zeroinitializer }, align 32
@aspeed_video_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&video->video_lock\00", [45 x i8] zeroinitializer }, align 32
@aspeed_video_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&video->wait\00", [19 x i8] zeroinitializer }, align 32
@aspeed_video_probe.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&(&video->res_work)->work)\00", [51 x i8] zeroinitializer }, align 32
@aspeed_video_probe.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&(&video->res_work)->timer\00", [37 x i8] zeroinitializer }, align 32
@aspeed_video_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 1835, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"debugfs create failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"aspeed_video_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/platform/aspeed-video.c\00", [58 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aspeed_video_probe._entry_ptr = internal global ptr @aspeed_video_probe._entry, section ".printk_index", align 4
@aspeed_video_resolution_work.ev = internal constant { { i32, [4 x i8], { %struct.v4l2_event_src_change, [60 x i8] }, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] }, [56 x i8] } { { i32, [4 x i8], { %struct.v4l2_event_src_change, [60 x i8] }, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] } { i32 5, [4 x i8] undef, { %struct.v4l2_event_src_change, [60 x i8] } { %struct.v4l2_event_src_change { i32 1 }, [60 x i8] undef }, i32 0, i32 0, %struct.__kernel_timespec zeroinitializer, i32 0, [8 x i32] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@aspeed_video_write.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.16, ptr @.str.12, ptr @.str.17, i8 0, i8 119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"aspeed_video\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"aspeed_video_write\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"write %03x[%08x]\0A\00", [46 x i8] zeroinitializer }, align 32
@aspeed_video_get_resolution.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.18, ptr @.str.12, ptr @.str.19, i8 0, i8 -49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"aspeed_video_get_resolution\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Timed out; first mode detect\0A\00", [34 x i8] zeroinitializer }, align 32
@aspeed_video_get_resolution.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.18, ptr @.str.12, ptr @.str.20, i8 0, i8 -46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Timed out; second mode detect\0A\00", [33 x i8] zeroinitializer }, align 32
@aspeed_video_get_resolution.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.18, ptr @.str.12, ptr @.str.21, i8 0, i8 -37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid resolution detected\0A\00", [35 x i8] zeroinitializer }, align 32
@aspeed_video_get_resolution.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.18, ptr @.str.12, ptr @.str.22, i8 0, i8 -33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Got resolution: %dx%d\0A\00", [41 x i8] zeroinitializer }, align 32
@aspeed_video_update.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.23, ptr @.str.12, ptr @.str.24, i8 0, i8 115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"aspeed_video_update\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"update %03x[%08x -> %08x]\0A\00", [37 x i8] zeroinitializer }, align 32
@aspeed_video_read.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.25, ptr @.str.12, ptr @.str.26, i8 0, i8 117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aspeed_video_read\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"read %03x[%08x]\0A\00", [47 x i8] zeroinitializer }, align 32
@aspeed_video_start_frame.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.27, ptr @.str.12, ptr @.str.28, i8 0, i8 124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"aspeed_video_start_frame\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"No signal; don't start frame\0A\00", [34 x i8] zeroinitializer }, align 32
@aspeed_video_start_frame.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.27, ptr @.str.12, ptr @.str.29, i8 0, i8 126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Engine busy; don't start frame\0A\00", [32 x i8] zeroinitializer }, align 32
@aspeed_video_start_frame.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.27, ptr @.str.12, ptr @.str.30, i8 0, i8 -128, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"No buffers; don't start frame\0A\00", [33 x i8] zeroinitializer }, align 32
@aspeed_video_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.12, i32 1723, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unable to find IRQ\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aspeed_video_init\00", [46 x i8] zeroinitializer }, align 32
@aspeed_video_init._entry_ptr = internal global ptr @aspeed_video_init._entry, section ".printk_index", align 4
@aspeed_video_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.12, i32 1730, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to request IRQ %d\0A\00", [38 x i8] zeroinitializer }, align 32
@aspeed_video_init._entry_ptr.35 = internal global ptr @aspeed_video_init._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"eclk\00", [27 x i8] zeroinitializer }, align 32
@aspeed_video_init._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.32, ptr @.str.12, i32 1736, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unable to get ECLK\0A\00", [44 x i8] zeroinitializer }, align 32
@aspeed_video_init._entry_ptr.39 = internal global ptr @aspeed_video_init._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vclk\00", [27 x i8] zeroinitializer }, align 32
@aspeed_video_init._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.32, ptr @.str.12, i32 1746, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unable to get VCLK\0A\00", [44 x i8] zeroinitializer }, align 32
@aspeed_video_init._entry_ptr.43 = internal global ptr @aspeed_video_init._entry.41, section ".printk_index", align 4
@aspeed_video_init._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.32, ptr @.str.12, i32 1759, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to set DMA mask\0A\00", [40 x i8] zeroinitializer }, align 32
@aspeed_video_init._entry_ptr.46 = internal global ptr @aspeed_video_init._entry.44, section ".printk_index", align 4
@aspeed_video_init._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.32, ptr @.str.12, i32 1765, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to allocate DMA for JPEG header\0A\00", [56 x i8] zeroinitializer }, align 32
@aspeed_video_init._entry_ptr.49 = internal global ptr @aspeed_video_init._entry.47, section ".printk_index", align 4
@aspeed_video_irq_res_change.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.50, ptr @.str.12, ptr @.str.51, i8 0, i8 -108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"aspeed_video_irq_res_change\00", [36 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Resolution changed; resetting\0A\00", [33 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@aspeed_video_jpeg_header = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 -520103681, i32 1179258880, i32 16795209, i32 1610612993, i32 24576, i32 251723519, i32 11525, i32 0, i32 0, i32 14417664], [56 x i8] zeroinitializer }, align 32
@aspeed_video_jpeg_dct = internal constant { [12 x [34 x i32]], [384 x i8] } { [12 x [34 x i32]] [[34 x i32] [i32 219414595, i32 202313999, i32 286265620, i32 387192086, i32 505426462, i32 1025383195, i32 841231915, i32 1263288136, i32 1145454407, i32 1634949712, i32 1449940304, i32 -2006694332, i32 2054581349, i32 1300267648, i32 -1936224928, i32 2121504381, i32 -604013696, i32 520176384, i32 657269025, i32 808474669, i32 1769716056, i32 -1195787909, i32 -1179081050, i32 -1179010631, i32 -1179010631, i32 -1179010631, i32 -1179010631, i32 -1179010631, i32 -1179010631, i32 -1179010631, i32 -1179010631, i32 -1179010631, i32 -1179010631, i32 -4605511], [34 x i32] [i32 202440771, i32 168627981, i32 252579601, i32 336663059, i32 438053658, i32 890902552, i32 723462182, i32 1094858559, i32 1010644798, i32 1432636998, i32 1264536134, i32 2002206012, i32 1801936728, i32 1131442544, i32 2055502676, i32 1852081005, i32 -604017552, i32 453067520, i32 572988701, i32 707415079, i32 1533780044, i32 -1600085909, i32 -1600085856, i32 -1600085856, i32 -1600085856, i32 -1600085856, i32 -1600085856, i32 -1600085856, i32 -1600085856, i32 -1600085856, i32 -1600085856, i32 -1600085856, i32 -1600085856, i32 -6250336], [34 x i32] [i32 151912515, i32 151653386, i32 202050574, i32 286134032, i32 353838101, i32 739578643, i32 605692191, i32 909585972, i32 825372211, i32 1179861306, i32 1045314874, i32 1648898609, i32 1482051145, i32 945643101, i32 1701668421, i32 1532193882, i32 -604022435, i32 369181440, i32 471865368, i32 572669728, i32 1264092479, i32 -2054847144, i32 -2054847099, i32 -2054847099, i32 -2054847099, i32 -2054847099, i32 -2054847099, i32 -2054847099, i32 -2054847099, i32 -2054847099, i32 -2054847099, i32 -2054847099, i32 -2054847099, i32 -8026747], [34 x i32] [i32 118161475, i32 117967368, i32 168364555, i32 218827788, i32 286399505, i32 588320527, i32 471079449, i32 724247593, i32 656942120, i32 943862574, i32 826159150, i32 1312368679, i32 1178877498, i32 743066186, i32 1347834167, i32 1212307015, i32 -604027062, i32 302072576, i32 370807571, i32 471610138, i32 1028156467, i32 1819044936, i32 1819044972, i32 1819044972, i32 1819044972, i32 1819044972, i32 1819044972, i32 1819044972, i32 1819044972, i32 1819044972, i32 1819044972, i32 1819044972, i32 1819044972, i32 -9671572], [34 x i32] [i32 101253187, i32 84281094, i32 117901065, i32 168364298, i32 219026957, i32 453839884, i32 370152467, i32 555883552, i32 505355296, i32 724772900, i32 640689700, i32 1026367262, i32 926232621, i32 574175801, i32 1061437227, i32 942883640, i32 -604031175, i32 218186496, i32 286461454, i32 353707539, i32 758468646, i32 1347440693, i32 1347440720, i32 1347440720, i32 1347440720, i32 1347440720, i32 1347440720, i32 1347440720, i32 1347440720, i32 1347440720, i32 1347440720, i32 1347440720, i32 1347440720, i32 -11513776], [34 x i32] [i32 67502147, i32 50595076, i32 84149510, i32 117835270, i32 151588617, i32 302581768, i32 252316941, i32 370545429, i32 336925461, i32 488774424, i32 421533976, i32 673060116, i32 606281758, i32 388376358, i32 707602972, i32 622996773, i32 -604035802, i32 151077632, i32 185403914, i32 235805197, i32 522532634, i32 926365477, i32 926365495, i32 926365495, i32 926365495, i32 926365495, i32 926365495, i32 926365495, i32 926365495, i32 926365495, i32 926365495, i32 926365495, i32 926365495, i32 -13158601], [34 x i32] [i32 33751107, i32 16908802, i32 33686019, i32 50529027, i32 67372804, i32 151258116, i32 117769734, i32 185272586, i32 168429834, i32 235998476, i32 202378252, i32 336529930, i32 303108111, i32 185799443, i32 353768718, i32 303109650, i32 -604040685, i32 67191552, i32 84280581, i32 117902598, i32 252844813, i32 454761234, i32 454761243, i32 454761243, i32 454761243, i32 454761243, i32 454761243, i32 454761243, i32 454761243, i32 454761243, i32 454761243, i32 454761243, i32 454761243, i32 -15000805], [34 x i32] [i32 16908355, i32 16843009, i32 16843010, i32 33686018, i32 50529539, i32 100860418, i32 84083716, i32 117900807, i32 101123591, i32 151718152, i32 134875144, i32 218760966, i32 202050058, i32 118230284, i32 235867657, i32 202051340, i32 -604042228, i32 50414336, i32 50594563, i32 67373060, i32 168563208, i32 303174156, i32 303174162, i32 303174162, i32 303174162, i32 303174162, i32 303174162, i32 303174162, i32 303174162, i32 303174162, i32 303174162, i32 303174162, i32 303174162, i32 -15592942], [34 x i32] [i32 16908355, i32 16843009, i32 16843010, i32 33686018, i32 50529539, i32 100860418, i32 84083716, i32 117900807, i32 101123591, i32 151718152, i32 134875144, i32 218760966, i32 202050058, i32 118230284, i32 235867657, i32 202051340, i32 -604042228, i32 33637120, i32 50528770, i32 67372803, i32 134876935, i32 252645130, i32 252645135, i32 252645135, i32 252645135, i32 252645135, i32 252645135, i32 252645135, i32 252645135, i32 252645135, i32 252645135, i32 252645135, i32 252645135, i32 -15790321], [34 x i32] [i32 16842819, i32 16843009, i32 16843009, i32 16843009, i32 33686274, i32 67240450, i32 50463491, i32 84214789, i32 84214789, i32 117966342, i32 101189126, i32 168232197, i32 151521287, i32 84478217, i32 168495623, i32 151522057, i32 -604042999, i32 33637120, i32 33751554, i32 50529539, i32 117967877, i32 202116104, i32 202116108, i32 202116108, i32 202116108, i32 202116108, i32 202116108, i32 202116108, i32 202116108, i32 202116108, i32 202116108, i32 202116108, i32 202116108, i32 -15987700], [34 x i32] [i32 16842819, i32 16843009, i32 16843009, i32 16843009, i32 16843265, i32 50397441, i32 33620482, i32 50529027, i32 50529027, i32 67437572, i32 67437572, i32 100991747, i32 100992261, i32 50726406, i32 117901060, i32 100992774, i32 -604043770, i32 16859904, i32 16908545, i32 33686530, i32 84281604, i32 151587078, i32 151587081, i32 151587081, i32 151587081, i32 151587081, i32 151587081, i32 151587081, i32 151587081, i32 151587081, i32 151587081, i32 151587081, i32 151587081, i32 -16185079], [34 x i32] [i32 16842819, i32 16843009, i32 16843009, i32 16843009, i32 16843009, i32 16843009, i32 16843009, i32 16843009, i32 16843009, i32 33686018, i32 33686018, i32 50462977, i32 50463234, i32 16974595, i32 50529026, i32 50463491, i32 -604044285, i32 16859904, i32 16843009, i32 16843265, i32 50595330, i32 101058052, i32 101058054, i32 101058054, i32 101058054, i32 101058054, i32 101058054, i32 101058054, i32 101058054, i32 101058054, i32 101058054, i32 101058054, i32 101058054, i32 -16382458]], [384 x i8] zeroinitializer }, align 32
@aspeed_video_jpeg_quant = internal constant { [116 x i32], [112 x i8] } { [116 x i32] [i32 135332032, i32 0, i32 1114371, i32 50401538, i32 -989921007, i32 7936, i32 16844033, i32 16843009, i32 0, i32 0, i32 67305985, i32 134678021, i32 -16053751, i32 280297668, i32 50397696, i32 50594307, i32 67372293, i32 2097217536, i32 197121, i32 302321924, i32 104935713, i32 123818259, i32 840200482, i32 144806273, i32 -1045347805, i32 -254717419, i32 1919038244, i32 369756546, i32 437852183, i32 673654309, i32 892611113, i32 959985462, i32 1162101562, i32 1229473606, i32 1431589706, i32 1498961750, i32 1701077850, i32 1768449894, i32 1970565994, i32 2037938038, i32 -2054913158, i32 -1987541114, i32 -1802268022, i32 -1734895979, i32 -1549624679, i32 -1482250844, i32 -1297438296, i32 -1229605709, i32 -1162233673, i32 -976960574, i32 -909588538, i32 -724315446, i32 -656943403, i32 -488514855, i32 -421141277, i32 -353769241, i32 -185339151, i32 -117967115, i32 -989857031, i32 73472, i32 16843011, i32 16843009, i32 257, i32 0, i32 67305985, i32 134678021, i32 -16053751, i32 297074884, i32 33620480, i32 67306500, i32 67372295, i32 1996620032, i32 50462976, i32 553976849, i32 1091700273, i32 1902184273, i32 -2127420909, i32 -1857940472, i32 163688865, i32 -263048413, i32 -781032939, i32 874780170, i32 401679841, i32 639244568, i32 707340327, i32 943142453, i32 1145256505, i32 1212630597, i32 1414744649, i32 1482118741, i32 1684232793, i32 1751606885, i32 1953720937, i32 2021095029, i32 -2088600967, i32 -2021227132, i32 -1836414584, i32 -1768581997, i32 -1701209961, i32 -1515936862, i32 -1448564826, i32 -1263291734, i32 -1195919691, i32 -1010648391, i32 -943274556, i32 -758462008, i32 -690629421, i32 -623257385, i32 -437984286, i32 -370612250, i32 -185339158, i32 -117967115, i32 -620758279, i32 16976896, i32 51446272, i32 4128785], [112 x i8] zeroinitializer }, align 32
@aspeed_video_setup_video._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.12, i32 1646, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to register v4l2 device\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"aspeed_video_setup_video\00", [39 x i8] zeroinitializer }, align 32
@aspeed_video_setup_video._entry_ptr = internal global ptr @aspeed_video_setup_video._entry, section ".printk_index", align 4
@aspeed_video_setup_video._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.55 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"aspeed_video:1650:(&video->ctrl_handler)->_lock\00", [48 x i8] zeroinitializer }, align 32
@aspeed_video_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @aspeed_video_set_ctrl }, [20 x i8] zeroinitializer }, align 32
@aspeed_video_setup_video._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.54, ptr @.str.12, i32 1664, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to init controls: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@aspeed_video_setup_video._entry_ptr.58 = internal global ptr @aspeed_video_setup_video._entry.56, section ".printk_index", align 4
@aspeed_video_vb2_ops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @aspeed_video_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @aspeed_video_buf_prepare, ptr null, ptr null, ptr @aspeed_video_start_streaming, ptr @aspeed_video_stop_streaming, ptr @aspeed_video_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@aspeed_video_setup_video._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.54, ptr @.str.12, i32 1686, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to init vb2 queue\0A\00", [38 x i8] zeroinitializer }, align 32
@aspeed_video_setup_video._entry_ptr.61 = internal global ptr @aspeed_video_setup_video._entry.59, section ".printk_index", align 4
@aspeed_video_v4l2_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @aspeed_video_open, ptr @aspeed_video_release }, [60 x i8] zeroinitializer }, align 32
@aspeed_video_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @aspeed_video_querycap, ptr @aspeed_video_enum_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aspeed_video_get_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aspeed_video_get_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aspeed_video_get_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr null, ptr null, ptr null, ptr @aspeed_video_enum_input, ptr @aspeed_video_get_input, ptr @aspeed_video_set_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aspeed_video_get_parm, ptr @aspeed_video_set_parm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aspeed_video_enum_framesizes, ptr @aspeed_video_enum_frameintervals, ptr @aspeed_video_set_dv_timings, ptr @aspeed_video_get_dv_timings, ptr @aspeed_video_query_dv_timings, ptr @aspeed_video_enum_dv_timings, ptr @aspeed_video_dv_timings_cap, ptr null, ptr null, ptr @aspeed_video_sub_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@aspeed_video_setup_video._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.54, ptr @.str.12, i32 1708, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register video device\0A\00", [63 x i8] zeroinitializer }, align 32
@aspeed_video_setup_video._entry_ptr.64 = internal global ptr @aspeed_video_setup_video._entry.62, section ".printk_index", align 4
@aspeed_video_stop_streaming.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.65, ptr @.str.12, ptr @.str.66, i8 1, i8 123, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"aspeed_video_stop_streaming\00", [36 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Timed out when stopping streaming\0A\00", [61 x i8] zeroinitializer }, align 32
@aspeed_video_set_resolution._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.12, i32 961, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to allocate source buffers\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"aspeed_video_set_resolution\00", [36 x i8] zeroinitializer }, align 32
@aspeed_video_set_resolution._entry_ptr = internal global ptr @aspeed_video_set_resolution._entry, section ".printk_index", align 4
@aspeed_video_calc_compressed_size.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.69, ptr @.str.12, ptr @.str.70, i8 0, i8 -59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"aspeed_video_calc_compressed_size\00", [62 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Max compressed size: %x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Aspeed Video Engine\00", [44 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Host VGA capture\00", [47 x i8] zeroinitializer }, align 32
@aspeed_video_timings_cap = internal constant { %struct.v4l2_dv_timings_cap, [48 x i8] } { %struct.v4l2_dv_timings_cap { i32 0, i32 0, [2 x i32] zeroinitializer, %union.anon.116 { %struct.v4l2_bt_timings_cap { i32 640, i32 1920, i32 480, i32 1200, i64 6574080, i64 138240000, i32 15, i32 14, [16 x i32] zeroinitializer }, [24 x i8] undef } }, [48 x i8] zeroinitializer }, align 32
@aspeed_video_debugfs_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @aspeed_video_proc_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@debugfs_entry = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.74 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"  %-20s:\09%s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Signal\00", [25 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Unlock\00", [25 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Lock\00", [27 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"  %-20s:\09%d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Width\00", [26 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Height\00", [25 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"FRC\00", [28 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Performance:\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Frame#\00", [25 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"  %-20s:\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Frame Duration(ms)\00", [45 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"    %-18s:\09%d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Now\00", [28 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Min\00", [28 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Max\00", [28 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"FPS\00", [28 x i8] zeroinitializer }, align 32
@ast2400_config = internal constant { %struct.aspeed_video_config, [24 x i8] } { %struct.aspeed_video_config { i32 256, i32 120 }, [24 x i8] zeroinitializer }, align 32
@ast2500_config = internal constant { %struct.aspeed_video_config, [24 x i8] } { %struct.aspeed_video_config { i32 8192, i32 120 }, [24 x i8] zeroinitializer }, align 32
@ast2600_config = internal constant { %struct.aspeed_video_config, [24 x i8] } { %struct.aspeed_video_config { i32 8192, i32 132 }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 10291457, i64 10291459]
@___asan_gen_.92 = private unnamed_addr constant [20 x i8] c"aspeed_video_driver\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1867, i32 31 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1869, i32 11 }
@___asan_gen_.98 = private unnamed_addr constant [22 x i8] c"aspeed_video_of_match\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1783, i32 34 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1816, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1817, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1818, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1819, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1835, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [3 x i8] c"ev\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1393, i32 34 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 476, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 828, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 842, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 876, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 893, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 461, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 469, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 498, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 504, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 513, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1723, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1730, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1734, i32 34 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1736, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1744, i32 34 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1746, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1759, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1765, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 593, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1163, i32 7 }
@___asan_gen_.254 = private unnamed_addr constant [25 x i8] c"aspeed_video_jpeg_header\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 281, i32 18 }
@___asan_gen_.257 = private unnamed_addr constant [22 x i8] c"aspeed_video_jpeg_dct\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 309, i32 18 }
@___asan_gen_.260 = private unnamed_addr constant [24 x i8] c"aspeed_video_jpeg_quant\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 286, i32 18 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1646, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1650, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant [22 x i8] c"aspeed_video_ctrl_ops\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1371, i32 35 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1664, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant [21 x i8] c"aspeed_video_vb2_ops\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1554, i32 29 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1686, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant [23 x i8] c"aspeed_video_v4l2_fops\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1447, i32 42 }
@___asan_gen_.299 = private unnamed_addr constant [23 x i8] c"aspeed_video_ioctl_ops\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1286, i32 36 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1708, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1519, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 961, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 790, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1049, i32 21 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1050, i32 49 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1085, i32 21 }
@___asan_gen_.338 = private unnamed_addr constant [25 x i8] c"aspeed_video_timings_cap\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 397, i32 41 }
@___asan_gen_.341 = private unnamed_addr constant [25 x i8] c"aspeed_video_debugfs_ops\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1595, i32 37 }
@___asan_gen_.344 = private unnamed_addr constant [14 x i8] c"debugfs_entry\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1603, i32 23 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1569, i32 14 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1571, i32 16 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1571, i32 34 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1572, i32 29 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1572, i32 40 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1573, i32 16 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1573, i32 34 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1574, i32 34 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1575, i32 34 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1579, i32 14 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1580, i32 34 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1581, i32 16 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1581, i32 30 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1582, i32 16 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1582, i32 36 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1583, i32 36 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1584, i32 36 }
@___asan_gen_.398 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1585, i32 34 }
@___asan_gen_.401 = private unnamed_addr constant [15 x i8] c"ast2400_config\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 266, i32 41 }
@___asan_gen_.404 = private unnamed_addr constant [15 x i8] c"ast2500_config\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 271, i32 41 }
@___asan_gen_.407 = private unnamed_addr constant [15 x i8] c"ast2600_config\00", align 1
@___asan_gen_.408 = private constant [41 x i8] c"../drivers/media/platform/aspeed-video.c\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 276, i32 41 }
@llvm.compiler.used = appending global [125 x ptr] [ptr @__UNIQUE_ID_author370, ptr @__UNIQUE_ID_description369, ptr @__UNIQUE_ID_file371, ptr @__UNIQUE_ID_license372, ptr @__exitcall_aspeed_video_driver_exit, ptr @__initcall__kmod_aspeed_video__368_1876_aspeed_video_driver_init6, ptr @aspeed_video_driver_exit, ptr @aspeed_video_init._entry, ptr @aspeed_video_init._entry.33, ptr @aspeed_video_init._entry.37, ptr @aspeed_video_init._entry.41, ptr @aspeed_video_init._entry.44, ptr @aspeed_video_init._entry.47, ptr @aspeed_video_init._entry_ptr, ptr @aspeed_video_init._entry_ptr.35, ptr @aspeed_video_init._entry_ptr.39, ptr @aspeed_video_init._entry_ptr.43, ptr @aspeed_video_init._entry_ptr.46, ptr @aspeed_video_init._entry_ptr.49, ptr @aspeed_video_probe._entry, ptr @aspeed_video_probe._entry_ptr, ptr @aspeed_video_set_resolution._entry, ptr @aspeed_video_set_resolution._entry_ptr, ptr @aspeed_video_setup_video._entry, ptr @aspeed_video_setup_video._entry.56, ptr @aspeed_video_setup_video._entry.59, ptr @aspeed_video_setup_video._entry.62, ptr @aspeed_video_setup_video._entry_ptr, ptr @aspeed_video_setup_video._entry_ptr.58, ptr @aspeed_video_setup_video._entry_ptr.61, ptr @aspeed_video_setup_video._entry_ptr.64, ptr @aspeed_video_driver, ptr @.str, ptr @aspeed_video_of_match, ptr @aspeed_video_probe.__key, ptr @.str.1, ptr @aspeed_video_probe.__key.2, ptr @.str.3, ptr @aspeed_video_probe.__key.4, ptr @.str.5, ptr @aspeed_video_probe.__key.6, ptr @.str.7, ptr @aspeed_video_probe.__key.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @aspeed_video_resolution_work.ev, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @aspeed_video_jpeg_header, ptr @aspeed_video_jpeg_dct, ptr @aspeed_video_jpeg_quant, ptr @.str.53, ptr @.str.54, ptr @aspeed_video_setup_video._key, ptr @.str.55, ptr @aspeed_video_ctrl_ops, ptr @.str.57, ptr @aspeed_video_vb2_ops, ptr @.str.60, ptr @aspeed_video_v4l2_fops, ptr @aspeed_video_ioctl_ops, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @aspeed_video_timings_cap, ptr @aspeed_video_debugfs_ops, ptr @debugfs_entry, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @ast2400_config, ptr @ast2500_config, ptr @ast2600_config], section "llvm.metadata"
@0 = internal global [106 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_video_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_video_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_video_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_video_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_video_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_video_probe.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_video_probe.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_video_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_video_resolution_work.ev to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_video_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_video_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_video_init._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_video_init._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_video_init._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_video_init._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_video_jpeg_header to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_video_jpeg_dct to i32), i32 1632, i32 2016, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_video_jpeg_quant to i32), i32 464, i32 576, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_video_setup_video._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_video_setup_video._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_video_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_video_setup_video._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_video_vb2_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_video_setup_video._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_video_v4l2_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_video_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_video_setup_video._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_video_set_resolution._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_video_timings_cap to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_video_debugfs_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debugfs_entry to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2400_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2500_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2600_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_video_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @aspeed_video_driver, ptr noundef null) #14
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_video_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @platform_driver_unregister(ptr noundef nonnull @aspeed_video_driver) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_video_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2904, i32 noundef 3520) #14
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #14
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %call.i, align 8
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call9 = tail call ptr @of_match_node(ptr noundef nonnull @aspeed_video_of_match, ptr noundef %3) #14
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %data = getelementptr inbounds %struct.of_device_id, ptr %call9, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %jpeg_mode13 = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 13
  %8 = ptrtoint ptr %jpeg_mode13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %jpeg_mode13, align 4
  %comp_size_read = getelementptr inbounds %struct.aspeed_video_config, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %comp_size_read to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %comp_size_read, align 4
  %comp_size_read14 = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 14
  %11 = ptrtoint ptr %comp_size_read14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %comp_size_read14, align 8
  %frame_rate = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 25
  %12 = ptrtoint ptr %frame_rate to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 30, ptr %frame_rate, align 4
  %dev16 = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %dev16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev, ptr %dev16, align 4
  %lock = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 16
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @aspeed_video_probe.__key, i16 noundef signext 3) #14
  %video_lock = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %video_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @aspeed_video_probe.__key.2) #14
  %wait = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 15
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.5, ptr noundef nonnull @aspeed_video_probe.__key.4) #14
  %res_work = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 17
  tail call void @__init_work(ptr noundef %res_work, i32 noundef 0) #14
  %14 = ptrtoint ptr %res_work to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -64, ptr %res_work, align 4
  %lockdep_map = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 17, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.7, ptr noundef nonnull @aspeed_video_probe.__key.6, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry33 = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 17, i32 0, i32 1
  %15 = ptrtoint ptr %entry33 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %entry33, ptr %entry33, align 4
  %prev.i = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 17, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %entry33, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 17, i32 0, i32 2
  %17 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @aspeed_video_resolution_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 17, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.9, ptr noundef nonnull @aspeed_video_probe.__key.8) #14
  %buffers = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 18
  %18 = ptrtoint ptr %buffers to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %buffers, ptr %buffers, align 4
  %prev.i95 = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 18, i32 1
  %19 = ptrtoint ptr %prev.i95 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %buffers, ptr %prev.i95, align 4
  %20 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev16, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 27
  %22 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node.i, align 8
  %call.i96 = tail call i32 @irq_of_parse_and_map(ptr noundef %23, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %tobool.not.i = icmp eq i32 %call.i96, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.31) #17
  br label %cleanup

if.end.i:                                         ; preds = %if.end12
  %call2.i = tail call i32 @devm_request_threaded_irq(ptr noundef %21, i32 noundef %call.i96, ptr noundef null, ptr noundef nonnull @aspeed_video_irq, i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i97 = icmp slt i32 %call2.i, 0
  br i1 %cmp.i97, label %do.end6.i, label %if.end7.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.34, i32 noundef %call.i96) #17
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  %call8.i = tail call ptr @devm_clk_get(ptr noundef %21, ptr noundef nonnull @.str.36) #14
  %eclk.i = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 1
  %24 = ptrtoint ptr %eclk.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call8.i, ptr %eclk.i, align 4
  %cmp.i.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end14.i, label %if.end17.i

do.end14.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.38) #17
  %25 = ptrtoint ptr %eclk.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %eclk.i, align 4
  %27 = ptrtoint ptr %26 to i32
  br label %aspeed_video_init.exit

if.end17.i:                                       ; preds = %if.end7.i
  %call19.i = tail call i32 @clk_prepare(ptr noundef %call8.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %if.end17.i.cleanup_crit_edge

if.end17.i.cleanup_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end22.i:                                       ; preds = %if.end17.i
  %call23.i = tail call ptr @devm_clk_get(ptr noundef %21, ptr noundef nonnull @.str.40) #14
  %vclk.i = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 2
  %28 = ptrtoint ptr %vclk.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call23.i, ptr %vclk.i, align 8
  %cmp.i93.i = icmp ugt ptr %call23.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i93.i, label %do.end29.i, label %if.end32.i

do.end29.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.42) #17
  %29 = ptrtoint ptr %vclk.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vclk.i, align 8
  %31 = ptrtoint ptr %30 to i32
  br label %err_unprepare_eclk.i

if.end32.i:                                       ; preds = %if.end22.i
  %call34.i = tail call i32 @clk_prepare(ptr noundef %call23.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end37.i, label %if.end32.i.err_unprepare_eclk.i_crit_edge

if.end32.i.err_unprepare_eclk.i_crit_edge:        ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_unprepare_eclk.i

if.end37.i:                                       ; preds = %if.end32.i
  %32 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %of_node.i, align 8
  %call.i.i = tail call i32 @of_reserved_mem_device_init_by_idx(ptr noundef %21, ptr noundef %33, i32 noundef 0) #14
  %call.i94.i = tail call i32 @dma_set_mask(ptr noundef %21, i64 noundef 4294967295) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94.i)
  %cmp.i95.i = icmp eq i32 %call.i94.i, 0
  br i1 %cmp.i95.i, label %if.end45.i, label %if.end37.i.err_release_reserved_mem.i_crit_edge

if.end37.i.err_release_reserved_mem.i_crit_edge:  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_release_reserved_mem.i

if.end45.i:                                       ; preds = %if.end37.i
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %21, i64 noundef 4294967295) #14
  %34 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev16, align 4
  %dma.i.i = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 23, i32 1
  %call.i.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %35, i32 noundef 24576, ptr noundef %dma.i.i, i32 noundef 3264, i32 noundef 0) #14
  %virt.i.i = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 23, i32 2
  %36 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i.i.i, ptr %virt.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end45.i.err_release_reserved_mem.i_crit_edge, label %if.end51.i

if.end45.i.err_release_reserved_mem.i_crit_edge:  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_release_reserved_mem.i

if.end51.i:                                       ; preds = %if.end45.i
  %jpeg.i = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 23
  %37 = ptrtoint ptr %jpeg.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 24576, ptr %jpeg.i, align 4
  %yuv420.i = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 24
  %38 = ptrtoint ptr %yuv420.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %yuv420.i, align 8, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool53.not.i = icmp eq i8 %39, 0
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end51.i
  %i.018.i.i = phi i32 [ 0, %if.end51.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %mul.i.i = shl i32 %i.018.i.i, 8
  %arrayidx.i.i = getelementptr i32, ptr %call.i.i.i, i32 %mul.i.i
  %40 = call ptr @memcpy(ptr %arrayidx.i.i, ptr @aspeed_video_jpeg_header, i32 40)
  %add.i.i = or i32 %mul.i.i, 10
  %arrayidx1.i.i = getelementptr i32, ptr %call.i.i.i, i32 %add.i.i
  %arrayidx2.i.i = getelementptr [12 x [34 x i32]], ptr @aspeed_video_jpeg_dct, i32 0, i32 %i.018.i.i
  %41 = call ptr @memcpy(ptr %arrayidx1.i.i, ptr %arrayidx2.i.i, i32 136)
  %add3.i.i = or i32 %mul.i.i, 44
  %arrayidx4.i.i = getelementptr i32, ptr %call.i.i.i, i32 %add3.i.i
  %42 = call ptr @memcpy(ptr %arrayidx4.i.i, ptr @aspeed_video_jpeg_quant, i32 464)
  br i1 %tobool53.not.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then.i96.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.then.i96.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %add5.i.i = or i32 %mul.i.i, 46
  %arrayidx6.i.i = getelementptr i32, ptr %call.i.i.i, i32 %add5.i.i
  %43 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2228483, ptr %arrayidx6.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i96.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.018.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 12
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end47_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.if.end47_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

err_release_reserved_mem.i:                       ; preds = %if.end45.i.err_release_reserved_mem.i_crit_edge, %if.end37.i.err_release_reserved_mem.i_crit_edge
  %.str.48.sink.i = phi ptr [ @.str.45, %if.end37.i.err_release_reserved_mem.i_crit_edge ], [ @.str.48, %if.end45.i.err_release_reserved_mem.i_crit_edge ]
  %rc.0.i = phi i32 [ %call.i94.i, %if.end37.i.err_release_reserved_mem.i_crit_edge ], [ -12, %if.end45.i.err_release_reserved_mem.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull %.str.48.sink.i) #17
  tail call void @of_reserved_mem_device_release(ptr noundef %21) #14
  %44 = ptrtoint ptr %vclk.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vclk.i, align 8
  tail call void @clk_unprepare(ptr noundef %45) #14
  br label %err_unprepare_eclk.i

err_unprepare_eclk.i:                             ; preds = %err_release_reserved_mem.i, %if.end32.i.err_unprepare_eclk.i_crit_edge, %do.end29.i
  %rc.1.i = phi i32 [ %31, %do.end29.i ], [ %call34.i, %if.end32.i.err_unprepare_eclk.i_crit_edge ], [ %rc.0.i, %err_release_reserved_mem.i ]
  %46 = ptrtoint ptr %eclk.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %eclk.i, align 4
  tail call void @clk_unprepare(ptr noundef %47) #14
  br label %aspeed_video_init.exit

aspeed_video_init.exit:                           ; preds = %err_unprepare_eclk.i, %do.end14.i
  %retval.0.i = phi i32 [ %27, %do.end14.i ], [ %rc.1.i, %err_unprepare_eclk.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool45.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool45.not, label %aspeed_video_init.exit.if.end47_crit_edge, label %aspeed_video_init.exit.cleanup_crit_edge

aspeed_video_init.exit.cleanup_crit_edge:         ; preds = %aspeed_video_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

aspeed_video_init.exit.if.end47_crit_edge:        ; preds = %aspeed_video_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.end47:                                         ; preds = %aspeed_video_init.exit.if.end47_crit_edge, %for.inc.i.i.if.end47_crit_edge
  %v4l2_dev1.i = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 5
  %queue.i = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 10
  %vdev2.i = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 11
  %pixelformat.i = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 6, i32 2
  %48 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1195724874, ptr %pixelformat.i, align 8
  %field.i = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 6, i32 3
  %49 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %field.i, align 4
  %colorspace.i = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 6, i32 6
  %50 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 8, ptr %colorspace.i, align 8
  %quantization.i = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 6, i32 10
  %51 = ptrtoint ptr %quantization.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %quantization.i, align 8
  %v4l2_input_status.i = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 9
  %52 = ptrtoint ptr %v4l2_input_status.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 2, ptr %v4l2_input_status.i, align 8
  %53 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev16, align 4
  %call.i98 = tail call i32 @v4l2_device_register(ptr noundef %54, ptr noundef %v4l2_dev1.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %tobool.not.i99 = icmp eq i32 %call.i98, 0
  br i1 %tobool.not.i99, label %if.end.i101, label %do.end.i100

do.end.i100:                                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  %55 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.53) #17
  br label %if.then50

if.end.i101:                                      ; preds = %if.end47
  %ctrl_handler.i = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 4
  %call7.i = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler.i, i32 noundef 2, ptr noundef nonnull @aspeed_video_setup_video._key, ptr noundef nonnull @.str.55) #14
  %call9.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @aspeed_video_ctrl_ops, i32 noundef 10291459, i64 noundef 0, i64 noundef 11, i64 noundef 1, i64 noundef 0) #14
  %call11.i = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler.i, ptr noundef nonnull @aspeed_video_ctrl_ops, i32 noundef 10291457, i8 noundef zeroext 2, i64 noundef 4294967290, i8 noundef zeroext 0) #14
  %error.i = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 4, i32 9
  %57 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool13.not.i = icmp eq i32 %58, 0
  br i1 %tobool13.not.i, label %if.end20.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler.i) #14
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev1.i) #14
  %59 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.57, i32 noundef %58) #17
  br label %if.then50

if.end20.i:                                       ; preds = %if.end.i101
  %ctrl_handler22.i = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 5, i32 6
  %61 = ptrtoint ptr %ctrl_handler22.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %ctrl_handler.i, ptr %ctrl_handler22.i, align 4
  %62 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %queue.i, align 4
  %io_modes.i = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 10, i32 1
  %63 = ptrtoint ptr %io_modes.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 21, ptr %io_modes.i, align 4
  %64 = ptrtoint ptr %v4l2_dev1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %v4l2_dev1.i, align 4
  %dev24.i = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 10, i32 2
  %66 = ptrtoint ptr %dev24.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %dev24.i, align 4
  %lock.i = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 10, i32 5
  %67 = ptrtoint ptr %lock.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %video_lock, ptr %lock.i, align 4
  %ops.i = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 10, i32 7
  %68 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @aspeed_video_vb2_ops, ptr %ops.i, align 4
  %mem_ops.i = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 10, i32 8
  %69 = ptrtoint ptr %mem_ops.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops.i, align 4
  %drv_priv.i = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 10, i32 10
  %70 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call.i, ptr %drv_priv.i, align 4
  %buf_struct_size.i = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 10, i32 12
  %71 = ptrtoint ptr %buf_struct_size.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 744, ptr %buf_struct_size.i, align 4
  %timestamp_flags.i = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 10, i32 13
  %72 = ptrtoint ptr %timestamp_flags.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 8192, ptr %timestamp_flags.i, align 4
  %min_buffers_needed.i = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 10, i32 15
  %73 = ptrtoint ptr %min_buffers_needed.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 3, ptr %min_buffers_needed.i, align 4
  %call25.i = tail call i32 @vb2_queue_init(ptr noundef %queue.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end33.i, label %if.then27.i

if.then27.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler.i) #14
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev1.i) #14
  %74 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.60) #17
  br label %if.then50

if.end33.i:                                       ; preds = %if.end20.i
  %queue34.i = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 11, i32 10
  %76 = ptrtoint ptr %queue34.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %queue.i, ptr %queue34.i, align 8
  %fops.i = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 11, i32 3
  %77 = ptrtoint ptr %fops.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @aspeed_video_v4l2_fops, ptr %fops.i, align 4
  %device_caps.i = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 11, i32 4
  %78 = ptrtoint ptr %device_caps.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 83886081, ptr %device_caps.i, align 8
  %v4l2_dev35.i = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 11, i32 7
  %79 = ptrtoint ptr %v4l2_dev35.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %v4l2_dev1.i, ptr %v4l2_dev35.i, align 4
  %name.i = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 11, i32 12
  %call36.i = tail call i32 @strscpy(ptr noundef %name.i, ptr noundef nonnull @.str, i32 noundef 32) #14
  %vfl_type.i = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 11, i32 13
  %80 = ptrtoint ptr %vfl_type.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %vfl_type.i, align 8
  %vfl_dir.i = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 11, i32 14
  %81 = ptrtoint ptr %vfl_dir.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %vfl_dir.i, align 4
  %release.i = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 11, i32 23
  %82 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @video_device_release_empty, ptr %release.i, align 8
  %ioctl_ops.i = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 11, i32 24
  %83 = ptrtoint ptr %ioctl_ops.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @aspeed_video_ioctl_ops, ptr %ioctl_ops.i, align 4
  %lock38.i = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 11, i32 26
  %84 = ptrtoint ptr %lock38.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %video_lock, ptr %lock38.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 11, i32 5, i32 8
  %85 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call.i, ptr %driver_data.i.i.i, align 4
  %86 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %fops.i, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %call.i.i102 = tail call i32 @__video_register_device(ptr noundef %vdev2.i, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef %89) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i102)
  %tobool40.not.i = icmp eq i32 %call.i.i102, 0
  br i1 %tobool40.not.i, label %if.end51, label %if.then41.i

if.then41.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler.i) #14
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev1.i) #14
  %90 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.63) #17
  br label %if.then50

if.then50:                                        ; preds = %if.then41.i, %if.then27.i, %if.then14.i, %do.end.i100
  %retval.0.i103.ph = phi i32 [ %call.i.i102, %if.then41.i ], [ %call25.i, %if.then27.i ], [ %58, %if.then14.i ], [ %call.i98, %do.end.i100 ]
  %vclk = getelementptr inbounds %struct.aspeed_video, ptr %call.i, i32 0, i32 2
  %92 = ptrtoint ptr %vclk to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %vclk, align 8
  tail call void @clk_unprepare(ptr noundef %93) #14
  %94 = ptrtoint ptr %eclk.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %eclk.i, align 4
  tail call void @clk_unprepare(ptr noundef %95) #14
  br label %cleanup

if.end51:                                         ; preds = %if.end33.i
  %call.i104 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str, i16 noundef zeroext 292, ptr noundef null, ptr noundef %call.i, ptr noundef nonnull @aspeed_video_debugfs_ops) #14
  store ptr %call.i104, ptr @debugfs_entry, align 4
  %tobool.not.i105 = icmp eq ptr %call.i104, null
  br i1 %tobool.not.i105, label %do.end57, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end57:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @debugfs_remove(ptr noundef null) #14
  store ptr null, ptr @debugfs_entry, align 4
  %96 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.10) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end57, %if.end51.cleanup_crit_edge, %if.then50, %aspeed_video_init.exit.cleanup_crit_edge, %if.end17.i.cleanup_crit_edge, %do.end6.i, %do.end.i, %if.end7.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then4 ], [ %retval.0.i103.ph, %if.then50 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ %retval.0.i, %aspeed_video_init.exit.cleanup_crit_edge ], [ 0, %do.end57 ], [ %call19.i, %if.end17.i.cleanup_crit_edge ], [ -19, %do.end.i ], [ %call2.i, %do.end6.i ], [ 0, %if.end51.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_video_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -200
  tail call fastcc void @aspeed_video_off(ptr noundef %add.ptr)
  %2 = load ptr, ptr @debugfs_entry, align 4
  tail call void @debugfs_remove(ptr noundef %2) #14
  store ptr null, ptr @debugfs_entry, align 4
  %vclk = getelementptr i8, ptr %1, i32 -192
  %3 = ptrtoint ptr %vclk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vclk, align 8
  tail call void @clk_unprepare(ptr noundef %4) #14
  %eclk = getelementptr i8, ptr %1, i32 -196
  %5 = ptrtoint ptr %eclk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %eclk, align 4
  tail call void @clk_unprepare(ptr noundef %6) #14
  %vdev = getelementptr i8, ptr %1, i32 944
  tail call void @vb2_video_unregister_device(ptr noundef %vdev) #14
  %ctrl_handler = getelementptr i8, ptr %1, i32 -184
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #14
  tail call void @v4l2_device_unregister(ptr noundef %1) #14
  %dev2 = getelementptr i8, ptr %1, i32 -188
  %7 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev2, align 4
  %virt = getelementptr i8, ptr %1, i32 2644
  %9 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %virt, align 4
  %dma = getelementptr i8, ptr %1, i32 2640
  %11 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %8, i32 noundef 24576, ptr noundef %10, i32 noundef %12, i32 noundef 0) #14
  tail call void @of_reserved_mem_device_release(ptr noundef %dev1) #14
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_video_resolution_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2692
  %flags.i = getelementptr i8, ptr %work, i32 108
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i, align 4
  %2 = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.aspeed_video_on.exit_crit_edge

entry.aspeed_video_on.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %aspeed_video_on.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %vclk.i = getelementptr i8, ptr %work, i32 -2684
  %3 = ptrtoint ptr %vclk.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vclk.i, align 8
  %call1.i = tail call i32 @clk_enable(ptr noundef %4) #14
  %eclk.i = getelementptr i8, ptr %work, i32 -2688
  %5 = ptrtoint ptr %eclk.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %eclk.i, align 4
  %call2.i = tail call i32 @clk_enable(ptr noundef %6) #14
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags.i) #14
  br label %aspeed_video_on.exit

aspeed_video_on.exit:                             ; preds = %if.end.i, %entry.aspeed_video_on.exit_crit_edge
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i, align 4
  %9 = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end, label %aspeed_video_on.exit.done_crit_edge

aspeed_video_on.exit.done_crit_edge:              ; preds = %aspeed_video_on.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

if.end:                                           ; preds = %aspeed_video_on.exit
  tail call fastcc void @aspeed_video_init_regs(ptr noundef %add.ptr)
  tail call fastcc void @aspeed_video_get_resolution(ptr noundef %add.ptr)
  %detected_timings = getelementptr i8, ptr %work, i32 -2192
  %10 = ptrtoint ptr %detected_timings to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %detected_timings, align 4
  %active_timings = getelementptr i8, ptr %work, i32 -2316
  %12 = ptrtoint ptr %active_timings to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %active_timings, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.not = icmp eq i32 %11, %13
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.if.then7_crit_edge

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then7

lor.lhs.false:                                    ; preds = %if.end
  %height = getelementptr i8, ptr %work, i32 -2188
  %14 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height, align 4
  %height5 = getelementptr i8, ptr %work, i32 -2312
  %16 = ptrtoint ptr %height5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp6.not = icmp eq i32 %15, %17
  br i1 %cmp6.not, label %if.else, label %lor.lhs.false.if.then7_crit_edge

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then7

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %vdev = getelementptr i8, ptr %work, i32 -1548
  tail call void @v4l2_event_queue(ptr noundef %vdev, ptr noundef nonnull @aspeed_video_resolution_work.ev) #14
  br label %done

if.else:                                          ; preds = %lor.lhs.false
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags.i, align 4
  %20 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool10.not = icmp eq i32 %20, 0
  br i1 %tobool10.not, label %if.else.done_crit_edge, label %if.then11

if.else.done_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %call12 = tail call fastcc i32 @aspeed_video_start_frame(ptr noundef %add.ptr)
  br label %done

done:                                             ; preds = %if.then11, %if.else.done_crit_edge, %if.then7, %aspeed_video_on.exit.done_crit_edge
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags.i) #14
  %wait = getelementptr i8, ptr %work, i32 -96
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 1, i32 noundef 0, ptr noundef null) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aspeed_video_init_regs(ptr noundef readonly %video) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %jpeg_quality = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 26
  %0 = ptrtoint ptr %jpeg_quality to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %jpeg_quality, align 8
  %jpeg_mode = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 13
  %2 = ptrtoint ptr %jpeg_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %jpeg_mode, align 4
  %frame_rate = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 25
  %4 = ptrtoint ptr %frame_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %frame_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool47.not = icmp eq i32 %5, 0
  %shl74 = shl i32 %5, 16
  %and75 = and i32 %shl74, 16711680
  %or76 = or i32 %and75, 256
  %ctrl.0 = select i1 %tobool47.not, i32 256, i32 %or76
  %yuv420 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 24
  %6 = ptrtoint ptr %yuv420 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %yuv420, align 8, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool78.not = icmp eq i8 %7, 0
  %or80 = or i32 %3, 1024
  %spec.select = select i1 %tobool78.not, i32 %3, i32 %or80
  %or43 = shl i32 %1, 6
  %shl44 = and i32 %or43, 960
  %shl = shl i32 %1, 11
  %and15 = and i32 %shl, 63488
  %and45 = or i32 %shl44, %and15
  %or46 = or i32 %and45, 525312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !226
  tail call void @arm_heavy_mb() #14
  %8 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %video, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 -1467350246) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_write.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_init_regs, %if.then.i)) #14
          to label %aspeed_video_write.exit [label %if.then.i], !srcloc !228

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %12 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %video, align 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #14, !srcloc !229
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !230
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_write.__UNIQUE_ID_ddebug300, ptr noundef %11, ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef %15) #14
  br label %aspeed_video_write.exit

aspeed_video_write.exit:                          ; preds = %if.then.i, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !226
  tail call void @arm_heavy_mb() #14
  %16 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %video, align 8
  %add.ptr.i = getelementptr i8, ptr %17, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_write.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_init_regs, %if.then.i116)) #14
          to label %aspeed_video_write.exit117 [label %if.then.i116], !srcloc !228

if.then.i116:                                     ; preds = %aspeed_video_write.exit
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i115 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %18 = ptrtoint ptr %dev.i115 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i115, align 4
  %20 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %video, align 8
  %add.ptr5.i = getelementptr i8, ptr %21, i32 772
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #14, !srcloc !229
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !230
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_write.__UNIQUE_ID_ddebug300, ptr noundef %19, ptr noundef nonnull @.str.17, i32 noundef 772, i32 noundef %23) #14
  br label %aspeed_video_write.exit117

aspeed_video_write.exit117:                       ; preds = %if.then.i116, %aspeed_video_write.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !226
  tail call void @arm_heavy_mb() #14
  %24 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %video, align 8
  %add.ptr.i118 = getelementptr i8, ptr %25, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i118, i32 -1) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_write.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_init_regs, %if.then.i121)) #14
          to label %aspeed_video_write.exit122 [label %if.then.i121], !srcloc !228

if.then.i121:                                     ; preds = %aspeed_video_write.exit117
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i119 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %26 = ptrtoint ptr %dev.i119 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i119, align 4
  %28 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %video, align 8
  %add.ptr5.i120 = getelementptr i8, ptr %29, i32 776
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i120) #14, !srcloc !229
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !230
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_write.__UNIQUE_ID_ddebug300, ptr noundef %27, ptr noundef nonnull @.str.17, i32 noundef 776, i32 noundef %31) #14
  br label %aspeed_video_write.exit122

aspeed_video_write.exit122:                       ; preds = %if.then.i121, %aspeed_video_write.exit117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !226
  tail call void @arm_heavy_mb() #14
  %32 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %video, align 8
  %add.ptr.i123 = getelementptr i8, ptr %33, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123, i32 0) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_write.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_init_regs, %if.then.i126)) #14
          to label %aspeed_video_write.exit127 [label %if.then.i126], !srcloc !228

if.then.i126:                                     ; preds = %aspeed_video_write.exit122
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i124 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %34 = ptrtoint ptr %dev.i124 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i124, align 4
  %36 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %video, align 8
  %add.ptr5.i125 = getelementptr i8, ptr %37, i32 56
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i125) #14, !srcloc !229
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !230
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_write.__UNIQUE_ID_ddebug300, ptr noundef %35, ptr noundef nonnull @.str.17, i32 noundef 56, i32 noundef %39) #14
  br label %aspeed_video_write.exit127

aspeed_video_write.exit127:                       ; preds = %if.then.i126, %aspeed_video_write.exit122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !226
  tail call void @arm_heavy_mb() #14
  %40 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %video, align 8
  %add.ptr.i128 = getelementptr i8, ptr %41, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128, i32 0) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_write.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_init_regs, %if.then.i131)) #14
          to label %aspeed_video_write.exit132 [label %if.then.i131], !srcloc !228

if.then.i131:                                     ; preds = %aspeed_video_write.exit127
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i129 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %42 = ptrtoint ptr %dev.i129 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i129, align 4
  %44 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %video, align 8
  %add.ptr5.i130 = getelementptr i8, ptr %45, i32 60
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i130) #14, !srcloc !229
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !230
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_write.__UNIQUE_ID_ddebug300, ptr noundef %43, ptr noundef nonnull @.str.17, i32 noundef 60, i32 noundef %47) #14
  br label %aspeed_video_write.exit132

aspeed_video_write.exit132:                       ; preds = %if.then.i131, %aspeed_video_write.exit127
  %dma = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 23, i32 1
  %48 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dma, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !226
  tail call void @arm_heavy_mb() #14
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #14
  %51 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %video, align 8
  %add.ptr.i133 = getelementptr i8, ptr %52, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i133, i32 %50) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_write.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_init_regs, %if.then.i136)) #14
          to label %aspeed_video_write.exit137 [label %if.then.i136], !srcloc !228

if.then.i136:                                     ; preds = %aspeed_video_write.exit132
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i134 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %53 = ptrtoint ptr %dev.i134 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i134, align 4
  %55 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %video, align 8
  %add.ptr5.i135 = getelementptr i8, ptr %56, i32 64
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i135) #14, !srcloc !229
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !230
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_write.__UNIQUE_ID_ddebug300, ptr noundef %54, ptr noundef nonnull @.str.17, i32 noundef 64, i32 noundef %58) #14
  br label %aspeed_video_write.exit137

aspeed_video_write.exit137:                       ; preds = %if.then.i136, %aspeed_video_write.exit132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !226
  tail call void @arm_heavy_mb() #14
  %59 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #14
  %60 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %video, align 8
  %add.ptr.i138 = getelementptr i8, ptr %61, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i138, i32 %59) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_write.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_init_regs, %if.then.i141)) #14
          to label %aspeed_video_write.exit142 [label %if.then.i141], !srcloc !228

if.then.i141:                                     ; preds = %aspeed_video_write.exit137
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i139 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %62 = ptrtoint ptr %dev.i139 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i139, align 4
  %64 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %video, align 8
  %add.ptr5.i140 = getelementptr i8, ptr %65, i32 4
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i140) #14, !srcloc !229
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !230
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_write.__UNIQUE_ID_ddebug300, ptr noundef %63, ptr noundef nonnull @.str.17, i32 noundef 4, i32 noundef %67) #14
  br label %aspeed_video_write.exit142

aspeed_video_write.exit142:                       ; preds = %if.then.i141, %aspeed_video_write.exit137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !226
  tail call void @arm_heavy_mb() #14
  %68 = tail call i32 @llvm.bswap.i32(i32 %ctrl.0) #14
  %69 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %video, align 8
  %add.ptr.i143 = getelementptr i8, ptr %70, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i143, i32 %68) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_write.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_init_regs, %if.then.i146)) #14
          to label %aspeed_video_write.exit147 [label %if.then.i146], !srcloc !228

if.then.i146:                                     ; preds = %aspeed_video_write.exit142
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i144 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %71 = ptrtoint ptr %dev.i144 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev.i144, align 4
  %73 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %video, align 8
  %add.ptr5.i145 = getelementptr i8, ptr %74, i32 8
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i145) #14, !srcloc !229
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !230
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_write.__UNIQUE_ID_ddebug300, ptr noundef %72, ptr noundef nonnull @.str.17, i32 noundef 8, i32 noundef %76) #14
  br label %aspeed_video_write.exit147

aspeed_video_write.exit147:                       ; preds = %if.then.i146, %aspeed_video_write.exit142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !226
  tail call void @arm_heavy_mb() #14
  %77 = tail call i32 @llvm.bswap.i32(i32 %or46) #14
  %78 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %video, align 8
  %add.ptr.i148 = getelementptr i8, ptr %79, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i148, i32 %77) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_write.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_init_regs, %if.then.i151)) #14
          to label %aspeed_video_write.exit152 [label %if.then.i151], !srcloc !228

if.then.i151:                                     ; preds = %aspeed_video_write.exit147
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i149 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %80 = ptrtoint ptr %dev.i149 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev.i149, align 4
  %82 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %video, align 8
  %add.ptr5.i150 = getelementptr i8, ptr %83, i32 96
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i150) #14, !srcloc !229
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !230
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_write.__UNIQUE_ID_ddebug300, ptr noundef %81, ptr noundef nonnull @.str.17, i32 noundef 96, i32 noundef %85) #14
  br label %aspeed_video_write.exit152

aspeed_video_write.exit152:                       ; preds = %if.then.i151, %aspeed_video_write.exit147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !226
  tail call void @arm_heavy_mb() #14
  %86 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %video, align 8
  %add.ptr.i153 = getelementptr i8, ptr %87, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i153, i32 1048592) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_write.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_init_regs, %if.then.i156)) #14
          to label %aspeed_video_write.exit157 [label %if.then.i156], !srcloc !228

if.then.i156:                                     ; preds = %aspeed_video_write.exit152
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i154 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %88 = ptrtoint ptr %dev.i154 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev.i154, align 4
  %90 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %video, align 8
  %add.ptr5.i155 = getelementptr i8, ptr %91, i32 20
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i155) #14, !srcloc !229
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !230
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_write.__UNIQUE_ID_ddebug300, ptr noundef %89, ptr noundef nonnull @.str.17, i32 noundef 20, i32 noundef %93) #14
  br label %aspeed_video_write.exit157

aspeed_video_write.exit157:                       ; preds = %if.then.i156, %aspeed_video_write.exit152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !226
  tail call void @arm_heavy_mb() #14
  %94 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %video, align 8
  %add.ptr.i158 = getelementptr i8, ptr %95, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i158, i32 8192) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_write.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_init_regs, %if.then.i161)) #14
          to label %aspeed_video_write.exit162 [label %if.then.i161], !srcloc !228

if.then.i161:                                     ; preds = %aspeed_video_write.exit157
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i159 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %96 = ptrtoint ptr %dev.i159 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev.i159, align 4
  %98 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %video, align 8
  %add.ptr5.i160 = getelementptr i8, ptr %99, i32 24
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i160) #14, !srcloc !229
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !230
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_write.__UNIQUE_ID_ddebug300, ptr noundef %97, ptr noundef nonnull @.str.17, i32 noundef 24, i32 noundef %101) #14
  br label %aspeed_video_write.exit162

aspeed_video_write.exit162:                       ; preds = %if.then.i161, %aspeed_video_write.exit157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !226
  tail call void @arm_heavy_mb() #14
  %102 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %video, align 8
  %add.ptr.i163 = getelementptr i8, ptr %103, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i163, i32 8192) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_write.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_init_regs, %if.then.i166)) #14
          to label %aspeed_video_write.exit167 [label %if.then.i166], !srcloc !228

if.then.i166:                                     ; preds = %aspeed_video_write.exit162
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i164 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %104 = ptrtoint ptr %dev.i164 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev.i164, align 4
  %106 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %video, align 8
  %add.ptr5.i165 = getelementptr i8, ptr %107, i32 28
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i165) #14, !srcloc !229
  %109 = tail call i32 @llvm.bswap.i32(i32 %108) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !230
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_write.__UNIQUE_ID_ddebug300, ptr noundef %105, ptr noundef nonnull @.str.17, i32 noundef 28, i32 noundef %109) #14
  br label %aspeed_video_write.exit167

aspeed_video_write.exit167:                       ; preds = %if.then.i166, %aspeed_video_write.exit162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !226
  tail call void @arm_heavy_mb() #14
  %110 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %video, align 8
  %add.ptr.i168 = getelementptr i8, ptr %111, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i168, i32 8192) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_write.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_init_regs, %if.then.i171)) #14
          to label %aspeed_video_write.exit172 [label %if.then.i171], !srcloc !228

if.then.i171:                                     ; preds = %aspeed_video_write.exit167
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i169 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %112 = ptrtoint ptr %dev.i169 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev.i169, align 4
  %114 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %video, align 8
  %add.ptr5.i170 = getelementptr i8, ptr %115, i32 32
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i170) #14, !srcloc !229
  %117 = tail call i32 @llvm.bswap.i32(i32 %116) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !230
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_write.__UNIQUE_ID_ddebug300, ptr noundef %113, ptr noundef nonnull @.str.17, i32 noundef 32, i32 noundef %117) #14
  br label %aspeed_video_write.exit172

aspeed_video_write.exit172:                       ; preds = %if.then.i171, %aspeed_video_write.exit167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !226
  tail call void @arm_heavy_mb() #14
  %118 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %video, align 8
  %add.ptr.i173 = getelementptr i8, ptr %119, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i173, i32 8192) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_write.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_init_regs, %if.then.i176)) #14
          to label %aspeed_video_write.exit177 [label %if.then.i176], !srcloc !228

if.then.i176:                                     ; preds = %aspeed_video_write.exit172
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i174 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %120 = ptrtoint ptr %dev.i174 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev.i174, align 4
  %122 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %video, align 8
  %add.ptr5.i175 = getelementptr i8, ptr %123, i32 36
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i175) #14, !srcloc !229
  %125 = tail call i32 @llvm.bswap.i32(i32 %124) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !230
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_write.__UNIQUE_ID_ddebug300, ptr noundef %121, ptr noundef nonnull @.str.17, i32 noundef 36, i32 noundef %125) #14
  br label %aspeed_video_write.exit177

aspeed_video_write.exit177:                       ; preds = %if.then.i176, %aspeed_video_write.exit172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !226
  tail call void @arm_heavy_mb() #14
  %126 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %video, align 8
  %add.ptr.i178 = getelementptr i8, ptr %127, i32 780
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i178, i32 6645282) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_write.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_init_regs, %if.then.i181)) #14
          to label %aspeed_video_write.exit182 [label %if.then.i181], !srcloc !228

if.then.i181:                                     ; preds = %aspeed_video_write.exit177
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i179 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %128 = ptrtoint ptr %dev.i179 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev.i179, align 4
  %130 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %video, align 8
  %add.ptr5.i180 = getelementptr i8, ptr %131, i32 780
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i180) #14, !srcloc !229
  %133 = tail call i32 @llvm.bswap.i32(i32 %132) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !230
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_write.__UNIQUE_ID_ddebug300, ptr noundef %129, ptr noundef nonnull @.str.17, i32 noundef 780, i32 noundef %133) #14
  br label %aspeed_video_write.exit182

aspeed_video_write.exit182:                       ; preds = %if.then.i181, %aspeed_video_write.exit177
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aspeed_video_get_resolution(ptr noundef %video) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry169 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %detected_timings = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 8
  %0 = ptrtoint ptr %detected_timings to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 640, ptr %detected_timings, align 1
  %height = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 8, i32 1
  %1 = ptrtoint ptr %height to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 480, ptr %height, align 1
  %v4l2_input_status = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 9
  %2 = ptrtoint ptr %v4l2_input_status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %v4l2_input_status, align 8
  %perf = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 31
  %3 = call ptr @memset(ptr %perf, i32 0, i32 24)
  %flags = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 19
  %dev.i = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %wait = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 15
  %frame_bottom = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 27
  %frame_top = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 30
  %vfrontporch = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 8, i32 8
  %vbackporch = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 8, i32 10
  %vsync = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 8, i32 9
  %frame_right = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 29
  %frame_left = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 28
  %hfrontporch = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 8, i32 5
  %hbackporch = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 8, i32 7
  %hsync = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 8, i32 6
  br label %do.body

do.body:                                          ; preds = %do.body.backedge, %entry
  %tries.0 = phi i32 [ 0, %entry ], [ %tries.0.be, %do.body.backedge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tries.0)
  %tobool.not = icmp eq i32 %tries.0, 0
  br i1 %tobool.not, label %do.body.if.end68_crit_edge, label %__here

do.body.if.end68_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end68

__here:                                           ; preds = %do.body
  %4 = call i32 @llvm.read_register.i32(metadata !215) #14
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 212
  %8 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 ptrtoint (ptr blockaddress(@aspeed_video_get_resolution, %__here) to i32), ptr %task_state_change, align 4
  %9 = load ptr, ptr %task, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %9, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !231
  %call64 = call i32 @schedule_timeout(i32 noundef 25) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %__here.if.end68_crit_edge, label %__here.cleanup314_crit_edge

__here.cleanup314_crit_edge:                      ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup314

__here.if.end68_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end68

if.end68:                                         ; preds = %__here.if.end68_crit_edge, %do.body.if.end68_crit_edge
  call void @_set_bit(i32 noundef 2, ptr noundef %flags) #14
  %11 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %video, align 8
  %add.ptr.i = getelementptr i8, ptr %12, i32 8
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !229
  %14 = call i32 @llvm.bswap.i32(i32 %13) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !232
  %and.i421 = and i32 %14, -4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !233
  call void @arm_heavy_mb() #14
  %15 = call i32 @llvm.bswap.i32(i32 %and.i421) #14
  %16 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %video, align 8
  %add.ptr3.i = getelementptr i8, ptr %17, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %15) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_update.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_get_resolution, %if.then.i)) #14
          to label %aspeed_video_update.exit [label %if.then.i], !srcloc !228

if.then.i:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  %20 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %video, align 8
  %add.ptr12.i = getelementptr i8, ptr %21, i32 8
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #14, !srcloc !229
  %23 = call i32 @llvm.bswap.i32(i32 %22) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !234
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_update.__UNIQUE_ID_ddebug298, ptr noundef %19, ptr noundef nonnull @.str.24, i32 noundef 8, i32 noundef %14, i32 noundef %23) #14
  br label %aspeed_video_update.exit

aspeed_video_update.exit:                         ; preds = %if.then.i, %if.end68
  call fastcc void @aspeed_video_enable_mode_detect(ptr noundef %video)
  call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 826) #14
  %call77 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not.not, label %if.then89, label %aspeed_video_update.exit.if.end140_crit_edge

aspeed_video_update.exit.if.end140_crit_edge:     ; preds = %aspeed_video_update.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end140

if.then89:                                        ; preds = %aspeed_video_update.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %24 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %call92484 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %call95485 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95485)
  %tobool96.not486.not = icmp eq i32 %call95485, 0
  br i1 %tobool96.not486.not, label %if.then89.if.end113_crit_edge, label %if.end120.thread

if.then89.if.end113_crit_edge:                    ; preds = %if.then89
  br label %if.end113

if.end120.thread:                                 ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #16
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %if.end140

if.end113:                                        ; preds = %cleanup.if.end113_crit_edge, %if.then89.if.end113_crit_edge
  %__ret90.1489 = phi i32 [ %__ret90.1, %cleanup.if.end113_crit_edge ], [ 50, %if.then89.if.end113_crit_edge ]
  %call92488 = phi i32 [ %call92, %cleanup.if.end113_crit_edge ], [ %call92484, %if.then89.if.end113_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92488)
  %tobool114.not = icmp eq i32 %call92488, 0
  br i1 %tobool114.not, label %cleanup, label %if.end120.thread459

if.end120.thread459:                              ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %if.end140

cleanup:                                          ; preds = %if.end113
  %call117 = call i32 @schedule_timeout(i32 noundef %__ret90.1489) #14
  %call92 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %call95 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool100.not = icmp eq i32 %call117, 0
  %spec.store.select324 = select i1 %tobool100.not, i32 1, i32 %call117
  %__ret90.1 = select i1 %tobool96.not, i32 %call117, i32 %spec.store.select324
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret90.1)
  %tobool106.not = icmp eq i32 %__ret90.1, 0
  %not.tobool96.not = xor i1 %tobool96.not, true
  %25 = select i1 %not.tobool96.not, i1 true, i1 %tobool106.not
  br i1 %25, label %if.end120, label %cleanup.if.end113_crit_edge

cleanup.if.end113_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end113

if.end120:                                        ; preds = %cleanup
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret90.1)
  %tobool122.not = icmp eq i32 %__ret90.1, 0
  br i1 %tobool122.not, label %do.body124, label %if.end120.if.end140_crit_edge

if.end120.if.end140_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end140

do.body124:                                       ; preds = %if.end120
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_get_resolution.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_get_resolution, %if.then135)) #14
          to label %do.end138 [label %if.then135], !srcloc !228

if.then135:                                       ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_get_resolution.__UNIQUE_ID_ddebug313, ptr noundef %27, ptr noundef nonnull @.str.19) #14
  br label %do.end138

do.end138:                                        ; preds = %if.then135, %do.body124
  call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #14
  br label %cleanup314

if.end140:                                        ; preds = %if.end120.if.end140_crit_edge, %if.end120.thread459, %if.end120.thread, %aspeed_video_update.exit.if.end140_crit_edge
  call fastcc void @aspeed_video_check_and_set_polarity(ptr noundef %video)
  call fastcc void @aspeed_video_enable_mode_detect(ptr noundef %video)
  call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 839) #14
  %call151 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not.not, label %if.then168, label %if.end140.if.end230.sink.split_crit_edge

if.end140.if.end230.sink.split_crit_edge:         ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end230.sink.split

if.then168:                                       ; preds = %if.end140
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry169) #14
  %28 = call ptr @memset(ptr %__wq_entry169, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry169, i32 noundef 0) #14
  %call175491 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry169, i32 noundef 1) #14
  %call178492 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178492)
  %tobool179.not493.not = icmp eq i32 %call178492, 0
  br i1 %tobool179.not493.not, label %if.then168.if.end196_crit_edge, label %if.then168.if.end208_crit_edge

if.then168.if.end208_crit_edge:                   ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end208

if.then168.if.end196_crit_edge:                   ; preds = %if.then168
  br label %if.end196

if.end196:                                        ; preds = %cleanup201.if.end196_crit_edge, %if.then168.if.end196_crit_edge
  %__ret170.1496 = phi i32 [ %__ret170.1, %cleanup201.if.end196_crit_edge ], [ 50, %if.then168.if.end196_crit_edge ]
  %call175495 = phi i32 [ %call175, %cleanup201.if.end196_crit_edge ], [ %call175491, %if.then168.if.end196_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175495)
  %tobool197.not = icmp eq i32 %call175495, 0
  br i1 %tobool197.not, label %cleanup201, label %if.end208.thread472

if.end208.thread472:                              ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry169) #14
  br label %if.end230.sink.split

cleanup201:                                       ; preds = %if.end196
  %call200 = call i32 @schedule_timeout(i32 noundef %__ret170.1496) #14
  %call175 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry169, i32 noundef 1) #14
  %call178 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %tobool179.not = icmp eq i32 %call178, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200)
  %tobool183.not = icmp eq i32 %call200, 0
  %spec.store.select326 = select i1 %tobool183.not, i32 1, i32 %call200
  %__ret170.1 = select i1 %tobool179.not, i32 %call200, i32 %spec.store.select326
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret170.1)
  %tobool189.not = icmp eq i32 %__ret170.1, 0
  %not.tobool179.not = xor i1 %tobool179.not, true
  %29 = select i1 %not.tobool179.not, i1 true, i1 %tobool189.not
  br i1 %29, label %cleanup201.if.end208_crit_edge, label %cleanup201.if.end196_crit_edge

cleanup201.if.end196_crit_edge:                   ; preds = %cleanup201
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end196

cleanup201.if.end208_crit_edge:                   ; preds = %cleanup201
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end208

if.end208:                                        ; preds = %cleanup201.if.end208_crit_edge, %if.then168.if.end208_crit_edge
  %__ret170.1.lcssa = phi i32 [ 50, %if.then168.if.end208_crit_edge ], [ %__ret170.1, %cleanup201.if.end208_crit_edge ]
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry169) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry169) #14
  call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret170.1.lcssa)
  %tobool211.not = icmp eq i32 %__ret170.1.lcssa, 0
  br i1 %tobool211.not, label %do.body213, label %if.end208.if.end230_crit_edge

if.end208.if.end230_crit_edge:                    ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end230

do.body213:                                       ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_get_resolution.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_get_resolution, %if.then225)) #14
          to label %cleanup314 [label %if.then225], !srcloc !228

if.then225:                                       ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_get_resolution.__UNIQUE_ID_ddebug314, ptr noundef %31, ptr noundef nonnull @.str.20) #14
  br label %cleanup314

if.end230.sink.split:                             ; preds = %if.end208.thread472, %if.end140.if.end230.sink.split_crit_edge
  call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #14
  br label %if.end230

if.end230:                                        ; preds = %if.end230.sink.split, %if.end208.if.end230_crit_edge
  %32 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %video, align 8
  %add.ptr.i422 = getelementptr i8, ptr %33, i32 144
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i422) #14, !srcloc !229
  %35 = call i32 @llvm.bswap.i32(i32 %34) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !235
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_read.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_get_resolution, %if.then.i424)) #14
          to label %aspeed_video_read.exit [label %if.then.i424], !srcloc !228

if.then.i424:                                     ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #16
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_read.__UNIQUE_ID_ddebug299, ptr noundef %37, ptr noundef nonnull @.str.26, i32 noundef 144, i32 noundef %35) #14
  br label %aspeed_video_read.exit

aspeed_video_read.exit:                           ; preds = %if.then.i424, %if.end230
  %38 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %video, align 8
  %add.ptr.i425 = getelementptr i8, ptr %39, i32 148
  %40 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i425) #14, !srcloc !229
  %41 = call i32 @llvm.bswap.i32(i32 %40) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !235
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_read.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_get_resolution, %if.then.i427)) #14
          to label %aspeed_video_read.exit428 [label %if.then.i427], !srcloc !228

if.then.i427:                                     ; preds = %aspeed_video_read.exit
  call void @__sanitizer_cov_trace_pc() #16
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_read.__UNIQUE_ID_ddebug299, ptr noundef %43, ptr noundef nonnull @.str.26, i32 noundef 148, i32 noundef %41) #14
  br label %aspeed_video_read.exit428

aspeed_video_read.exit428:                        ; preds = %if.then.i427, %aspeed_video_read.exit
  %44 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %video, align 8
  %add.ptr.i429 = getelementptr i8, ptr %45, i32 152
  %46 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i429) #14, !srcloc !229
  %47 = call i32 @llvm.bswap.i32(i32 %46) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !235
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_read.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_get_resolution, %if.then.i431)) #14
          to label %aspeed_video_read.exit432 [label %if.then.i431], !srcloc !228

if.then.i431:                                     ; preds = %aspeed_video_read.exit428
  call void @__sanitizer_cov_trace_pc() #16
  %48 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_read.__UNIQUE_ID_ddebug299, ptr noundef %49, ptr noundef nonnull @.str.26, i32 noundef 152, i32 noundef %47) #14
  br label %aspeed_video_read.exit432

aspeed_video_read.exit432:                        ; preds = %if.then.i431, %aspeed_video_read.exit428
  %50 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %video, align 8
  %add.ptr.i433 = getelementptr i8, ptr %51, i32 156
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i433) #14, !srcloc !229
  %53 = call i32 @llvm.bswap.i32(i32 %52) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !235
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_read.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_get_resolution, %if.then.i435)) #14
          to label %aspeed_video_read.exit436 [label %if.then.i435], !srcloc !228

if.then.i435:                                     ; preds = %aspeed_video_read.exit432
  call void @__sanitizer_cov_trace_pc() #16
  %54 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_read.__UNIQUE_ID_ddebug299, ptr noundef %55, ptr noundef nonnull @.str.26, i32 noundef 156, i32 noundef %53) #14
  br label %aspeed_video_read.exit436

aspeed_video_read.exit436:                        ; preds = %if.then.i435, %aspeed_video_read.exit432
  %and = lshr i32 %41, 16
  %shr = and i32 %and, 8191
  %56 = ptrtoint ptr %frame_bottom to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %shr, ptr %frame_bottom, align 4
  %and235 = and i32 %41, 8191
  %57 = ptrtoint ptr %frame_top to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %and235, ptr %frame_top, align 8
  %58 = ptrtoint ptr %vfrontporch to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 %and235, ptr %vfrontporch, align 1
  %and237 = lshr i32 %47, 16
  %shr238 = and i32 %and237, 4095
  %sub = sub nsw i32 %shr238, %shr
  %59 = ptrtoint ptr %vbackporch to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 %sub, ptr %vbackporch, align 1
  %and240 = lshr i32 %53, 16
  %shr241 = and i32 %and240, 4095
  %60 = ptrtoint ptr %vsync to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 %shr241, ptr %vsync, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %and235)
  %cmp = icmp ult i32 %shr, %and235
  br i1 %cmp, label %do.cond259.thread, label %do.cond259

do.cond259:                                       ; preds = %aspeed_video_read.exit436
  %and246 = lshr i32 %35, 16
  %shr247 = and i32 %and246, 4095
  %61 = ptrtoint ptr %frame_right to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %shr247, ptr %frame_right, align 4
  %and248 = and i32 %35, 4095
  %62 = ptrtoint ptr %frame_left to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %and248, ptr %frame_left, align 8
  %63 = ptrtoint ptr %hfrontporch to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 %and248, ptr %hfrontporch, align 1
  %and250 = and i32 %47, 4095
  %sub252 = sub nsw i32 %and250, %shr247
  %64 = ptrtoint ptr %hbackporch to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 %sub252, ptr %hbackporch, align 1
  %and253 = and i32 %53, 4095
  %65 = ptrtoint ptr %hsync to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 %and253, ptr %hsync, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and248, i32 %shr247)
  %cmp256 = icmp ugt i32 %and248, %shr247
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %tries.0)
  %cmp262 = icmp ult i32 %tries.0, 2
  %or.cond = select i1 %cmp256, i1 %cmp262, i1 false
  br i1 %or.cond, label %do.cond259.do.body.backedge_crit_edge, label %do.end264

do.cond259.do.body.backedge_crit_edge:            ; preds = %do.cond259
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.backedge

do.body.backedge:                                 ; preds = %do.cond259.thread.do.body.backedge_crit_edge, %do.cond259.do.body.backedge_crit_edge
  %tries.0.be = add nuw nsw i32 %tries.0, 1
  br label %do.body

do.cond259.thread:                                ; preds = %aspeed_video_read.exit436
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %tries.0)
  %cmp262505 = icmp ult i32 %tries.0, 2
  br i1 %cmp262505, label %do.cond259.thread.do.body.backedge_crit_edge, label %do.cond259.thread.do.body267_crit_edge

do.cond259.thread.do.body267_crit_edge:           ; preds = %do.cond259.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body267

do.cond259.thread.do.body.backedge_crit_edge:     ; preds = %do.cond259.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.backedge

do.end264:                                        ; preds = %do.cond259
  br i1 %cmp256, label %do.end264.do.body267_crit_edge, label %if.end284

do.end264.do.body267_crit_edge:                   ; preds = %do.end264
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body267

do.body267:                                       ; preds = %do.end264.do.body267_crit_edge, %do.cond259.thread.do.body267_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_get_resolution.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_get_resolution, %if.then279)) #14
          to label %cleanup314 [label %if.then279], !srcloc !228

if.then279:                                       ; preds = %do.body267
  call void @__sanitizer_cov_trace_pc() #16
  %66 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_get_resolution.__UNIQUE_ID_ddebug315, ptr noundef %67, ptr noundef nonnull @.str.21) #14
  br label %cleanup314

if.end284:                                        ; preds = %do.end264
  %sub287 = sub nsw i32 1, %and235
  %add = add nsw i32 %sub287, %shr
  %68 = ptrtoint ptr %height to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 %add, ptr %height, align 1
  %69 = ptrtoint ptr %frame_right to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %frame_right, align 4
  %71 = ptrtoint ptr %frame_left to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %frame_left, align 8
  %sub291 = add i32 %70, 1
  %add292 = sub i32 %sub291, %72
  %73 = ptrtoint ptr %detected_timings to i32
  call void @__asan_storeN_noabort(i32 %73, i32 4)
  store i32 %add292, ptr %detected_timings, align 1
  %74 = ptrtoint ptr %v4l2_input_status to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %v4l2_input_status, align 8
  %75 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %video, align 8
  %add.ptr.i437 = getelementptr i8, ptr %76, i32 772
  %77 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i437) #14, !srcloc !229
  %78 = call i32 @llvm.bswap.i32(i32 %77) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !232
  %or.i = or i32 %78, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !233
  call void @arm_heavy_mb() #14
  %79 = call i32 @llvm.bswap.i32(i32 %or.i) #14
  %80 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %video, align 8
  %add.ptr3.i438 = getelementptr i8, ptr %81, i32 772
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i438, i32 %79) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_update.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_get_resolution, %if.then.i441)) #14
          to label %aspeed_video_update.exit442 [label %if.then.i441], !srcloc !228

if.then.i441:                                     ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #16
  %82 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev.i, align 4
  %84 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %video, align 8
  %add.ptr12.i440 = getelementptr i8, ptr %85, i32 772
  %86 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i440) #14, !srcloc !229
  %87 = call i32 @llvm.bswap.i32(i32 %86) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !234
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_update.__UNIQUE_ID_ddebug298, ptr noundef %83, ptr noundef nonnull @.str.24, i32 noundef 772, i32 noundef %78, i32 noundef %87) #14
  br label %aspeed_video_update.exit442

aspeed_video_update.exit442:                      ; preds = %if.then.i441, %if.end284
  %88 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %video, align 8
  %add.ptr.i443 = getelementptr i8, ptr %89, i32 4
  %90 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i443) #14, !srcloc !229
  %91 = call i32 @llvm.bswap.i32(i32 %90) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !232
  %or.i444 = or i32 %91, 160
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !233
  call void @arm_heavy_mb() #14
  %92 = call i32 @llvm.bswap.i32(i32 %or.i444) #14
  %93 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %video, align 8
  %add.ptr3.i445 = getelementptr i8, ptr %94, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i445, i32 %92) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_update.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_get_resolution, %if.then.i448)) #14
          to label %aspeed_video_update.exit449 [label %if.then.i448], !srcloc !228

if.then.i448:                                     ; preds = %aspeed_video_update.exit442
  call void @__sanitizer_cov_trace_pc() #16
  %95 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev.i, align 4
  %97 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %video, align 8
  %add.ptr12.i447 = getelementptr i8, ptr %98, i32 4
  %99 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i447) #14, !srcloc !229
  %100 = call i32 @llvm.bswap.i32(i32 %99) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !234
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_update.__UNIQUE_ID_ddebug298, ptr noundef %96, ptr noundef nonnull @.str.24, i32 noundef 4, i32 noundef %91, i32 noundef %100) #14
  br label %aspeed_video_update.exit449

aspeed_video_update.exit449:                      ; preds = %if.then.i448, %aspeed_video_update.exit442
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_get_resolution.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_get_resolution, %if.then307)) #14
          to label %cleanup314 [label %if.then307], !srcloc !228

if.then307:                                       ; preds = %aspeed_video_update.exit449
  call void @__sanitizer_cov_trace_pc() #16
  %101 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev.i, align 4
  %103 = ptrtoint ptr %detected_timings to i32
  call void @__asan_loadN_noabort(i32 %103, i32 4)
  %104 = load i32, ptr %detected_timings, align 1
  %105 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load i32, ptr %height, align 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_get_resolution.__UNIQUE_ID_ddebug316, ptr noundef %102, ptr noundef nonnull @.str.22, i32 noundef %104, i32 noundef %106) #14
  br label %cleanup314

cleanup314:                                       ; preds = %if.then307, %aspeed_video_update.exit449, %if.then279, %do.body267, %if.then225, %do.body213, %do.end138, %__here.cleanup314_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_event_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aspeed_video_start_frame(ptr noundef %video) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %video, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !229
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !235
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_read.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_start_frame, %if.then.i)) #14
          to label %aspeed_video_read.exit [label %if.then.i], !srcloc !228

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_read.__UNIQUE_ID_ddebug299, ptr noundef %5, ptr noundef nonnull @.str.26, i32 noundef 4, i32 noundef %3) #14
  br label %aspeed_video_read.exit

aspeed_video_read.exit:                           ; preds = %if.then.i, %entry
  %v4l2_input_status = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 9
  %6 = ptrtoint ptr %v4l2_input_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %v4l2_input_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end6, label %do.body

do.body:                                          ; preds = %aspeed_video_read.exit
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_start_frame.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_start_frame, %if.then5)) #14
          to label %cleanup [label %if.then5], !srcloc !228

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_start_frame.__UNIQUE_ID_ddebug305, ptr noundef %9, ptr noundef nonnull @.str.28) #14
  br label %cleanup

if.end6:                                          ; preds = %aspeed_video_read.exit
  %10 = and i32 %3, 327680
  call void @__sanitizer_cov_trace_const_cmp4(i32 327680, i32 %10)
  %.not = icmp eq i32 %10, 327680
  br i1 %.not, label %do.body30, label %do.body11

do.body11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_start_frame.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_start_frame, %if.then23)) #14
          to label %cleanup [label %if.then23], !srcloc !228

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #16
  %dev24 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %11 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev24, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_start_frame.__UNIQUE_ID_ddebug306, ptr noundef %12, ptr noundef nonnull @.str.29) #14
  br label %cleanup

do.body30:                                        ; preds = %if.end6
  %lock = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 16
  %call33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %buffers = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 18
  %13 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %buffers, align 4
  %cmp43.not = icmp eq ptr %14, %buffers
  %add.ptr = getelementptr i8, ptr %14, i32 -736
  %tobool46.not126 = icmp eq ptr %add.ptr, null
  %tobool46.not = or i1 %cmp43.not, %tobool46.not126
  br i1 %tobool46.not, label %if.then47, label %if.end66

if.then47:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call33) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_start_frame.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_start_frame, %if.then61)) #14
          to label %cleanup [label %if.then61], !srcloc !228

if.then61:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #16
  %dev62 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %15 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev62, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_start_frame.__UNIQUE_ID_ddebug308, ptr noundef %16, ptr noundef nonnull @.str.30) #14
  br label %cleanup

if.end66:                                         ; preds = %do.body30
  %flags67 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 19
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags67) #14
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %add.ptr, i32 noundef 0) #14
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call33) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !226
  tail call void @arm_heavy_mb() #14
  %19 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %video, align 8
  %add.ptr.i100 = getelementptr i8, ptr %20, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i100, i32 0) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_write.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_start_frame, %if.then.i102)) #14
          to label %aspeed_video_write.exit [label %if.then.i102], !srcloc !228

if.then.i102:                                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i101 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %21 = ptrtoint ptr %dev.i101 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i101, align 4
  %23 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %video, align 8
  %add.ptr5.i = getelementptr i8, ptr %24, i32 56
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #14, !srcloc !229
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !230
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_write.__UNIQUE_ID_ddebug300, ptr noundef %22, ptr noundef nonnull @.str.17, i32 noundef 56, i32 noundef %26) #14
  br label %aspeed_video_write.exit

aspeed_video_write.exit:                          ; preds = %if.then.i102, %if.end66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !226
  tail call void @arm_heavy_mb() #14
  %27 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %video, align 8
  %add.ptr.i103 = getelementptr i8, ptr %28, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103, i32 0) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_write.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_start_frame, %if.then.i106)) #14
          to label %aspeed_video_write.exit107 [label %if.then.i106], !srcloc !228

if.then.i106:                                     ; preds = %aspeed_video_write.exit
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i104 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %29 = ptrtoint ptr %dev.i104 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i104, align 4
  %31 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %video, align 8
  %add.ptr5.i105 = getelementptr i8, ptr %32, i32 60
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i105) #14, !srcloc !229
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !230
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_write.__UNIQUE_ID_ddebug300, ptr noundef %30, ptr noundef nonnull @.str.17, i32 noundef 60, i32 noundef %34) #14
  br label %aspeed_video_write.exit107

aspeed_video_write.exit107:                       ; preds = %if.then.i106, %aspeed_video_write.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !226
  tail call void @arm_heavy_mb() #14
  %35 = tail call i32 @llvm.bswap.i32(i32 %18) #14
  %36 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %video, align 8
  %add.ptr.i108 = getelementptr i8, ptr %37, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108, i32 %35) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_write.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_start_frame, %if.then.i111)) #14
          to label %aspeed_video_write.exit112 [label %if.then.i111], !srcloc !228

if.then.i111:                                     ; preds = %aspeed_video_write.exit107
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i109 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %38 = ptrtoint ptr %dev.i109 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i109, align 4
  %40 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %video, align 8
  %add.ptr5.i110 = getelementptr i8, ptr %41, i32 84
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i110) #14, !srcloc !229
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !230
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_write.__UNIQUE_ID_ddebug300, ptr noundef %39, ptr noundef nonnull @.str.17, i32 noundef 84, i32 noundef %43) #14
  br label %aspeed_video_write.exit112

aspeed_video_write.exit112:                       ; preds = %if.then.i111, %aspeed_video_write.exit107
  %44 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %video, align 8
  %add.ptr.i113 = getelementptr i8, ptr %45, i32 772
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i113) #14, !srcloc !229
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !232
  %or.i = or i32 %47, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !233
  tail call void @arm_heavy_mb() #14
  %48 = tail call i32 @llvm.bswap.i32(i32 %or.i) #14
  %49 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %video, align 8
  %add.ptr3.i = getelementptr i8, ptr %50, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %48) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_update.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_start_frame, %if.then.i115)) #14
          to label %aspeed_video_update.exit [label %if.then.i115], !srcloc !228

if.then.i115:                                     ; preds = %aspeed_video_write.exit112
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i114 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %51 = ptrtoint ptr %dev.i114 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i114, align 4
  %53 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %video, align 8
  %add.ptr12.i = getelementptr i8, ptr %54, i32 772
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #14, !srcloc !229
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !234
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_update.__UNIQUE_ID_ddebug298, ptr noundef %52, ptr noundef nonnull @.str.24, i32 noundef 772, i32 noundef %47, i32 noundef %56) #14
  br label %aspeed_video_update.exit

aspeed_video_update.exit:                         ; preds = %if.then.i115, %aspeed_video_write.exit112
  %call70 = tail call i64 @ktime_get() #14
  %perf = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 31
  %57 = ptrtoint ptr %perf to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %call70, ptr %perf, align 8
  %58 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %video, align 8
  %add.ptr.i116 = getelementptr i8, ptr %59, i32 4
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i116) #14, !srcloc !229
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !232
  %or.i117 = or i32 %61, 18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !233
  tail call void @arm_heavy_mb() #14
  %62 = tail call i32 @llvm.bswap.i32(i32 %or.i117) #14
  %63 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %video, align 8
  %add.ptr3.i118 = getelementptr i8, ptr %64, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i118, i32 %62) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_update.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_start_frame, %if.then.i121)) #14
          to label %cleanup [label %if.then.i121], !srcloc !228

if.then.i121:                                     ; preds = %aspeed_video_update.exit
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i119 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %65 = ptrtoint ptr %dev.i119 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i119, align 4
  %67 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %video, align 8
  %add.ptr12.i120 = getelementptr i8, ptr %68, i32 4
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i120) #14, !srcloc !229
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !234
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_update.__UNIQUE_ID_ddebug298, ptr noundef %66, ptr noundef nonnull @.str.24, i32 noundef 4, i32 noundef %61, i32 noundef %70) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i121, %aspeed_video_update.exit, %if.then61, %if.then47, %if.then23, %do.body11, %if.then5, %do.body
  %retval.0 = phi i32 [ 0, %if.then5 ], [ -16, %if.then23 ], [ -71, %if.then61 ], [ 0, %do.body ], [ -16, %do.body11 ], [ -71, %if.then47 ], [ 0, %aspeed_video_update.exit ], [ 0, %if.then.i121 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aspeed_video_enable_mode_detect(ptr nocapture noundef readonly %video) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %video, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 772
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !229
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !232
  %or.i = or i32 %3, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !233
  tail call void @arm_heavy_mb() #14
  %4 = tail call i32 @llvm.bswap.i32(i32 %or.i) #14
  %5 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %video, align 8
  %add.ptr3.i = getelementptr i8, ptr %6, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %4) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_update.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_enable_mode_detect, %if.then.i)) #14
          to label %aspeed_video_update.exit [label %if.then.i], !srcloc !228

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %9 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %video, align 8
  %add.ptr12.i = getelementptr i8, ptr %10, i32 772
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #14, !srcloc !229
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !234
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_update.__UNIQUE_ID_ddebug298, ptr noundef %8, ptr noundef nonnull @.str.24, i32 noundef 772, i32 noundef %3, i32 noundef %12) #14
  br label %aspeed_video_update.exit

aspeed_video_update.exit:                         ; preds = %if.then.i, %entry
  %13 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %video, align 8
  %add.ptr.i3 = getelementptr i8, ptr %14, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3) #14, !srcloc !229
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !232
  %and.i = and i32 %16, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !233
  tail call void @arm_heavy_mb() #14
  %17 = tail call i32 @llvm.bswap.i32(i32 %and.i) #14
  %18 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %video, align 8
  %add.ptr3.i4 = getelementptr i8, ptr %19, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i4, i32 %17) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_update.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_enable_mode_detect, %if.then.i7)) #14
          to label %aspeed_video_update.exit8 [label %if.then.i7], !srcloc !228

if.then.i7:                                       ; preds = %aspeed_video_update.exit
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i5 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %20 = ptrtoint ptr %dev.i5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i5, align 4
  %22 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %video, align 8
  %add.ptr12.i6 = getelementptr i8, ptr %23, i32 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i6) #14, !srcloc !229
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !234
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_update.__UNIQUE_ID_ddebug298, ptr noundef %21, ptr noundef nonnull @.str.24, i32 noundef 4, i32 noundef %16, i32 noundef %25) #14
  br label %aspeed_video_update.exit8

aspeed_video_update.exit8:                        ; preds = %if.then.i7, %aspeed_video_update.exit
  %26 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %video, align 8
  %add.ptr.i9 = getelementptr i8, ptr %27, i32 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9) #14, !srcloc !229
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !232
  %or.i10 = or i32 %29, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !233
  tail call void @arm_heavy_mb() #14
  %30 = tail call i32 @llvm.bswap.i32(i32 %or.i10) #14
  %31 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %video, align 8
  %add.ptr3.i11 = getelementptr i8, ptr %32, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i11, i32 %30) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_update.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_enable_mode_detect, %if.then.i14)) #14
          to label %aspeed_video_update.exit15 [label %if.then.i14], !srcloc !228

if.then.i14:                                      ; preds = %aspeed_video_update.exit8
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i12 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %33 = ptrtoint ptr %dev.i12 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i12, align 4
  %35 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %video, align 8
  %add.ptr12.i13 = getelementptr i8, ptr %36, i32 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i13) #14, !srcloc !229
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !234
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_update.__UNIQUE_ID_ddebug298, ptr noundef %34, ptr noundef nonnull @.str.24, i32 noundef 4, i32 noundef %29, i32 noundef %38) #14
  br label %aspeed_video_update.exit15

aspeed_video_update.exit15:                       ; preds = %if.then.i14, %aspeed_video_update.exit8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aspeed_video_check_and_set_polarity(ptr nocapture noundef %video) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %aspeed_video_read.exit.for.body_crit_edge, %entry
  %vsync_counter.056 = phi i32 [ 0, %entry ], [ %vsync_counter.1, %aspeed_video_read.exit.for.body_crit_edge ]
  %hsync_counter.055 = phi i32 [ 0, %entry ], [ %hsync_counter.1, %aspeed_video_read.exit.for.body_crit_edge ]
  %i.054 = phi i32 [ 0, %entry ], [ %inc8, %aspeed_video_read.exit.for.body_crit_edge ]
  %0 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %video, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 152
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !229
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !235
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_read.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_check_and_set_polarity, %if.then.i)) #14
          to label %aspeed_video_read.exit [label %if.then.i], !srcloc !228

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_read.__UNIQUE_ID_ddebug299, ptr noundef %5, ptr noundef nonnull @.str.26, i32 noundef 152, i32 noundef %3) #14
  br label %aspeed_video_read.exit

aspeed_video_read.exit:                           ; preds = %if.then.i, %for.body
  %and = and i32 %3, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %vsync_counter.1.v = select i1 %tobool.not, i32 1, i32 -1
  %vsync_counter.1 = add i32 %vsync_counter.1.v, %vsync_counter.056
  %and1 = and i32 %3, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %hsync_counter.1.v = select i1 %tobool2.not, i32 1, i32 -1
  %hsync_counter.1 = add i32 %hsync_counter.1.v, %hsync_counter.055
  %inc8 = add nuw nsw i32 %i.054, 1
  %exitcond.not = icmp eq i32 %inc8, 10
  br i1 %exitcond.not, label %for.end, label %aspeed_video_read.exit.for.body_crit_edge

aspeed_video_read.exit.for.body_crit_edge:        ; preds = %aspeed_video_read.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %aspeed_video_read.exit
  %6 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %video, align 8
  %add.ptr.i47 = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47) #14, !srcloc !229
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !235
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_read.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_check_and_set_polarity, %if.then.i49)) #14
          to label %aspeed_video_read.exit50 [label %if.then.i49], !srcloc !228

if.then.i49:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_read.__UNIQUE_ID_ddebug299, ptr noundef %11, ptr noundef nonnull @.str.26, i32 noundef 8, i32 noundef %9) #14
  br label %aspeed_video_read.exit50

aspeed_video_read.exit50:                         ; preds = %if.then.i49, %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hsync_counter.1)
  %cmp10 = icmp slt i32 %hsync_counter.1, 0
  br i1 %cmp10, label %if.then11, label %if.else13

if.then11:                                        ; preds = %aspeed_video_read.exit50
  call void @__sanitizer_cov_trace_pc() #16
  %or = or i32 %9, 1
  %polarities = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 8, i32 3
  %12 = ptrtoint ptr %polarities to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %polarities, align 4
  %and12 = and i32 %13, -3
  store i32 %and12, ptr %polarities, align 4
  br label %if.end18

if.else13:                                        ; preds = %aspeed_video_read.exit50
  call void @__sanitizer_cov_trace_pc() #16
  %and14 = and i32 %9, -2
  %polarities16 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 8, i32 3
  %14 = ptrtoint ptr %polarities16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %polarities16, align 4
  %or17 = or i32 %15, 2
  store i32 %or17, ptr %polarities16, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.else13, %if.then11
  %ctrl.0 = phi i32 [ %or, %if.then11 ], [ %and14, %if.else13 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vsync_counter.1)
  %cmp19 = icmp slt i32 %vsync_counter.1, 0
  br i1 %cmp19, label %if.then20, label %if.else25

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  %or21 = or i32 %ctrl.0, 2
  %polarities23 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 8, i32 3
  %16 = ptrtoint ptr %polarities23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %polarities23, align 4
  %and24 = and i32 %17, -2
  store i32 %and24, ptr %polarities23, align 4
  br label %if.end30

if.else25:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  %and26 = and i32 %ctrl.0, -3
  %polarities28 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 8, i32 3
  %18 = ptrtoint ptr %polarities28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %polarities28, align 4
  %or29 = or i32 %19, 1
  store i32 %or29, ptr %polarities28, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.else25, %if.then20
  %ctrl.1 = phi i32 [ %or21, %if.then20 ], [ %and26, %if.else25 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !226
  tail call void @arm_heavy_mb() #14
  %20 = tail call i32 @llvm.bswap.i32(i32 %ctrl.1) #14
  %21 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %video, align 8
  %add.ptr.i51 = getelementptr i8, ptr %22, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 %20) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_write.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_check_and_set_polarity, %if.then.i53)) #14
          to label %aspeed_video_write.exit [label %if.then.i53], !srcloc !228

if.then.i53:                                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  %25 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %video, align 8
  %add.ptr5.i = getelementptr i8, ptr %26, i32 8
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #14, !srcloc !229
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !230
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_write.__UNIQUE_ID_ddebug300, ptr noundef %24, ptr noundef nonnull @.str.17, i32 noundef 8, i32 noundef %28) #14
  br label %aspeed_video_write.exit

aspeed_video_write.exit:                          ; preds = %if.then.i53, %if.end30
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_video_irq(i32 noundef %irq, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 776
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !229
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !235
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_read.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_irq, %if.then.i)) #14
          to label %aspeed_video_read.exit [label %if.then.i], !srcloc !228

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.aspeed_video, ptr %arg, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_read.__UNIQUE_ID_ddebug299, ptr noundef %5, ptr noundef nonnull @.str.26, i32 noundef 776, i32 noundef %3) #14
  br label %aspeed_video_read.exit

aspeed_video_read.exit:                           ; preds = %if.then.i, %entry
  %6 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arg, align 8
  %add.ptr.i91 = getelementptr i8, ptr %7, i32 772
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i91) #14, !srcloc !229
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !235
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_read.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_irq, %if.then.i93)) #14
          to label %aspeed_video_read.exit94 [label %if.then.i93], !srcloc !228

if.then.i93:                                      ; preds = %aspeed_video_read.exit
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i92 = getelementptr inbounds %struct.aspeed_video, ptr %arg, i32 0, i32 3
  %10 = ptrtoint ptr %dev.i92 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i92, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_read.__UNIQUE_ID_ddebug299, ptr noundef %11, ptr noundef nonnull @.str.26, i32 noundef 772, i32 noundef %9) #14
  br label %aspeed_video_read.exit94

aspeed_video_read.exit94:                         ; preds = %if.then.i93, %aspeed_video_read.exit
  %and = and i32 %9, %3
  %and2 = and i32 %and, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %aspeed_video_read.exit94
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @aspeed_video_irq_res_change(ptr noundef %arg, i32 noundef 0)
  br label %cleanup

if.end:                                           ; preds = %aspeed_video_read.exit94
  %and3 = and i32 %and, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end13_crit_edge, label %if.then5

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then5:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.aspeed_video, ptr %arg, i32 0, i32 19
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool7.not = icmp eq i32 %14, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.then5
  %15 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arg, align 8
  %add.ptr.i95 = getelementptr i8, ptr %16, i32 772
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i95) #14, !srcloc !229
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !232
  %and.i = and i32 %18, -17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !233
  tail call void @arm_heavy_mb() #14
  %19 = tail call i32 @llvm.bswap.i32(i32 %and.i) #14
  %20 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arg, align 8
  %add.ptr3.i = getelementptr i8, ptr %21, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %19) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_update.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_irq, %if.then.i97)) #14
          to label %aspeed_video_update.exit [label %if.then.i97], !srcloc !228

if.then.i97:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i96 = getelementptr inbounds %struct.aspeed_video, ptr %arg, i32 0, i32 3
  %22 = ptrtoint ptr %dev.i96 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i96, align 4
  %24 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arg, align 8
  %add.ptr12.i = getelementptr i8, ptr %25, i32 772
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #14, !srcloc !229
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !234
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_update.__UNIQUE_ID_ddebug298, ptr noundef %23, ptr noundef nonnull @.str.24, i32 noundef 772, i32 noundef %18, i32 noundef %27) #14
  br label %aspeed_video_update.exit

aspeed_video_update.exit:                         ; preds = %if.then.i97, %if.then8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !226
  tail call void @arm_heavy_mb() #14
  %28 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arg, align 8
  %add.ptr.i98 = getelementptr i8, ptr %29, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i98, i32 268435456) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_write.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_irq, %if.then.i100)) #14
          to label %aspeed_video_write.exit [label %if.then.i100], !srcloc !228

if.then.i100:                                     ; preds = %aspeed_video_update.exit
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i99 = getelementptr inbounds %struct.aspeed_video, ptr %arg, i32 0, i32 3
  %30 = ptrtoint ptr %dev.i99 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i99, align 4
  %32 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arg, align 8
  %add.ptr5.i = getelementptr i8, ptr %33, i32 776
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #14, !srcloc !229
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !230
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_write.__UNIQUE_ID_ddebug300, ptr noundef %31, ptr noundef nonnull @.str.17, i32 noundef 776, i32 noundef %35) #14
  br label %aspeed_video_write.exit

aspeed_video_write.exit:                          ; preds = %if.then.i100, %aspeed_video_update.exit
  %and9 = and i32 %and, -17
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #14
  %wait = getelementptr inbounds %struct.aspeed_video, ptr %arg, i32 0, i32 15
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 1, i32 noundef 0, ptr noundef null) #14
  br label %if.end13

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @aspeed_video_irq_res_change(ptr noundef %arg, i32 noundef 50)
  br label %cleanup

if.end13:                                         ; preds = %aspeed_video_write.exit, %if.end.if.end13_crit_edge
  %sts.0 = phi i32 [ %and9, %aspeed_video_write.exit ], [ %and, %if.end.if.end13_crit_edge ]
  %and14 = and i32 %sts.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end47_crit_edge, label %if.then16

if.end13.if.end47_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.then16:                                        ; preds = %if.end13
  %comp_size_read = getelementptr inbounds %struct.aspeed_video, ptr %arg, i32 0, i32 14
  %36 = ptrtoint ptr %comp_size_read to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %comp_size_read, align 8
  %38 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arg, align 8
  %add.ptr.i101 = getelementptr i8, ptr %39, i32 %37
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i101) #14, !srcloc !229
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !235
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_read.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_irq, %if.then.i103)) #14
          to label %aspeed_video_read.exit104 [label %if.then.i103], !srcloc !228

if.then.i103:                                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i102 = getelementptr inbounds %struct.aspeed_video, ptr %arg, i32 0, i32 3
  %42 = ptrtoint ptr %dev.i102 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i102, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_read.__UNIQUE_ID_ddebug299, ptr noundef %43, ptr noundef nonnull @.str.26, i32 noundef %37, i32 noundef %41) #14
  br label %aspeed_video_read.exit104

aspeed_video_read.exit104:                        ; preds = %if.then.i103, %if.then16
  %perf = getelementptr inbounds %struct.aspeed_video, ptr %arg, i32 0, i32 31
  %call.i = tail call i64 @ktime_get() #14
  %44 = ptrtoint ptr %perf to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %perf, align 8
  %sub.i = sub i64 %call.i, %45
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %46 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #14
  %47 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %46) #18, !srcloc !236
  %48 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %46, i64 %47, i32 0) #18, !srcloc !237
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %48, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 18
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  %conv.i = trunc i64 %cond213.i.i.i to i32
  %duration.i = getelementptr inbounds %struct.aspeed_video, ptr %arg, i32 0, i32 31, i32 2
  %49 = ptrtoint ptr %duration.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv.i, ptr %duration.i, align 4
  %totaltime.i = getelementptr inbounds %struct.aspeed_video, ptr %arg, i32 0, i32 31, i32 1
  %50 = ptrtoint ptr %totaltime.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %totaltime.i, align 8
  %add.i = add i32 %51, %conv.i
  store i32 %add.i, ptr %totaltime.i, align 8
  %duration_max.i = getelementptr inbounds %struct.aspeed_video, ptr %arg, i32 0, i32 31, i32 4
  %52 = ptrtoint ptr %duration_max.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %duration_max.i, align 4
  %54 = tail call i32 @llvm.umax.i32(i32 %53, i32 %conv.i) #14
  %55 = ptrtoint ptr %duration_max.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %duration_max.i, align 4
  %duration_min.i = getelementptr inbounds %struct.aspeed_video, ptr %arg, i32 0, i32 31, i32 3
  %56 = ptrtoint ptr %duration_min.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %duration_min.i, align 8
  %58 = tail call i32 @llvm.umin.i32(i32 %57, i32 %conv.i) #14
  %59 = ptrtoint ptr %duration_min.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %duration_min.i, align 8
  %lock = getelementptr inbounds %struct.aspeed_video, ptr %arg, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %lock) #14
  %flags18 = getelementptr inbounds %struct.aspeed_video, ptr %arg, i32 0, i32 19
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flags18) #14
  %buffers = getelementptr inbounds %struct.aspeed_video, ptr %arg, i32 0, i32 18
  %60 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %buffers, align 4
  %cmp.not = icmp eq ptr %61, %buffers
  %add.ptr = getelementptr i8, ptr %61, i32 -736
  %tobool21.not127 = icmp eq ptr %add.ptr, null
  %tobool21.not = or i1 %cmp.not, %tobool21.not127
  br i1 %tobool21.not, label %aspeed_video_read.exit104.if.end37_crit_edge, label %if.then22

aspeed_video_read.exit104.if.end37_crit_edge:     ; preds = %aspeed_video_read.exit104
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37

if.then22:                                        ; preds = %aspeed_video_read.exit104
  %num_planes.i = getelementptr i8, ptr %61, i32 -720
  %62 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp.not.i = icmp eq i32 %63, 0
  br i1 %cmp.not.i, label %if.then22.vb2_set_plane_payload.exit_crit_edge, label %if.then.i105

if.then22.vb2_set_plane_payload.exit_crit_edge:   ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  br label %vb2_set_plane_payload.exit

if.then.i105:                                     ; preds = %if.then22
  %length.i = getelementptr i8, ptr %61, i32 -648
  %64 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %41)
  %cmp1.i = icmp ult i32 %65, %41
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i105.if.end42.i_crit_edge

if.then.i105.if.end42.i_crit_edge:                ; preds = %if.then.i105
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i105
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !238

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 1163, i32 noundef 9, ptr noundef null) #14
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %66 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i105.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %67, %if.then38.i ], [ %41, %if.then.i105.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr i8, ptr %61, i32 -652
  %68 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %if.then22.vb2_set_plane_payload.exit_crit_edge
  %69 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %61, align 4
  %cmp.i.not = icmp eq ptr %70, %buffers
  br i1 %cmp.i.not, label %vb2_set_plane_payload.exit.if.end37_crit_edge, label %if.then26

vb2_set_plane_payload.exit.if.end37_crit_edge:    ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37

if.then26:                                        ; preds = %vb2_set_plane_payload.exit
  %call.i107 = tail call i64 @ktime_get() #14
  %timestamp = getelementptr i8, ptr %61, i32 -712
  %71 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %call.i107, ptr %timestamp, align 8
  %sequence = getelementptr inbounds %struct.aspeed_video, ptr %arg, i32 0, i32 20
  %72 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %sequence, align 4
  %inc = add i32 %73, 1
  store i32 %inc, ptr %sequence, align 4
  %sequence31 = getelementptr i8, ptr %61, i32 -272
  %74 = ptrtoint ptr %sequence31 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %sequence31, align 8
  %field = getelementptr i8, ptr %61, i32 -292
  %75 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1, ptr %field, align 4
  tail call void @vb2_buffer_done(ptr noundef nonnull %add.ptr, i32 noundef 5) #14
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %61) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then26.list_del.exit_crit_edge

if.then26.list_del.exit_crit_edge:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  %76 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %prev.i.i, align 4
  %78 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %61, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %77, ptr %prev1.i.i.i, align 4
  %81 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %79, ptr %77, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then26.list_del.exit_crit_edge
  %82 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr inttoptr (i32 256 to ptr), ptr %61, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  %83 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end37

if.end37:                                         ; preds = %list_del.exit, %vb2_set_plane_payload.exit.if.end37_crit_edge, %aspeed_video_read.exit104.if.end37_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  %84 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arg, align 8
  %add.ptr.i108 = getelementptr i8, ptr %85, i32 4
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i108) #14, !srcloc !229
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !232
  %and.i109 = and i32 %87, -23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !233
  tail call void @arm_heavy_mb() #14
  %88 = tail call i32 @llvm.bswap.i32(i32 %and.i109) #14
  %89 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arg, align 8
  %add.ptr3.i110 = getelementptr i8, ptr %90, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i110, i32 %88) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_update.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_irq, %if.then.i113)) #14
          to label %aspeed_video_update.exit114 [label %if.then.i113], !srcloc !228

if.then.i113:                                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i111 = getelementptr inbounds %struct.aspeed_video, ptr %arg, i32 0, i32 3
  %91 = ptrtoint ptr %dev.i111 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev.i111, align 4
  %93 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arg, align 8
  %add.ptr12.i112 = getelementptr i8, ptr %94, i32 4
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i112) #14, !srcloc !229
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !234
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_update.__UNIQUE_ID_ddebug298, ptr noundef %92, ptr noundef nonnull @.str.24, i32 noundef 4, i32 noundef %87, i32 noundef %96) #14
  br label %aspeed_video_update.exit114

aspeed_video_update.exit114:                      ; preds = %if.then.i113, %if.end37
  %97 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arg, align 8
  %add.ptr.i115 = getelementptr i8, ptr %98, i32 772
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i115) #14, !srcloc !229
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !232
  %and.i116 = and i32 %100, -9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !233
  tail call void @arm_heavy_mb() #14
  %101 = tail call i32 @llvm.bswap.i32(i32 %and.i116) #14
  %102 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arg, align 8
  %add.ptr3.i117 = getelementptr i8, ptr %103, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i117, i32 %101) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_update.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_irq, %if.then.i120)) #14
          to label %aspeed_video_update.exit121 [label %if.then.i120], !srcloc !228

if.then.i120:                                     ; preds = %aspeed_video_update.exit114
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i118 = getelementptr inbounds %struct.aspeed_video, ptr %arg, i32 0, i32 3
  %104 = ptrtoint ptr %dev.i118 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev.i118, align 4
  %106 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arg, align 8
  %add.ptr12.i119 = getelementptr i8, ptr %107, i32 772
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i119) #14, !srcloc !229
  %109 = tail call i32 @llvm.bswap.i32(i32 %108) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !234
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_update.__UNIQUE_ID_ddebug298, ptr noundef %105, ptr noundef nonnull @.str.24, i32 noundef 772, i32 noundef %100, i32 noundef %109) #14
  br label %aspeed_video_update.exit121

aspeed_video_update.exit121:                      ; preds = %if.then.i120, %aspeed_video_update.exit114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !226
  tail call void @arm_heavy_mb() #14
  %110 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arg, align 8
  %add.ptr.i122 = getelementptr i8, ptr %111, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122, i32 134217728) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_write.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_irq, %if.then.i125)) #14
          to label %aspeed_video_write.exit126 [label %if.then.i125], !srcloc !228

if.then.i125:                                     ; preds = %aspeed_video_update.exit121
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i123 = getelementptr inbounds %struct.aspeed_video, ptr %arg, i32 0, i32 3
  %112 = ptrtoint ptr %dev.i123 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev.i123, align 4
  %114 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arg, align 8
  %add.ptr5.i124 = getelementptr i8, ptr %115, i32 776
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i124) #14, !srcloc !229
  %117 = tail call i32 @llvm.bswap.i32(i32 %116) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !230
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_write.__UNIQUE_ID_ddebug300, ptr noundef %113, ptr noundef nonnull @.str.17, i32 noundef 776, i32 noundef %117) #14
  br label %aspeed_video_write.exit126

aspeed_video_write.exit126:                       ; preds = %if.then.i125, %aspeed_video_update.exit121
  %and39 = and i32 %sts.0, -9
  %118 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %flags18, align 4
  %120 = and i32 %119, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool42.not = icmp eq i32 %120, 0
  %brmerge = select i1 %tobool42.not, i1 true, i1 %tobool21.not
  br i1 %brmerge, label %aspeed_video_write.exit126.if.end47_crit_edge, label %if.then44

aspeed_video_write.exit126.if.end47_crit_edge:    ; preds = %aspeed_video_write.exit126
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.then44:                                        ; preds = %aspeed_video_write.exit126
  call void @__sanitizer_cov_trace_pc() #16
  %call45 = tail call fastcc i32 @aspeed_video_start_frame(ptr noundef %arg)
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %aspeed_video_write.exit126.if.end47_crit_edge, %if.end13.if.end47_crit_edge
  %sts.1 = phi i32 [ %sts.0, %if.end13.if.end47_crit_edge ], [ %and39, %aspeed_video_write.exit126.if.end47_crit_edge ], [ %and39, %if.then44 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sts.1)
  %tobool48.not = icmp eq i32 %sts.1, 0
  %cond49 = zext i1 %tobool48.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.else, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ %cond49, %if.end47 ], [ 1, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_reserved_mem_device_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aspeed_video_irq_res_change(ptr noundef %video, i32 noundef %delay) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_irq_res_change.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_irq_res_change, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !228

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_irq_res_change.__UNIQUE_ID_ddebug309, ptr noundef %1, ptr noundef nonnull @.str.51) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 19
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #14
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flags) #14
  %v4l2_input_status = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 9
  %2 = ptrtoint ptr %v4l2_input_status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %v4l2_input_status, align 8
  tail call fastcc void @aspeed_video_off(ptr noundef %video)
  %lock.i = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 16
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %buffers.i = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 18
  %3 = ptrtoint ptr %buffers.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn22.i = load ptr, ptr %buffers.i, align 8
  %cmp7.not23.i = icmp eq ptr %.pn22.i, %buffers.i
  br i1 %cmp7.not23.i, label %do.end.aspeed_video_bufs_done.exit_crit_edge, label %do.end.for.body.i_crit_edge

do.end.for.body.i_crit_edge:                      ; preds = %do.end
  br label %for.body.i

do.end.aspeed_video_bufs_done.exit_crit_edge:     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %aspeed_video_bufs_done.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end.for.body.i_crit_edge
  %.pn24.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn22.i, %do.end.for.body.i_crit_edge ]
  %buf.0.i = getelementptr i8, ptr %.pn24.i, i32 -736
  tail call void @vb2_buffer_done(ptr noundef %buf.0.i, i32 noundef 6) #14
  %4 = ptrtoint ptr %.pn24.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn24.i, align 8
  %cmp7.not.i = icmp eq ptr %.pn.i, %buffers.i
  br i1 %cmp7.not.i, label %for.body.i.aspeed_video_bufs_done.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.aspeed_video_bufs_done.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %aspeed_video_bufs_done.exit

aspeed_video_bufs_done.exit:                      ; preds = %for.body.i.aspeed_video_bufs_done.exit_crit_edge, %do.end.aspeed_video_bufs_done.exit_crit_edge
  %5 = ptrtoint ptr %buffers.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %buffers.i, ptr %buffers.i, align 4
  %prev.i.i = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 18, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %buffers.i, ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #14
  %res_work = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %res_work, i32 noundef %delay) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aspeed_video_off(ptr noundef %video) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 19
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !226
  tail call void @arm_heavy_mb() #14
  %3 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %video, align 8
  %add.ptr.i = getelementptr i8, ptr %4, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_write.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_off, %if.then.i)) #14
          to label %aspeed_video_write.exit [label %if.then.i], !srcloc !228

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %7 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %video, align 8
  %add.ptr5.i = getelementptr i8, ptr %8, i32 772
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #14, !srcloc !229
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !230
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_write.__UNIQUE_ID_ddebug300, ptr noundef %6, ptr noundef nonnull @.str.17, i32 noundef 772, i32 noundef %10) #14
  br label %aspeed_video_write.exit

aspeed_video_write.exit:                          ; preds = %if.then.i, %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !226
  tail call void @arm_heavy_mb() #14
  %11 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %video, align 8
  %add.ptr.i7 = getelementptr i8, ptr %12, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 -1) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_write.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_off, %if.then.i10)) #14
          to label %aspeed_video_write.exit11 [label %if.then.i10], !srcloc !228

if.then.i10:                                      ; preds = %aspeed_video_write.exit
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i8 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %13 = ptrtoint ptr %dev.i8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i8, align 4
  %15 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %video, align 8
  %add.ptr5.i9 = getelementptr i8, ptr %16, i32 776
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i9) #14, !srcloc !229
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !230
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_write.__UNIQUE_ID_ddebug300, ptr noundef %14, ptr noundef nonnull @.str.17, i32 noundef 776, i32 noundef %18) #14
  br label %aspeed_video_write.exit11

aspeed_video_write.exit11:                        ; preds = %if.then.i10, %aspeed_video_write.exit
  %eclk = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 1
  %19 = ptrtoint ptr %eclk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %eclk, align 4
  tail call void @clk_disable(ptr noundef %20) #14
  %vclk = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 2
  %21 = ptrtoint ptr %vclk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vclk, align 8
  tail call void @clk_disable(ptr noundef %22) #14
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %flags) #14
  br label %return

return:                                           ; preds = %aspeed_video_write.exit11, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_reserved_mem_device_init_by_idx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_video_set_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 10291459, label %sw.bb
    i32 10291457, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %jpeg_quality = getelementptr i8, ptr %1, i32 2840
  %7 = ptrtoint ptr %jpeg_quality to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %jpeg_quality, align 8
  tail call fastcc void @aspeed_video_update_jpeg_quality(ptr noundef %add.ptr)
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp = icmp eq i32 %9, 2
  %yuv420 = getelementptr i8, ptr %1, i32 2832
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %yuv420 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %yuv420, align 8
  tail call fastcc void @aspeed_video_update_subsampling(ptr noundef %add.ptr)
  br label %cleanup

if.else:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %yuv420 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %yuv420, align 8
  tail call fastcc void @aspeed_video_update_subsampling(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then ], [ 0, %if.else ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aspeed_video_update_jpeg_quality(ptr nocapture noundef readonly %video) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %jpeg_quality = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 26
  %0 = ptrtoint ptr %jpeg_quality to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %jpeg_quality, align 8
  %shl = shl i32 %1, 11
  %and15 = and i32 %shl, 63488
  %or42 = shl i32 %1, 6
  %shl43 = and i32 %or42, 960
  %and44 = or i32 %shl43, %and15
  %2 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %video, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 96
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !229
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !232
  %and.i = and i32 %5, -65473
  %or45 = or i32 %and44, %and.i
  %or.i = or i32 %or45, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !233
  tail call void @arm_heavy_mb() #14
  %6 = tail call i32 @llvm.bswap.i32(i32 %or.i) #14
  %7 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %video, align 8
  %add.ptr3.i = getelementptr i8, ptr %8, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %6) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_update.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_update_jpeg_quality, %if.then.i)) #14
          to label %aspeed_video_update.exit [label %if.then.i], !srcloc !228

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %11 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %video, align 8
  %add.ptr12.i = getelementptr i8, ptr %12, i32 96
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #14, !srcloc !229
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !234
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_update.__UNIQUE_ID_ddebug298, ptr noundef %10, ptr noundef nonnull @.str.24, i32 noundef 96, i32 noundef %5, i32 noundef %14) #14
  br label %aspeed_video_update.exit

aspeed_video_update.exit:                         ; preds = %if.then.i, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aspeed_video_update_subsampling(ptr nocapture noundef readonly %video) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 23, i32 2
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %virt, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %yuv420 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 24
  %2 = ptrtoint ptr %yuv420 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %yuv420, align 8, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  %cond.i = select i1 %tobool3.not, i32 1114371, i32 2228483
  %arrayidx.i = getelementptr i32, ptr %1, i32 46
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond.i, ptr %arrayidx.i, align 4
  %arrayidx.1.i = getelementptr i32, ptr %1, i32 302
  %5 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond.i, ptr %arrayidx.1.i, align 4
  %arrayidx.2.i = getelementptr i32, ptr %1, i32 558
  %6 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond.i, ptr %arrayidx.2.i, align 4
  %arrayidx.3.i = getelementptr i32, ptr %1, i32 814
  %7 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond.i, ptr %arrayidx.3.i, align 4
  %arrayidx.4.i = getelementptr i32, ptr %1, i32 1070
  %8 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond.i, ptr %arrayidx.4.i, align 4
  %arrayidx.5.i = getelementptr i32, ptr %1, i32 1326
  %9 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond.i, ptr %arrayidx.5.i, align 4
  %arrayidx.6.i = getelementptr i32, ptr %1, i32 1582
  %10 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond.i, ptr %arrayidx.6.i, align 4
  %arrayidx.7.i = getelementptr i32, ptr %1, i32 1838
  %11 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond.i, ptr %arrayidx.7.i, align 4
  %arrayidx.8.i = getelementptr i32, ptr %1, i32 2094
  %12 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cond.i, ptr %arrayidx.8.i, align 4
  %arrayidx.9.i = getelementptr i32, ptr %1, i32 2350
  %13 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond.i, ptr %arrayidx.9.i, align 4
  %arrayidx.10.i = getelementptr i32, ptr %1, i32 2606
  %14 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond.i, ptr %arrayidx.10.i, align 4
  %arrayidx.11.i = getelementptr i32, ptr %1, i32 2862
  %15 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cond.i, ptr %arrayidx.11.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %yuv4204 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 24
  %16 = ptrtoint ptr %yuv4204 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %yuv4204, align 8, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool5.not = icmp eq i8 %17, 0
  %18 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %video, align 8
  %add.ptr.i13 = getelementptr i8, ptr %19, i32 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #14
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %or.i = or i32 %21, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !233
  tail call void @arm_heavy_mb() #14
  %22 = tail call i32 @llvm.bswap.i32(i32 %or.i) #14
  %23 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %video, align 8
  %add.ptr3.i = getelementptr i8, ptr %24, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %22) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_update.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_update_subsampling, %if.then.i)) #14
          to label %if.end7 [label %if.then.i], !srcloc !228

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  %27 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %video, align 8
  %add.ptr12.i = getelementptr i8, ptr %28, i32 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #14, !srcloc !229
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !234
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_update.__UNIQUE_ID_ddebug298, ptr noundef %26, ptr noundef nonnull @.str.24, i32 noundef 4, i32 noundef %21, i32 noundef %30) #14
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %and.i = and i32 %21, -1025
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !233
  tail call void @arm_heavy_mb() #14
  %31 = tail call i32 @llvm.bswap.i32(i32 %and.i) #14
  %32 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %video, align 8
  %add.ptr3.i14 = getelementptr i8, ptr %33, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i14, i32 %31) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_update.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_update_subsampling, %if.then.i17)) #14
          to label %if.end7 [label %if.then.i17], !srcloc !228

if.then.i17:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i15 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %34 = ptrtoint ptr %dev.i15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i15, align 4
  %36 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %video, align 8
  %add.ptr12.i16 = getelementptr i8, ptr %37, i32 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i16) #14, !srcloc !229
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !234
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_update.__UNIQUE_ID_ddebug298, ptr noundef %35, ptr noundef nonnull @.str.24, i32 noundef 4, i32 noundef %21, i32 noundef %39) #14
  br label %if.end7

if.end7:                                          ; preds = %if.then.i17, %if.else, %if.then.i, %if.then6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aspeed_video_queue_setup(ptr nocapture noundef readonly %q, ptr nocapture noundef readnone %num_buffers, ptr nocapture noundef %num_planes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_planes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end2, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sizes, align 4
  %max_compressed_size = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %max_compressed_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_compressed_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp ult i32 %5, %7
  %. = select i1 %cmp, i32 -22, i32 0
  br label %cleanup

if.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %num_planes, align 4
  %max_compressed_size3 = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 21
  %9 = ptrtoint ptr %max_compressed_size3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_compressed_size3, align 8
  %11 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %sizes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then
  %retval.0 = phi i32 [ 0, %if.end2 ], [ %., %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aspeed_video_buf_prepare(ptr nocapture noundef readonly %vb) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %4 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i, label %entry.vb2_plane_size.exit_crit_edge, label %if.then.i

entry.vb2_plane_size.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %vb2_plane_size.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %6 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit

vb2_plane_size.exit:                              ; preds = %if.then.i, %entry.vb2_plane_size.exit_crit_edge
  %retval.0.i = phi i32 [ %7, %if.then.i ], [ 0, %entry.vb2_plane_size.exit_crit_edge ]
  %max_compressed_size = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 21
  %8 = ptrtoint ptr %max_compressed_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_compressed_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %9)
  %cmp = icmp ult i32 %retval.0.i, %9
  %. = select i1 %cmp, i32 -22, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_video_start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %sequence = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %sequence, align 4
  %duration_max = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 31, i32 4
  %3 = ptrtoint ptr %duration_max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %duration_max, align 4
  %duration_min = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 31, i32 3
  %4 = ptrtoint ptr %duration_min to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %duration_min, align 8
  %call2 = tail call fastcc i32 @aspeed_video_start_frame(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %lock.i = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 16
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %buffers.i = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 18
  %5 = ptrtoint ptr %buffers.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn22.i = load ptr, ptr %buffers.i, align 8
  %cmp7.not23.i = icmp eq ptr %.pn22.i, %buffers.i
  br i1 %cmp7.not23.i, label %if.then.aspeed_video_bufs_done.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.aspeed_video_bufs_done.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %aspeed_video_bufs_done.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %.pn24.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn22.i, %if.then.for.body.i_crit_edge ]
  %buf.0.i = getelementptr i8, ptr %.pn24.i, i32 -736
  tail call void @vb2_buffer_done(ptr noundef %buf.0.i, i32 noundef 3) #14
  %6 = ptrtoint ptr %.pn24.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn24.i, align 8
  %cmp7.not.i = icmp eq ptr %.pn.i, %buffers.i
  br i1 %cmp7.not.i, label %for.body.i.aspeed_video_bufs_done.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.aspeed_video_bufs_done.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %aspeed_video_bufs_done.exit

aspeed_video_bufs_done.exit:                      ; preds = %for.body.i.aspeed_video_bufs_done.exit_crit_edge, %if.then.aspeed_video_bufs_done.exit_crit_edge
  %7 = ptrtoint ptr %buffers.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %buffers.i, ptr %buffers.i, align 4
  %prev.i.i = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 18, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %buffers.i, ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %flags = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 19
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %aspeed_video_bufs_done.exit
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_video_stop_streaming(ptr nocapture noundef readonly %q) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %flags = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 19
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags) #14
  tail call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 1517) #14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end57_crit_edge, label %if.then13

entry.if.end57_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end57

if.then13:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %5 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %wait = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 15
  %call1686 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool20.not87 = icmp eq i32 %8, 0
  br i1 %tobool20.not87, label %if.end41.thread, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  br label %cleanup

if.end41.thread:                                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %if.end57

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then13.cleanup_crit_edge
  %__ret14.188 = phi i32 [ %__ret14.1, %cleanup.cleanup_crit_edge ], [ 100, %if.then13.cleanup_crit_edge ]
  %call38 = call i32 @schedule_timeout(i32 noundef %__ret14.188) #14
  %call16 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool20.not = icmp eq i32 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool25.not = icmp eq i32 %call38, 0
  %12 = select i1 %tobool20.not, i1 %tobool25.not, i1 false
  %__ret14.1 = select i1 %12, i32 1, i32 %call38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret14.1)
  %tobool31.not = icmp eq i32 %__ret14.1, 0
  %13 = select i1 %tobool20.not, i1 true, i1 %tobool31.not
  br i1 %13, label %if.end41, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end41:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret14.1)
  %phi.cmp = icmp eq i32 %__ret14.1, 0
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br i1 %phi.cmp, label %do.body45, label %if.end41.if.end57_crit_edge

if.end41.if.end57_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end57

do.body45:                                        ; preds = %if.end41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_stop_streaming.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_stop_streaming, %if.then53)) #14
          to label %do.end56 [label %if.then53], !srcloc !228

if.then53:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_stop_streaming.__UNIQUE_ID_ddebug367, ptr noundef %15, ptr noundef nonnull @.str.66) #14
  br label %do.end56

do.end56:                                         ; preds = %if.then53, %do.body45
  call fastcc void @aspeed_video_off(ptr noundef %1)
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags, align 4
  %18 = and i32 %17, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end56.aspeed_video_on.exit_crit_edge

do.end56.aspeed_video_on.exit_crit_edge:          ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #16
  br label %aspeed_video_on.exit

if.end.i:                                         ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #16
  %vclk.i = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %vclk.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vclk.i, align 8
  %call1.i = call i32 @clk_enable(ptr noundef %20) #14
  %eclk.i = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %eclk.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %eclk.i, align 4
  %call2.i = call i32 @clk_enable(ptr noundef %22) #14
  call void @_set_bit(i32 noundef 6, ptr noundef %flags) #14
  br label %aspeed_video_on.exit

aspeed_video_on.exit:                             ; preds = %if.end.i, %do.end56.aspeed_video_on.exit_crit_edge
  call fastcc void @aspeed_video_init_regs(ptr noundef %1)
  call fastcc void @aspeed_video_get_resolution(ptr noundef %1)
  br label %if.end57

if.end57:                                         ; preds = %aspeed_video_on.exit, %if.end41.if.end57_crit_edge, %if.end41.thread, %entry.if.end57_crit_edge
  %lock.i = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 16
  %call2.i78 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %buffers.i = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 18
  %23 = ptrtoint ptr %buffers.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn22.i = load ptr, ptr %buffers.i, align 8
  %cmp7.not23.i = icmp eq ptr %.pn22.i, %buffers.i
  br i1 %cmp7.not23.i, label %if.end57.aspeed_video_bufs_done.exit_crit_edge, label %if.end57.for.body.i_crit_edge

if.end57.for.body.i_crit_edge:                    ; preds = %if.end57
  br label %for.body.i

if.end57.aspeed_video_bufs_done.exit_crit_edge:   ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %aspeed_video_bufs_done.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end57.for.body.i_crit_edge
  %.pn24.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn22.i, %if.end57.for.body.i_crit_edge ]
  %buf.0.i = getelementptr i8, ptr %.pn24.i, i32 -736
  call void @vb2_buffer_done(ptr noundef %buf.0.i, i32 noundef 6) #14
  %24 = ptrtoint ptr %.pn24.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn.i = load ptr, ptr %.pn24.i, align 8
  %cmp7.not.i = icmp eq ptr %.pn.i, %buffers.i
  br i1 %cmp7.not.i, label %for.body.i.aspeed_video_bufs_done.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.aspeed_video_bufs_done.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %aspeed_video_bufs_done.exit

aspeed_video_bufs_done.exit:                      ; preds = %for.body.i.aspeed_video_bufs_done.exit_crit_edge, %if.end57.aspeed_video_bufs_done.exit_crit_edge
  %25 = ptrtoint ptr %buffers.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %buffers.i, ptr %buffers.i, align 4
  %prev.i.i = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 18, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %buffers.i, ptr %prev.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i78) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_video_buf_queue(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %lock = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 16
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %buffers = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %buffers, align 4
  %cmp.i = icmp ne ptr %5, %buffers
  %link = getelementptr inbounds %struct.aspeed_video_buffer, ptr %vb, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 18, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %link, ptr noundef %7, ptr noundef %buffers) #14
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %link, ptr %prev.i, align 4
  %9 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %buffers, ptr %link, align 4
  %prev3.i.i = getelementptr inbounds %struct.aspeed_video_buffer, ptr %vb, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %link, ptr %7, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #14
  %flags13 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 19
  %12 = ptrtoint ptr %flags13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags13, align 4
  %14 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool15.not = icmp eq i32 %14, 0
  br i1 %tobool15.not, label %list_add_tail.exit.if.end_crit_edge, label %land.lhs.true

list_add_tail.exit.if.end_crit_edge:              ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %list_add_tail.exit
  %15 = ptrtoint ptr %flags13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags13, align 4
  %17 = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool18.not = icmp ne i32 %17, 0
  %brmerge = select i1 %tobool18.not, i1 true, i1 %cmp.i
  br i1 %brmerge, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %call22 = tail call fastcc i32 @aspeed_video_start_frame(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %list_add_tail.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_video_open(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %video_lock = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %video_lock, i32 noundef 0) #14
  %call1 = tail call i32 @v4l2_fh_open(ptr noundef %file) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %call.i15 = tail call i32 @v4l2_fh_is_singular(ptr noundef %3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15)
  %tobool4.not = icmp eq i32 %call.i15, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then5:                                         ; preds = %if.end
  %flags.i.i = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i.i, align 4
  %6 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then5.aspeed_video_start.exit_crit_edge

if.then5.aspeed_video_start.exit_crit_edge:       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %aspeed_video_start.exit

if.end.i.i:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  %vclk.i.i = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %vclk.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vclk.i.i, align 8
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %8) #14
  %eclk.i.i = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %eclk.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %eclk.i.i, align 4
  %call2.i.i = tail call i32 @clk_enable(ptr noundef %10) #14
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags.i.i) #14
  br label %aspeed_video_start.exit

aspeed_video_start.exit:                          ; preds = %if.end.i.i, %if.then5.aspeed_video_start.exit_crit_edge
  tail call fastcc void @aspeed_video_init_regs(ptr noundef %1) #14
  tail call fastcc void @aspeed_video_get_resolution(ptr noundef %1) #14
  %active_timings.i = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 7
  %detected_timings.i = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 8
  %11 = call ptr @memcpy(ptr %active_timings.i, ptr %detected_timings.i, i32 124)
  tail call fastcc void @aspeed_video_set_resolution(ptr noundef %1) #14
  %12 = ptrtoint ptr %active_timings.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %active_timings.i, align 8
  %pix_fmt.i = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %pix_fmt.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %pix_fmt.i, align 8
  %height.i = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 7, i32 1
  %15 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height.i, align 4
  %height5.i = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 6, i32 1
  %17 = ptrtoint ptr %height5.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %height5.i, align 4
  %max_compressed_size.i = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 21
  %18 = ptrtoint ptr %max_compressed_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_compressed_size.i, align 8
  %sizeimage.i = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 6, i32 5
  %20 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %sizeimage.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %aspeed_video_start.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  tail call void @mutex_unlock(ptr noundef %video_lock) #14
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_video_release(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %video_lock = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %video_lock, i32 noundef 0) #14
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %call.i8 = tail call i32 @v4l2_fh_is_singular(ptr noundef %3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %tobool.not = icmp eq i32 %call.i8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %flags.i = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 19
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags.i) #14
  %res_work.i = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 17
  %call.i9 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %res_work.i) #14
  tail call fastcc void @aspeed_video_off(ptr noundef %1) #14
  %srcs.i = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %srcs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %srcs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i.i = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 4
  %virt.i.i = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 22, i32 0, i32 2
  %8 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %virt.i.i, align 4
  %dma.i.i = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 22, i32 0, i32 1
  %10 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %7, i32 noundef %5, ptr noundef %9, i32 noundef %11, i32 noundef 0) #14
  %12 = ptrtoint ptr %srcs.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %srcs.i, align 4
  %13 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %dma.i.i, align 4
  %14 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %virt.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %arrayidx4.i = getelementptr %struct.aspeed_video, ptr %1, i32 0, i32 22, i32 1
  %15 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool6.not.i = icmp eq i32 %16, 0
  br i1 %tobool6.not.i, label %if.end.i.aspeed_video_stop.exit_crit_edge, label %if.then7.i

if.end.i.aspeed_video_stop.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %aspeed_video_stop.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i22.i = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %dev.i22.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i22.i, align 4
  %virt.i23.i = getelementptr %struct.aspeed_video, ptr %1, i32 0, i32 22, i32 1, i32 2
  %19 = ptrtoint ptr %virt.i23.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %virt.i23.i, align 4
  %dma.i24.i = getelementptr %struct.aspeed_video, ptr %1, i32 0, i32 22, i32 1, i32 1
  %21 = ptrtoint ptr %dma.i24.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma.i24.i, align 4
  tail call void @dma_free_attrs(ptr noundef %18, i32 noundef %16, ptr noundef %20, i32 noundef %22, i32 noundef 0) #14
  %23 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %arrayidx4.i, align 4
  %24 = ptrtoint ptr %dma.i24.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %dma.i24.i, align 4
  %25 = ptrtoint ptr %virt.i23.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %virt.i23.i, align 4
  br label %aspeed_video_stop.exit

aspeed_video_stop.exit:                           ; preds = %if.then7.i, %if.end.i.aspeed_video_stop.exit_crit_edge
  %v4l2_input_status.i = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 9
  %26 = ptrtoint ptr %v4l2_input_status.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %v4l2_input_status.i, align 8
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %flags.i, align 8
  br label %if.end

if.end:                                           ; preds = %aspeed_video_stop.exit, %entry.if.end_crit_edge
  %call2 = tail call i32 @_vb2_fop_release(ptr noundef %file, ptr noundef null) #14
  tail call void @mutex_unlock(ptr noundef %video_lock) #14
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_is_singular(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aspeed_video_set_resolution(ptr noundef %video) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %active_timings = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 7
  %0 = ptrtoint ptr %active_timings to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %active_timings, align 1
  %height = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %height, align 1
  %mul = mul i32 %3, %1
  tail call fastcc void @aspeed_video_calc_compressed_size(ptr noundef %video, i32 noundef %mul)
  %4 = ptrtoint ptr %active_timings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %active_timings, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1680, i32 %5)
  %cmp = icmp eq i32 %5, 1680
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %height, align 1
  %or = or i32 %7, 113246208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !226
  tail call void @arm_heavy_mb() #14
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #14
  %9 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %video, align 8
  %add.ptr.i = getelementptr i8, ptr %10, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_write.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_set_resolution, %if.then.i)) #14
          to label %aspeed_video_write.exit [label %if.then.i], !srcloc !228

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %13 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %video, align 8
  %add.ptr5.i = getelementptr i8, ptr %14, i32 48
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #14, !srcloc !229
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !230
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_write.__UNIQUE_ID_ddebug300, ptr noundef %12, ptr noundef nonnull @.str.17, i32 noundef 48, i32 noundef %16) #14
  br label %aspeed_video_write.exit

aspeed_video_write.exit:                          ; preds = %if.then.i, %if.then
  %17 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %height, align 4
  %mul6 = mul i32 %18, 48
  %add = add i32 %mul6, %mul
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %shl = shl i32 %5, 16
  %19 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %height, align 1
  %or9 = or i32 %20, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !226
  tail call void @arm_heavy_mb() #14
  %21 = tail call i32 @llvm.bswap.i32(i32 %or9) #14
  %22 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %video, align 8
  %add.ptr.i232 = getelementptr i8, ptr %23, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i232, i32 %21) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_write.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_set_resolution, %if.then.i235)) #14
          to label %if.end [label %if.then.i235], !srcloc !228

if.then.i235:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i233 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %24 = ptrtoint ptr %dev.i233 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i233, align 4
  %26 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %video, align 8
  %add.ptr5.i234 = getelementptr i8, ptr %27, i32 48
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i234) #14, !srcloc !229
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !230
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_write.__UNIQUE_ID_ddebug300, ptr noundef %25, ptr noundef nonnull @.str.17, i32 noundef 48, i32 noundef %29) #14
  br label %if.end

if.end:                                           ; preds = %if.then.i235, %if.else, %aspeed_video_write.exit
  %size.0 = phi i32 [ %add, %aspeed_video_write.exit ], [ %mul, %if.else ], [ %mul, %if.then.i235 ]
  %30 = ptrtoint ptr %active_timings to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %active_timings, align 1
  %shl11 = shl i32 %31, 16
  %32 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %height, align 1
  %or13 = or i32 %shl11, %33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !226
  tail call void @arm_heavy_mb() #14
  %34 = tail call i32 @llvm.bswap.i32(i32 %or13) #14
  %35 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %video, align 8
  %add.ptr.i237 = getelementptr i8, ptr %36, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i237, i32 %34) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_write.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_set_resolution, %if.then.i240)) #14
          to label %aspeed_video_write.exit241 [label %if.then.i240], !srcloc !228

if.then.i240:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i238 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %37 = ptrtoint ptr %dev.i238 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i238, align 4
  %39 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %video, align 8
  %add.ptr5.i239 = getelementptr i8, ptr %40, i32 52
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i239) #14, !srcloc !229
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !230
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_write.__UNIQUE_ID_ddebug300, ptr noundef %38, ptr noundef nonnull @.str.17, i32 noundef 52, i32 noundef %42) #14
  br label %aspeed_video_write.exit241

aspeed_video_write.exit241:                       ; preds = %if.then.i240, %if.end
  %43 = ptrtoint ptr %active_timings to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %active_timings, align 1
  %mul15 = shl i32 %44, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !226
  tail call void @arm_heavy_mb() #14
  %45 = tail call i32 @llvm.bswap.i32(i32 %mul15) #14
  %46 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %video, align 8
  %add.ptr.i242 = getelementptr i8, ptr %47, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i242, i32 %45) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_write.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_set_resolution, %if.then.i245)) #14
          to label %aspeed_video_write.exit246 [label %if.then.i245], !srcloc !228

if.then.i245:                                     ; preds = %aspeed_video_write.exit241
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i243 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %48 = ptrtoint ptr %dev.i243 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i243, align 4
  %50 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %video, align 8
  %add.ptr5.i244 = getelementptr i8, ptr %51, i32 72
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i244) #14, !srcloc !229
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !230
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_write.__UNIQUE_ID_ddebug300, ptr noundef %49, ptr noundef nonnull @.str.17, i32 noundef 72, i32 noundef %53) #14
  br label %aspeed_video_write.exit246

aspeed_video_write.exit246:                       ; preds = %if.then.i245, %aspeed_video_write.exit241
  call void @__sanitizer_cov_trace_const_cmp4(i32 786432, i32 %size.0)
  %cmp16 = icmp ult i32 %size.0, 786432
  br i1 %cmp16, label %if.then17, label %if.else121

if.then17:                                        ; preds = %aspeed_video_write.exit246
  %frame_left = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 28
  %54 = ptrtoint ptr %frame_left to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %frame_left, align 8
  %frame_right = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 29
  %56 = ptrtoint ptr %frame_right to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %frame_right, align 4
  %sub35 = shl i32 %55, 16
  %shl36 = add i32 %sub35, 536805376
  %and37 = and i32 %shl36, 536805376
  %and63 = and i32 %57, 8191
  %or64 = or i32 %and63, %and37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !226
  tail call void @arm_heavy_mb() #14
  %58 = tail call i32 @llvm.bswap.i32(i32 %or64) #14
  %59 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %video, align 8
  %add.ptr.i247 = getelementptr i8, ptr %60, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i247, i32 %58) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_write.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_set_resolution, %if.then.i250)) #14
          to label %aspeed_video_write.exit251 [label %if.then.i250], !srcloc !228

if.then.i250:                                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i248 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %61 = ptrtoint ptr %dev.i248 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i248, align 4
  %63 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %video, align 8
  %add.ptr5.i249 = getelementptr i8, ptr %64, i32 12
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i249) #14, !srcloc !229
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !230
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_write.__UNIQUE_ID_ddebug300, ptr noundef %62, ptr noundef nonnull @.str.17, i32 noundef 12, i32 noundef %66) #14
  br label %aspeed_video_write.exit251

aspeed_video_write.exit251:                       ; preds = %if.then.i250, %if.then17
  %frame_top = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 30
  %67 = ptrtoint ptr %frame_top to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %frame_top, align 8
  %frame_bottom = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 27
  %69 = ptrtoint ptr %frame_bottom to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %frame_bottom, align 4
  %add98 = add i32 %70, 1
  %shl89 = shl i32 %68, 16
  %and90 = and i32 %shl89, 536805376
  %and119 = and i32 %add98, 8191
  %or120 = or i32 %and119, %and90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !226
  tail call void @arm_heavy_mb() #14
  %71 = tail call i32 @llvm.bswap.i32(i32 %or120) #14
  %72 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %video, align 8
  %add.ptr.i252 = getelementptr i8, ptr %73, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i252, i32 %71) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_write.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_set_resolution, %if.then.i255)) #14
          to label %aspeed_video_write.exit256 [label %if.then.i255], !srcloc !228

if.then.i255:                                     ; preds = %aspeed_video_write.exit251
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i253 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %74 = ptrtoint ptr %dev.i253 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev.i253, align 4
  %76 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %video, align 8
  %add.ptr5.i254 = getelementptr i8, ptr %77, i32 16
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i254) #14, !srcloc !229
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !230
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_write.__UNIQUE_ID_ddebug300, ptr noundef %75, ptr noundef nonnull @.str.17, i32 noundef 16, i32 noundef %79) #14
  br label %aspeed_video_write.exit256

aspeed_video_write.exit256:                       ; preds = %if.then.i255, %aspeed_video_write.exit251
  %80 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %video, align 8
  %add.ptr.i257 = getelementptr i8, ptr %81, i32 8
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i257) #14, !srcloc !229
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !232
  %or.i = or i32 %83, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !233
  tail call void @arm_heavy_mb() #14
  %84 = tail call i32 @llvm.bswap.i32(i32 %or.i) #14
  %85 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %video, align 8
  %add.ptr3.i = getelementptr i8, ptr %86, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %84) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_update.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_set_resolution, %if.then.i259)) #14
          to label %if.end122 [label %if.then.i259], !srcloc !228

if.then.i259:                                     ; preds = %aspeed_video_write.exit256
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i258 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %87 = ptrtoint ptr %dev.i258 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev.i258, align 4
  %89 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %video, align 8
  %add.ptr12.i = getelementptr i8, ptr %90, i32 8
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #14, !srcloc !229
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !234
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_update.__UNIQUE_ID_ddebug298, ptr noundef %88, ptr noundef nonnull @.str.24, i32 noundef 8, i32 noundef %83, i32 noundef %92) #14
  br label %if.end122

if.else121:                                       ; preds = %aspeed_video_write.exit246
  call void @__sanitizer_cov_trace_pc() #16
  %93 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %video, align 8
  %add.ptr.i260 = getelementptr i8, ptr %94, i32 8
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i260) #14, !srcloc !229
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !232
  %or.i261 = or i32 %96, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !233
  tail call void @arm_heavy_mb() #14
  %97 = tail call i32 @llvm.bswap.i32(i32 %or.i261) #14
  %98 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %video, align 8
  %add.ptr3.i262 = getelementptr i8, ptr %99, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i262, i32 %97) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_update.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_set_resolution, %if.then.i265)) #14
          to label %if.end122 [label %if.then.i265], !srcloc !228

if.then.i265:                                     ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i263 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %100 = ptrtoint ptr %dev.i263 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev.i263, align 4
  %102 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %video, align 8
  %add.ptr12.i264 = getelementptr i8, ptr %103, i32 8
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i264) #14, !srcloc !229
  %105 = tail call i32 @llvm.bswap.i32(i32 %104) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !234
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_update.__UNIQUE_ID_ddebug298, ptr noundef %101, ptr noundef nonnull @.str.24, i32 noundef 8, i32 noundef %96, i32 noundef %105) #14
  br label %if.end122

if.end122:                                        ; preds = %if.then.i265, %if.else121, %if.then.i259, %aspeed_video_write.exit256
  %mul123 = shl i32 %size.0, 2
  %srcs = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 22
  %106 = ptrtoint ptr %srcs to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %srcs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul123, i32 %107)
  %cmp125.not = icmp eq i32 %mul123, %107
  br i1 %cmp125.not, label %if.end122.cleanup_crit_edge, label %if.then126

if.end122.cleanup_crit_edge:                      ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then126:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool130.not = icmp eq i32 %107, 0
  br i1 %tobool130.not, label %if.then126.if.end134_crit_edge, label %if.then131

if.then126.if.end134_crit_edge:                   ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end134

if.then131:                                       ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i267 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %108 = ptrtoint ptr %dev.i267 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev.i267, align 4
  %virt.i = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 22, i32 0, i32 2
  %110 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %virt.i, align 4
  %dma.i = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 22, i32 0, i32 1
  %112 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %109, i32 noundef %107, ptr noundef %111, i32 noundef %113, i32 noundef 0) #14
  %114 = ptrtoint ptr %srcs to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %srcs, align 4
  %115 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %dma.i, align 4
  %116 = ptrtoint ptr %virt.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %virt.i, align 4
  br label %if.end134

if.end134:                                        ; preds = %if.then131, %if.then126.if.end134_crit_edge
  %arrayidx136 = getelementptr %struct.aspeed_video, ptr %video, i32 0, i32 22, i32 1
  %117 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx136, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool138.not = icmp eq i32 %118, 0
  br i1 %tobool138.not, label %if.end134.if.end142_crit_edge, label %if.then139

if.end134.if.end142_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end142

if.then139:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i268 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %119 = ptrtoint ptr %dev.i268 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev.i268, align 4
  %virt.i269 = getelementptr %struct.aspeed_video, ptr %video, i32 0, i32 22, i32 1, i32 2
  %121 = ptrtoint ptr %virt.i269 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %virt.i269, align 4
  %dma.i270 = getelementptr %struct.aspeed_video, ptr %video, i32 0, i32 22, i32 1, i32 1
  %123 = ptrtoint ptr %dma.i270 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %dma.i270, align 4
  tail call void @dma_free_attrs(ptr noundef %120, i32 noundef %118, ptr noundef %122, i32 noundef %124, i32 noundef 0) #14
  %125 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %arrayidx136, align 4
  %126 = ptrtoint ptr %dma.i270 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %dma.i270, align 4
  %127 = ptrtoint ptr %virt.i269 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr null, ptr %virt.i269, align 4
  br label %if.end142

if.end142:                                        ; preds = %if.then139, %if.end134.if.end142_crit_edge
  %dev.i271 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %128 = ptrtoint ptr %dev.i271 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev.i271, align 4
  %dma.i272 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 22, i32 0, i32 1
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %129, i32 noundef %mul123, ptr noundef %dma.i272, i32 noundef 3264, i32 noundef 0) #14
  %virt.i273 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 22, i32 0, i32 2
  %130 = ptrtoint ptr %virt.i273 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %call.i.i, ptr %virt.i273, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end142.do.end160_crit_edge, label %if.end146

if.end142.do.end160_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end160

if.end146:                                        ; preds = %if.end142
  %131 = ptrtoint ptr %srcs to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %mul123, ptr %srcs, align 4
  %132 = ptrtoint ptr %dev.i271 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev.i271, align 4
  %dma.i275 = getelementptr %struct.aspeed_video, ptr %video, i32 0, i32 22, i32 1, i32 1
  %call.i.i276 = tail call ptr @dma_alloc_attrs(ptr noundef %133, i32 noundef %mul123, ptr noundef %dma.i275, i32 noundef 3264, i32 noundef 0) #14
  %virt.i277 = getelementptr %struct.aspeed_video, ptr %video, i32 0, i32 22, i32 1, i32 2
  %134 = ptrtoint ptr %virt.i277 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %call.i.i276, ptr %virt.i277, align 4
  %tobool.not.i278 = icmp eq ptr %call.i.i276, null
  br i1 %tobool.not.i278, label %if.end146.do.end160_crit_edge, label %if.end151

if.end146.do.end160_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end160

if.end151:                                        ; preds = %if.end146
  %135 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %mul123, ptr %arrayidx136, align 4
  %136 = ptrtoint ptr %dma.i272 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %dma.i272, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !226
  tail call void @arm_heavy_mb() #14
  %138 = tail call i32 @llvm.bswap.i32(i32 %137) #14
  %139 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %video, align 8
  %add.ptr.i281 = getelementptr i8, ptr %140, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i281, i32 %138) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_write.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_set_resolution, %if.then.i284)) #14
          to label %aspeed_video_write.exit285 [label %if.then.i284], !srcloc !228

if.then.i284:                                     ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #16
  %141 = ptrtoint ptr %dev.i271 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev.i271, align 4
  %143 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %video, align 8
  %add.ptr5.i283 = getelementptr i8, ptr %144, i32 68
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i283) #14, !srcloc !229
  %146 = tail call i32 @llvm.bswap.i32(i32 %145) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !230
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_write.__UNIQUE_ID_ddebug300, ptr noundef %142, ptr noundef nonnull @.str.17, i32 noundef 68, i32 noundef %146) #14
  br label %aspeed_video_write.exit285

aspeed_video_write.exit285:                       ; preds = %if.then.i284, %if.end151
  %147 = ptrtoint ptr %dma.i275 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %dma.i275, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !226
  tail call void @arm_heavy_mb() #14
  %149 = tail call i32 @llvm.bswap.i32(i32 %148) #14
  %150 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %video, align 8
  %add.ptr.i286 = getelementptr i8, ptr %151, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i286, i32 %149) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_write.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_set_resolution, %if.then.i289)) #14
          to label %cleanup [label %if.then.i289], !srcloc !228

if.then.i289:                                     ; preds = %aspeed_video_write.exit285
  call void @__sanitizer_cov_trace_pc() #16
  %152 = ptrtoint ptr %dev.i271 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dev.i271, align 4
  %154 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %video, align 8
  %add.ptr5.i288 = getelementptr i8, ptr %155, i32 76
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i288) #14, !srcloc !229
  %157 = tail call i32 @llvm.bswap.i32(i32 %156) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !230
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_write.__UNIQUE_ID_ddebug300, ptr noundef %153, ptr noundef nonnull @.str.17, i32 noundef 76, i32 noundef %157) #14
  br label %cleanup

do.end160:                                        ; preds = %if.end146.do.end160_crit_edge, %if.end142.do.end160_crit_edge
  %158 = ptrtoint ptr %dev.i271 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dev.i271, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %159, ptr noundef nonnull @.str.67) #17
  %160 = ptrtoint ptr %srcs to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %srcs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %tobool164.not = icmp eq i32 %161, 0
  br i1 %tobool164.not, label %do.end160.cleanup_crit_edge, label %if.then165

do.end160.cleanup_crit_edge:                      ; preds = %do.end160
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then165:                                       ; preds = %do.end160
  call void @__sanitizer_cov_trace_pc() #16
  %162 = ptrtoint ptr %dev.i271 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dev.i271, align 4
  %164 = ptrtoint ptr %virt.i273 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %virt.i273, align 4
  %166 = ptrtoint ptr %dma.i272 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %dma.i272, align 4
  tail call void @dma_free_attrs(ptr noundef %163, i32 noundef %161, ptr noundef %165, i32 noundef %167, i32 noundef 0) #14
  %168 = ptrtoint ptr %srcs to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 0, ptr %srcs, align 4
  %169 = ptrtoint ptr %dma.i272 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 0, ptr %dma.i272, align 4
  %170 = ptrtoint ptr %virt.i273 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr null, ptr %virt.i273, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then165, %do.end160.cleanup_crit_edge, %if.then.i289, %aspeed_video_write.exit285, %if.end122.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aspeed_video_calc_compressed_size(ptr nocapture noundef %video, i32 noundef %frame_size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %div34 = lshr i32 %frame_size, 1
  %max_compressed_size1 = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 21
  %0 = ptrtoint ptr %max_compressed_size1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %max_compressed_size1, align 8
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.inc.7.for.cond2.preheader_crit_edge, %entry
  %i.039 = phi i32 [ 0, %entry ], [ %inc14, %for.inc.7.for.cond2.preheader_crit_edge ]
  %compression_buffer_size_reg.038 = phi i32 [ 0, %entry ], [ %compression_buffer_size_reg.2.7, %for.inc.7.for.cond2.preheader_crit_edge ]
  %shl = shl i32 4, %i.039
  %shl10 = shl i32 %i.039, 3
  %mul = shl i32 %shl, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %div34)
  %cmp6 = icmp ult i32 %mul, %div34
  br i1 %cmp6, label %for.cond2.preheader.for.inc_crit_edge, label %if.end

for.cond2.preheader.for.inc_crit_edge:            ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end:                                           ; preds = %for.cond2.preheader
  %1 = ptrtoint ptr %max_compressed_size1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %max_compressed_size1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %2)
  %cmp8 = icmp ult i32 %mul, %2
  br i1 %cmp8, label %if.then9, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %max_compressed_size1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %mul, ptr %max_compressed_size1, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %if.end.for.inc_crit_edge, %for.cond2.preheader.for.inc_crit_edge
  %compression_buffer_size_reg.2 = phi i32 [ %compression_buffer_size_reg.038, %for.cond2.preheader.for.inc_crit_edge ], [ %shl10, %if.then9 ], [ %compression_buffer_size_reg.038, %if.end.for.inc_crit_edge ]
  %mul.1 = shl i32 %shl, 11
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.1, i32 %div34)
  %cmp6.1 = icmp ult i32 %mul.1, %div34
  br i1 %cmp6.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %4 = ptrtoint ptr %max_compressed_size1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_compressed_size1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.1, i32 %5)
  %cmp8.1 = icmp ult i32 %mul.1, %5
  br i1 %cmp8.1, label %if.then9.1, label %if.end.1.for.inc.1_crit_edge

if.end.1.for.inc.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

if.then9.1:                                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #16
  %or.1 = or i32 %shl10, 1
  %6 = ptrtoint ptr %max_compressed_size1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mul.1, ptr %max_compressed_size1, align 8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then9.1, %if.end.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %compression_buffer_size_reg.2.1 = phi i32 [ %compression_buffer_size_reg.2, %for.inc.for.inc.1_crit_edge ], [ %or.1, %if.then9.1 ], [ %compression_buffer_size_reg.2, %if.end.1.for.inc.1_crit_edge ]
  %mul.2 = shl i32 %shl, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.2, i32 %div34)
  %cmp6.2 = icmp ult i32 %mul.2, %div34
  br i1 %cmp6.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  %7 = ptrtoint ptr %max_compressed_size1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_compressed_size1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.2, i32 %8)
  %cmp8.2 = icmp ult i32 %mul.2, %8
  br i1 %cmp8.2, label %if.then9.2, label %if.end.2.for.inc.2_crit_edge

if.end.2.for.inc.2_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2

if.then9.2:                                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #16
  %or.2 = or i32 %shl10, 2
  %9 = ptrtoint ptr %max_compressed_size1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mul.2, ptr %max_compressed_size1, align 8
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then9.2, %if.end.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %compression_buffer_size_reg.2.2 = phi i32 [ %compression_buffer_size_reg.2.1, %for.inc.1.for.inc.2_crit_edge ], [ %or.2, %if.then9.2 ], [ %compression_buffer_size_reg.2.1, %if.end.2.for.inc.2_crit_edge ]
  %mul.3 = shl i32 %shl, 13
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.3, i32 %div34)
  %cmp6.3 = icmp ult i32 %mul.3, %div34
  br i1 %cmp6.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  %10 = ptrtoint ptr %max_compressed_size1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_compressed_size1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.3, i32 %11)
  %cmp8.3 = icmp ult i32 %mul.3, %11
  br i1 %cmp8.3, label %if.then9.3, label %if.end.3.for.inc.3_crit_edge

if.end.3.for.inc.3_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.3

if.then9.3:                                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #16
  %or.3 = or i32 %shl10, 3
  %12 = ptrtoint ptr %max_compressed_size1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul.3, ptr %max_compressed_size1, align 8
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then9.3, %if.end.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %compression_buffer_size_reg.2.3 = phi i32 [ %compression_buffer_size_reg.2.2, %for.inc.2.for.inc.3_crit_edge ], [ %or.3, %if.then9.3 ], [ %compression_buffer_size_reg.2.2, %if.end.3.for.inc.3_crit_edge ]
  %mul.4 = shl i32 %shl, 14
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.4, i32 %div34)
  %cmp6.4 = icmp ult i32 %mul.4, %div34
  br i1 %cmp6.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.4

if.end.4:                                         ; preds = %for.inc.3
  %13 = ptrtoint ptr %max_compressed_size1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_compressed_size1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.4, i32 %14)
  %cmp8.4 = icmp ult i32 %mul.4, %14
  br i1 %cmp8.4, label %if.then9.4, label %if.end.4.for.inc.4_crit_edge

if.end.4.for.inc.4_crit_edge:                     ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.4

if.then9.4:                                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #16
  %or.4 = or i32 %shl10, 4
  %15 = ptrtoint ptr %max_compressed_size1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul.4, ptr %max_compressed_size1, align 8
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then9.4, %if.end.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %compression_buffer_size_reg.2.4 = phi i32 [ %compression_buffer_size_reg.2.3, %for.inc.3.for.inc.4_crit_edge ], [ %or.4, %if.then9.4 ], [ %compression_buffer_size_reg.2.3, %if.end.4.for.inc.4_crit_edge ]
  %mul.5 = shl i32 %shl, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.5, i32 %div34)
  %cmp6.5 = icmp ult i32 %mul.5, %div34
  br i1 %cmp6.5, label %for.inc.4.for.inc.5_crit_edge, label %if.end.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.5

if.end.5:                                         ; preds = %for.inc.4
  %16 = ptrtoint ptr %max_compressed_size1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_compressed_size1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.5, i32 %17)
  %cmp8.5 = icmp ult i32 %mul.5, %17
  br i1 %cmp8.5, label %if.then9.5, label %if.end.5.for.inc.5_crit_edge

if.end.5.for.inc.5_crit_edge:                     ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.5

if.then9.5:                                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #16
  %or.5 = or i32 %shl10, 5
  %18 = ptrtoint ptr %max_compressed_size1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul.5, ptr %max_compressed_size1, align 8
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then9.5, %if.end.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %compression_buffer_size_reg.2.5 = phi i32 [ %compression_buffer_size_reg.2.4, %for.inc.4.for.inc.5_crit_edge ], [ %or.5, %if.then9.5 ], [ %compression_buffer_size_reg.2.4, %if.end.5.for.inc.5_crit_edge ]
  %mul.6 = shl i32 %shl, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.6, i32 %div34)
  %cmp6.6 = icmp ult i32 %mul.6, %div34
  br i1 %cmp6.6, label %for.inc.5.for.inc.6_crit_edge, label %if.end.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.6

if.end.6:                                         ; preds = %for.inc.5
  %19 = ptrtoint ptr %max_compressed_size1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_compressed_size1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.6, i32 %20)
  %cmp8.6 = icmp ult i32 %mul.6, %20
  br i1 %cmp8.6, label %if.then9.6, label %if.end.6.for.inc.6_crit_edge

if.end.6.for.inc.6_crit_edge:                     ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.6

if.then9.6:                                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #16
  %or.6 = or i32 %shl10, 6
  %21 = ptrtoint ptr %max_compressed_size1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul.6, ptr %max_compressed_size1, align 8
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then9.6, %if.end.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %compression_buffer_size_reg.2.6 = phi i32 [ %compression_buffer_size_reg.2.5, %for.inc.5.for.inc.6_crit_edge ], [ %or.6, %if.then9.6 ], [ %compression_buffer_size_reg.2.5, %if.end.6.for.inc.6_crit_edge ]
  %mul.7 = shl i32 %shl, 17
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.7, i32 %div34)
  %cmp6.7 = icmp ult i32 %mul.7, %div34
  br i1 %cmp6.7, label %for.inc.6.for.inc.7_crit_edge, label %if.end.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.7

if.end.7:                                         ; preds = %for.inc.6
  %22 = ptrtoint ptr %max_compressed_size1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_compressed_size1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.7, i32 %23)
  %cmp8.7 = icmp ult i32 %mul.7, %23
  br i1 %cmp8.7, label %if.then9.7, label %if.end.7.for.inc.7_crit_edge

if.end.7.for.inc.7_crit_edge:                     ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.7

if.then9.7:                                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #16
  %or.7 = or i32 %shl10, 7
  %24 = ptrtoint ptr %max_compressed_size1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul.7, ptr %max_compressed_size1, align 8
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then9.7, %if.end.7.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  %compression_buffer_size_reg.2.7 = phi i32 [ %compression_buffer_size_reg.2.6, %for.inc.6.for.inc.7_crit_edge ], [ %or.7, %if.then9.7 ], [ %compression_buffer_size_reg.2.6, %if.end.7.for.inc.7_crit_edge ]
  %inc14 = add nuw nsw i32 %i.039, 1
  %exitcond.not = icmp eq i32 %inc14, 6
  br i1 %exitcond.not, label %for.end15, label %for.inc.7.for.cond2.preheader_crit_edge

for.inc.7.for.cond2.preheader_crit_edge:          ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond2.preheader

for.end15:                                        ; preds = %for.inc.7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !226
  tail call void @arm_heavy_mb() #14
  %25 = tail call i32 @llvm.bswap.i32(i32 %compression_buffer_size_reg.2.7) #14
  %26 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %video, align 8
  %add.ptr.i = getelementptr i8, ptr %27, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %25) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_write.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_calc_compressed_size, %if.then.i)) #14
          to label %aspeed_video_write.exit [label %if.then.i], !srcloc !228

if.then.i:                                        ; preds = %for.end15
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  %30 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %video, align 8
  %add.ptr5.i = getelementptr i8, ptr %31, i32 88
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #14, !srcloc !229
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !230
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_write.__UNIQUE_ID_ddebug300, ptr noundef %29, ptr noundef nonnull @.str.17, i32 noundef 88, i32 noundef %33) #14
  br label %aspeed_video_write.exit

aspeed_video_write.exit:                          ; preds = %if.then.i, %for.end15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_calc_compressed_size.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_calc_compressed_size, %if.then18)) #14
          to label %do.end [label %if.then18], !srcloc !228

if.then18:                                        ; preds = %aspeed_video_write.exit
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.aspeed_video, ptr %video, i32 0, i32 3
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  %36 = ptrtoint ptr %max_compressed_size1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_compressed_size1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_calc_compressed_size.__UNIQUE_ID_ddebug311, ptr noundef %35, ptr noundef nonnull @.str.70, i32 noundef %37) #14
  br label %do.end

do.end:                                           ; preds = %if.then18, %aspeed_video_write.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_vb2_fop_release(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_video_querycap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str, i32 noundef 16) #14
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call2 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.71, i32 noundef 32) #14
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aspeed_video_enum_format(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %f) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1195724874, ptr %pixelformat, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_video_get_format(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef writeonly %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pix_fmt = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 6
  %2 = call ptr @memcpy(ptr %fmt, ptr %pix_fmt, i32 48)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_video_enum_input(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %inp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %0 = ptrtoint ptr %inp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %inp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %name = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 1
  %call1 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.73, i32 noundef 32) #14
  %type = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %type, align 4
  %capabilities = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 7
  %5 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %capabilities, align 4
  %v4l2_input_status = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %v4l2_input_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %v4l2_input_status, align 8
  %status = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 6
  %8 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %status, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @aspeed_video_get_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef writeonly %i) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aspeed_video_set_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, i32 noundef %i) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i)
  %tobool.not = icmp eq i32 %i, 0
  %. = select i1 %tobool.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_video_get_parm(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef writeonly %a) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %parm = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1
  %2 = ptrtoint ptr %parm to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4096, ptr %parm, align 4
  %readbuffers = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 4
  %3 = ptrtoint ptr %readbuffers to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %readbuffers, align 4
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %timeperframe to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %timeperframe, align 4
  %frame_rate = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 25
  %5 = ptrtoint ptr %frame_rate to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %frame_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %spec.select = select i1 %tobool.not, i32 60, i32 %6
  %7 = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.select, ptr %7, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_video_set_parm(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %a) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %parm = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1
  %2 = ptrtoint ptr %parm to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4096, ptr %parm, align 4
  %readbuffers = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 4
  %3 = ptrtoint ptr %readbuffers to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %readbuffers, align 4
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %timeperframe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %timeperframe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.then9_crit_edge, label %if.end

entry.if.then9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then9

if.end:                                           ; preds = %entry
  %denominator = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %denominator, align 4
  %div = udiv i32 %7, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %tobool8.not = icmp ugt i32 %5, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %div)
  %cmp = icmp ugt i32 %div, 60
  %or.cond = or i1 %tobool8.not, %cmp
  br i1 %or.cond, label %if.end.if.then9_crit_edge, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then9

if.then9:                                         ; preds = %if.end.if.then9_crit_edge, %entry.if.then9_crit_edge
  %denominator12 = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %denominator12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 60, ptr %denominator12, align 4
  %9 = ptrtoint ptr %timeperframe to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %timeperframe, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then9, %if.end.if.end16_crit_edge
  %frame_rate.1 = phi i32 [ 0, %if.then9 ], [ %div, %if.end.if.end16_crit_edge ]
  %frame_rate17 = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 25
  %10 = ptrtoint ptr %frame_rate17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %frame_rate17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %frame_rate.1)
  %cmp18.not = icmp eq i32 %11, %frame_rate.1
  br i1 %cmp18.not, label %if.end16.if.end37_crit_edge, label %do.end35

if.end16.if.end37_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37

do.end35:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %frame_rate17 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %frame_rate.1, ptr %frame_rate17, align 4
  %shl = shl nuw nsw i32 %frame_rate.1, 16
  %and36 = and i32 %shl, 16711680
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %14, i32 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !229
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !232
  %and.i = and i32 %16, -16711681
  %or.i = or i32 %and.i, %and36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !233
  tail call void @arm_heavy_mb() #14
  %17 = tail call i32 @llvm.bswap.i32(i32 %or.i) #14
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %add.ptr3.i = getelementptr i8, ptr %19, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %17) #14, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_video_update.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_video_set_parm, %if.then.i)) #14
          to label %if.end37 [label %if.then.i], !srcloc !228

if.then.i:                                        ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %add.ptr12.i = getelementptr i8, ptr %23, i32 8
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #14, !srcloc !229
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !234
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_video_update.__UNIQUE_ID_ddebug298, ptr noundef %21, ptr noundef nonnull @.str.24, i32 noundef 8, i32 noundef %16, i32 noundef %25) #14
  br label %if.end37

if.end37:                                         ; preds = %if.then.i, %do.end35, %if.end16.if.end37_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_video_enum_framesizes(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %fsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %fsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %pixel_format = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 1
  %4 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixel_format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %5)
  %cmp.not = icmp eq i32 %5, 1195724874
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %pix_fmt = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %pix_fmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pix_fmt, align 8
  %8 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %8, align 4
  %height = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  %height5 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 1
  %12 = ptrtoint ptr %height5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %height5, align 4
  %type = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 2
  %13 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_video_enum_frameintervals(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %fival) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %fival to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fival, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %width = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 2
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 4
  %detected_timings = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %detected_timings to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %detected_timings, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp eq i32 %5, %7
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %height = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 3
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %height3 = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %height3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp4.not = icmp eq i32 %9, %11
  br i1 %cmp4.not, label %if.end6, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %pixel_format = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 1
  %12 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pixel_format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %13)
  %cmp7.not = icmp eq i32 %13, 1195724874
  br i1 %cmp7.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %type = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 4
  %14 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %type, align 4
  %15 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 5
  %denominator = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 5, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 60, ptr %denominator, align 4
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %15, align 4
  %max = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 5, i32 0, i32 1
  %denominator11 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 5, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %denominator11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %denominator11, align 4
  %19 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %max, align 4
  %step = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 5, i32 0, i32 2
  %20 = load i64, ptr %max, align 4
  %21 = ptrtoint ptr %step to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 %20, ptr %step, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_video_set_dv_timings(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %timings) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %2, align 1
  %active_timings = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %active_timings to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %active_timings, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp = icmp eq i32 %4, %6
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %height = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %height, align 1
  %height3 = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %height3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %height3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp4 = icmp eq i32 %8, %10
  br i1 %cmp4, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %num_buffers.i = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 10, i32 21
  %11 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.not = icmp eq i32 %12, 0
  br i1 %cmp.i.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %13 = call ptr @memcpy(ptr %active_timings, ptr %2, i32 124)
  tail call fastcc void @aspeed_video_set_resolution(ptr noundef %1)
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %2, align 1
  %pix_fmt = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %pix_fmt to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %pix_fmt, align 8
  %height11 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %height11 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %height11, align 1
  %height13 = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 6, i32 1
  %19 = ptrtoint ptr %height13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %height13, align 4
  %max_compressed_size = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 21
  %20 = ptrtoint ptr %max_compressed_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_compressed_size, align 8
  %sizeimage = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 6, i32 5
  %22 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %sizeimage, align 4
  %23 = ptrtoint ptr %timings to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 0, ptr %timings, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_video_get_dv_timings(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef writeonly %timings) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %timings to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 0, ptr %timings, align 1
  %3 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1
  %active_timings = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 7
  %4 = call ptr @memcpy(ptr %3, ptr %active_timings, i32 124)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_video_query_dv_timings(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef writeonly %timings) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %2 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_flags, align 4
  %and = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %if.then.if.end27_crit_edge, label %if.then.cleanup29_crit_edge

if.then.cleanup29_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup29

if.then.if.end27_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.else:                                          ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 1249) #14
  %flags7 = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 19
  %7 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags7, align 4
  %9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool9.not = icmp eq i32 %9, 0
  br i1 %tobool9.not, label %if.else.if.end27_crit_edge, label %if.then10

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.then10:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %10 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %wait = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 15
  %call1257 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %11 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags7, align 4
  %13 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool15.not58 = icmp eq i32 %13, 0
  br i1 %tobool15.not58, label %if.then10.if.end22.thread53_crit_edge, label %if.then10.if.end17_crit_edge

if.then10.if.end17_crit_edge:                     ; preds = %if.then10
  br label %if.end17

if.then10.if.end22.thread53_crit_edge:            ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22.thread53

if.end17:                                         ; preds = %cleanup.if.end17_crit_edge, %if.then10.if.end17_crit_edge
  %call1259 = phi i32 [ %call12, %cleanup.if.end17_crit_edge ], [ %call1257, %if.then10.if.end17_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1259)
  %tobool18.not = icmp eq i32 %call1259, 0
  br i1 %tobool18.not, label %cleanup, label %if.end22

cleanup:                                          ; preds = %if.end17
  call void @schedule() #14
  %call12 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %14 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags7, align 4
  %16 = and i32 %15, 2
  %tobool15.not = icmp eq i32 %16, 0
  br i1 %tobool15.not, label %cleanup.if.end22.thread53_crit_edge, label %cleanup.if.end17_crit_edge

cleanup.if.end17_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

cleanup.if.end22.thread53_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22.thread53

if.end22.thread53:                                ; preds = %cleanup.if.end22.thread53_crit_edge, %if.then10.if.end22.thread53_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %if.end27

if.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %cleanup29

if.end27:                                         ; preds = %if.end22.thread53, %if.else.if.end27_crit_edge, %if.then.if.end27_crit_edge
  %17 = ptrtoint ptr %timings to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 0, ptr %timings, align 1
  %18 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1
  %detected_timings = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 8
  %19 = call ptr @memcpy(ptr %18, ptr %detected_timings, i32 124)
  %v4l2_input_status = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %v4l2_input_status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %v4l2_input_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool28.not = icmp eq i32 %21, 0
  %cond = select i1 %tobool28.not, i32 0, i32 -67
  br label %cleanup29

cleanup29:                                        ; preds = %if.end27, %if.end22, %if.then.cleanup29_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end27 ], [ -11, %if.then.cleanup29_crit_edge ], [ -4, %if.end22 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_video_enum_dv_timings(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr noundef %timings) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @v4l2_enum_dv_timings_cap(ptr noundef %timings, ptr noundef nonnull @aspeed_video_timings_cap, ptr noundef null, ptr noundef null) #14
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aspeed_video_dv_timings_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef writeonly %cap) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %cap, ptr @aspeed_video_timings_cap, i32 144)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_video_sub_event(ptr noundef %fh, ptr noundef %sub) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sub, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cond = icmp eq i32 %1, 5
  br i1 %cond, label %sw.bb, label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 @v4l2_src_change_event_subscribe(ptr noundef %fh, ptr noundef %sub) #14
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call i32 @v4l2_ctrl_subscribe_event(ptr noundef %fh, ptr noundef %sub) #14
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb
  %retval.0 = phi i32 [ %call, %sw.bb ], [ %call1, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_enum_dv_timings_cap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_src_change_event_subscribe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_video_proc_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @aspeed_video_debugfs_show, ptr noundef %1) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_video_debugfs_show(ptr noundef %s, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.74) #14
  %v4l2_input_status = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %v4l2_input_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %v4l2_input_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %cond = select i1 %tobool.not, ptr @.str.78, ptr @.str.77
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, ptr noundef nonnull %cond) #14
  %pix_fmt = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %pix_fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pix_fmt, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80, i32 noundef %5) #14
  %height = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.81, i32 noundef %7) #14
  %frame_rate = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 25
  %8 = ptrtoint ptr %frame_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frame_rate, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.82, i32 noundef %9) #14
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.74) #14
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.83) #14
  %sequence = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 20
  %10 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sequence, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.84, i32 noundef %11) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86) #14
  %duration = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 31, i32 2
  %12 = ptrtoint ptr %duration to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %duration, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.88, i32 noundef %13) #14
  %duration_min = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 31, i32 3
  %14 = ptrtoint ptr %duration_min to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %duration_min, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.89, i32 noundef %15) #14
  %duration_max = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 31, i32 4
  %16 = ptrtoint ptr %duration_max to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %duration_max, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.90, i32 noundef %17) #14
  %totaltime = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 31, i32 1
  %18 = ptrtoint ptr %totaltime to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %totaltime, align 8
  %20 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sequence, align 4
  %div = udiv i32 %19, %21
  %div6 = udiv i32 1000, %div
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.91, i32 noundef %div6) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !23, !25, !26, !27, !28, !30, !31, !32, !33, !34, !35, !36, !38, !40, !41, !42, !43, !45, !47, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !89, !90, !91, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !114, !116, !118, !120, !121, !122, !123, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !142, !144, !145, !146, !148, !150, !151, !152, !153, !155, !156, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213}
!llvm.named.register.sp = !{!215}
!llvm.module.flags = !{!216, !217, !218, !219, !220, !221, !222, !223}
!llvm.ident = !{!224}

!0 = !{ptr @__initcall__kmod_aspeed_video__368_1876_aspeed_video_driver_init6, !1, !"__initcall__kmod_aspeed_video__368_1876_aspeed_video_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/aspeed-video.c", i32 1876, i32 1}
!2 = !{ptr @__exitcall_aspeed_video_driver_exit, !1, !"__exitcall_aspeed_video_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description369, !4, !"__UNIQUE_ID_description369", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/aspeed-video.c", i32 1878, i32 1}
!5 = !{ptr @__UNIQUE_ID_author370, !6, !"__UNIQUE_ID_author370", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/aspeed-video.c", i32 1879, i32 1}
!7 = !{ptr @__UNIQUE_ID_file371, !8, !"__UNIQUE_ID_file371", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/aspeed-video.c", i32 1880, i32 1}
!9 = !{ptr @__UNIQUE_ID_license372, !8, !"__UNIQUE_ID_license372", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/aspeed-video.c", i32 1869, i32 11}
!12 = !{ptr @aspeed_video_driver, !13, !"aspeed_video_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/aspeed-video.c", i32 1867, i32 31}
!14 = !{ptr @aspeed_video_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/aspeed-video.c", i32 1816, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @aspeed_video_probe.__key.2, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/media/platform/aspeed-video.c", i32 1817, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @aspeed_video_probe.__key.4, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/aspeed-video.c", i32 1818, i32 2}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @aspeed_video_probe.__key.6, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/media/platform/aspeed-video.c", i32 1819, i32 2}
!25 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @aspeed_video_probe.__key.8, !24, !"__key", i1 false, i1 false}
!27 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/aspeed-video.c", i32 1835, i32 3}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @aspeed_video_probe._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @aspeed_video_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @aspeed_video_resolution_work.ev, !37, !"ev", i1 false, i1 false}
!37 = !{!"../drivers/media/platform/aspeed-video.c", i32 1393, i32 34}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/platform/aspeed-video.c", i32 476, i32 2}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @aspeed_video_write.__UNIQUE_ID_ddebug300, !39, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../drivers/media/platform/aspeed-video.c", i32 814, i32 4}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/platform/aspeed-video.c", i32 828, i32 4}
!47 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @aspeed_video_get_resolution.__UNIQUE_ID_ddebug313, !46, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/platform/aspeed-video.c", i32 842, i32 4}
!51 = !{ptr @aspeed_video_get_resolution.__UNIQUE_ID_ddebug314, !50, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/platform/aspeed-video.c", i32 876, i32 3}
!54 = !{ptr @aspeed_video_get_resolution.__UNIQUE_ID_ddebug315, !53, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/platform/aspeed-video.c", i32 893, i32 2}
!57 = !{ptr @aspeed_video_get_resolution.__UNIQUE_ID_ddebug316, !56, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/platform/aspeed-video.c", i32 461, i32 2}
!60 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @aspeed_video_update.__UNIQUE_ID_ddebug298, !59, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/platform/aspeed-video.c", i32 469, i32 2}
!64 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @aspeed_video_read.__UNIQUE_ID_ddebug299, !63, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/platform/aspeed-video.c", i32 498, i32 3}
!68 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @aspeed_video_start_frame.__UNIQUE_ID_ddebug305, !67, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/platform/aspeed-video.c", i32 504, i32 3}
!72 = !{ptr @aspeed_video_start_frame.__UNIQUE_ID_ddebug306, !71, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/platform/aspeed-video.c", i32 513, i32 3}
!75 = !{ptr @aspeed_video_start_frame.__UNIQUE_ID_ddebug308, !74, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/aspeed-video.c", i32 1723, i32 3}
!78 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @aspeed_video_init._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @aspeed_video_init._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/platform/aspeed-video.c", i32 1730, i32 3}
!83 = !{ptr @aspeed_video_init._entry.33, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @aspeed_video_init._entry_ptr.35, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/aspeed-video.c", i32 1734, i32 34}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/platform/aspeed-video.c", i32 1736, i32 3}
!89 = !{ptr @aspeed_video_init._entry.37, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @aspeed_video_init._entry_ptr.39, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/platform/aspeed-video.c", i32 1744, i32 34}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/platform/aspeed-video.c", i32 1746, i32 3}
!95 = !{ptr @aspeed_video_init._entry.41, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @aspeed_video_init._entry_ptr.43, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/platform/aspeed-video.c", i32 1759, i32 3}
!99 = !{ptr @aspeed_video_init._entry.44, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @aspeed_video_init._entry_ptr.46, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/platform/aspeed-video.c", i32 1765, i32 3}
!103 = !{ptr @aspeed_video_init._entry.47, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @aspeed_video_init._entry_ptr.49, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/platform/aspeed-video.c", i32 593, i32 2}
!107 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @aspeed_video_irq_res_change.__UNIQUE_ID_ddebug309, !106, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!109 = distinct !{null, !110, !"__already_done", i1 false, i1 false}
!110 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!111 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @aspeed_video_jpeg_header, !113, !"aspeed_video_jpeg_header", i1 false, i1 false}
!113 = !{!"../drivers/media/platform/aspeed-video.c", i32 281, i32 18}
!114 = !{ptr @aspeed_video_jpeg_dct, !115, !"aspeed_video_jpeg_dct", i1 false, i1 false}
!115 = !{!"../drivers/media/platform/aspeed-video.c", i32 309, i32 18}
!116 = !{ptr @aspeed_video_jpeg_quant, !117, !"aspeed_video_jpeg_quant", i1 false, i1 false}
!117 = !{!"../drivers/media/platform/aspeed-video.c", i32 286, i32 18}
!118 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/platform/aspeed-video.c", i32 1646, i32 3}
!120 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @aspeed_video_setup_video._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @aspeed_video_setup_video._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @aspeed_video_setup_video._key, !124, !"_key", i1 false, i1 false}
!124 = !{!"../drivers/media/platform/aspeed-video.c", i32 1650, i32 2}
!125 = !{ptr @.str.55, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/platform/aspeed-video.c", i32 1664, i32 3}
!128 = !{ptr @aspeed_video_setup_video._entry.56, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @aspeed_video_setup_video._entry_ptr.58, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.60, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/platform/aspeed-video.c", i32 1686, i32 3}
!132 = !{ptr @aspeed_video_setup_video._entry.59, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @aspeed_video_setup_video._entry_ptr.61, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.63, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/platform/aspeed-video.c", i32 1708, i32 3}
!136 = !{ptr @aspeed_video_setup_video._entry.62, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @aspeed_video_setup_video._entry_ptr.64, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @aspeed_video_ctrl_ops, !139, !"aspeed_video_ctrl_ops", i1 false, i1 false}
!139 = !{!"../drivers/media/platform/aspeed-video.c", i32 1371, i32 35}
!140 = !{ptr @aspeed_video_vb2_ops, !141, !"aspeed_video_vb2_ops", i1 false, i1 false}
!141 = !{!"../drivers/media/platform/aspeed-video.c", i32 1554, i32 29}
!142 = !{ptr @.str.65, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/platform/aspeed-video.c", i32 1519, i32 3}
!144 = !{ptr @.str.66, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @aspeed_video_stop_streaming.__UNIQUE_ID_ddebug367, !143, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!146 = !{ptr @aspeed_video_v4l2_fops, !147, !"aspeed_video_v4l2_fops", i1 false, i1 false}
!147 = !{!"../drivers/media/platform/aspeed-video.c", i32 1447, i32 42}
!148 = !{ptr @.str.67, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/platform/aspeed-video.c", i32 961, i32 2}
!150 = !{ptr @.str.68, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @aspeed_video_set_resolution._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @aspeed_video_set_resolution._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.69, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/platform/aspeed-video.c", i32 790, i32 2}
!155 = !{ptr @.str.70, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @aspeed_video_calc_compressed_size.__UNIQUE_ID_ddebug311, !154, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!157 = !{ptr @aspeed_video_ioctl_ops, !158, !"aspeed_video_ioctl_ops", i1 false, i1 false}
!158 = !{!"../drivers/media/platform/aspeed-video.c", i32 1286, i32 36}
!159 = !{ptr @.str.71, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/platform/aspeed-video.c", i32 1049, i32 21}
!161 = !{ptr @.str.72, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/platform/aspeed-video.c", i32 1050, i32 49}
!163 = !{ptr @.str.73, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/platform/aspeed-video.c", i32 1085, i32 21}
!165 = !{ptr @aspeed_video_timings_cap, !166, !"aspeed_video_timings_cap", i1 false, i1 false}
!166 = !{!"../drivers/media/platform/aspeed-video.c", i32 397, i32 41}
!167 = !{ptr @aspeed_video_debugfs_ops, !168, !"aspeed_video_debugfs_ops", i1 false, i1 false}
!168 = !{!"../drivers/media/platform/aspeed-video.c", i32 1595, i32 37}
!169 = !{ptr @.str.74, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/platform/aspeed-video.c", i32 1569, i32 14}
!171 = !{ptr @.str.75, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/platform/aspeed-video.c", i32 1571, i32 16}
!173 = !{ptr @.str.76, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/platform/aspeed-video.c", i32 1571, i32 34}
!175 = !{ptr @.str.77, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/platform/aspeed-video.c", i32 1572, i32 29}
!177 = !{ptr @.str.78, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/platform/aspeed-video.c", i32 1572, i32 40}
!179 = !{ptr @.str.79, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/platform/aspeed-video.c", i32 1573, i32 16}
!181 = !{ptr @.str.80, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/media/platform/aspeed-video.c", i32 1573, i32 34}
!183 = !{ptr @.str.81, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/platform/aspeed-video.c", i32 1574, i32 34}
!185 = !{ptr @.str.82, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/platform/aspeed-video.c", i32 1575, i32 34}
!187 = !{ptr @.str.83, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/media/platform/aspeed-video.c", i32 1579, i32 14}
!189 = !{ptr @.str.84, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/platform/aspeed-video.c", i32 1580, i32 34}
!191 = !{ptr @.str.85, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/platform/aspeed-video.c", i32 1581, i32 16}
!193 = !{ptr @.str.86, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/media/platform/aspeed-video.c", i32 1581, i32 30}
!195 = !{ptr @.str.87, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/media/platform/aspeed-video.c", i32 1582, i32 16}
!197 = !{ptr @.str.88, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/media/platform/aspeed-video.c", i32 1582, i32 36}
!199 = !{ptr @.str.89, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/media/platform/aspeed-video.c", i32 1583, i32 36}
!201 = !{ptr @.str.90, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/platform/aspeed-video.c", i32 1584, i32 36}
!203 = !{ptr @.str.91, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/media/platform/aspeed-video.c", i32 1585, i32 34}
!205 = !{ptr @debugfs_entry, !206, !"debugfs_entry", i1 false, i1 false}
!206 = !{!"../drivers/media/platform/aspeed-video.c", i32 1603, i32 23}
!207 = !{ptr @aspeed_video_of_match, !208, !"aspeed_video_of_match", i1 false, i1 false}
!208 = !{!"../drivers/media/platform/aspeed-video.c", i32 1783, i32 34}
!209 = !{ptr @ast2400_config, !210, !"ast2400_config", i1 false, i1 false}
!210 = !{!"../drivers/media/platform/aspeed-video.c", i32 266, i32 41}
!211 = !{ptr @ast2500_config, !212, !"ast2500_config", i1 false, i1 false}
!212 = !{!"../drivers/media/platform/aspeed-video.c", i32 271, i32 41}
!213 = !{ptr @ast2600_config, !214, !"ast2600_config", i1 false, i1 false}
!214 = !{!"../drivers/media/platform/aspeed-video.c", i32 276, i32 41}
!215 = !{!"sp"}
!216 = !{i32 1, !"wchar_size", i32 2}
!217 = !{i32 1, !"min_enum_size", i32 4}
!218 = !{i32 8, !"branch-target-enforcement", i32 0}
!219 = !{i32 8, !"sign-return-address", i32 0}
!220 = !{i32 8, !"sign-return-address-all", i32 0}
!221 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!222 = !{i32 7, !"uwtable", i32 1}
!223 = !{i32 7, !"frame-pointer", i32 2}
!224 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!225 = !{i8 0, i8 2}
!226 = !{i64 2156552368}
!227 = !{i64 6336715}
!228 = !{i64 2148806628, i64 2148806633, i64 2148806646, i64 2148806690, i64 2148806724, i64 2148806745}
!229 = !{i64 6337133}
!230 = !{i64 2156555376}
!231 = !{i64 2156591156}
!232 = !{i64 2156546103}
!233 = !{i64 2156546315}
!234 = !{i64 2156549430}
!235 = !{i64 2156549916}
!236 = !{i64 1229516, i64 1229543}
!237 = !{i64 1230211, i64 1230238, i64 1230271, i64 1230292, i64 1230319, i64 1230345}
!238 = !{!"branch_weights", i32 2000, i32 1}
