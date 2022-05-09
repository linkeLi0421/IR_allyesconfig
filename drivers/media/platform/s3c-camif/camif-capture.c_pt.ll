; ModuleID = '/llk/IR_all_yes/drivers/media/platform/s3c-camif/camif-capture.c_pt.bc'
source_filename = "../drivers/media/platform/s3c-camif/camif-capture.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.camif_vp = type { %struct.wait_queue_head, i32, ptr, %struct.media_pad, %struct.video_device, %struct.v4l2_ctrl_handler, ptr, %struct.vb2_queue, %struct.list_head, %struct.list_head, i32, i32, i32, i32, %struct.camif_scaler, ptr, i32, %struct.camif_frame, i32, i16, i8, i16, i8, i8, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.camif_scaler = type { i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.camif_frame = type { i16, i16, %struct.v4l2_rect, %struct.camif_dma_offset }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.camif_dma_offset = type { i32, i32 }
%struct.camif_dev = type { %struct.media_device, %struct.v4l2_device, %struct.v4l2_subdev, %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, [3 x %struct.media_pad], i32, %struct.cam_sensor, ptr, %struct.v4l2_ctrl_handler, ptr, %struct.anon.120, i8, i8, i8, i8, [2 x %struct.camif_vp], ptr, ptr, %struct.s3c_camif_plat_data, [2 x ptr], %struct.mutex, %struct.spinlock, ptr }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.94, i16, i16, i16, [10 x i16] }
%union.anon.94 = type { i16 }
%struct.cam_sensor = type { ptr, i16, i16 }
%struct.anon.120 = type { ptr, ptr }
%struct.s3c_camif_plat_data = type { %struct.s3c_camif_sensor_info, ptr, ptr }
%struct.s3c_camif_sensor_info = type { %struct.i2c_board_info, i32, i32, i16, i16, i8 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.s3c_camif_variant = type { [2 x %struct.vp_pix_limits], %struct.camif_pix_limits, i8, i8, i32 }
%struct.vp_pix_limits = type { i16, i16, i16, i16, i8, i16 }
%struct.camif_pix_limits = type { i16 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.camif_fmt = type { i32, i32, i16, i16, i8, i8 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
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
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.101 }
%union.anon.101 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.103, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.103 = type { i8 }
%struct.v4l2_create_buffers = type { i32, i32, i32, %struct.v4l2_format, i32, i32, [6 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.102, i32, i32 }
%union.anon.102 = type { i32 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.100, i32 }
%union.anon.100 = type { i32 }
%struct.camif_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, %struct.camif_addr, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.camif_addr = type { i32, i32, i32 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }

@__param_str_debug = internal constant [16 x i8] c"s3c_camif.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype299 = internal constant [29 x i8] c"s3c_camif.parmtype=debug:int\00", section ".modinfo", align 1
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/media/platform/s3c-camif/camif-capture.c\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"camif-%s\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"codec\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"preview\00", [24 x i8] zeroinitializer }, align 32
@s3c_camif_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @s3c_camif_poll, ptr @video_ioctl2, ptr null, ptr @s3c_camif_mmap, ptr @s3c_camif_open, ptr @s3c_camif_close }, [60 x i8] zeroinitializer }, align 32
@s3c_camif_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @s3c_camif_vidioc_querycap, ptr @s3c_camif_vidioc_enum_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s3c_camif_vidioc_g_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s3c_camif_vidioc_s_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s3c_camif_vidioc_try_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s3c_camif_reqbufs, ptr @s3c_camif_querybuf, ptr @s3c_camif_qbuf, ptr null, ptr @s3c_camif_dqbuf, ptr @s3c_camif_create_bufs, ptr @s3c_camif_prepare_buf, ptr null, ptr null, ptr null, ptr @s3c_camif_streamon, ptr @s3c_camif_streamoff, ptr null, ptr null, ptr null, ptr @s3c_camif_vidioc_enum_input, ptr @s3c_camif_vidioc_g_input, ptr @s3c_camif_vidioc_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s3c_camif_g_selection, ptr @s3c_camif_s_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@s3c_camif_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @buffer_prepare, ptr null, ptr null, ptr @start_streaming, ptr @stop_streaming, ptr @buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@s3c_camif_register_video_node._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"camif_capture:1144:(&vp->ctrl_handler)->_lock\00", [50 x i8] zeroinitializer }, align 32
@s3c_camif_video_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @s3c_camif_video_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@s3c_camif_register_video_node._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 1166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: registered %s as /dev/%s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"s3c_camif_register_video_node\00", [34 x i8] zeroinitializer }, align 32
@s3c_camif_register_video_node._entry_ptr = internal global ptr @s3c_camif_register_video_node._entry, section ".printk_index", align 4
@s3c_camif_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s3c_camif_subdev_pad_ops }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"S3C-CAMIF\00", [22 x i8] zeroinitializer }, align 32
@s3c_camif_create_subdev._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"camif_capture:1560:(handler)->_lock\00", [60 x i8] zeroinitializer }, align 32
@s3c_camif_subdev_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @s3c_camif_subdev_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@s3c_camif_test_pattern_menu = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83], [16 x i8] zeroinitializer }, align 32
@camif_mbus_formats = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 8200, i32 8201, i32 8198, i32 8199], [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/media/platform/s3c-camif/camif-core.h\00", [50 x i8] zeroinitializer }, align 32
@camif_prepare_dma_offset.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str, ptr @.str.12, i8 0, i8 15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"s3c_camif\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"camif_prepare_dma_offset\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"dma_offset: initial: %d, line: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s:%d dma_offset: initial: %d, line: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@s3c_camif_open.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.14, ptr @.str, ptr @.str.15, i8 0, i8 -121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s3c_camif_open\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[vp%d] state: %#x,  owner: %p, pid: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s:%d [vp%d] state: %#x,  owner: %p, pid: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@sensor_set_power.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.17, ptr @.str, ptr @.str.18, i8 0, i8 30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sensor_set_power\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"on: %d, power_count: %d, err: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s:%d on: %d, power_count: %d, err: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@s3c_camif_close.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.20, ptr @.str, ptr @.str.21, i8 0, i8 -113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s3c_camif_close\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[vp%d] state: %#x, owner: %p, pid: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s:%d [vp%d] state: %#x, owner: %p, pid: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@sensor_set_streaming.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.23, ptr @.str, ptr @.str.24, i8 0, i8 34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sensor_set_streaming\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"on: %d, stream_count: %d, err: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s:%d on: %d, stream_count: %d, err: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"s3c-camif\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"platform:%s.%d\00", [17 x i8] zeroinitializer }, align 32
@s3c_camif_vidioc_s_fmt.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.28, ptr @.str, ptr @.str.29, i8 0, i8 -63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"s3c_camif_vidioc_s_fmt\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"[vp%d]\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s:%d [vp%d]\0A\00", [18 x i8] zeroinitializer }, align 32
@s3c_camif_vidioc_s_fmt.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.28, ptr @.str, ptr @.str.31, i8 0, i8 -56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%ux%u. payload: %u. fmt: 0x%08x. %d %d. sizeimage: %d. bpl: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"%s:%d %ux%u. payload: %u. fmt: 0x%08x. %d %d. sizeimage: %d. bpl: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@__camif_video_try_format.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.33, ptr @.str, ptr @.str.34, i8 0, i8 -74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"__camif_video_try_format\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"fmt: %ux%u, crop: %ux%u, bytesperline: %u\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s:%d fmt: %ux%u, crop: %ux%u, bytesperline: %u\0A\00", [47 x i8] zeroinitializer }, align 32
@__camif_video_try_format.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.33, ptr @.str, ptr @.str.36, i8 0, i8 -68, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%ux%u, wmin: %d, hmin: %d, sc_hrmax: %d, sc_vrmax: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s:%d %ux%u, wmin: %d, hmin: %d, sc_hrmax: %d, sc_vrmax: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@s3c_camif_reqbufs.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.38, ptr @.str, ptr @.str.39, i8 0, i8 -33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s3c_camif_reqbufs\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[vp%d] rb count: %d, owner: %p, priv: %p\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s:%d [vp%d] rb count: %d, owner: %p, priv: %p\0A\00", [48 x i8] zeroinitializer }, align 32
@s3c_camif_qbuf.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.41, ptr @.str, ptr @.str.29, i8 0, i8 -24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s3c_camif_qbuf\00", [17 x i8] zeroinitializer }, align 32
@s3c_camif_dqbuf.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.42, ptr @.str, ptr @.str.43, i8 0, i8 -20, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s3c_camif_dqbuf\00", [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[vp%d] sequence: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s:%d [vp%d] sequence: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@s3c_camif_streamon.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.45, ptr @.str, ptr @.str.29, i8 0, i8 -46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"s3c_camif_streamon\00", [45 x i8] zeroinitializer }, align 32
@s3c_camif_streamoff.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.46, ptr @.str, ptr @.str.29, i8 0, i8 -39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"s3c_camif_streamoff\00", [44 x i8] zeroinitializer }, align 32
@s3c_camif_s_selection.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.47, ptr @.str, ptr @.str.48, i8 1, i8 3, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"s3c_camif_s_selection\00", [42 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"type: %#x, target: %#x, flags: %#x, (%d,%d)/%dx%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s:%d type: %#x, target: %#x, flags: %#x, (%d,%d)/%dx%d\0A\00", [39 x i8] zeroinitializer }, align 32
@queue_setup.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.50, ptr @.str, ptr @.str.51, i8 0, i8 114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"queue_setup\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"size: %u\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s:%d size: %u\0A\00", [16 x i8] zeroinitializer }, align 32
@buffer_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str, i32 470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: buffer too small: %lu, required: %u\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"buffer_prepare\00", [17 x i8] zeroinitializer }, align 32
@buffer_prepare._entry_ptr = internal global ptr @buffer_prepare._entry, section ".printk_index", align 4
@start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: Sensor s_stream failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"start_streaming\00", [16 x i8] zeroinitializer }, align 32
@start_streaming._entry_ptr = internal global ptr @start_streaming._entry, section ".printk_index", align 4
@buffer_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.58, ptr @.str, i32 514, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"buffer_queue\00", [19 x i8] zeroinitializer }, align 32
@buffer_queue._entry_ptr = internal global ptr @buffer_queue._entry, section ".printk_index", align 4
@camif_prepare_addr.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.59, ptr @.str, ptr @.str.60, i8 0, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"camif_prepare_addr\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"colplanes: %d, pix_size: %u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s:%d colplanes: %d, pix_size: %u\0A\00", [61 x i8] zeroinitializer }, align 32
@camif_prepare_addr.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.59, ptr @.str, ptr @.str.62, i8 0, i8 70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"DMA address: y: %pad  cb: %pad cr: %pad\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s:%d DMA address: y: %pad  cb: %pad cr: %pad\0A\00", [49 x i8] zeroinitializer }, align 32
@s3c_camif_video_s_ctrl.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.64, ptr @.str, ptr @.str.65, i8 1, i8 12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"s3c_camif_video_s_ctrl\00", [41 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[vp%d] ctrl: %s, value: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s:%d [vp%d] ctrl: %s, value: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@s3c_camif_subdev_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @s3c_camif_subdev_enum_mbus_code, ptr null, ptr null, ptr @s3c_camif_subdev_get_fmt, ptr @s3c_camif_subdev_set_fmt, ptr @s3c_camif_subdev_get_selection, ptr @s3c_camif_subdev_set_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@s3c_camif_subdev_set_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str, i32 1290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: pad%d: code: 0x%x, %ux%u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"s3c_camif_subdev_set_fmt\00", [39 x i8] zeroinitializer }, align 32
@s3c_camif_subdev_set_fmt._entry_ptr = internal global ptr @s3c_camif_subdev_set_fmt._entry, section ".printk_index", align 4
@__camif_subdev_try_format._entry = internal constant %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str, i32 1277, ptr null, ptr null }, align 1
@.str.70 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\017%s: %ux%u\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"__camif_subdev_try_format\00", [38 x i8] zeroinitializer }, align 32
@__camif_subdev_try_format._entry_ptr = internal global ptr @__camif_subdev_try_format._entry, section ".printk_index", align 4
@s3c_camif_subdev_get_selection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str, i32 1380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s: %s: crop: (%d,%d) %dx%d, size: %ux%u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"s3c_camif_subdev_get_selection\00", [33 x i8] zeroinitializer }, align 32
@s3c_camif_subdev_get_selection._entry_ptr = internal global ptr @s3c_camif_subdev_get_selection._entry, section ".printk_index", align 4
@s3c_camif_subdev_set_selection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str, i32 1472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s: %s: (%d,%d) %dx%d, f_w: %u, f_h: %u\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"s3c_camif_subdev_set_selection\00", [33 x i8] zeroinitializer }, align 32
@s3c_camif_subdev_set_selection._entry_ptr = internal global ptr @s3c_camif_subdev_set_selection._entry, section ".printk_index", align 4
@__camif_try_crop.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.76, ptr @.str, ptr @.str.77, i8 1, i8 100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__camif_try_crop\00", [47 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Width/height scaling direction limitation\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s:%d Width/height scaling direction limitation\0A\00", [47 x i8] zeroinitializer }, align 32
@__camif_try_crop._entry = internal constant %struct.pi_entry { ptr @.str.79, ptr @.str.76, ptr @.str, i32 1431, ptr null, ptr null }, align 1
@.str.79 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: crop: (%d,%d)/%dx%d, fmt: %ux%u\0A\00", [57 x i8] zeroinitializer }, align 32
@__camif_try_crop._entry_ptr = internal global ptr @__camif_try_crop._entry, section ".printk_index", align 4
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Color bars\00", [21 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Horizontal increment\00", [43 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Vertical increment\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 257, i64 258]
@__sancov_gen_cov_switch_values.86 = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 9963796, i64 9963797]
@__sancov_gen_cov_switch_values.88 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.89 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 9963807, i64 10422531]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 15]
@___asan_gen_.93 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 40, i32 12 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 338, i32 8 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1108, i32 41 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1109, i32 18 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1109, i32 28 }
@___asan_gen_.108 = private unnamed_addr constant [15 x i8] c"s3c_camif_fops\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 622, i32 42 }
@___asan_gen_.111 = private unnamed_addr constant [20 x i8] c"s3c_camif_ioctl_ops\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1041, i32 36 }
@___asan_gen_.114 = private unnamed_addr constant [15 x i8] c"s3c_camif_qops\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 524, i32 29 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1144, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [25 x i8] c"s3c_camif_video_ctrl_ops\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1095, i32 35 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1165, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [21 x i8] c"s3c_camif_subdev_ops\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1485, i32 37 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1549, i32 20 }
@___asan_gen_.141 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1560, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [26 x i8] c"s3c_camif_subdev_ctrl_ops\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1530, i32 35 }
@___asan_gen_.150 = private unnamed_addr constant [28 x i8] c"s3c_camif_test_pattern_menu\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1534, i32 27 }
@___asan_gen_.153 = private unnamed_addr constant [19 x i8] c"camif_mbus_formats\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1190, i32 18 }
@___asan_gen_.157 = private unnamed_addr constant [49 x i8] c"../drivers/media/platform/s3c-camif/camif-core.h\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 368, i32 6 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 60, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 540, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 122, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 572, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 138, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 640, i32 23 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 642, i32 49 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 775, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 798, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 728, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 753, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 891, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 931, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 944, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 840, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 871, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1034, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 457, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 469, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 419, i32 5 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 514, i32 5 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 252, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 282, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1074, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant [25 x i8] c"s3c_camif_subdev_pad_ops\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1477, i32 41 }
@___asan_gen_.340 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 998, i32 6 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1289, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1277, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1378, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1470, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1425, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1430, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1535, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1536, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1537, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.397 = private constant [52 x i8] c"../drivers/media/platform/s3c-camif/camif-capture.c\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1538, i32 2 }
@llvm.compiler.used = appending global [115 x ptr] [ptr @__UNIQUE_ID_debugtype299, ptr @__camif_subdev_try_format._entry, ptr @__camif_subdev_try_format._entry_ptr, ptr @__camif_try_crop._entry, ptr @__camif_try_crop._entry_ptr, ptr @__param_debug, ptr @buffer_prepare._entry, ptr @buffer_prepare._entry_ptr, ptr @buffer_queue._entry, ptr @buffer_queue._entry_ptr, ptr @s3c_camif_register_video_node._entry, ptr @s3c_camif_register_video_node._entry_ptr, ptr @s3c_camif_subdev_get_selection._entry, ptr @s3c_camif_subdev_get_selection._entry_ptr, ptr @s3c_camif_subdev_set_fmt._entry, ptr @s3c_camif_subdev_set_fmt._entry_ptr, ptr @s3c_camif_subdev_set_selection._entry, ptr @s3c_camif_subdev_set_selection._entry_ptr, ptr @start_streaming._entry, ptr @start_streaming._entry_ptr, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @s3c_camif_fops, ptr @s3c_camif_ioctl_ops, ptr @s3c_camif_qops, ptr @s3c_camif_register_video_node._key, ptr @.str.4, ptr @s3c_camif_video_ctrl_ops, ptr @.str.5, ptr @.str.6, ptr @s3c_camif_subdev_ops, ptr @.str.7, ptr @s3c_camif_create_subdev._key, ptr @.str.8, ptr @s3c_camif_subdev_ctrl_ops, ptr @s3c_camif_test_pattern_menu, ptr @camif_mbus_formats, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @s3c_camif_subdev_pad_ops, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83], section "llvm.metadata"
@0 = internal global [102 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_camif_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_camif_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_camif_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_camif_register_video_node._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_camif_video_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_camif_register_video_node._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_camif_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_camif_create_subdev._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_camif_subdev_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_camif_test_pattern_menu to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camif_mbus_formats to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_camif_subdev_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_camif_subdev_set_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_camif_subdev_get_selection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_camif_subdev_set_selection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s3c_camif_irq_handler(i32 noundef %irq, ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %camif1 = getelementptr inbounds %struct.camif_vp, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %camif1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %camif1, align 8
  %variant = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant, align 8
  %ip_revision = getelementptr inbounds %struct.s3c_camif_variant, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ip_revision to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ip_revision, align 2
  %slock = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %slock) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %5)
  %cmp = icmp eq i8 %5, 50
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @camif_hw_clear_pending_irq(ptr noundef %priv) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %camif1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %camif1, align 8
  %io_base.i = getelementptr inbounds %struct.camif_dev, ptr %7, i32 0, i32 23
  %8 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_base.i, align 8
  %id.i = getelementptr inbounds %struct.camif_vp, ptr %priv, i32 0, i32 20
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %id.i, align 2
  %conv.i = zext i8 %11 to i32
  %offset.i = getelementptr inbounds %struct.camif_vp, ptr %priv, i32 0, i32 24
  %12 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset.i, align 8
  %add.i = add i32 %13, 52
  %mul.i = mul i32 %add.i, %conv.i
  %add1.i = add i32 %mul.i, 100
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add1.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !204
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %5)
  %cmp3 = icmp ne i8 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %15)
  %tobool.not = icmp ult i32 %15, 536870912
  %or.cond = select i1 %cmp3, i1 true, i1 %tobool.not
  br i1 %or.cond, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @camif_hw_clear_fifo_overflow(ptr noundef %priv) #11
  br label %unlock

if.end6:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.camif_vp, ptr %priv, i32 0, i32 18
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state, align 4
  %and7 = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end26_crit_edge, label %if.then9

if.end6.if.end26_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then9:                                         ; preds = %if.end6
  %and11 = and i32 %17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  %and15 = and i32 %17, -113
  %18 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and15, ptr %state, align 4
  tail call void @__wake_up(ptr noundef %priv, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %unlock

if.else:                                          ; preds = %if.then9
  %and17 = and i32 %17, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.else.if.end26.sink.split_crit_edge, label %if.then19

if.else.if.end26.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.sink.split

if.then19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @camif_hw_disable_capture(ptr noundef %priv) #11
  tail call void @camif_hw_enable_scaler(ptr noundef %priv, i1 noundef zeroext false) #11
  br label %if.end26.sink.split

if.end26.sink.split:                              ; preds = %if.then19, %if.else.if.end26.sink.split_crit_edge
  %.sink = phi i32 [ 0, %if.then19 ], [ 1, %if.else.if.end26.sink.split_crit_edge ]
  %.sink184 = phi i32 [ 32, %if.then19 ], [ 64, %if.else.if.end26.sink.split_crit_edge ]
  tail call void @camif_hw_set_lastirq(ptr noundef %priv, i32 noundef %.sink) #11
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state, align 4
  %or23 = or i32 %20, %.sink184
  store i32 %or23, ptr %state, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end26.sink.split, %if.end6.if.end26_crit_edge
  %pending_buf_q = getelementptr inbounds %struct.camif_vp, ptr %priv, i32 0, i32 8
  %21 = ptrtoint ptr %pending_buf_q to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %pending_buf_q, align 4
  %cmp.i.not = icmp eq ptr %22, %pending_buf_q
  br i1 %cmp.i.not, label %if.end26.if.else74_crit_edge, label %land.lhs.true29

if.end26.if.else74_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else74

land.lhs.true29:                                  ; preds = %if.end26
  %23 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state, align 4
  %and31 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %land.lhs.true29.if.else74_crit_edge, label %land.lhs.true33

land.lhs.true29.if.else74_crit_edge:              ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else74

land.lhs.true33:                                  ; preds = %land.lhs.true29
  %active_buf_q = getelementptr inbounds %struct.camif_vp, ptr %priv, i32 0, i32 9
  %25 = ptrtoint ptr %active_buf_q to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %active_buf_q, align 4
  %cmp.i159.not = icmp eq ptr %26, %active_buf_q
  br i1 %cmp.i159.not, label %land.lhs.true33.if.else74_crit_edge, label %if.then36

land.lhs.true33.if.else74_crit_edge:              ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else74

if.then36:                                        ; preds = %land.lhs.true33
  %shr = lshr i32 %15, 26
  %and38 = and i32 %shr, 1
  %27 = ptrtoint ptr %active_buf_q to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %active_buf_q, align 4
  %cmp.i.not.i = icmp eq ptr %28, %active_buf_q
  br i1 %cmp.i.not.i, label %do.end.i, label %if.then36.for.cond.i_crit_edge, !prof !206

if.then36.for.cond.i_crit_edge:                   ; preds = %if.then36
  br label %for.cond.i

do.end.i:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 368, i32 noundef 9, ptr noundef null) #11
  br label %do.end

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then36.for.cond.i_crit_edge
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ %28, %if.then36.for.cond.i_crit_edge ]
  %cmp.not.i = icmp eq ptr %.pn.in.i, %active_buf_q
  br i1 %cmp.not.i, label %for.cond.i.do.end_crit_edge, label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i
  %29 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn.i = load ptr, ptr %.pn.in.i, align 8
  %index34.i = getelementptr i8, ptr %.pn.in.i, i32 20
  %30 = ptrtoint ptr %index34.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %index34.i, align 4
  %cmp35.i = icmp eq i32 %31, %and38
  br i1 %cmp35.i, label %if.then36.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

if.then36.i:                                      ; preds = %for.body.i
  %buf.0.le.i = getelementptr i8, ptr %.pn.in.i, i32 -736
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then36.i.camif_active_queue_peek.exit_crit_edge

if.then36.i.camif_active_queue_peek.exit_crit_edge: ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %camif_active_queue_peek.exit

if.end.i.i.i:                                     ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i.i, align 4
  %34 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %.pn.in.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %camif_active_queue_peek.exit

camif_active_queue_peek.exit:                     ; preds = %if.end.i.i.i, %if.then36.i.camif_active_queue_peek.exit_crit_edge
  %38 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %active_buffers.i = getelementptr inbounds %struct.camif_vp, ptr %priv, i32 0, i32 10
  %40 = ptrtoint ptr %active_buffers.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %active_buffers.i, align 4
  %dec.i = add i32 %41, -1
  store i32 %dec.i, ptr %active_buffers.i, align 4
  %cmp40 = icmp eq ptr %buf.0.le.i, null
  br i1 %cmp40, label %camif_active_queue_peek.exit.do.end_crit_edge, label %if.then64.critedge, !prof !206

camif_active_queue_peek.exit.do.end_crit_edge:    ; preds = %camif_active_queue_peek.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %camif_active_queue_peek.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge, %do.end.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 338, i32 noundef 9, ptr noundef null) #11
  br label %if.end86

if.then64.critedge:                               ; preds = %camif_active_queue_peek.exit
  %call.i = tail call i64 @ktime_get() #11
  %timestamp = getelementptr i8, ptr %.pn.in.i, i32 -712
  %42 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %call.i, ptr %timestamp, align 8
  %frame_sequence = getelementptr inbounds %struct.camif_vp, ptr %priv, i32 0, i32 12
  %43 = ptrtoint ptr %frame_sequence to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %frame_sequence, align 4
  %inc = add i32 %44, 1
  store i32 %inc, ptr %frame_sequence, align 4
  %sequence = getelementptr i8, ptr %.pn.in.i, i32 -272
  %45 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %sequence, align 8
  tail call void @vb2_buffer_done(ptr noundef nonnull %buf.0.le.i, i32 noundef 5) #11
  %46 = ptrtoint ptr %pending_buf_q to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pending_buf_q, align 4
  %call.i.i.i161 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %47) #11
  br i1 %call.i.i.i161, label %if.end.i.i.i164, label %if.then64.critedge.camif_pending_queue_pop.exit_crit_edge

if.then64.critedge.camif_pending_queue_pop.exit_crit_edge: ; preds = %if.then64.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %camif_pending_queue_pop.exit

if.end.i.i.i164:                                  ; preds = %if.then64.critedge
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i162 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i.i.i162 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i.i162, align 4
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %47, align 4
  %prev1.i.i.i.i163 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i.i163 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev1.i.i.i.i163, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %51, ptr %49, align 4
  br label %camif_pending_queue_pop.exit

camif_pending_queue_pop.exit:                     ; preds = %if.end.i.i.i164, %if.then64.critedge.camif_pending_queue_pop.exit_crit_edge
  %54 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr inttoptr (i32 256 to ptr), ptr %47, align 4
  %prev.i.i166 = getelementptr %struct.list_head, ptr %47, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i.i166 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i166, align 4
  %index70 = getelementptr i8, ptr %47, i32 20
  %56 = ptrtoint ptr %index70 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %and38, ptr %index70, align 4
  %paddr = getelementptr i8, ptr %47, i32 8
  tail call void @camif_hw_set_output_addr(ptr noundef %priv, ptr noundef %paddr, i32 noundef %and38) #11
  %add72 = or i32 %and38, 2
  tail call void @camif_hw_set_output_addr(ptr noundef %priv, ptr noundef %paddr, i32 noundef %add72) #11
  %prev.i.i169 = getelementptr inbounds %struct.camif_vp, ptr %priv, i32 0, i32 9, i32 1
  %57 = ptrtoint ptr %prev.i.i169 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i.i169, align 4
  %call.i.i.i170 = tail call zeroext i1 @__list_add_valid(ptr noundef %47, ptr noundef %58, ptr noundef %active_buf_q) #11
  br i1 %call.i.i.i170, label %if.end.i.i.i171, label %camif_pending_queue_pop.exit.camif_active_queue_add.exit_crit_edge

camif_pending_queue_pop.exit.camif_active_queue_add.exit_crit_edge: ; preds = %camif_pending_queue_pop.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %camif_active_queue_add.exit

if.end.i.i.i171:                                  ; preds = %camif_pending_queue_pop.exit
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %prev.i.i169 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %47, ptr %prev.i.i169, align 4
  %60 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %active_buf_q, ptr %47, align 4
  %61 = ptrtoint ptr %prev.i.i166 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev.i.i166, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %47, ptr %58, align 4
  br label %camif_active_queue_add.exit

camif_active_queue_add.exit:                      ; preds = %if.end.i.i.i171, %camif_pending_queue_pop.exit.camif_active_queue_add.exit_crit_edge
  %63 = ptrtoint ptr %active_buffers.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %active_buffers.i, align 4
  %inc.i = add i32 %64, 1
  store i32 %inc.i, ptr %active_buffers.i, align 4
  br label %if.end86

if.else74:                                        ; preds = %land.lhs.true33.if.else74_crit_edge, %land.lhs.true29.if.else74_crit_edge, %if.end26.if.else74_crit_edge
  %65 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %state, align 4
  %67 = and i32 %66, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %.not = icmp eq i32 %67, 1
  br i1 %.not, label %if.then82, label %if.else74.if.end86_crit_edge

if.else74.if.end86_crit_edge:                     ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end86

if.then82:                                        ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #13
  %or84 = or i32 %66, 2
  %68 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %or84, ptr %state, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then82, %if.else74.if.end86_crit_edge, %camif_active_queue_add.exit, %do.end
  %69 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %state, align 4
  %and88 = and i32 %70, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.end86.unlock_crit_edge, label %if.then90

if.end86.unlock_crit_edge:                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.then90:                                        ; preds = %if.end86
  %out_frame.i = getelementptr inbounds %struct.camif_vp, ptr %priv, i32 0, i32 17
  %rect.i = getelementptr inbounds %struct.camif_vp, ptr %priv, i32 0, i32 17, i32 2
  %top.i = getelementptr inbounds %struct.camif_vp, ptr %priv, i32 0, i32 17, i32 2, i32 1
  %71 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %top.i, align 4
  %73 = ptrtoint ptr %out_frame.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %out_frame.i, align 4
  %conv.i173 = zext i16 %74 to i32
  %mul.i174 = mul i32 %72, %conv.i173
  %75 = ptrtoint ptr %rect.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rect.i, align 4
  %add.i175 = add i32 %mul.i174, %76
  %dma_offset.i = getelementptr inbounds %struct.camif_vp, ptr %priv, i32 0, i32 17, i32 3
  %77 = ptrtoint ptr %dma_offset.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %add.i175, ptr %dma_offset.i, align 4
  %width.i = getelementptr inbounds %struct.camif_vp, ptr %priv, i32 0, i32 17, i32 2, i32 2
  %78 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %width.i, align 4
  %80 = add i32 %76, %79
  %sub.i = sub i32 %conv.i173, %80
  %line.i = getelementptr inbounds %struct.camif_vp, ptr %priv, i32 0, i32 17, i32 3, i32 1
  %81 = ptrtoint ptr %line.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %sub.i, ptr %line.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @camif_prepare_dma_offset.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_camif_irq_handler, %if.then.i)) #11
          to label %camif_prepare_dma_offset.exit [label %if.then.i], !srcloc !207

if.then.i:                                        ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #13
  %82 = ptrtoint ptr %dma_offset.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dma_offset.i, align 4
  %84 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %line.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @camif_prepare_dma_offset.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11, i32 noundef 61, i32 noundef %83, i32 noundef %85) #11
  br label %camif_prepare_dma_offset.exit

camif_prepare_dma_offset.exit:                    ; preds = %if.then.i, %if.then90
  tail call void @camif_hw_set_camera_crop(ptr noundef %1) #11
  tail call void @camif_hw_set_scaler(ptr noundef %priv) #11
  tail call void @camif_hw_set_flip(ptr noundef %priv) #11
  %test_pattern = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 12
  %86 = ptrtoint ptr %test_pattern to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %test_pattern, align 8
  %conv91 = zext i8 %87 to i32
  tail call void @camif_hw_set_test_pattern(ptr noundef %1, i32 noundef %conv91) #11
  %88 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %variant, align 8
  %has_img_effect = getelementptr inbounds %struct.s3c_camif_variant, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %has_img_effect to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %has_img_effect, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool93.not = icmp eq i8 %91, 0
  br i1 %tobool93.not, label %camif_prepare_dma_offset.exit.if.end98_crit_edge, label %if.then94

camif_prepare_dma_offset.exit.if.end98_crit_edge: ; preds = %camif_prepare_dma_offset.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end98

if.then94:                                        ; preds = %camif_prepare_dma_offset.exit
  call void @__sanitizer_cov_trace_pc() #13
  %colorfx = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 13
  %92 = ptrtoint ptr %colorfx to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %colorfx, align 1
  %conv95 = zext i8 %93 to i32
  %colorfx_cr = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 15
  %94 = ptrtoint ptr %colorfx_cr to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %colorfx_cr, align 1
  %conv96 = zext i8 %95 to i32
  %colorfx_cb = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 14
  %96 = ptrtoint ptr %colorfx_cb to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %colorfx_cb, align 2
  %conv97 = zext i8 %97 to i32
  tail call void @camif_hw_set_effect(ptr noundef %1, i32 noundef %conv95, i32 noundef %conv96, i32 noundef %conv97) #11
  br label %if.end98

if.end98:                                         ; preds = %if.then94, %camif_prepare_dma_offset.exit.if.end98_crit_edge
  %98 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %state, align 4
  %and100 = and i32 %99, -257
  store i32 %and100, ptr %state, align 4
  br label %unlock

unlock:                                           ; preds = %if.end98, %if.end86.unlock_crit_edge, %if.then13, %if.then5
  tail call void @_raw_spin_unlock(ptr noundef %slock) #11
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @camif_hw_clear_pending_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @camif_hw_clear_fifo_overflow(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @camif_hw_disable_capture(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @camif_hw_enable_scaler(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @camif_hw_set_lastirq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @camif_hw_set_output_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @camif_hw_set_camera_crop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @camif_hw_set_scaler(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @camif_hw_set_flip(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @camif_hw_set_test_pattern(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @camif_hw_set_effect(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s3c_camif_register_video_node(ptr noundef %camif, i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 %idx
  %vb_queue = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 %idx, i32 7
  %vdev = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 %idx, i32 4
  %0 = call ptr @memset(ptr %vdev, i32 0, i32 1352)
  %name = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 %idx, i32 4, i32 12
  %id = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 %idx, i32 20
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %id, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp = icmp eq i8 %2, 0
  %cond = select i1 %cmp, ptr @.str.2, ptr @.str.3
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef nonnull %cond)
  %fops = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 %idx, i32 4, i32 3
  %3 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @s3c_camif_fops, ptr %fops, align 4
  %ioctl_ops = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 %idx, i32 4, i32 24
  %4 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @s3c_camif_ioctl_ops, ptr %ioctl_ops, align 4
  %v4l2_dev = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 1
  %v4l2_dev3 = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 %idx, i32 4, i32 7
  %5 = ptrtoint ptr %v4l2_dev3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %v4l2_dev, ptr %v4l2_dev3, align 4
  %minor = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 %idx, i32 4, i32 15
  %6 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %minor, align 8
  %release = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 %idx, i32 4, i32 23
  %7 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @video_device_release_empty, ptr %release, align 8
  %lock = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 21
  %lock4 = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 %idx, i32 4, i32 26
  %8 = ptrtoint ptr %lock4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %lock, ptr %lock4, align 8
  %reqbufs_count = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 %idx, i32 13
  %9 = ptrtoint ptr %reqbufs_count to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %reqbufs_count, align 8
  %pending_buf_q = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 %idx, i32 8
  %10 = ptrtoint ptr %pending_buf_q to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %pending_buf_q, ptr %pending_buf_q, align 4
  %prev.i = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 %idx, i32 8, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %pending_buf_q, ptr %prev.i, align 4
  %active_buf_q = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 %idx, i32 9
  %12 = ptrtoint ptr %active_buf_q to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %active_buf_q, ptr %active_buf_q, align 4
  %prev.i108 = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 %idx, i32 9, i32 1
  %13 = ptrtoint ptr %prev.i108 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %active_buf_q, ptr %prev.i108, align 4
  %14 = getelementptr inbounds i8, ptr %vb_queue, i32 4
  %15 = call ptr @memset(ptr %14, i32 0, i32 508)
  %16 = ptrtoint ptr %vb_queue to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %vb_queue, align 4
  %io_modes = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 %idx, i32 7, i32 1
  %17 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %io_modes, align 4
  %ops = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 %idx, i32 7, i32 7
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @s3c_camif_qops, ptr %ops, align 4
  %mem_ops = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 %idx, i32 7, i32 8
  %19 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %buf_struct_size = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 %idx, i32 7, i32 12
  %20 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 760, ptr %buf_struct_size, align 4
  %drv_priv = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 %idx, i32 7, i32 10
  %21 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx, ptr %drv_priv, align 4
  %timestamp_flags = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 %idx, i32 7, i32 13
  %22 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 8192, ptr %timestamp_flags, align 4
  %camif5 = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 %idx, i32 2
  %23 = ptrtoint ptr %camif5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %camif5, align 8
  %lock6 = getelementptr inbounds %struct.camif_dev, ptr %24, i32 0, i32 21
  %lock7 = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 %idx, i32 7, i32 5
  %25 = ptrtoint ptr %lock7 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %lock6, ptr %lock7, align 4
  %26 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %v4l2_dev, align 8
  %dev9 = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 %idx, i32 7, i32 2
  %28 = ptrtoint ptr %dev9 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %dev9, align 4
  %call10 = tail call i32 @vb2_queue_init(ptr noundef %vb_queue) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end, label %entry.err_vd_rel_crit_edge

entry.err_vd_rel_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_vd_rel

if.end:                                           ; preds = %entry
  %pad = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 %idx, i32 3
  %flags = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 %idx, i32 3, i32 4
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %flags, align 4
  %call12 = tail call i32 @media_entity_pads_init(ptr noundef %vdev, i16 noundef zeroext 1, ptr noundef %pad) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end.err_vd_rel_crit_edge

if.end.err_vd_rel_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_vd_rel

if.end15:                                         ; preds = %if.end
  %driver_data.i.i = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 %idx, i32 4, i32 5, i32 8
  %30 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %arrayidx, ptr %driver_data.i.i, align 4
  %ctrl_handler = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 %idx, i32 5
  %call16 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 1, ptr noundef nonnull @s3c_camif_register_video_node._key, ptr noundef nonnull @.str.4) #11
  %call18 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @s3c_camif_video_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #11
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end15.if.end21_crit_edge, label %if.then20

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %priv = getelementptr inbounds %struct.v4l2_ctrl, ptr %call18, i32 0, i32 21
  %31 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %arrayidx, ptr %priv, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end15.if.end21_crit_edge
  %call23 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @s3c_camif_video_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #11
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.end21.if.end27_crit_edge, label %if.then25

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %priv26 = getelementptr inbounds %struct.v4l2_ctrl, ptr %call23, i32 0, i32 21
  %32 = ptrtoint ptr %priv26 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %arrayidx, ptr %priv26, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end21.if.end27_crit_edge
  %error = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 %idx, i32 5, i32 9
  %33 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp29 = icmp slt i32 %34, 0
  br i1 %cmp29, label %if.end27.err_vd_rel_crit_edge, label %if.end32

if.end27.err_vd_rel_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_vd_rel

if.end32:                                         ; preds = %if.end27
  %ctrl_handler34 = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 %idx, i32 4, i32 9
  %35 = ptrtoint ptr %ctrl_handler34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %ctrl_handler, ptr %ctrl_handler34, align 4
  %device_caps = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 %idx, i32 4, i32 4
  %36 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 67108865, ptr %device_caps, align 8
  %37 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fops, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %call.i = tail call i32 @__video_register_device(ptr noundef %vdev, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %40) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool36.not = icmp eq i32 %call.i, 0
  br i1 %tobool36.not, label %do.end, label %err_ctrlh_free

do.end:                                           ; preds = %if.end32
  %name41 = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 1, i32 4
  %init_name.i.i = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 %idx, i32 4, i32 5, i32 3
  %41 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.video_device_node_name.exit_crit_edge

do.end.video_device_node_name.exit_crit_edge:     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 %idx, i32 4, i32 5
  %43 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i, align 4
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %do.end.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %44, %if.end.i.i ], [ %42, %do.end.video_device_node_name.exit_crit_edge ]
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name41, ptr noundef %name, ptr noundef %retval.0.i.i) #14
  br label %cleanup

err_ctrlh_free:                                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #11
  br label %err_vd_rel

err_vd_rel:                                       ; preds = %err_ctrlh_free, %if.end27.err_vd_rel_crit_edge, %if.end.err_vd_rel_crit_edge, %entry.err_vd_rel_crit_edge
  %ret.1 = phi i32 [ %call10, %entry.err_vd_rel_crit_edge ], [ %call12, %if.end.err_vd_rel_crit_edge ], [ %34, %if.end27.err_vd_rel_crit_edge ], [ %call.i, %err_ctrlh_free ]
  tail call void @video_device_release(ptr noundef %vdev) #11
  br label %cleanup

cleanup:                                          ; preds = %err_vd_rel, %video_device_node_name.exit
  %retval.0 = phi i32 [ %ret.1, %err_vd_rel ], [ 0, %video_device_node_name.exit ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @s3c_camif_unregister_video_node(ptr noundef %camif, i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 %idx, i32 4, i32 17
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vdev = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 %idx, i32 4
  tail call void @video_unregister_device(ptr noundef %vdev) #11
  %ctrl_handler = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 %idx, i32 4, i32 9
  %2 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_handler, align 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %3) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s3c_camif_create_subdev(ptr noundef %camif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_handler = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 9
  %subdev = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 2
  tail call void @v4l2_subdev_init(ptr noundef %subdev, ptr noundef nonnull @s3c_camif_subdev_ops) #11
  %flags = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 2, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %or = or i32 %1, 4
  store i32 %or, ptr %flags, align 4
  %name = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 2, i32 9
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.7, i32 noundef 32) #11
  %pads = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 5
  %flags1 = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 5, i32 0, i32 4
  %2 = ptrtoint ptr %flags1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %flags1, align 4
  %flags4 = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 5, i32 1, i32 4
  %3 = ptrtoint ptr %flags4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %flags4, align 4
  %flags7 = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 5, i32 2, i32 4
  %4 = ptrtoint ptr %flags7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %flags7, align 4
  %call10 = tail call i32 @media_entity_pads_init(ptr noundef %subdev, i16 noundef zeroext 3, ptr noundef %pads) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call11 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 3, ptr noundef nonnull @s3c_camif_create_subdev._key, ptr noundef nonnull @.str.8) #11
  %call12 = tail call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %ctrl_handler, ptr noundef nonnull @s3c_camif_subdev_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 3, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @s3c_camif_test_pattern_menu) #11
  %ctrl_test_pattern = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 10
  %5 = ptrtoint ptr %ctrl_test_pattern to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call12, ptr %ctrl_test_pattern, align 4
  %variant = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 17
  %6 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %variant, align 8
  %has_img_effect = getelementptr inbounds %struct.s3c_camif_variant, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %has_img_effect to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %has_img_effect, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool13.not = icmp eq i8 %9, 0
  br i1 %tobool13.not, label %if.end.if.end17_crit_edge, label %if.then14

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call15 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @s3c_camif_subdev_ctrl_ops, i32 noundef 9963807, i8 noundef zeroext 15, i64 noundef -38944, i8 noundef zeroext 0) #11
  %10 = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 11
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call15, ptr %10, align 8
  %call16 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @s3c_camif_subdev_ctrl_ops, i32 noundef 9963818, i64 noundef 0, i64 noundef 65535, i64 noundef 1, i64 noundef 0) #11
  %ctrl_colorfx_cbcr = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 11, i32 1
  %12 = ptrtoint ptr %ctrl_colorfx_cbcr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call16, ptr %ctrl_colorfx_cbcr, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end.if.end17_crit_edge
  %error = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 9, i32 9
  %13 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool18.not = icmp eq i32 %14, 0
  br i1 %tobool18.not, label %if.end22, label %if.then19

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #11
  %15 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %error, align 4
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %17 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %variant, align 8
  %has_img_effect24 = getelementptr inbounds %struct.s3c_camif_variant, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %has_img_effect24 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %has_img_effect24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool25.not = icmp eq i8 %20, 0
  br i1 %tobool25.not, label %if.end22.if.end28_crit_edge, label %if.then26

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %21 = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 11
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %21, i8 noundef zeroext 15, i1 noundef zeroext false) #11
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end22.if.end28_crit_edge
  %ctrl_handler29 = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 2, i32 8
  %22 = ptrtoint ptr %ctrl_handler29 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %ctrl_handler, ptr %ctrl_handler29, align 4
  %dev_priv.i = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 2, i32 11
  %23 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %camif, ptr %dev_priv.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then19, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %if.then19 ], [ 0, %if.end28 ], [ %call10, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu_items(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @s3c_camif_unregister_subdev(ptr noundef %camif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 2, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %subdev = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 2
  tail call void @v4l2_device_unregister_subdev(ptr noundef %subdev) #11
  %ctrl_handler = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 9
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #11
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %dev_priv.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s3c_camif_set_defaults(ptr noundef %camif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %variant = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 17
  %0 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant, align 8
  %ip_revision = getelementptr inbounds %struct.s3c_camif_variant, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ip_revision to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ip_revision, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %3)
  %cmp6 = icmp eq i8 %3, 32
  %arrayidx = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 0
  %camif3 = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 0, i32 2
  %4 = ptrtoint ptr %camif3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %camif, ptr %camif3, align 8
  %id = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 0, i32 20
  %5 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %id, align 2
  %vp_offset = getelementptr inbounds %struct.s3c_camif_variant, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %vp_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vp_offset, align 4
  %offset = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 0, i32 24
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %offset, align 8
  %spec.select = select i1 %cmp6, i16 1, i16 4
  %9 = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 0, i32 19
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %spec.select, ptr %9, align 8
  %call = tail call ptr @s3c_camif_find_format(ptr noundef %arrayidx, ptr noundef null, i32 noundef 0) #11
  %out_fmt = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 0, i32 15
  %11 = ptrtoint ptr %out_fmt to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call, ptr %out_fmt, align 8
  %cmp11 = icmp eq ptr %call, null
  br i1 %cmp11, label %entry.do.body16_crit_edge, label %do.end22, !prof !206

entry.do.body16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body16

do.body16:                                        ; preds = %do.end22.do.body16_crit_edge, %entry.do.body16_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/platform/s3c-camif/camif-capture.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1627, 0\0A.popsection", ""() #11, !srcloc !208
  unreachable

do.end22:                                         ; preds = %entry
  %out_frame = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 0, i32 17
  %12 = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 0, i32 17, i32 2
  %13 = call ptr @memset(ptr %12, i32 0, i32 24)
  %14 = ptrtoint ptr %out_frame to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 640, ptr %out_frame, align 4
  %f_height = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 0, i32 17, i32 1
  %15 = ptrtoint ptr %f_height to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 480, ptr %f_height, align 2
  %width = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 0, i32 17, i32 2, i32 2
  %16 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 640, ptr %width, align 4
  %height = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 0, i32 17, i32 2, i32 3
  %17 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 480, ptr %height, align 4
  %enable = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 0, i32 14, i32 3
  %18 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %enable, align 1
  %depth = getelementptr inbounds %struct.camif_fmt, ptr %call, i32 0, i32 4
  %19 = ptrtoint ptr %depth to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %depth, align 4
  %conv29 = zext i8 %20 to i32
  %div71 = mul nuw nsw i32 %conv29, 38400
  %payload = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 0, i32 16
  %21 = ptrtoint ptr %payload to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div71, ptr %payload, align 4
  %arrayidx.1 = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 1
  %camif3.1 = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 1, i32 2
  %22 = ptrtoint ptr %camif3.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %camif, ptr %camif3.1, align 8
  %id.1 = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 1, i32 20
  %23 = ptrtoint ptr %id.1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %id.1, align 2
  %24 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %variant, align 8
  %vp_offset.1 = getelementptr inbounds %struct.s3c_camif_variant, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %vp_offset.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vp_offset.1, align 4
  %offset.1 = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 1, i32 24
  %28 = ptrtoint ptr %offset.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %offset.1, align 8
  %spec.select75 = select i1 %cmp6, i16 2, i16 4
  %29 = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 1, i32 19
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %spec.select75, ptr %29, align 8
  %call.1 = tail call ptr @s3c_camif_find_format(ptr noundef %arrayidx.1, ptr noundef null, i32 noundef 0) #11
  %out_fmt.1 = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 1, i32 15
  %31 = ptrtoint ptr %out_fmt.1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.1, ptr %out_fmt.1, align 8
  %cmp11.1 = icmp eq ptr %call.1, null
  br i1 %cmp11.1, label %do.end22.do.body16_crit_edge, label %do.end22.1, !prof !206

do.end22.do.body16_crit_edge:                     ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body16

do.end22.1:                                       ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #13
  %out_frame.1 = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 1, i32 17
  %32 = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 1, i32 17, i32 2
  %33 = call ptr @memset(ptr %32, i32 0, i32 24)
  %34 = ptrtoint ptr %out_frame.1 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 640, ptr %out_frame.1, align 4
  %f_height.1 = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 1, i32 17, i32 1
  %35 = ptrtoint ptr %f_height.1 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 480, ptr %f_height.1, align 2
  %width.1 = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 1, i32 17, i32 2, i32 2
  %36 = ptrtoint ptr %width.1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 640, ptr %width.1, align 4
  %height.1 = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 1, i32 17, i32 2, i32 3
  %37 = ptrtoint ptr %height.1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 480, ptr %height.1, align 4
  %enable.1 = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 1, i32 14, i32 3
  %38 = ptrtoint ptr %enable.1 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %enable.1, align 1
  %depth.1 = getelementptr inbounds %struct.camif_fmt, ptr %call.1, i32 0, i32 4
  %39 = ptrtoint ptr %depth.1 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %depth.1, align 4
  %conv29.1 = zext i8 %40 to i32
  %div71.1 = mul nuw nsw i32 %conv29.1, 38400
  %payload.1 = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 1, i32 16
  %41 = ptrtoint ptr %payload.1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %div71.1, ptr %payload.1, align 4
  %mbus_fmt = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 3
  %42 = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 3, i32 3
  %43 = call ptr @memset(ptr %42, i32 0, i32 36)
  %44 = ptrtoint ptr %mbus_fmt to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 640, ptr %mbus_fmt, align 4
  %height34 = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 3, i32 1
  %45 = ptrtoint ptr %height34 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 480, ptr %height34, align 4
  %code = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 3, i32 2
  %46 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 8200, ptr %code, align 4
  %camif_crop = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 4
  %47 = ptrtoint ptr %camif_crop to i32
  call void @__asan_storeN_noabort(i32 %47, i32 8)
  store i64 0, ptr %camif_crop, align 4
  %width37 = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 4, i32 2
  %48 = ptrtoint ptr %width37 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 640, ptr %width37, align 4
  %height39 = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 4, i32 3
  %49 = ptrtoint ptr %height39 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 480, ptr %height39, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @s3c_camif_find_format(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_camif_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %camif1 = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %camif1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %camif1, align 8
  %lock = getelementptr inbounds %struct.camif_dev, ptr %3, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %owner = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %owner, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data, align 4
  %cmp.not = icmp eq ptr %5, %7
  br i1 %cmp.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %vb_queue = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 7
  %call3 = tail call i32 @vb2_poll(ptr noundef %vb_queue, ptr noundef %file, ptr noundef %wait) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %ret.0 = phi i32 [ %call3, %if.else ], [ 8, %land.lhs.true.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_camif_mmap(ptr noundef %file, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %owner = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %owner, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %cmp.not = icmp eq ptr %3, %5
  br i1 %cmp.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %vb_queue = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 7
  %call2 = tail call i32 @vb2_mmap(ptr noundef %vb_queue, ptr noundef %vma) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %ret.0 = phi i32 [ %call2, %if.else ], [ -16, %land.lhs.true.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_camif_open(ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %camif1 = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %camif1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %camif1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_camif_open.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_camif_open, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !207

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %id = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 2
  %conv = zext i8 %5 to i32
  %state = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  %owner = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %owner, align 8
  %10 = tail call i32 @llvm.read_register.i32(metadata !194) #11
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 68
  %14 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_camif_open.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14, i32 noundef 541, i32 noundef %conv, i32 noundef %7, ptr noundef %9, i32 noundef %15) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.camif_dev, ptr %3, i32 0, i32 21
  %call7 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %call11 = tail call i32 @v4l2_fh_open(ptr noundef %file) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %if.end10.unlock_crit_edge, label %if.end14

if.end10.unlock_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end14:                                         ; preds = %if.end10
  %dev = getelementptr inbounds %struct.camif_dev, ptr %3, i32 0, i32 18
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %call.i42 = tail call i32 @__pm_runtime_resume(ptr noundef %17, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %cmp.i = icmp slt i32 %call.i42, 0
  br i1 %cmp.i, label %if.then.i, label %if.end19

if.then.i:                                        ; preds = %if.end14
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !209
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #11
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #11, !srcloc !210
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.err_pm_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.err_pm_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_pm

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !211
  br label %err_pm

if.end19:                                         ; preds = %if.end14
  %power_count.i = getelementptr inbounds %struct.camif_dev, ptr %3, i32 0, i32 7, i32 1
  %19 = ptrtoint ptr %power_count.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %power_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp.i44 = icmp eq i16 %20, 0
  br i1 %cmp.i44, label %if.then.i45, label %if.end19.if.then31.i_crit_edge

if.end19.if.then31.i_crit_edge:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then31.i

if.then.i45:                                      ; preds = %if.end19
  %sensor1.i = getelementptr inbounds %struct.camif_dev, ptr %3, i32 0, i32 7
  %21 = ptrtoint ptr %sensor1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sensor1.i, align 4
  %tobool4.not.i = icmp eq ptr %22, null
  br i1 %tobool4.not.i, label %if.then.i45.do.body.i_crit_edge, label %if.else.i

if.then.i45.do.body.i_crit_edge:                  ; preds = %if.then.i45
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.else.i:                                        ; preds = %if.then.i45
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %tobool6.not.i = icmp eq ptr %26, null
  br i1 %tobool6.not.i, label %if.else.i.if.then31.i_crit_edge, label %land.lhs.true.i

if.else.i.if.then31.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then31.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %s_power.i = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %26, i32 0, i32 10
  %27 = ptrtoint ptr %s_power.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_power.i, align 4
  %tobool9.not.i = icmp eq ptr %28, null
  br i1 %tobool9.not.i, label %land.lhs.true.i.if.then31.i_crit_edge, label %if.else11.i

land.lhs.true.i.if.then31.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then31.i

if.else11.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %29 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool12.not.i = icmp eq ptr %29, null
  br i1 %tobool12.not.i, label %if.else11.i.if.else18.i_crit_edge, label %land.lhs.true13.i

if.else11.i.if.else18.i_crit_edge:                ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else18.i

land.lhs.true13.i:                                ; preds = %if.else11.i
  %s_power14.i = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %s_power14.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_power14.i, align 4
  %tobool15.not.i = icmp eq ptr %31, null
  br i1 %tobool15.not.i, label %land.lhs.true13.i.if.else18.i_crit_edge, label %land.lhs.true13.i.if.end25.i_crit_edge

land.lhs.true13.i.if.end25.i_crit_edge:           ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i

land.lhs.true13.i.if.else18.i_crit_edge:          ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else18.i

if.else18.i:                                      ; preds = %land.lhs.true13.i.if.else18.i_crit_edge, %if.else11.i.if.else18.i_crit_edge
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else18.i, %land.lhs.true13.i.if.end25.i_crit_edge
  %.sink.i = phi ptr [ %28, %if.else18.i ], [ %31, %land.lhs.true13.i.if.end25.i_crit_edge ]
  %call.i46 = tail call i32 %.sink.i(ptr noundef nonnull %22, i32 noundef 1) #11
  %32 = zext i32 %call.i46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i46, label %if.end25.i.do.body.i_crit_edge [
    i32 -515, label %if.end25.i.if.then31.i_crit_edge
    i32 0, label %if.end25.i.if.then31.i_crit_edge51
  ]

if.end25.i.if.then31.i_crit_edge51:               ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then31.i

if.end25.i.if.then31.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then31.i

if.end25.i.do.body.i_crit_edge:                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.then31.i:                                      ; preds = %if.end25.i.if.then31.i_crit_edge, %if.end25.i.if.then31.i_crit_edge51, %land.lhs.true.i.if.then31.i_crit_edge, %if.else.i.if.then31.i_crit_edge, %if.end19.if.then31.i_crit_edge
  %33 = ptrtoint ptr %power_count.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %power_count.i, align 4
  %add.i = add i16 %34, 1
  store i16 %add.i, ptr %power_count.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.then31.i, %if.end25.i.do.body.i_crit_edge, %if.then.i45.do.body.i_crit_edge
  %35 = phi i32 [ 0, %if.then31.i ], [ -19, %if.then.i45.do.body.i_crit_edge ], [ %call.i46, %if.end25.i.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sensor_set_power.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_camif_open, %if.then45.i)) #11
          to label %sensor_set_power.exit [label %if.then45.i], !srcloc !207

if.then45.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %power_count.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %power_count.i, align 4
  %conv47.i = sext i16 %37 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sensor_set_power.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef 123, i32 noundef 1, i32 noundef %conv47.i, i32 noundef %35) #11
  br label %sensor_set_power.exit

sensor_set_power.exit:                            ; preds = %if.then45.i, %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool21.not = icmp eq i32 %35, 0
  br i1 %tobool21.not, label %sensor_set_power.exit.unlock_crit_edge, label %if.end23

sensor_set_power.exit.unlock_crit_edge:           ; preds = %sensor_set_power.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end23:                                         ; preds = %sensor_set_power.exit
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  %call.i47 = tail call i32 @__pm_runtime_idle(ptr noundef %39, i32 noundef 5) #11
  br label %err_pm

err_pm:                                           ; preds = %if.end23, %do.end11.i.i.i.i.i, %if.then.i.err_pm_crit_edge
  %ret.0 = phi i32 [ %35, %if.end23 ], [ %call.i42, %if.then.i.err_pm_crit_edge ], [ %call.i42, %do.end11.i.i.i.i.i ]
  %call26 = tail call i32 @v4l2_fh_release(ptr noundef %file) #11
  br label %unlock

unlock:                                           ; preds = %err_pm, %sensor_set_power.exit.unlock_crit_edge, %if.end10.unlock_crit_edge
  %ret.1 = phi i32 [ %call11, %if.end10.unlock_crit_edge ], [ %ret.0, %err_pm ], [ 0, %sensor_set_power.exit.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #11
  br label %cleanup

cleanup:                                          ; preds = %unlock, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %unlock ], [ -512, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_camif_close(ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %camif1 = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %camif1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %camif1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_camif_close.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_camif_close, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !207

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %id = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 2
  %conv = zext i8 %5 to i32
  %state = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  %owner = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %owner, align 8
  %10 = tail call i32 @llvm.read_register.i32(metadata !194) #11
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 68
  %14 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_camif_close.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20, i32 noundef 573, i32 noundef %conv, i32 noundef %7, ptr noundef %9, i32 noundef %15) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.camif_dev, ptr %3, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %owner7 = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %owner7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %owner7, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %18 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %private_data, align 4
  %cmp = icmp eq ptr %17, %19
  br i1 %cmp, label %if.then9, label %do.end.if.end12_crit_edge

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @camif_stop_capture(ptr noundef %1)
  %vb_queue = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 7
  tail call void @vb2_queue_release(ptr noundef %vb_queue) #11
  %20 = ptrtoint ptr %owner7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %owner7, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %do.end.if.end12_crit_edge
  %power_count.i = getelementptr inbounds %struct.camif_dev, ptr %3, i32 0, i32 7, i32 1
  %21 = ptrtoint ptr %power_count.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %power_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %22)
  %cmp.i = icmp eq i16 %22, 1
  br i1 %cmp.i, label %if.then.i, label %if.end12.if.then31.i_crit_edge

if.end12.if.then31.i_crit_edge:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then31.i

if.then.i:                                        ; preds = %if.end12
  %sensor1.i = getelementptr inbounds %struct.camif_dev, ptr %3, i32 0, i32 7
  %23 = ptrtoint ptr %sensor1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sensor1.i, align 4
  %tobool4.not.i = icmp eq ptr %24, null
  br i1 %tobool4.not.i, label %if.then.i.do.body.i_crit_edge, label %if.else.i

if.then.i.do.body.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.else.i:                                        ; preds = %if.then.i
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %tobool6.not.i = icmp eq ptr %28, null
  br i1 %tobool6.not.i, label %if.else.i.if.then31.i_crit_edge, label %land.lhs.true.i

if.else.i.if.then31.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then31.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %s_power.i = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %28, i32 0, i32 10
  %29 = ptrtoint ptr %s_power.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_power.i, align 4
  %tobool9.not.i = icmp eq ptr %30, null
  br i1 %tobool9.not.i, label %land.lhs.true.i.if.then31.i_crit_edge, label %if.else11.i

land.lhs.true.i.if.then31.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then31.i

if.else11.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %31 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool12.not.i = icmp eq ptr %31, null
  br i1 %tobool12.not.i, label %if.else11.i.if.else18.i_crit_edge, label %land.lhs.true13.i

if.else11.i.if.else18.i_crit_edge:                ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else18.i

land.lhs.true13.i:                                ; preds = %if.else11.i
  %s_power14.i = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %31, i32 0, i32 10
  %32 = ptrtoint ptr %s_power14.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_power14.i, align 4
  %tobool15.not.i = icmp eq ptr %33, null
  br i1 %tobool15.not.i, label %land.lhs.true13.i.if.else18.i_crit_edge, label %land.lhs.true13.i.if.end25.i_crit_edge

land.lhs.true13.i.if.end25.i_crit_edge:           ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i

land.lhs.true13.i.if.else18.i_crit_edge:          ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else18.i

if.else18.i:                                      ; preds = %land.lhs.true13.i.if.else18.i_crit_edge, %if.else11.i.if.else18.i_crit_edge
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else18.i, %land.lhs.true13.i.if.end25.i_crit_edge
  %.sink.i = phi ptr [ %30, %if.else18.i ], [ %33, %land.lhs.true13.i.if.end25.i_crit_edge ]
  %call.i29 = tail call i32 %.sink.i(ptr noundef nonnull %24, i32 noundef 0) #11
  %34 = zext i32 %call.i29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %call.i29, label %if.end25.i.do.body.i_crit_edge [
    i32 -515, label %if.end25.i.if.then31.i_crit_edge
    i32 0, label %if.end25.i.if.then31.i_crit_edge32
  ]

if.end25.i.if.then31.i_crit_edge32:               ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then31.i

if.end25.i.if.then31.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then31.i

if.end25.i.do.body.i_crit_edge:                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.then31.i:                                      ; preds = %if.end25.i.if.then31.i_crit_edge, %if.end25.i.if.then31.i_crit_edge32, %land.lhs.true.i.if.then31.i_crit_edge, %if.else.i.if.then31.i_crit_edge, %if.end12.if.then31.i_crit_edge
  %35 = ptrtoint ptr %power_count.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %power_count.i, align 4
  %add.i = add i16 %36, -1
  store i16 %add.i, ptr %power_count.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.then31.i, %if.end25.i.do.body.i_crit_edge, %if.then.i.do.body.i_crit_edge
  %37 = phi i32 [ 0, %if.then31.i ], [ -19, %if.then.i.do.body.i_crit_edge ], [ %call.i29, %if.end25.i.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sensor_set_power.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_camif_close, %if.then45.i)) #11
          to label %sensor_set_power.exit [label %if.then45.i], !srcloc !207

if.then45.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %power_count.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %power_count.i, align 4
  %conv47.i = sext i16 %39 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sensor_set_power.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef 123, i32 noundef 0, i32 noundef %conv47.i, i32 noundef %37) #11
  br label %sensor_set_power.exit

sensor_set_power.exit:                            ; preds = %if.then45.i, %do.body.i
  %dev = getelementptr inbounds %struct.camif_dev, ptr %3, i32 0, i32 18
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  %call.i30 = tail call i32 @__pm_runtime_idle(ptr noundef %41, i32 noundef 5) #11
  %call15 = tail call i32 @v4l2_fh_release(ptr noundef %file) #11
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %call15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_poll(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_mmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @camif_stop_capture(ptr noundef %vp) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %camif1 = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 2
  %0 = ptrtoint ptr %camif1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %camif1, align 8
  %slock.i = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 22
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i) #11
  %state.i = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 18
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i, align 4
  %4 = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %.not = icmp eq i32 %4, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock.i, i32 noundef %call3.i) #11
  br i1 %.not, label %entry.cleanup87_crit_edge, label %do.body2

entry.cleanup87_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup87

do.body2:                                         ; preds = %entry
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i) #11
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state.i, align 4
  %and = and i32 %6, -113
  %or = or i32 %and, 16
  store i32 %or, ptr %state.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock.i, i32 noundef %call4) #11
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 223) #11
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state.i, align 4
  %and17 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool.not = icmp eq i32 %and17, 0
  br i1 %tobool.not, label %if.end59.thread, label %if.then29

if.end59.thread:                                  ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  %call706 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i) #11
  br label %if.end84

if.then29:                                        ; preds = %do.body2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %9 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %call329 = call i32 @prepare_to_wait_event(ptr noundef %vp, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state.i, align 4
  %and3510 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3510)
  %tobool36.not11 = icmp eq i32 %and3510, 0
  br i1 %tobool36.not11, label %if.then29.if.end59_crit_edge, label %if.then29.cleanup_crit_edge

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  br label %cleanup

if.then29.if.end59_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then29.cleanup_crit_edge
  %__ret30.112 = phi i32 [ %__ret30.1, %cleanup.cleanup_crit_edge ], [ 150, %if.then29.cleanup_crit_edge ]
  %call56 = call i32 @schedule_timeout(i32 noundef %__ret30.112) #11
  %call32 = call i32 @prepare_to_wait_event(ptr noundef %vp, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state.i, align 4
  %and35 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool42.not = icmp eq i32 %call56, 0
  %14 = select i1 %tobool36.not, i1 %tobool42.not, i1 false
  %__ret30.1 = select i1 %14, i32 1, i32 %call56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret30.1)
  %tobool49.not = icmp eq i32 %__ret30.1, 0
  %15 = select i1 %tobool36.not, i1 true, i1 %tobool49.not
  br i1 %15, label %if.end59.loopexit, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end59.loopexit:                                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret30.1)
  %phi.cmp = icmp eq i32 %__ret30.1, 0
  br label %if.end59

if.end59:                                         ; preds = %if.end59.loopexit, %if.then29.if.end59_crit_edge
  %__ret30.1.lcssa = phi i1 [ false, %if.then29.if.end59_crit_edge ], [ %phi.cmp, %if.end59.loopexit ]
  call void @finish_wait(ptr noundef %vp, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  %call70 = call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i) #11
  br i1 %__ret30.1.lcssa, label %land.lhs.true77, label %if.end59.if.end84_crit_edge

if.end59.if.end84_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84

land.lhs.true77:                                  ; preds = %if.end59
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state.i, align 4
  %and79 = and i32 %17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.then81, label %land.lhs.true77.if.end84_crit_edge

land.lhs.true77.if.end84_crit_edge:               ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84

if.then81:                                        ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #13
  %and83 = and i32 %17, -113
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and83, ptr %state.i, align 4
  call void @camif_hw_disable_capture(ptr noundef %vp) #11
  call void @camif_hw_enable_scaler(ptr noundef %vp, i1 noundef zeroext false) #11
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %land.lhs.true77.if.end84_crit_edge, %if.end59.if.end84_crit_edge, %if.end59.thread
  %call708 = phi i32 [ %call706, %if.end59.thread ], [ %call70, %if.then81 ], [ %call70, %land.lhs.true77.if.end84_crit_edge ], [ %call70, %if.end59.if.end84_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %slock.i, i32 noundef %call708) #11
  %call86 = call fastcc i32 @camif_reinitialize(ptr noundef %vp)
  br label %cleanup87

cleanup87:                                        ; preds = %if.end84, %entry.cleanup87_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_queue_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @camif_reinitialize(ptr noundef %vp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %camif1 = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 2
  %0 = ptrtoint ptr %camif1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %camif1, align 8
  %slock = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 22
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #11
  %state = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 18
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and7 = and i32 %3, -128
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and7, ptr %state, align 4
  %pending_buf_q = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 8
  %5 = ptrtoint ptr %pending_buf_q to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %pending_buf_q, align 4
  %cmp.i.not45 = icmp eq ptr %6, %pending_buf_q
  br i1 %cmp.i.not45, label %entry.while.cond11.preheader_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.cond11.preheader_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond11.preheader

while.cond11.preheader:                           ; preds = %camif_pending_queue_pop.exit.while.cond11.preheader_crit_edge, %entry.while.cond11.preheader_crit_edge
  %active_buf_q = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 9
  %7 = ptrtoint ptr %active_buf_q to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %active_buf_q, align 4
  %cmp.i35.not46 = icmp eq ptr %8, %active_buf_q
  br i1 %cmp.i35.not46, label %while.cond11.preheader.while.end19_crit_edge, label %while.body15.lr.ph

while.cond11.preheader.while.end19_crit_edge:     ; preds = %while.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end19

while.body15.lr.ph:                               ; preds = %while.cond11.preheader
  %active_buffers.i = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 10
  br label %while.body15

while.body:                                       ; preds = %camif_pending_queue_pop.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %9 = phi ptr [ %19, %camif_pending_queue_pop.exit.while.body_crit_edge ], [ %6, %entry.while.body_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %9) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.camif_pending_queue_pop.exit_crit_edge

while.body.camif_pending_queue_pop.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %camif_pending_queue_pop.exit

if.end.i.i.i:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %camif_pending_queue_pop.exit

camif_pending_queue_pop.exit:                     ; preds = %if.end.i.i.i, %while.body.camif_pending_queue_pop.exit_crit_edge
  %add.ptr.i = getelementptr i8, ptr %9, i32 -736
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %9, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %add.ptr.i, i32 noundef 6) #11
  %18 = ptrtoint ptr %pending_buf_q to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %pending_buf_q, align 4
  %cmp.i.not = icmp eq ptr %19, %pending_buf_q
  br i1 %cmp.i.not, label %camif_pending_queue_pop.exit.while.cond11.preheader_crit_edge, label %camif_pending_queue_pop.exit.while.body_crit_edge

camif_pending_queue_pop.exit.while.body_crit_edge: ; preds = %camif_pending_queue_pop.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

camif_pending_queue_pop.exit.while.cond11.preheader_crit_edge: ; preds = %camif_pending_queue_pop.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond11.preheader

while.body15:                                     ; preds = %camif_active_queue_pop.exit.while.body15_crit_edge, %while.body15.lr.ph
  %20 = phi ptr [ %8, %while.body15.lr.ph ], [ %32, %camif_active_queue_pop.exit.while.body15_crit_edge ]
  %call.i.i.i37 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %20) #11
  br i1 %call.i.i.i37, label %if.end.i.i.i40, label %while.body15.camif_active_queue_pop.exit_crit_edge

while.body15.camif_active_queue_pop.exit_crit_edge: ; preds = %while.body15
  call void @__sanitizer_cov_trace_pc() #13
  br label %camif_active_queue_pop.exit

if.end.i.i.i40:                                   ; preds = %while.body15
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i38 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i38, align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 4
  %prev1.i.i.i.i39 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i.i39 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i.i39, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %camif_active_queue_pop.exit

camif_active_queue_pop.exit:                      ; preds = %if.end.i.i.i40, %while.body15.camif_active_queue_pop.exit_crit_edge
  %add.ptr.i41 = getelementptr i8, ptr %20, i32 -736
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %20, align 4
  %prev.i.i42 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i42 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i42, align 4
  %29 = ptrtoint ptr %active_buffers.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %active_buffers.i, align 4
  %dec.i = add i32 %30, -1
  store i32 %dec.i, ptr %active_buffers.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %add.ptr.i41, i32 noundef 6) #11
  %31 = ptrtoint ptr %active_buf_q to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %active_buf_q, align 4
  %cmp.i35.not = icmp eq ptr %32, %active_buf_q
  br i1 %cmp.i35.not, label %camif_active_queue_pop.exit.while.end19_crit_edge, label %camif_active_queue_pop.exit.while.body15_crit_edge

camif_active_queue_pop.exit.while.body15_crit_edge: ; preds = %camif_active_queue_pop.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body15

camif_active_queue_pop.exit.while.end19_crit_edge: ; preds = %camif_active_queue_pop.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end19

while.end19:                                      ; preds = %camif_active_queue_pop.exit.while.end19_crit_edge, %while.cond11.preheader.while.end19_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call3) #11
  br i1 %tobool.not, label %while.end19.cleanup_crit_edge, label %if.end

while.end19.cleanup_crit_edge:                    ; preds = %while.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %while.end19
  %stream_count.i = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 7, i32 2
  %33 = ptrtoint ptr %stream_count.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %stream_count.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %34)
  %cmp.i44 = icmp eq i16 %34, 1
  br i1 %cmp.i44, label %if.then.i, label %if.end.if.then27.i_crit_edge

if.end.if.then27.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27.i

if.then.i:                                        ; preds = %if.end
  %sensor1.i = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 7
  %35 = ptrtoint ptr %sensor1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sensor1.i, align 4
  %tobool4.not.i = icmp eq ptr %36, null
  br i1 %tobool4.not.i, label %if.then.i.do.body.i_crit_edge, label %if.else.i

if.then.i.do.body.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.else.i:                                        ; preds = %if.then.i
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops.i, align 4
  %video.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %video.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %video.i, align 4
  %tobool6.not.i = icmp eq ptr %40, null
  br i1 %tobool6.not.i, label %if.else.i.do.body.i_crit_edge, label %land.lhs.true.i

if.else.i.do.body.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %s_stream.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %40, i32 0, i32 10
  %41 = ptrtoint ptr %s_stream.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_stream.i, align 4
  %tobool9.not.i = icmp eq ptr %42, null
  br i1 %tobool9.not.i, label %land.lhs.true.i.do.body.i_crit_edge, label %if.else11.i

land.lhs.true.i.do.body.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.else11.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool12.not.i = icmp eq ptr %43, null
  br i1 %tobool12.not.i, label %if.else11.i.if.else18.i_crit_edge, label %land.lhs.true13.i

if.else11.i.if.else18.i_crit_edge:                ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else18.i

land.lhs.true13.i:                                ; preds = %if.else11.i
  %s_stream14.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %43, i32 0, i32 10
  %44 = ptrtoint ptr %s_stream14.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_stream14.i, align 4
  %tobool15.not.i = icmp eq ptr %45, null
  br i1 %tobool15.not.i, label %land.lhs.true13.i.if.else18.i_crit_edge, label %land.lhs.true13.i.if.end25.i_crit_edge

land.lhs.true13.i.if.end25.i_crit_edge:           ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i

land.lhs.true13.i.if.else18.i_crit_edge:          ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else18.i

if.else18.i:                                      ; preds = %land.lhs.true13.i.if.else18.i_crit_edge, %if.else11.i.if.else18.i_crit_edge
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else18.i, %land.lhs.true13.i.if.end25.i_crit_edge
  %.sink.i = phi ptr [ %42, %if.else18.i ], [ %45, %land.lhs.true13.i.if.end25.i_crit_edge ]
  %call.i = tail call i32 %.sink.i(ptr noundef nonnull %36, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool26.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool26.not.i, label %if.end25.i.if.then27.i_crit_edge, label %if.end25.i.do.body.i_crit_edge

if.end25.i.do.body.i_crit_edge:                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.end25.i.if.then27.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27.i

if.then27.i:                                      ; preds = %if.end25.i.if.then27.i_crit_edge, %if.end.if.then27.i_crit_edge
  %46 = ptrtoint ptr %stream_count.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %stream_count.i, align 2
  %add.i = add i16 %47, -1
  store i16 %add.i, ptr %stream_count.i, align 2
  br label %do.body.i

do.body.i:                                        ; preds = %if.then27.i, %if.end25.i.do.body.i_crit_edge, %land.lhs.true.i.do.body.i_crit_edge, %if.else.i.do.body.i_crit_edge, %if.then.i.do.body.i_crit_edge
  %err.064.i = phi i32 [ %call.i, %if.end25.i.do.body.i_crit_edge ], [ 0, %if.then27.i ], [ -515, %if.else.i.do.body.i_crit_edge ], [ -515, %land.lhs.true.i.do.body.i_crit_edge ], [ -19, %if.then.i.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sensor_set_streaming.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@camif_reinitialize, %if.then41.i)) #11
          to label %cleanup [label %if.then41.i], !srcloc !207

if.then41.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %stream_count.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %stream_count.i, align 2
  %conv43.i = sext i16 %49 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sensor_set_streaming.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23, i32 noundef 139, i32 noundef 0, i32 noundef %conv43.i, i32 noundef %err.064.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then41.i, %do.body.i, %while.end19.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end19.cleanup_crit_edge ], [ %err.064.i, %do.body.i ], [ %err.064.i, %if.then41.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_camif_vidioc_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.26, i32 noundef 16) #11
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call3 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.26, i32 noundef 32) #11
  %camif = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %camif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %camif, align 8
  %dev = getelementptr inbounds %struct.camif_dev, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %id = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 20
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %id, align 2
  %conv = zext i8 %11 to i32
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.27, ptr noundef %retval.0.i, i32 noundef %conv)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_camif_vidioc_enum_fmt(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  %call1 = tail call ptr @s3c_camif_find_format(ptr noundef %1, ptr noundef null, i32 noundef %3) #11
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call1, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %6 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %pixelformat, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_camif_vidioc_g_fmt(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %out_frame = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 17
  %out_fmt = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %out_fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %out_fmt, align 8
  %4 = ptrtoint ptr %out_frame to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %out_frame, align 4
  %conv = zext i16 %5 to i32
  %ybpp = getelementptr inbounds %struct.camif_fmt, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %ybpp to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ybpp, align 1
  %conv2 = zext i8 %7 to i32
  %mul = mul nuw nsw i32 %conv2, %conv
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %8 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul, ptr %bytesperline, align 4
  %payload = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 16
  %9 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %payload, align 4
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %11 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %sizeimage, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %3, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %pixelformat, align 4
  %15 = load i16, ptr %out_frame, align 4
  %conv4 = zext i16 %15 to i32
  %16 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv4, ptr %fmt, align 4
  %f_height = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 17, i32 1
  %17 = ptrtoint ptr %f_height to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %f_height, align 2
  %conv5 = zext i16 %18 to i32
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv5, ptr %height, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %20 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %field, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %21 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 7, ptr %colorspace, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_camif_vidioc_s_fmt(ptr noundef %file, ptr noundef %priv, ptr noundef %f) #0 align 64 {
entry:
  %fmt2 = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %out_frame1 = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fmt2) #11
  %2 = ptrtoint ptr %fmt2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fmt2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_camif_vidioc_s_fmt.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_camif_vidioc_s_fmt, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !207

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %id = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 20
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %id, align 2
  %conv = zext i8 %4 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_camif_vidioc_s_fmt.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28, i32 noundef 775, i32 noundef %conv) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %num_buffers.i = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 7, i32 21
  %5 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.not = icmp eq i32 %6, 0
  br i1 %cmp.i.not, label %if.end8, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %call10 = call fastcc i32 @__camif_video_try_format(ptr noundef %1, ptr noundef %fmt, ptr noundef nonnull %fmt2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %7 = ptrtoint ptr %fmt2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fmt2, align 4
  %out_fmt = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 15
  %9 = ptrtoint ptr %out_fmt to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %out_fmt, align 8
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %10 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sizeimage, align 4
  %payload = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 16
  %12 = ptrtoint ptr %payload to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %payload, align 4
  %13 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fmt, align 4
  %conv14 = trunc i32 %14 to i16
  %15 = ptrtoint ptr %out_frame1 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv14, ptr %out_frame1, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height, align 4
  %conv15 = trunc i32 %17 to i16
  %f_height = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 17, i32 1
  %18 = ptrtoint ptr %f_height to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv15, ptr %f_height, align 2
  %19 = load i32, ptr %fmt, align 4
  %rect = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 17, i32 2
  %width17 = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 17, i32 2, i32 2
  %20 = ptrtoint ptr %width17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %width17, align 4
  %21 = load i32, ptr %height, align 4
  %height20 = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 17, i32 2, i32 3
  %22 = ptrtoint ptr %height20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %height20, align 4
  %23 = ptrtoint ptr %rect to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %rect, align 4
  %top = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 17, i32 2, i32 1
  %24 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %top, align 4
  %owner = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 6
  %25 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %owner, align 8
  %cmp23 = icmp eq ptr %26, null
  br i1 %cmp23, label %if.then25, label %if.end13.do.body28_crit_edge

if.end13.do.body28_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body28

if.then25:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %priv, ptr %owner, align 8
  br label %do.body28

do.body28:                                        ; preds = %if.then25, %if.end13.do.body28_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_camif_vidioc_s_fmt.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_camif_vidioc_s_fmt, %if.then40)) #11
          to label %cleanup [label %if.then40], !srcloc !207

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %out_frame1 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %out_frame1, align 4
  %conv42 = zext i16 %29 to i32
  %30 = ptrtoint ptr %f_height to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %f_height, align 2
  %conv44 = zext i16 %31 to i32
  %32 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %payload, align 4
  %34 = ptrtoint ptr %fmt2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fmt2, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %38 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %fmt, align 4
  %40 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %height, align 4
  %mul = mul i32 %41, %39
  %depth = getelementptr inbounds %struct.camif_fmt, ptr %35, i32 0, i32 4
  %42 = ptrtoint ptr %depth to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %depth, align 4
  %conv48 = zext i8 %43 to i32
  %mul49 = mul i32 %mul, %conv48
  %44 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sizeimage, align 4
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %46 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bytesperline, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_camif_vidioc_s_fmt.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.28, i32 noundef 801, i32 noundef %conv42, i32 noundef %conv44, i32 noundef %33, i32 noundef %37, i32 noundef %mul49, i32 noundef %conv48, i32 noundef %45, i32 noundef %47) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %do.body28, %if.end8.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end.cleanup_crit_edge ], [ %call10, %if.end8.cleanup_crit_edge ], [ 0, %if.then40 ], [ 0, %do.body28 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fmt2) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_camif_vidioc_try_fmt(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %call1 = tail call fastcc i32 @__camif_video_try_format(ptr noundef %1, ptr noundef %fmt, ptr noundef null)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_camif_reqbufs(ptr noundef %file, ptr noundef %priv, ptr noundef %rb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_camif_reqbufs.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_camif_reqbufs, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !207

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %id = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id, align 2
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rb, align 4
  %owner = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %owner, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_camif_reqbufs.__UNIQUE_ID_ddebug322, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.38, i32 noundef 892, i32 noundef %conv, i32 noundef %5, ptr noundef %7, ptr noundef %priv) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %owner4 = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %owner4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %owner4, align 8
  %tobool5.not = icmp eq ptr %9, null
  %cmp.not = icmp eq ptr %9, %priv
  %or.cond = or i1 %tobool5.not, %cmp.not
  br i1 %or.cond, label %if.end9, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %10 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool11.not = icmp eq i32 %11, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %12 = tail call i32 @llvm.umax.i32(i32 %11, i32 3)
  %13 = ptrtoint ptr %rb to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %rb, align 4
  br label %if.end19

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %owner4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %owner4, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then12
  %vb_queue = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 7
  %call20 = tail call i32 @vb2_reqbufs(ptr noundef %vb_queue, ptr noundef %rb) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end19.cleanup_crit_edge, label %if.end24

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  %15 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rb, align 4
  %17 = add i32 %16, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %18 = icmp ult i32 %17, 2
  br i1 %18, label %if.then31, label %if.end24.if.end35_crit_edge

if.end24.if.end35_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then31:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %rb to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %rb, align 4
  %call34 = tail call i32 @vb2_reqbufs(ptr noundef %vb_queue, ptr noundef %rb) #11
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %if.end24.if.end35_crit_edge
  %ret.0 = phi i32 [ -12, %if.then31 ], [ %call20, %if.end24.if.end35_crit_edge ]
  %20 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rb, align 4
  %reqbufs_count = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 13
  %22 = ptrtoint ptr %reqbufs_count to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %reqbufs_count, align 8
  %23 = ptrtoint ptr %owner4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %owner4, align 8
  %cmp38 = icmp eq ptr %24, null
  br i1 %cmp38, label %land.lhs.true40, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true40:                                  ; preds = %if.end35
  %25 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp42.not = icmp eq i32 %26, 0
  br i1 %cmp42.not, label %land.lhs.true40.cleanup_crit_edge, label %if.then44

land.lhs.true40.cleanup_crit_edge:                ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then44:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %owner4 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %priv, ptr %owner4, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %land.lhs.true40.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end.cleanup_crit_edge ], [ %call20, %if.end19.cleanup_crit_edge ], [ %ret.0, %if.then44 ], [ %ret.0, %land.lhs.true40.cleanup_crit_edge ], [ %ret.0, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_camif_querybuf(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %vb_queue = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 7
  %call1 = tail call i32 @vb2_querybuf(ptr noundef %vb_queue, ptr noundef %buf) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_camif_qbuf(ptr noundef %file, ptr noundef readnone %priv, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_camif_qbuf.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_camif_qbuf, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !207

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %id = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id, align 2
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_camif_qbuf.__UNIQUE_ID_ddebug325, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.41, i32 noundef 931, i32 noundef %conv) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %owner = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %owner, align 8
  %tobool4.not = icmp eq ptr %5, null
  %cmp.not = icmp eq ptr %5, %priv
  %or.cond = or i1 %tobool4.not, %cmp.not
  br i1 %or.cond, label %if.end8, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %vb_queue = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 7
  %v4l2_dev = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 4, i32 7
  %6 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %v4l2_dev, align 4
  %mdev = getelementptr inbounds %struct.v4l2_device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdev, align 4
  %call9 = tail call i32 @vb2_qbuf(ptr noundef %vb_queue, ptr noundef %9, ptr noundef %buf) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ -16, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_camif_dqbuf(ptr noundef %file, ptr noundef readnone %priv, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_camif_dqbuf.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_camif_dqbuf, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !207

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %id = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id, align 2
  %conv = zext i8 %3 to i32
  %frame_sequence = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %frame_sequence to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %frame_sequence, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_camif_dqbuf.__UNIQUE_ID_ddebug326, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.42, i32 noundef 944, i32 noundef %conv, i32 noundef %5) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %owner = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %owner, align 8
  %tobool4.not = icmp eq ptr %7, null
  %cmp.not = icmp eq ptr %7, %priv
  %or.cond = or i1 %tobool4.not, %cmp.not
  br i1 %or.cond, label %if.end8, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %vb_queue = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 7
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %8 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f_flags, align 4
  %and = and i32 %9, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9 = icmp ne i32 %and, 0
  %call10 = tail call i32 @vb2_dqbuf(ptr noundef %vb_queue, ptr noundef %buf, i1 noundef zeroext %tobool9) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end8 ], [ -16, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_camif_create_bufs(ptr noundef %file, ptr noundef %priv, ptr noundef %create) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %owner = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %owner, align 8
  %tobool.not = icmp eq ptr %3, null
  %cmp.not = icmp eq ptr %3, %priv
  %or.cond = or i1 %tobool.not, %cmp.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %count = getelementptr inbounds %struct.v4l2_create_buffers, ptr %create, i32 0, i32 1
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2 = icmp eq i32 %5, 0
  %. = select i1 %cmp2, i32 1, i32 %5
  %6 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %., ptr %count, align 4
  %vb_queue = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 7
  %call4 = tail call i32 @vb2_create_bufs(ptr noundef %vb_queue, ptr noundef %create) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true6:                                   ; preds = %if.end
  %7 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %owner, align 8
  %cmp8 = icmp eq ptr %8, null
  br i1 %cmp8, label %if.then9, label %land.lhs.true6.cleanup_crit_edge

land.lhs.true6.cleanup_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then9:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %priv, ptr %owner, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %land.lhs.true6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ 0, %if.then9 ], [ 0, %land.lhs.true6.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_camif_prepare_buf(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %b) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %vb_queue = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 7
  %v4l2_dev = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 4, i32 7
  %2 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v4l2_dev, align 4
  %mdev = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev, align 4
  %call1 = tail call i32 @vb2_prepare_buf(ptr noundef %vb_queue, ptr noundef %5, ptr noundef %b) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_camif_streamon(ptr noundef %file, ptr noundef readnone %priv, i32 noundef %type) #0 align 64 {
entry:
  %src_fmt.i = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %camif1 = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %camif1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %camif1, align 8
  %sensor2 = getelementptr inbounds %struct.camif_dev, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %sensor2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sensor2, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_camif_streamon.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_camif_streamon, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !207

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %id = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id, align 2
  %conv = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_camif_streamon.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.45, i32 noundef 840, i32 noundef %conv) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp.not = icmp eq i32 %type, 1
  br i1 %cmp.not, label %if.end8, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %owner = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %owner, align 8
  %tobool9.not = icmp eq ptr %9, null
  %cmp11.not = icmp eq ptr %9, %priv
  %or.cond = or i1 %tobool9.not, %cmp11.not
  br i1 %or.cond, label %if.end14, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %10 = ptrtoint ptr %camif1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %camif1, align 8
  %slock.i = getelementptr inbounds %struct.camif_dev, ptr %11, i32 0, i32 22
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i) #11
  %state.i = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 18
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state.i, align 4
  %14 = and i32 %13, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %.not = icmp eq i32 %14, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock.i, i32 noundef %call3.i) #11
  br i1 %.not, label %if.end17, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17:                                         ; preds = %if.end14
  %m_pipeline = getelementptr inbounds %struct.camif_dev, ptr %3, i32 0, i32 8
  %15 = ptrtoint ptr %m_pipeline to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %m_pipeline, align 8
  %call18 = tail call i32 @media_pipeline_start(ptr noundef %5, ptr noundef %16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end17.cleanup_crit_edge, label %if.end22

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %src_fmt.i) #11
  %17 = getelementptr inbounds i8, ptr %src_fmt.i, i32 8
  %18 = call ptr @memset(ptr %17, i32 255, i32 80)
  %pads.i = getelementptr inbounds %struct.camif_dev, ptr %3, i32 0, i32 5
  %call.i44 = tail call ptr @media_entity_remote_pad(ptr noundef %pads.i) #11
  %tobool.not.i = icmp eq ptr %call.i44, null
  br i1 %tobool.not.i, label %if.end22.if.then26_crit_edge, label %lor.lhs.false.i

if.end22.if.then26_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26

lor.lhs.false.i:                                  ; preds = %if.end22
  %entity.i = getelementptr inbounds %struct.media_pad, ptr %call.i44, i32 0, i32 1
  %19 = ptrtoint ptr %entity.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %entity.i, align 4
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.if.then26_crit_edge, label %is_media_entity_v4l2_subdev.exit.i

lor.lhs.false.i.if.then26_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26

is_media_entity_v4l2_subdev.exit.i:               ; preds = %lor.lhs.false.i
  %obj_type.i.i = getelementptr inbounds %struct.media_entity, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %obj_type.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %obj_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp.i.i = icmp eq i32 %22, 2
  br i1 %cmp.i.i, label %if.end.i, label %is_media_entity_v4l2_subdev.exit.i.if.then26_crit_edge

is_media_entity_v4l2_subdev.exit.i.if.then26_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26

if.end.i:                                         ; preds = %is_media_entity_v4l2_subdev.exit.i
  %index.i = getelementptr inbounds %struct.media_pad, ptr %call.i44, i32 0, i32 2
  %23 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %index.i, align 4
  %conv.i = zext i16 %24 to i32
  %pad2.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %src_fmt.i, i32 0, i32 1
  %25 = ptrtoint ptr %pad2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv.i, ptr %pad2.i, align 4
  %26 = ptrtoint ptr %src_fmt.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %src_fmt.i, align 4
  %27 = ptrtoint ptr %sensor2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sensor2, align 8
  %tobool3.not.i = icmp eq ptr %28, null
  br i1 %tobool3.not.i, label %if.end.i.if.end26.i_crit_edge, label %if.else.i

if.end.i.if.end26.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i

if.else.i:                                        ; preds = %if.end.i
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i, align 4
  %pad5.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %pad5.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pad5.i, align 4
  %tobool6.not.i = icmp eq ptr %32, null
  br i1 %tobool6.not.i, label %if.else.i.if.end32.i_crit_edge, label %land.lhs.true.i

if.else.i.if.end32.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %get_fmt.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %get_fmt.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %get_fmt.i, align 4
  %tobool9.not.i = icmp eq ptr %34, null
  br i1 %tobool9.not.i, label %land.lhs.true.i.if.end32.i_crit_edge, label %if.else11.i

land.lhs.true.i.if.end32.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i

if.else11.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool12.not.i = icmp eq ptr %35, null
  br i1 %tobool12.not.i, label %if.else11.i.if.else19.i_crit_edge, label %land.lhs.true13.i

if.else11.i.if.else19.i_crit_edge:                ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else19.i

land.lhs.true13.i:                                ; preds = %if.else11.i
  %get_fmt14.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %get_fmt14.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %get_fmt14.i, align 4
  %tobool15.not.i = icmp eq ptr %37, null
  br i1 %tobool15.not.i, label %land.lhs.true13.i.if.else19.i_crit_edge, label %land.lhs.true13.i.if.end26.sink.split.i_crit_edge

land.lhs.true13.i.if.end26.sink.split.i_crit_edge: ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.sink.split.i

land.lhs.true13.i.if.else19.i_crit_edge:          ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else19.i

if.else19.i:                                      ; preds = %land.lhs.true13.i.if.else19.i_crit_edge, %if.else11.i.if.else19.i_crit_edge
  br label %if.end26.sink.split.i

if.end26.sink.split.i:                            ; preds = %if.else19.i, %land.lhs.true13.i.if.end26.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %34, %if.else19.i ], [ %37, %land.lhs.true13.i.if.end26.sink.split.i_crit_edge ]
  %call23.i = call i32 %.sink.i(ptr noundef nonnull %28, ptr noundef null, ptr noundef nonnull %src_fmt.i) #11
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.end26.sink.split.i, %if.end.i.if.end26.i_crit_edge
  %__result.0.i = phi i32 [ -19, %if.end.i.if.end26.i_crit_edge ], [ %call23.i, %if.end26.sink.split.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %__result.0.i)
  %cmp.i = icmp sgt i32 %__result.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %__result.0.i)
  %cmp29.not.i = icmp eq i32 %__result.0.i, -515
  %or.cond.i = or i1 %cmp.i, %cmp29.not.i
  br i1 %or.cond.i, label %if.end26.i.if.end32.i_crit_edge, label %if.end26.i.if.then26_crit_edge

if.end26.i.if.then26_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26

if.end26.i.if.end32.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.end26.i.if.end32.i_crit_edge, %land.lhs.true.i.if.end32.i_crit_edge, %if.else.i.if.end32.i_crit_edge
  %38 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %17, align 4
  %mbus_fmt.i = getelementptr inbounds %struct.camif_dev, ptr %3, i32 0, i32 3
  %40 = ptrtoint ptr %mbus_fmt.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mbus_fmt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp34.not.i = icmp eq i32 %39, %41
  br i1 %cmp34.not.i, label %lor.lhs.false36.i, label %if.end32.i.if.then26_crit_edge

if.end32.i.if.then26_crit_edge:                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26

lor.lhs.false36.i:                                ; preds = %if.end32.i
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %src_fmt.i, i32 0, i32 2, i32 1
  %42 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %height.i, align 4
  %height39.i = getelementptr inbounds %struct.camif_dev, ptr %3, i32 0, i32 3, i32 1
  %44 = ptrtoint ptr %height39.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %height39.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp40.not.i = icmp eq i32 %43, %45
  br i1 %cmp40.not.i, label %lor.lhs.false42.i, label %lor.lhs.false36.i.if.then26_crit_edge

lor.lhs.false36.i.if.then26_crit_edge:            ; preds = %lor.lhs.false36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26

lor.lhs.false42.i:                                ; preds = %lor.lhs.false36.i
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %src_fmt.i, i32 0, i32 2, i32 2
  %46 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %code.i, align 4
  %code45.i = getelementptr inbounds %struct.camif_dev, ptr %3, i32 0, i32 3, i32 2
  %48 = ptrtoint ptr %code45.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %code45.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp46.not.i = icmp eq i32 %47, %49
  br i1 %cmp46.not.i, label %if.end27, label %lor.lhs.false42.i.if.then26_crit_edge

lor.lhs.false42.i.if.then26_crit_edge:            ; preds = %lor.lhs.false42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26

if.then26:                                        ; preds = %lor.lhs.false42.i.if.then26_crit_edge, %lor.lhs.false36.i.if.then26_crit_edge, %if.end32.i.if.then26_crit_edge, %if.end26.i.if.then26_crit_edge, %is_media_entity_v4l2_subdev.exit.i.if.then26_crit_edge, %lor.lhs.false.i.if.then26_crit_edge, %if.end22.if.then26_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %src_fmt.i) #11
  call void @media_pipeline_stop(ptr noundef %5) #11
  br label %cleanup

if.end27:                                         ; preds = %lor.lhs.false42.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %src_fmt.i) #11
  %vb_queue = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 7
  %call28 = call i32 @vb2_streamon(ptr noundef %vb_queue, i32 noundef 1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then26, %if.end17.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -32, %if.then26 ], [ %call28, %if.end27 ], [ -22, %do.end.cleanup_crit_edge ], [ -16, %if.end8.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ %call18, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_camif_streamoff(ptr noundef %file, ptr noundef readnone %priv, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %camif1 = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %camif1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %camif1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_camif_streamoff.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_camif_streamoff, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !207

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %id = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 2
  %conv = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_camif_streamoff.__UNIQUE_ID_ddebug321, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.46, i32 noundef 871, i32 noundef %conv) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp.not = icmp eq i32 %type, 1
  br i1 %cmp.not, label %if.end7, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %owner = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %owner, align 8
  %tobool8.not = icmp eq ptr %7, null
  %cmp10.not = icmp eq ptr %7, %priv
  %or.cond = or i1 %tobool8.not, %cmp10.not
  br i1 %or.cond, label %if.end13, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %vb_queue = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 7
  %call14 = tail call i32 @vb2_streamoff(ptr noundef %vb_queue, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %sensor = getelementptr inbounds %struct.camif_dev, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sensor, align 8
  tail call void @media_pipeline_stop(ptr noundef %9) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end13.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.cleanup_crit_edge ], [ -16, %if.end7.cleanup_crit_edge ], [ 0, %if.then17 ], [ %call14, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_camif_vidioc_enum_input(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %input) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %camif = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %camif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %camif, align 8
  %sensor1 = getelementptr inbounds %struct.camif_dev, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %sensor1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sensor1, align 8
  %6 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %input, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp ne i32 %7, 0
  %cmp = icmp eq ptr %5, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %type = getelementptr inbounds %struct.v4l2_input, ptr %input, i32 0, i32 2
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %type, align 4
  %name = getelementptr inbounds %struct.v4l2_input, ptr %input, i32 0, i32 1
  %name2 = getelementptr inbounds %struct.v4l2_subdev, ptr %5, i32 0, i32 9
  %call4 = tail call i32 @strscpy(ptr noundef %name, ptr noundef %name2, i32 noundef 32) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @s3c_camif_vidioc_g_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %i) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s3c_camif_vidioc_s_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, i32 noundef %i) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i)
  %cmp = icmp eq i32 %i, 0
  %cond = select i1 %cmp, i32 0, i32 -22
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_camif_g_selection(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %sel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 1
  %4 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 258, label %if.end.sw.bb_crit_edge
    i32 257, label %if.end.sw.bb_crit_edge17
    i32 256, label %sw.bb6
  ]

if.end.sw.bb_crit_edge17:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge17
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3
  %7 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %top, align 4
  %out_frame = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 17
  %9 = ptrtoint ptr %out_frame to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %out_frame, align 8
  %conv = zext i16 %10 to i32
  %width = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %width, align 4
  %f_height = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 17, i32 1
  %12 = ptrtoint ptr %f_height to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %f_height, align 2
  %conv4 = zext i16 %13 to i32
  %height = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv4, ptr %height, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %r7 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3
  %rect = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 17, i32 2
  %15 = call ptr @memcpy(ptr %r7, ptr %rect, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb6, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb6 ], [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_camif_s_selection(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %sel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %camif1 = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %camif1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %camif1, align 8
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3
  %4 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %4)
  %rect.sroa.0.0.copyload = load i32, ptr %r, align 4
  %rect.sroa.7.0.r.sroa_idx = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %rect.sroa.7.0.r.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %rect.sroa.7.0.copyload = load i32, ptr %rect.sroa.7.0.r.sroa_idx, align 4
  %rect.sroa.8.0.r.sroa_idx = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %rect.sroa.8.0.r.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %rect.sroa.8.0.copyload = load i32, ptr %rect.sroa.8.0.r.sroa_idx, align 4
  %rect.sroa.9.0.r.sroa_idx = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %rect.sroa.9.0.r.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %rect.sroa.9.0.copyload = load i32, ptr %rect.sroa.9.0.r.sroa_idx, align 4
  %8 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.not = icmp eq i32 %9, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 1
  %10 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %11)
  %cmp2.not = icmp eq i32 %11, 256
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %variant.i = getelementptr inbounds %struct.camif_dev, ptr %3, i32 0, i32 17
  %12 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %variant.i, align 8
  %ip_revision.i = getelementptr inbounds %struct.s3c_camif_variant, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %ip_revision.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ip_revision.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %15)
  %cmp.i = icmp eq i8 %15, 32
  br i1 %cmp.i, label %if.then.i, label %if.end.__camif_try_compose.exit_crit_edge

if.end.__camif_try_compose.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %__camif_try_compose.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %rect.i = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 17, i32 2
  %16 = ptrtoint ptr %rect.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %rect.sroa.0.0.copyload48 = load i32, ptr %rect.i, align 4
  %rect.sroa.7.0.rect.i.sroa_idx = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 17, i32 2, i32 1
  %17 = ptrtoint ptr %rect.sroa.7.0.rect.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %17)
  %rect.sroa.7.0.copyload52 = load i32, ptr %rect.sroa.7.0.rect.i.sroa_idx, align 4
  %rect.sroa.8.0.rect.i.sroa_idx = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 17, i32 2, i32 2
  %18 = ptrtoint ptr %rect.sroa.8.0.rect.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %rect.sroa.8.0.copyload56 = load i32, ptr %rect.sroa.8.0.rect.i.sroa_idx, align 4
  %rect.sroa.9.0.rect.i.sroa_idx = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 17, i32 2, i32 3
  %19 = ptrtoint ptr %rect.sroa.9.0.rect.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %19)
  %rect.sroa.9.0.copyload60 = load i32, ptr %rect.sroa.9.0.rect.i.sroa_idx, align 4
  br label %__camif_try_compose.exit

__camif_try_compose.exit:                         ; preds = %if.then.i, %if.end.__camif_try_compose.exit_crit_edge
  %rect.sroa.9.0 = phi i32 [ %rect.sroa.9.0.copyload60, %if.then.i ], [ %rect.sroa.9.0.copyload, %if.end.__camif_try_compose.exit_crit_edge ]
  %rect.sroa.8.0 = phi i32 [ %rect.sroa.8.0.copyload56, %if.then.i ], [ %rect.sroa.8.0.copyload, %if.end.__camif_try_compose.exit_crit_edge ]
  %rect.sroa.7.0 = phi i32 [ %rect.sroa.7.0.copyload52, %if.then.i ], [ %rect.sroa.7.0.copyload, %if.end.__camif_try_compose.exit_crit_edge ]
  %rect.sroa.0.0 = phi i32 [ %rect.sroa.0.0.copyload48, %if.then.i ], [ %rect.sroa.0.0.copyload, %if.end.__camif_try_compose.exit_crit_edge ]
  %20 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %rect.sroa.0.0, ptr %r, align 4
  %21 = ptrtoint ptr %rect.sroa.7.0.r.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %rect.sroa.7.0, ptr %rect.sroa.7.0.r.sroa_idx, align 4
  %22 = ptrtoint ptr %rect.sroa.8.0.r.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %rect.sroa.8.0, ptr %rect.sroa.8.0.r.sroa_idx, align 4
  %23 = ptrtoint ptr %rect.sroa.9.0.r.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %rect.sroa.9.0, ptr %rect.sroa.9.0.r.sroa_idx, align 4
  %slock = getelementptr inbounds %struct.camif_dev, ptr %3, i32 0, i32 22
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #11
  %rect10 = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 17, i32 2
  %24 = ptrtoint ptr %rect10 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %rect.sroa.0.0, ptr %rect10, align 4
  %rect.sroa.7.0.rect10.sroa_idx = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 17, i32 2, i32 1
  %25 = ptrtoint ptr %rect.sroa.7.0.rect10.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %rect.sroa.7.0, ptr %rect.sroa.7.0.rect10.sroa_idx, align 4
  %rect.sroa.8.0.rect10.sroa_idx = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 17, i32 2, i32 2
  %26 = ptrtoint ptr %rect.sroa.8.0.rect10.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %rect.sroa.8.0, ptr %rect.sroa.8.0.rect10.sroa_idx, align 4
  %rect.sroa.9.0.rect10.sroa_idx = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 17, i32 2, i32 3
  %27 = ptrtoint ptr %rect.sroa.9.0.rect10.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %rect.sroa.9.0, ptr %rect.sroa.9.0.rect10.sroa_idx, align 4
  %state = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 18
  %28 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %state, align 4
  %or = or i32 %29, 256
  store i32 %or, ptr %state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call7) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_camif_s_selection.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_camif_s_selection, %if.then17)) #11
          to label %cleanup [label %if.then17], !srcloc !207

if.then17:                                        ; preds = %__camif_try_compose.exit
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sel, align 4
  %32 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %target, align 4
  %flags20 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 2
  %34 = ptrtoint ptr %flags20 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags20, align 4
  %36 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %r, align 4
  %38 = ptrtoint ptr %rect.sroa.7.0.r.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rect.sroa.7.0.r.sroa_idx, align 4
  %40 = ptrtoint ptr %rect.sroa.8.0.r.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rect.sroa.8.0.r.sroa_idx, align 4
  %42 = ptrtoint ptr %rect.sroa.9.0.r.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rect.sroa.9.0.r.sroa_idx, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_camif_s_selection.__UNIQUE_ID_ddebug329, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef 1036, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef %43) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %__camif_try_compose.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then17 ], [ 0, %__camif_try_compose.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__camif_video_try_format(ptr noundef %vp, ptr noundef %pix, ptr noundef writeonly %ffmt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %camif1 = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 2
  %0 = ptrtoint ptr %camif1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %camif1, align 8
  %pixelformat = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 2
  %call = tail call ptr @s3c_camif_find_format(ptr noundef %vp, ptr noundef %pixelformat, i32 noundef 0) #11
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %do.end, label %if.end22, !prof !206

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 720, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end22:                                         ; preds = %entry
  %tobool23.not = icmp eq ptr %ffmt, null
  br i1 %tobool23.not, label %if.end22.if.end25_crit_edge, label %if.then24

if.end22.if.end25_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %ffmt to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %ffmt, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end22.if.end25_crit_edge
  %variant = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 17
  %3 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %variant, align 8
  %id = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 20
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %id, align 2
  %idxprom = zext i8 %6 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__camif_video_try_format.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__camif_video_try_format, %if.then36)) #11
          to label %do.end41 [label %if.then36], !srcloc !207

if.then36:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %pix to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pix, align 4
  %height = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 1
  %9 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %height, align 4
  %width37 = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %width37 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %width37, align 4
  %height38 = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 4, i32 3
  %13 = ptrtoint ptr %height38 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height38, align 4
  %bytesperline = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 4
  %15 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bytesperline, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__camif_video_try_format.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.33, i32 noundef 730, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16) #11
  br label %do.end41

do.end41:                                         ; preds = %if.then36, %if.end25
  %width42 = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 4, i32 2
  %17 = ptrtoint ptr %width42 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %width42, align 4
  %19 = tail call i32 @llvm.cttz.i32(i32 %18, i1 true), !range !212
  %.op = add nsw i32 %19, -2
  %.op.op = shl nuw nsw i32 1, %.op
  %20 = tail call i32 @llvm.smin.i32(i32 %.op.op, i32 64)
  %height45 = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 4, i32 3
  %21 = ptrtoint ptr %height45 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %height45, align 4
  %23 = tail call i32 @llvm.cttz.i32(i32 %22, i1 true), !range !212
  %.op170 = shl nuw i32 1, %23
  %24 = tail call i32 @llvm.smin.i32(i32 %.op170, i32 64)
  %min_out_width = getelementptr [2 x %struct.vp_pix_limits], ptr %4, i32 0, i32 %idxprom, i32 4
  %25 = ptrtoint ptr %min_out_width to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %min_out_width, align 2
  %conv = zext i8 %26 to i32
  %div = udiv i32 %18, %20
  %27 = tail call i32 @llvm.umax.i32(i32 %div, i32 %conv)
  %sub64 = add i32 %27, -1
  %out_width_align = getelementptr [2 x %struct.vp_pix_limits], ptr %4, i32 0, i32 %idxprom, i32 2
  %28 = ptrtoint ptr %out_width_align to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %out_width_align, align 2
  %conv65 = zext i16 %29 to i32
  %sub66 = add nsw i32 %conv65, -1
  %or = or i32 %sub66, %sub64
  %add = add i32 %or, 1
  %div68 = udiv i32 %22, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div68)
  %cmp70 = icmp ult i32 %div68, 8
  %phi.bo = add i32 %div68, -1
  %phi.bo171 = or i32 %phi.bo, 7
  %phi.bo172 = add i32 %phi.bo171, 1
  %cond75 = select i1 %cmp70, i32 8, i32 %phi.bo172
  %max_sc_out_width = getelementptr [2 x %struct.vp_pix_limits], ptr %4, i32 0, i32 %idxprom, i32 1
  %30 = ptrtoint ptr %max_sc_out_width to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %max_sc_out_width, align 2
  %conv80 = zext i16 %31 to i32
  %32 = tail call i16 @llvm.cttz.i16(i16 %29, i1 true), !range !213
  %33 = zext i16 %32 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %iszero83 = icmp eq i16 %29, 0
  %sub85 = select i1 %iszero83, i32 -1, i32 %33
  %height86 = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 1
  %max_height = getelementptr [2 x %struct.vp_pix_limits], ptr %4, i32 0, i32 %idxprom, i32 3
  %34 = ptrtoint ptr %max_height to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %max_height, align 2
  %conv87 = zext i16 %35 to i32
  tail call void @v4l_bound_align_image(ptr noundef %pix, i32 noundef %add, i32 noundef %conv80, i32 noundef %sub85, ptr noundef %height86, i32 noundef %cond75, i32 noundef %conv87, i32 noundef 0, i32 noundef 0) #11
  %36 = ptrtoint ptr %pix to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pix, align 4
  %ybpp = getelementptr inbounds %struct.camif_fmt, ptr %call, i32 0, i32 5
  %38 = ptrtoint ptr %ybpp to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ybpp, align 1
  %conv89 = zext i8 %39 to i32
  %mul = mul i32 %37, %conv89
  %bytesperline90 = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 4
  %40 = ptrtoint ptr %bytesperline90 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %mul, ptr %bytesperline90, align 4
  %41 = ptrtoint ptr %height86 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %height86, align 4
  %mul93 = mul i32 %42, %37
  %depth = getelementptr inbounds %struct.camif_fmt, ptr %call, i32 0, i32 4
  %43 = ptrtoint ptr %depth to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %depth, align 4
  %conv94 = zext i8 %44 to i32
  %mul95 = mul i32 %mul93, %conv94
  %div96173 = lshr i32 %mul95, 3
  %sizeimage = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 5
  %45 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %div96173, ptr %sizeimage, align 4
  %46 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %call, align 4
  %48 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %pixelformat, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 6
  %49 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 7, ptr %colorspace, align 4
  %field = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 3
  %50 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %field, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__camif_video_try_format.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__camif_video_try_format, %if.then110)) #11
          to label %cleanup [label %if.then110], !srcloc !207

if.then110:                                       ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %pix to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pix, align 4
  %53 = ptrtoint ptr %height86 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %height86, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__camif_video_try_format.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.33, i32 noundef 754, i32 noundef %52, i32 noundef %54, i32 noundef %add, i32 noundef %cond75, i32 noundef %20, i32 noundef %24) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then110, %do.end41, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then110 ], [ 0, %do.end41 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_reqbufs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_querybuf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_qbuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_dqbuf(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_create_bufs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_prepare_buf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_pipeline_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_pipeline_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_streamon(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_streamoff(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef readnone %num_buffers, ptr nocapture noundef %num_planes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %out_fmt = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %out_fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %out_fmt, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %out_frame = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %out_frame to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %out_frame, align 4
  %conv = zext i16 %5 to i32
  %f_height = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 17, i32 1
  %6 = ptrtoint ptr %f_height to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %f_height, align 2
  %conv1 = zext i16 %7 to i32
  %mul = mul nuw i32 %conv1, %conv
  %depth = getelementptr inbounds %struct.camif_fmt, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %depth to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %depth, align 4
  %conv2 = zext i8 %9 to i32
  %mul3 = mul i32 %mul, %conv2
  %div = sdiv i32 %mul3, 8
  %10 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_planes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %div)
  %cmp5 = icmp ult i32 %13, %div
  %cond = select i1 %cmp5, i32 -22, i32 0
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %num_planes, align 4
  %15 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div, ptr %sizes, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @queue_setup.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@queue_setup, %if.then13)) #11
          to label %cleanup [label %if.then13], !srcloc !207

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sizes, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @queue_setup.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.50, i32 noundef 457, i32 noundef %17) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end7, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.then4 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then13 ], [ 0, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @buffer_prepare(ptr nocapture noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %out_fmt = getelementptr inbounds %struct.camif_vp, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %out_fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %out_fmt, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %6 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 0
  br i1 %cmp.not.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %if.end
  %payload = getelementptr inbounds %struct.camif_vp, ptr %3, i32 0, i32 16
  %8 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %payload, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp2.not = icmp eq i32 %9, 0
  br i1 %cmp2.not, label %vb2_plane_size.exit.cleanup_crit_edge, label %vb2_plane_size.exit.vb2_plane_size.exit21_crit_edge

vb2_plane_size.exit.vb2_plane_size.exit21_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %vb2_plane_size.exit21

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

vb2_plane_size.exit.thread:                       ; preds = %if.end
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %10 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length.i, align 8
  %payload27 = getelementptr inbounds %struct.camif_vp, ptr %3, i32 0, i32 16
  %12 = ptrtoint ptr %payload27 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %payload27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp228 = icmp ult i32 %11, %13
  br i1 %cmp228, label %vb2_plane_size.exit.thread.vb2_plane_size.exit21_crit_edge, label %if.end42.i

vb2_plane_size.exit.thread.vb2_plane_size.exit21_crit_edge: ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %vb2_plane_size.exit21

vb2_plane_size.exit21:                            ; preds = %vb2_plane_size.exit.thread.vb2_plane_size.exit21_crit_edge, %vb2_plane_size.exit.vb2_plane_size.exit21_crit_edge
  %14 = phi i32 [ %9, %vb2_plane_size.exit.vb2_plane_size.exit21_crit_edge ], [ %13, %vb2_plane_size.exit.thread.vb2_plane_size.exit21_crit_edge ]
  %retval.0.i20 = phi i32 [ 0, %vb2_plane_size.exit.vb2_plane_size.exit21_crit_edge ], [ %11, %vb2_plane_size.exit.thread.vb2_plane_size.exit21_crit_edge ]
  %name31 = getelementptr inbounds %struct.camif_vp, ptr %3, i32 0, i32 4, i32 12
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %name31, i32 noundef %retval.0.i20, i32 noundef %14) #14
  br label %cleanup

if.end42.i:                                       ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %15 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %13, ptr %bytesused.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42.i, %vb2_plane_size.exit21, %vb2_plane_size.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %vb2_plane_size.exit21 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %vb2_plane_size.exit.cleanup_crit_edge ], [ 0, %if.end42.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %camif1 = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %camif1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %camif1, align 8
  %slock = getelementptr inbounds %struct.camif_dev, ptr %3, i32 0, i32 22
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #11
  %stream_count = getelementptr inbounds %struct.camif_dev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp7 = icmp eq i32 %5, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @camif_hw_reset(ptr noundef %3) #11
  %variant1.i = getelementptr inbounds %struct.camif_dev, ptr %3, i32 0, i32 17
  %6 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %variant1.i, align 8
  %sensor.i = getelementptr inbounds %struct.camif_dev, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sensor.i, align 8
  %cmp.i = icmp eq ptr %9, null
  br i1 %cmp.i, label %if.then.if.end.thread_crit_edge, label %lor.lhs.false.i

if.then.if.end.thread_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.thread

lor.lhs.false.i:                                  ; preds = %if.then
  %out_fmt.i = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 15
  %10 = ptrtoint ptr %out_fmt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %out_fmt.i, align 8
  %cmp2.i = icmp eq ptr %11, null
  br i1 %cmp2.i, label %lor.lhs.false.i.if.end.thread_crit_edge, label %if.end.i

lor.lhs.false.i.if.end.thread_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.thread

if.end.i:                                         ; preds = %lor.lhs.false.i
  %ip_revision.i = getelementptr inbounds %struct.s3c_camif_variant, ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %ip_revision.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ip_revision.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %13)
  %cmp3.i = icmp eq i8 %13, 32
  br i1 %cmp3.i, label %if.then5.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @camif_hw_clear_fifo_overflow(ptr noundef %1) #11
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end.i.if.end6.i_crit_edge
  tail call void @camif_hw_set_camera_bus(ptr noundef %3) #11
  tail call void @camif_hw_set_source_format(ptr noundef %3) #11
  tail call void @camif_hw_set_camera_crop(ptr noundef %3) #11
  %test_pattern.i = getelementptr inbounds %struct.camif_dev, ptr %3, i32 0, i32 12
  %14 = ptrtoint ptr %test_pattern.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %test_pattern.i, align 8
  %conv7.i = zext i8 %15 to i32
  tail call void @camif_hw_set_test_pattern(ptr noundef %3, i32 noundef %conv7.i) #11
  %has_img_effect.i = getelementptr inbounds %struct.s3c_camif_variant, ptr %7, i32 0, i32 3
  %16 = ptrtoint ptr %has_img_effect.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %has_img_effect.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %if.end6.i.if.end12.i_crit_edge, label %if.then8.i

if.end6.i.if.end12.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %colorfx.i = getelementptr inbounds %struct.camif_dev, ptr %3, i32 0, i32 13
  %18 = ptrtoint ptr %colorfx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %colorfx.i, align 1
  %conv9.i = zext i8 %19 to i32
  %colorfx_cr.i = getelementptr inbounds %struct.camif_dev, ptr %3, i32 0, i32 15
  %20 = ptrtoint ptr %colorfx_cr.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %colorfx_cr.i, align 1
  %conv10.i = zext i8 %21 to i32
  %colorfx_cb.i = getelementptr inbounds %struct.camif_dev, ptr %3, i32 0, i32 14
  %22 = ptrtoint ptr %colorfx_cb.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %colorfx_cb.i, align 2
  %conv11.i = zext i8 %23 to i32
  tail call void @camif_hw_set_effect(ptr noundef %3, i32 noundef %conv9.i, i32 noundef %conv10.i, i32 noundef %conv11.i) #11
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then8.i, %if.end6.i.if.end12.i_crit_edge
  %24 = ptrtoint ptr %ip_revision.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ip_revision.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %25)
  %cmp15.i = icmp eq i8 %25, 50
  br i1 %cmp15.i, label %if.then17.i, label %if.end12.i.if.end18.i_crit_edge

if.end12.i.if.end18.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.i

if.then17.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @camif_hw_set_input_path(ptr noundef %1) #11
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then17.i, %if.end12.i.if.end18.i_crit_edge
  %scaler.i.i = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 14
  %call.i.i = tail call i32 @s3c_camif_get_scaler_config(ptr noundef %1, ptr noundef %scaler.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end18.i.if.end.thread102_crit_edge, label %do.end.i.i, !prof !214

if.end18.i.if.end.thread102_crit_edge:            ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.thread102

do.end.i.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 46, i32 noundef 9, ptr noundef null) #11
  br label %if.end.thread102

if.end.thread102:                                 ; preds = %do.end.i.i, %if.end18.i.if.end.thread102_crit_edge
  tail call void @camif_hw_set_scaler(ptr noundef %1) #11
  tail call void @camif_hw_set_flip(ptr noundef %1) #11
  tail call void @camif_hw_set_target_format(ptr noundef %1) #11
  tail call void @camif_hw_set_output_dma(ptr noundef %1) #11
  %state.i = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 18
  %26 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state.i, align 4
  %and.i = and i32 %27, -257
  store i32 %and.i, ptr %state.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call4) #11
  br label %do.body18

if.end.thread:                                    ; preds = %lor.lhs.false.i.if.end.thread_crit_edge, %if.then.if.end.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call4) #11
  br label %if.then14

if.end:                                           ; preds = %entry
  %call10 = tail call fastcc i32 @s3c_camif_hw_vp_init(ptr noundef %3, ptr noundef %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp12 = icmp slt i32 %call10, 0
  br i1 %cmp12, label %if.end.if.then14_crit_edge, label %if.end.do.body18_crit_edge

if.end.do.body18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body18

if.end.if.then14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

if.then14:                                        ; preds = %if.end.if.then14_crit_edge, %if.end.thread
  %ret.0101 = phi i32 [ -22, %if.end.thread ], [ %call10, %if.end.if.then14_crit_edge ]
  %call15 = tail call fastcc i32 @camif_reinitialize(ptr noundef %1)
  br label %cleanup

do.body18:                                        ; preds = %if.end.do.body18_crit_edge, %if.end.thread102
  %call26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #11
  %frame_sequence = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 12
  %28 = ptrtoint ptr %frame_sequence to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %frame_sequence, align 4
  %state = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 18
  %29 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %state, align 4
  %or = or i32 %30, 1
  store i32 %or, ptr %state, align 4
  %pending_buf_q = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 8
  %31 = ptrtoint ptr %pending_buf_q to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %pending_buf_q, align 4
  %cmp.i96.not = icmp eq ptr %32, %pending_buf_q
  %33 = and i32 %30, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %33)
  %.not = icmp eq i32 %33, 12
  %or.cond = select i1 %cmp.i96.not, i1 true, i1 %.not
  br i1 %or.cond, label %do.body18.if.end61_crit_edge, label %if.then37

do.body18.if.end61_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.then37:                                        ; preds = %do.body18
  %enable = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 14, i32 3
  %34 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool38 = icmp ne i8 %35, 0
  tail call void @camif_hw_enable_scaler(ptr noundef %1, i1 noundef zeroext %tobool38) #11
  tail call void @camif_hw_enable_capture(ptr noundef %1) #11
  %36 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %state, align 4
  %or40 = or i32 %37, 4
  store i32 %or40, ptr %state, align 4
  %and42 = and i32 %37, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.then44, label %if.then37.if.end61_crit_edge

if.then37.if.end61_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.then44:                                        ; preds = %if.then37
  %or46 = or i32 %37, 12
  %38 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or46, ptr %state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call26) #11
  %stream_count.i = getelementptr inbounds %struct.camif_dev, ptr %3, i32 0, i32 7, i32 2
  %39 = ptrtoint ptr %stream_count.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %stream_count.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %cmp.i98 = icmp eq i16 %40, 0
  br i1 %cmp.i98, label %if.then.i, label %if.then44.if.then27.i_crit_edge

if.then44.if.then27.i_crit_edge:                  ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27.i

if.then.i:                                        ; preds = %if.then44
  %sensor1.i = getelementptr inbounds %struct.camif_dev, ptr %3, i32 0, i32 7
  %41 = ptrtoint ptr %sensor1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sensor1.i, align 4
  %tobool4.not.i = icmp eq ptr %42, null
  br i1 %tobool4.not.i, label %if.then.i.do.body.i_crit_edge, label %if.else.i

if.then.i.do.body.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.else.i:                                        ; preds = %if.then.i
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops.i, align 4
  %video.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %video.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %video.i, align 4
  %tobool6.not.i = icmp eq ptr %46, null
  br i1 %tobool6.not.i, label %if.else.i.do.body.i_crit_edge, label %land.lhs.true.i

if.else.i.do.body.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %s_stream.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %46, i32 0, i32 10
  %47 = ptrtoint ptr %s_stream.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %s_stream.i, align 4
  %tobool9.not.i = icmp eq ptr %48, null
  br i1 %tobool9.not.i, label %land.lhs.true.i.do.body.i_crit_edge, label %if.else11.i

land.lhs.true.i.do.body.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.else11.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool12.not.i = icmp eq ptr %49, null
  br i1 %tobool12.not.i, label %if.else11.i.if.else18.i_crit_edge, label %land.lhs.true13.i

if.else11.i.if.else18.i_crit_edge:                ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else18.i

land.lhs.true13.i:                                ; preds = %if.else11.i
  %s_stream14.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %49, i32 0, i32 10
  %50 = ptrtoint ptr %s_stream14.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %s_stream14.i, align 4
  %tobool15.not.i = icmp eq ptr %51, null
  br i1 %tobool15.not.i, label %land.lhs.true13.i.if.else18.i_crit_edge, label %land.lhs.true13.i.if.end25.i_crit_edge

land.lhs.true13.i.if.end25.i_crit_edge:           ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i

land.lhs.true13.i.if.else18.i_crit_edge:          ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else18.i

if.else18.i:                                      ; preds = %land.lhs.true13.i.if.else18.i_crit_edge, %if.else11.i.if.else18.i_crit_edge
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else18.i, %land.lhs.true13.i.if.end25.i_crit_edge
  %.sink.i = phi ptr [ %48, %if.else18.i ], [ %51, %land.lhs.true13.i.if.end25.i_crit_edge ]
  %call.i = tail call i32 %.sink.i(ptr noundef nonnull %42, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool26.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool26.not.i, label %if.end25.i.if.then27.i_crit_edge, label %if.end25.i.do.body.i_crit_edge

if.end25.i.do.body.i_crit_edge:                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.end25.i.if.then27.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27.i

if.then27.i:                                      ; preds = %if.end25.i.if.then27.i_crit_edge, %if.then44.if.then27.i_crit_edge
  %52 = ptrtoint ptr %stream_count.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %stream_count.i, align 2
  %add.i = add i16 %53, 1
  store i16 %add.i, ptr %stream_count.i, align 2
  br label %do.body.i

do.body.i:                                        ; preds = %if.then27.i, %if.end25.i.do.body.i_crit_edge, %land.lhs.true.i.do.body.i_crit_edge, %if.else.i.do.body.i_crit_edge, %if.then.i.do.body.i_crit_edge
  %err.064.i = phi i32 [ %call.i, %if.end25.i.do.body.i_crit_edge ], [ 0, %if.then27.i ], [ -515, %if.else.i.do.body.i_crit_edge ], [ -515, %land.lhs.true.i.do.body.i_crit_edge ], [ -19, %if.then.i.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sensor_set_streaming.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start_streaming, %if.then41.i)) #11
          to label %sensor_set_streaming.exit [label %if.then41.i], !srcloc !207

if.then41.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %stream_count.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %stream_count.i, align 2
  %conv43.i = sext i16 %55 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sensor_set_streaming.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23, i32 noundef 139, i32 noundef 1, i32 noundef %conv43.i, i32 noundef %err.064.i) #11
  br label %sensor_set_streaming.exit

sensor_set_streaming.exit:                        ; preds = %if.then41.i, %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.064.i)
  %tobool49.not = icmp eq i32 %err.064.i, 0
  br i1 %tobool49.not, label %sensor_set_streaming.exit.if.end56_crit_edge, label %do.end53

sensor_set_streaming.exit.if.end56_crit_edge:     ; preds = %sensor_set_streaming.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

do.end53:                                         ; preds = %sensor_set_streaming.exit
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 4, i32 12
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %name) #14
  br label %if.end56

if.end56:                                         ; preds = %do.end53, %sensor_set_streaming.exit.if.end56_crit_edge
  %56 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool57.not = icmp eq i32 %56, 0
  br i1 %tobool57.not, label %if.end56.cleanup_crit_edge, label %if.then58

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then58:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @camif_hw_dump_regs(ptr noundef %3, ptr noundef nonnull @.str.57) #11
  br label %cleanup

if.end61:                                         ; preds = %if.then37.if.end61_crit_edge, %do.body18.if.end61_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call26) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then58, %if.end56.cleanup_crit_edge, %if.then14
  %retval.0 = phi i32 [ %ret.0101, %if.then14 ], [ 0, %if.end61 ], [ %err.064.i, %if.then58 ], [ %err.064.i, %if.end56.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stop_streaming(ptr nocapture noundef readonly %vq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  tail call fastcc void @camif_stop_capture(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %camif4 = getelementptr inbounds %struct.camif_vp, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %camif4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %camif4, align 8
  %slock = getelementptr inbounds %struct.camif_dev, ptr %5, i32 0, i32 22
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #11
  %paddr = getelementptr inbounds %struct.camif_buffer, ptr %vb, i32 0, i32 2
  %call12 = tail call fastcc i32 @camif_prepare_addr(ptr noundef %3, ptr noundef %vb, ptr noundef %paddr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end23, !prof !214

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 487, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end23, %entry.if.end_crit_edge
  %state = getelementptr inbounds %struct.camif_vp, ptr %3, i32 0, i32 18
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  br i1 %tobool36.not, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %active_buffers = getelementptr inbounds %struct.camif_vp, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %active_buffers to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %active_buffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp37 = icmp ult i32 %9, 2
  br i1 %cmp37, label %if.then39, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then39:                                        ; preds = %land.lhs.true
  %buf_index = getelementptr inbounds %struct.camif_vp, ptr %3, i32 0, i32 11
  %10 = ptrtoint ptr %buf_index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf_index, align 8
  %index = getelementptr inbounds %struct.camif_buffer, ptr %vb, i32 0, i32 3
  %12 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %index, align 4
  tail call void @camif_hw_set_output_addr(ptr noundef %3, ptr noundef %paddr, i32 noundef %11) #11
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index, align 4
  %add = add i32 %14, 2
  tail call void @camif_hw_set_output_addr(ptr noundef %3, ptr noundef %paddr, i32 noundef %add) #11
  %list.i = getelementptr inbounds %struct.camif_buffer, ptr %vb, i32 0, i32 1
  %active_buf_q.i = getelementptr inbounds %struct.camif_vp, ptr %3, i32 0, i32 9
  %prev.i.i = getelementptr inbounds %struct.camif_vp, ptr %3, i32 0, i32 9, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %16, ptr noundef %active_buf_q.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then39.camif_active_queue_add.exit_crit_edge

if.then39.camif_active_queue_add.exit_crit_edge:  ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  br label %camif_active_queue_add.exit

if.end.i.i.i:                                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %list.i, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %active_buf_q.i, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.camif_buffer, ptr %vb, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %list.i, ptr %16, align 4
  br label %camif_active_queue_add.exit

camif_active_queue_add.exit:                      ; preds = %if.end.i.i.i, %if.then39.camif_active_queue_add.exit_crit_edge
  %21 = ptrtoint ptr %active_buffers to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %active_buffers, align 4
  %inc.i = add i32 %22, 1
  store i32 %inc.i, ptr %active_buffers, align 4
  %23 = ptrtoint ptr %buf_index to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buf_index, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool45.not = icmp eq i32 %24, 0
  %lnot.ext47 = zext i1 %tobool45.not to i32
  %25 = ptrtoint ptr %buf_index to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %lnot.ext47, ptr %buf_index, align 8
  br label %if.end49

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %list.i125 = getelementptr inbounds %struct.camif_buffer, ptr %vb, i32 0, i32 1
  %pending_buf_q.i = getelementptr inbounds %struct.camif_vp, ptr %3, i32 0, i32 8
  %prev.i.i126 = getelementptr inbounds %struct.camif_vp, ptr %3, i32 0, i32 8, i32 1
  %26 = ptrtoint ptr %prev.i.i126 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i126, align 4
  %call.i.i.i127 = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i125, ptr noundef %27, ptr noundef %pending_buf_q.i) #11
  br i1 %call.i.i.i127, label %if.end.i.i.i129, label %if.else.if.end49_crit_edge

if.else.if.end49_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.end.i.i.i129:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %prev.i.i126 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %list.i125, ptr %prev.i.i126, align 4
  %29 = ptrtoint ptr %list.i125 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %pending_buf_q.i, ptr %list.i125, align 4
  %prev3.i.i.i128 = getelementptr inbounds %struct.camif_buffer, ptr %vb, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i128 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i.i128, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %list.i125, ptr %27, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.end.i.i.i129, %if.else.if.end49_crit_edge, %camif_active_queue_add.exit
  %streaming.i = getelementptr inbounds %struct.camif_vp, ptr %3, i32 0, i32 7, i32 28
  %32 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %land.lhs.true52, label %if.end49.if.end84_crit_edge

if.end49.if.end84_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84

land.lhs.true52:                                  ; preds = %if.end49
  %pending_buf_q = getelementptr inbounds %struct.camif_vp, ptr %3, i32 0, i32 8
  %33 = ptrtoint ptr %pending_buf_q to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %pending_buf_q, align 4
  %cmp.i.not = icmp eq ptr %34, %pending_buf_q
  br i1 %cmp.i.not, label %land.lhs.true52.if.end84_crit_edge, label %land.lhs.true55

land.lhs.true52.if.end84_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84

land.lhs.true55:                                  ; preds = %land.lhs.true52
  %35 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %state, align 4
  %and57 = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.then59, label %land.lhs.true55.if.end84_crit_edge

land.lhs.true55.if.end84_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84

if.then59:                                        ; preds = %land.lhs.true55
  %or = or i32 %36, 4
  %37 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or, ptr %state, align 4
  %enable = getelementptr inbounds %struct.camif_vp, ptr %3, i32 0, i32 14, i32 3
  %38 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool61 = icmp ne i8 %39, 0
  tail call void @camif_hw_enable_scaler(ptr noundef %3, i1 noundef zeroext %tobool61) #11
  tail call void @camif_hw_enable_capture(ptr noundef %3) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call8) #11
  %40 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %state, align 4
  %and64 = and i32 %41, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.then66, label %if.then59.cleanup_crit_edge

if.then59.cleanup_crit_edge:                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then66:                                        ; preds = %if.then59
  %stream_count.i = getelementptr inbounds %struct.camif_dev, ptr %5, i32 0, i32 7, i32 2
  %42 = ptrtoint ptr %stream_count.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %stream_count.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %cmp.i131 = icmp eq i16 %43, 0
  br i1 %cmp.i131, label %if.then.i, label %if.then66.if.then27.i_crit_edge

if.then66.if.then27.i_crit_edge:                  ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27.i

if.then.i:                                        ; preds = %if.then66
  %sensor1.i = getelementptr inbounds %struct.camif_dev, ptr %5, i32 0, i32 7
  %44 = ptrtoint ptr %sensor1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sensor1.i, align 4
  %tobool4.not.i = icmp eq ptr %45, null
  br i1 %tobool4.not.i, label %if.then.i.do.body.i_crit_edge, label %if.else.i

if.then.i.do.body.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.else.i:                                        ; preds = %if.then.i
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %45, i32 0, i32 6
  %46 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops.i, align 4
  %video.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %video.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %video.i, align 4
  %tobool6.not.i = icmp eq ptr %49, null
  br i1 %tobool6.not.i, label %if.else.i.do.body.i_crit_edge, label %land.lhs.true.i

if.else.i.do.body.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %s_stream.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %49, i32 0, i32 10
  %50 = ptrtoint ptr %s_stream.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %s_stream.i, align 4
  %tobool9.not.i = icmp eq ptr %51, null
  br i1 %tobool9.not.i, label %land.lhs.true.i.do.body.i_crit_edge, label %if.else11.i

land.lhs.true.i.do.body.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.else11.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool12.not.i = icmp eq ptr %52, null
  br i1 %tobool12.not.i, label %if.else11.i.if.else18.i_crit_edge, label %land.lhs.true13.i

if.else11.i.if.else18.i_crit_edge:                ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else18.i

land.lhs.true13.i:                                ; preds = %if.else11.i
  %s_stream14.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %52, i32 0, i32 10
  %53 = ptrtoint ptr %s_stream14.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %s_stream14.i, align 4
  %tobool15.not.i = icmp eq ptr %54, null
  br i1 %tobool15.not.i, label %land.lhs.true13.i.if.else18.i_crit_edge, label %land.lhs.true13.i.if.end25.i_crit_edge

land.lhs.true13.i.if.end25.i_crit_edge:           ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i

land.lhs.true13.i.if.else18.i_crit_edge:          ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else18.i

if.else18.i:                                      ; preds = %land.lhs.true13.i.if.else18.i_crit_edge, %if.else11.i.if.else18.i_crit_edge
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else18.i, %land.lhs.true13.i.if.end25.i_crit_edge
  %.sink.i = phi ptr [ %51, %if.else18.i ], [ %54, %land.lhs.true13.i.if.end25.i_crit_edge ]
  %call.i = tail call i32 %.sink.i(ptr noundef nonnull %45, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool26.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool26.not.i, label %if.end25.i.if.then27.i_crit_edge, label %if.end25.i.do.body.i_crit_edge

if.end25.i.do.body.i_crit_edge:                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.end25.i.if.then27.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27.i

if.then27.i:                                      ; preds = %if.end25.i.if.then27.i_crit_edge, %if.then66.if.then27.i_crit_edge
  %55 = ptrtoint ptr %stream_count.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %stream_count.i, align 2
  %add.i = add i16 %56, 1
  store i16 %add.i, ptr %stream_count.i, align 2
  br label %do.body.i

do.body.i:                                        ; preds = %if.then27.i, %if.end25.i.do.body.i_crit_edge, %land.lhs.true.i.do.body.i_crit_edge, %if.else.i.do.body.i_crit_edge, %if.then.i.do.body.i_crit_edge
  %err.064.i = phi i32 [ %call.i, %if.end25.i.do.body.i_crit_edge ], [ 0, %if.then27.i ], [ -515, %if.else.i.do.body.i_crit_edge ], [ -515, %land.lhs.true.i.do.body.i_crit_edge ], [ -19, %if.then.i.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sensor_set_streaming.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@buffer_queue, %if.then41.i)) #11
          to label %sensor_set_streaming.exit [label %if.then41.i], !srcloc !207

if.then41.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %stream_count.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %stream_count.i, align 2
  %conv43.i = sext i16 %58 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sensor_set_streaming.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23, i32 noundef 139, i32 noundef 1, i32 noundef %conv43.i, i32 noundef %err.064.i) #11
  br label %sensor_set_streaming.exit

sensor_set_streaming.exit:                        ; preds = %if.then41.i, %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.064.i)
  %cmp68 = icmp eq i32 %err.064.i, 0
  br i1 %cmp68, label %if.then70, label %do.end76

if.then70:                                        ; preds = %sensor_set_streaming.exit
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %state, align 4
  %or72 = or i32 %60, 8
  store i32 %or72, ptr %state, align 4
  br label %if.end79

do.end76:                                         ; preds = %sensor_set_streaming.exit
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.camif_vp, ptr %3, i32 0, i32 4, i32 12
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %name) #14
  br label %if.end79

if.end79:                                         ; preds = %do.end76, %if.then70
  %61 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool80.not = icmp eq i32 %61, 0
  br i1 %tobool80.not, label %if.end79.cleanup_crit_edge, label %if.then81

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then81:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @camif_hw_dump_regs(ptr noundef %5, ptr noundef nonnull @.str.58) #11
  br label %cleanup

if.end84:                                         ; preds = %land.lhs.true55.if.end84_crit_edge, %land.lhs.true52.if.end84_crit_edge, %if.end49.if.end84_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call8) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %if.then81, %if.end79.cleanup_crit_edge, %if.then59.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @camif_hw_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s3c_camif_hw_vp_init(ptr nocapture noundef readonly %camif, ptr noundef %vp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %out_fmt = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 15
  %0 = ptrtoint ptr %out_fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %out_fmt, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %variant = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 17
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant, align 8
  %ip_revision = getelementptr inbounds %struct.s3c_camif_variant, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ip_revision to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ip_revision, align 2
  %out_frame.i = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 17
  %rect.i = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 17, i32 2
  %top.i = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 17, i32 2, i32 1
  %6 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %top.i, align 4
  %8 = ptrtoint ptr %out_frame.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %out_frame.i, align 4
  %conv.i = zext i16 %9 to i32
  %mul.i = mul i32 %7, %conv.i
  %10 = ptrtoint ptr %rect.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rect.i, align 4
  %add.i = add i32 %mul.i, %11
  %dma_offset.i = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 17, i32 3
  %12 = ptrtoint ptr %dma_offset.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add.i, ptr %dma_offset.i, align 4
  %width.i = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 17, i32 2, i32 2
  %13 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %width.i, align 4
  %15 = add i32 %11, %14
  %sub.i = sub i32 %conv.i, %15
  %line.i = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 17, i32 3, i32 1
  %16 = ptrtoint ptr %line.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub.i, ptr %line.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @camif_prepare_dma_offset.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_camif_hw_vp_init, %if.then.i)) #11
          to label %camif_prepare_dma_offset.exit [label %if.then.i], !srcloc !207

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %dma_offset.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma_offset.i, align 4
  %19 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %line.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @camif_prepare_dma_offset.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11, i32 noundef 61, i32 noundef %18, i32 noundef %20) #11
  br label %camif_prepare_dma_offset.exit

camif_prepare_dma_offset.exit:                    ; preds = %if.then.i, %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %5)
  %cmp2 = icmp eq i8 %5, 32
  br i1 %cmp2, label %if.then4, label %camif_prepare_dma_offset.exit.if.end5_crit_edge

camif_prepare_dma_offset.exit.if.end5_crit_edge:  ; preds = %camif_prepare_dma_offset.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then4:                                         ; preds = %camif_prepare_dma_offset.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @camif_hw_clear_fifo_overflow(ptr noundef %vp) #11
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %camif_prepare_dma_offset.exit.if.end5_crit_edge
  %scaler.i = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 14
  %call.i = tail call i32 @s3c_camif_get_scaler_config(ptr noundef %vp, ptr noundef %scaler.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end5.camif_cfg_video_path.exit_crit_edge, label %do.end.i, !prof !214

if.end5.camif_cfg_video_path.exit_crit_edge:      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %camif_cfg_video_path.exit

do.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 46, i32 noundef 9, ptr noundef null) #11
  br label %camif_cfg_video_path.exit

camif_cfg_video_path.exit:                        ; preds = %do.end.i, %if.end5.camif_cfg_video_path.exit_crit_edge
  tail call void @camif_hw_set_scaler(ptr noundef %vp) #11
  tail call void @camif_hw_set_flip(ptr noundef %vp) #11
  tail call void @camif_hw_set_target_format(ptr noundef %vp) #11
  tail call void @camif_hw_set_output_dma(ptr noundef %vp) #11
  %state = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 18
  %21 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state, align 4
  %and = and i32 %22, -257
  store i32 %and, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %camif_cfg_video_path.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %camif_cfg_video_path.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @camif_hw_enable_capture(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @camif_hw_dump_regs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @camif_hw_set_camera_bus(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @camif_hw_set_source_format(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @camif_hw_set_input_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s3c_camif_get_scaler_config(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @camif_hw_set_target_format(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @camif_hw_set_output_dma(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @camif_prepare_addr(ptr noundef readonly %vp, ptr noundef %vb, ptr noundef %paddr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %vb, null
  %out_frame = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 17
  %cmp1 = icmp eq ptr %out_frame, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %width = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 17, i32 2, i32 2
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 17, i32 2, i32 3
  %2 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height, align 4
  %mul = mul i32 %3, %1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @camif_prepare_addr.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@camif_prepare_addr, %if.then5)) #11
          to label %do.end [label %if.then5], !srcloc !207

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %out_fmt = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 15
  %4 = ptrtoint ptr %out_fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %out_fmt, align 8
  %colplanes = getelementptr inbounds %struct.camif_fmt, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %colplanes to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %colplanes, align 4
  %conv = zext i16 %7 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @camif_prepare_addr.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.59, i32 noundef 253, i32 noundef %conv, i32 noundef %mul) #11
  br label %do.end

do.end:                                           ; preds = %if.then5, %if.end
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %vb, i32 noundef 0) #11
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call.i, align 4
  %10 = ptrtoint ptr %paddr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %paddr, align 4
  %out_fmt8 = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 15
  %11 = ptrtoint ptr %out_fmt8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %out_fmt8, align 8
  %colplanes9 = getelementptr inbounds %struct.camif_fmt, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %colplanes9 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %colplanes9, align 4
  %15 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.86)
  switch i16 %14, label %do.end.cleanup_crit_edge [
    i16 1, label %sw.bb
    i16 2, label %sw.bb11
    i16 3, label %sw.bb15
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %cb = getelementptr inbounds %struct.camif_addr, ptr %paddr, i32 0, i32 1
  %16 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %cb, align 4
  %cr = getelementptr inbounds %struct.camif_addr, ptr %paddr, i32 0, i32 2
  %17 = ptrtoint ptr %cr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %cr, align 4
  br label %do.body44

sw.bb11:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %add = add i32 %9, %mul
  %cb13 = getelementptr inbounds %struct.camif_addr, ptr %paddr, i32 0, i32 1
  %18 = ptrtoint ptr %cb13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add, ptr %cb13, align 4
  %cr14 = getelementptr inbounds %struct.camif_addr, ptr %paddr, i32 0, i32 2
  %19 = ptrtoint ptr %cr14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %cr14, align 4
  br label %do.body44

sw.bb15:                                          ; preds = %do.end
  %add17 = add i32 %9, %mul
  %cb18 = getelementptr inbounds %struct.camif_addr, ptr %paddr, i32 0, i32 1
  %20 = ptrtoint ptr %cb18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add17, ptr %cb18, align 4
  %21 = ptrtoint ptr %out_fmt8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %out_fmt8, align 8
  %color = getelementptr inbounds %struct.camif_fmt, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %color, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %24)
  %cmp20 = icmp eq i32 %24, 34
  %. = select i1 %cmp20, i32 1, i32 2
  %shr27 = lshr i32 %mul, %.
  %add28.sink = add i32 %add17, %shr27
  %25 = getelementptr inbounds %struct.camif_addr, ptr %paddr, i32 0, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add28.sink, ptr %25, align 4
  %27 = ptrtoint ptr %out_fmt8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %out_fmt8, align 8
  %color32 = getelementptr inbounds %struct.camif_fmt, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %color32 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %color32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %30)
  %cmp33 = icmp eq i32 %30, 33
  br i1 %cmp33, label %do.body36, label %sw.bb15.do.body44_crit_edge

sw.bb15.do.body44_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body44

do.body36:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %25, align 4
  %33 = ptrtoint ptr %cb18 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %cb18, align 4
  store i32 %add17, ptr %25, align 4
  br label %do.body44

do.body44:                                        ; preds = %do.body36, %sw.bb15.do.body44_crit_edge, %sw.bb11, %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @camif_prepare_addr.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@camif_prepare_addr, %if.then56)) #11
          to label %cleanup [label %if.then56], !srcloc !207

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #13
  %cb58 = getelementptr inbounds %struct.camif_addr, ptr %paddr, i32 0, i32 1
  %cr59 = getelementptr inbounds %struct.camif_addr, ptr %paddr, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @camif_prepare_addr.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.59, i32 noundef 283, ptr noundef %paddr, ptr noundef %cb58, ptr noundef %cr59) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then56, %do.body44, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ 0, %if.then56 ], [ 0, %do.body44 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_camif_video_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 21
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %camif1 = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %camif1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %camif1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_camif_video_s_ctrl.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_camif_video_s_ctrl, %if.then)) #11
          to label %do.body5 [label %if.then], !srcloc !207

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %id = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 2
  %conv = zext i8 %5 to i32
  %name = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 9
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_camif_video_s_ctrl.__UNIQUE_ID_ddebug330, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.64, i32 noundef 1075, i32 noundef %conv, ptr noundef %7, i32 noundef %9) #11
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  %slock = getelementptr inbounds %struct.camif_dev, ptr %3, i32 0, i32 22
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #11
  %id14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %10 = ptrtoint ptr %id14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id14, align 8
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %11, label %do.body5.sw.epilog_crit_edge [
    i32 9963796, label %sw.bb
    i32 9963797, label %sw.bb17
  ]

do.body5.sw.epilog_crit_edge:                     ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  %val15 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %13 = ptrtoint ptr %val15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val15, align 4
  %conv16 = trunc i32 %14 to i8
  %hflip = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 22
  %15 = ptrtoint ptr %hflip to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv16, ptr %hflip, align 2
  br label %sw.epilog

sw.bb17:                                          ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  %val18 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %16 = ptrtoint ptr %val18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val18, align 4
  %conv19 = trunc i32 %17 to i8
  %vflip = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 23
  %18 = ptrtoint ptr %vflip to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv19, ptr %vflip, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb17, %sw.bb, %do.body5.sw.epilog_crit_edge
  %state = getelementptr inbounds %struct.camif_vp, ptr %1, i32 0, i32 18
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state, align 4
  %or = or i32 %20, 256
  store i32 %or, ptr %state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call9) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s3c_camif_subdev_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr [4 x i32], ptr @camif_mbus_formats, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %code2 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %4 = ptrtoint ptr %code2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %code2, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_camif_subdev_get_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %4 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %6 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %5, %conv.i
  br i1 %cmp.not.i, label %if.then.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !214

if.then.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.67, i32 noundef 998, i32 noundef 9, ptr noundef null) #11
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %5, %if.then.v4l2_subdev_get_try_format.exit_crit_edge ]
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i
  %10 = call ptr @memcpy(ptr %format, ptr %arrayidx.i, i32 48)
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %pad3 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %11 = ptrtoint ptr %pad3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pad3, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %12, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %if.end.sw.bb4_crit_edge
    i32 2, label %if.end.sw.bb4_crit_edge28
  ]

if.end.sw.bb4_crit_edge28:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb4

if.end.sw.bb4_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb4

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %mbus_fmt = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 3
  %14 = call ptr @memcpy(ptr %format, ptr %mbus_fmt, i32 48)
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end.sw.bb4_crit_edge, %if.end.sw.bb4_crit_edge28
  %width = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 4, i32 2
  %15 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %width, align 4
  %17 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %format, align 4
  %height = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 4, i32 3
  %18 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height, align 4
  %height7 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %height7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %height7, align 4
  %code = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 3, i32 2
  %21 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %code, align 4
  %code9 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %23 = ptrtoint ptr %code9 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %code9, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb, %if.end.sw.epilog_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #11
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %24 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %field, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %25 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 7, ptr %colorspace, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %v4l2_subdev_get_try_format.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_camif_subdev_set_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %camif_crop = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %3 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pad, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %code, align 4
  %7 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %format, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %height, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %name, i32 noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef %10) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %11 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %field, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %12 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 7, ptr %colorspace, align 4
  %lock = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %num_buffers.i = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 16, i32 0, i32 7, i32 21
  %13 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.not = icmp eq i32 %14, 0
  br i1 %cmp.i.not, label %lor.lhs.false, label %do.end4.cleanup_crit_edge

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end4
  %num_buffers.i86 = getelementptr %struct.camif_dev, ptr %1, i32 0, i32 16, i32 1, i32 7, i32 21
  %15 = ptrtoint ptr %num_buffers.i86 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_buffers.i86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i87.not = icmp eq i32 %16, 0
  br i1 %cmp.i87.not, label %if.end12, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  %pad13 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %17 = ptrtoint ptr %pad13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pad13, align 4
  %variant1.i = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 17
  %19 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %variant1.i, align 8
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %code.i, align 4
  %.off.i = add i32 %22, -8198
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 4
  br i1 %switch.i, label %if.end12.if.end7.i_crit_edge, label %if.then5.i

if.end12.if.end7.i_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 8200, ptr %code.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end12.if.end7.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp8.i = icmp eq i32 %18, 0
  br i1 %cmp8.i, label %if.then9.i, label %if.else.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %out_width_align.i = getelementptr inbounds %struct.vp_pix_limits, ptr %20, i32 0, i32 2
  %24 = ptrtoint ptr %out_width_align.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %out_width_align.i, align 2
  %26 = tail call i16 @llvm.cttz.i16(i16 %25, i1 true) #11, !range !213
  %27 = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %iszero.i = icmp eq i16 %25, 0
  %sub.i = select i1 %iszero.i, i32 -1, i32 %27
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  tail call void @v4l_bound_align_image(ptr noundef %format, i32 noundef 8, i32 noundef 4096, i32 noundef %sub.i, ptr noundef %height.i, i32 noundef 8, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #11
  br label %do.body.i

if.else.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %width11.i = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 4, i32 2
  %28 = ptrtoint ptr %width11.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %width11.i, align 4
  %out_width_align12.i = getelementptr inbounds %struct.vp_pix_limits, ptr %20, i32 0, i32 2
  %30 = ptrtoint ptr %out_width_align12.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %out_width_align12.i, align 2
  %32 = tail call i16 @llvm.cttz.i16(i16 %31, i1 true) #11, !range !213
  %33 = zext i16 %32 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %iszero14.i = icmp eq i16 %31, 0
  %sub16.i = select i1 %iszero14.i, i32 -1, i32 %33
  %height17.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %height18.i = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 4, i32 3
  %34 = ptrtoint ptr %height18.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %height18.i, align 4
  tail call void @v4l_bound_align_image(ptr noundef %format, i32 noundef 8, i32 noundef %29, i32 noundef %sub16.i, ptr noundef %height17.i, i32 noundef 8, i32 noundef %35, i32 noundef 0, i32 noundef 0) #11
  br label %do.body.i

do.body.i:                                        ; preds = %if.else.i, %if.then9.i
  %36 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp20.i = icmp sgt i32 %36, 0
  br i1 %cmp20.i, label %do.end.i, label %do.body.i.__camif_subdev_try_format.exit_crit_edge

do.body.i.__camif_subdev_try_format.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__camif_subdev_try_format.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 2, i32 9
  %37 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %format, align 4
  %height25.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %height25.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %height25.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %name.i, i32 noundef %38, i32 noundef %40) #14
  br label %__camif_subdev_try_format.exit

__camif_subdev_try_format.exit:                   ; preds = %do.end.i, %do.body.i.__camif_subdev_try_format.exit_crit_edge
  %41 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp14 = icmp eq i32 %42, 0
  %43 = ptrtoint ptr %pad13 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pad13, align 4
  br i1 %cmp14, label %if.then15, label %if.end20

if.then15:                                        ; preds = %__camif_subdev_try_format.exit
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %45 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %46 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %44, %conv.i
  br i1 %cmp.not.i, label %if.then15.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i88, !prof !214

if.then15.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %v4l2_subdev_get_try_format.exit

do.end.i88:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.67, i32 noundef 998, i32 noundef 9, ptr noundef null) #11
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i88, %if.then15.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i88 ], [ %44, %if.then15.v4l2_subdev_get_try_format.exit_crit_edge ]
  %47 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %48, i32 %spec.select.i
  %49 = call ptr @memcpy(ptr %arrayidx.i, ptr %format, i32 48)
  br label %cleanup

if.end20:                                         ; preds = %__camif_subdev_try_format.exit
  %50 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %44, label %if.end20.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %if.end20.sw.bb32_crit_edge
    i32 2, label %if.end20.sw.bb32_crit_edge90
  ]

if.end20.sw.bb32_crit_edge90:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb32

if.end20.sw.bb32_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb32

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %mbus_fmt = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 3
  %51 = call ptr @memcpy(ptr %mbus_fmt, ptr %format, i32 48)
  %52 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %format, align 4
  %width23 = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 4, i32 2
  %54 = ptrtoint ptr %width23 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %width23, align 4
  %height24 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %55 = ptrtoint ptr %height24 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %height24, align 4
  %height25 = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 4, i32 3
  %57 = ptrtoint ptr %height25 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %height25, align 4
  %58 = ptrtoint ptr %camif_crop to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %camif_crop, align 4
  %top = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 4, i32 1
  %59 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %top, align 4
  %out_frame = getelementptr %struct.camif_dev, ptr %1, i32 0, i32 16, i32 0, i32 17
  %rect = getelementptr %struct.camif_dev, ptr %1, i32 0, i32 16, i32 0, i32 17, i32 2
  %60 = call ptr @memcpy(ptr %rect, ptr %camif_crop, i32 16)
  %61 = load i32, ptr %format, align 4
  %conv = trunc i32 %61 to i16
  %62 = ptrtoint ptr %out_frame to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv, ptr %out_frame, align 4
  %63 = load i32, ptr %height24, align 4
  %conv31 = trunc i32 %63 to i16
  %f_height = getelementptr %struct.camif_dev, ptr %1, i32 0, i32 16, i32 0, i32 17, i32 1
  %64 = ptrtoint ptr %f_height to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv31, ptr %f_height, align 2
  %out_frame.1 = getelementptr %struct.camif_dev, ptr %1, i32 0, i32 16, i32 1, i32 17
  %rect.1 = getelementptr %struct.camif_dev, ptr %1, i32 0, i32 16, i32 1, i32 17, i32 2
  %65 = call ptr @memcpy(ptr %rect.1, ptr %camif_crop, i32 16)
  %66 = load i32, ptr %format, align 4
  %conv.1 = trunc i32 %66 to i16
  %67 = ptrtoint ptr %out_frame.1 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv.1, ptr %out_frame.1, align 4
  %68 = load i32, ptr %height24, align 4
  %conv31.1 = trunc i32 %68 to i16
  %f_height.1 = getelementptr %struct.camif_dev, ptr %1, i32 0, i32 16, i32 1, i32 17, i32 1
  %69 = ptrtoint ptr %f_height.1 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv31.1, ptr %f_height.1, align 2
  br label %cleanup

sw.bb32:                                          ; preds = %if.end20.sw.bb32_crit_edge, %if.end20.sw.bb32_crit_edge90
  %code34 = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 3, i32 2
  %70 = ptrtoint ptr %code34 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %code34, align 4
  %72 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %code.i, align 4
  %width36 = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 4, i32 2
  %73 = ptrtoint ptr %width36 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %width36, align 4
  %75 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %format, align 4
  %height38 = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 4, i32 3
  %76 = ptrtoint ptr %height38 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %height38, align 4
  %height39 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %78 = ptrtoint ptr %height39 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %height39, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb32, %sw.bb, %if.end20.cleanup_crit_edge, %v4l2_subdev_get_try_format.exit, %lor.lhs.false.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %v4l2_subdev_get_try_format.exit ], [ -16, %lor.lhs.false.cleanup_crit_edge ], [ -16, %do.end4.cleanup_crit_edge ], [ 0, %sw.bb ], [ 0, %if.end20.cleanup_crit_edge ], [ 0, %sw.bb32 ]
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_camif_subdev_get_selection(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %camif_crop = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 4
  %mbus_fmt = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 3
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %2 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %target, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %entry.lor.lhs.false_crit_edge
    i32 2, label %entry.lor.lhs.false_crit_edge60
  ]

entry.lor.lhs.false_crit_edge60:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge60
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %5 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp3.not = icmp eq i32 %6, 0
  br i1 %cmp3.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %7 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp4 = icmp eq i32 %8, 0
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %9 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp.not.i.not = icmp eq i16 %10, 0
  br i1 %cmp.not.i.not, label %do.end.i, label %if.then5.v4l2_subdev_get_try_crop.exit_crit_edge, !prof !206

if.then5.v4l2_subdev_get_try_crop.exit_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %v4l2_subdev_get_try_crop.exit

do.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.67, i32 noundef 1016, i32 noundef 9, ptr noundef null) #11
  br label %v4l2_subdev_get_try_crop.exit

v4l2_subdev_get_try_crop.exit:                    ; preds = %do.end.i, %if.then5.v4l2_subdev_get_try_crop.exit_crit_edge
  %11 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sd_state, align 4
  %try_crop.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %12, i32 0, i32 1
  %13 = call ptr @memcpy(ptr %r, ptr %try_crop.i, i32 16)
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %14 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp10 = icmp eq i32 %15, 0
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %r12 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %16 = call ptr @memcpy(ptr %r12, ptr %camif_crop, i32 16)
  br label %if.end19

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %mbus_fmt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mbus_fmt, align 4
  %r13 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %width14 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %19 = ptrtoint ptr %width14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %width14, align 4
  %height = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height, align 4
  %height16 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %22 = ptrtoint ptr %height16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %height16, align 4
  %23 = ptrtoint ptr %r13 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %r13, align 4
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %top, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then11
  tail call void @mutex_unlock(ptr noundef %lock) #11
  %25 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp21 = icmp sgt i32 %25, 0
  br i1 %cmp21, label %do.end, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %26 = ptrtoint ptr %camif_crop to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %camif_crop, align 4
  %top25 = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %top25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %top25, align 4
  %width26 = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 4, i32 2
  %30 = ptrtoint ptr %width26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %width26, align 4
  %height27 = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 4, i32 3
  %32 = ptrtoint ptr %height27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %height27, align 4
  %34 = ptrtoint ptr %mbus_fmt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mbus_fmt, align 4
  %height29 = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 3, i32 1
  %36 = ptrtoint ptr %height29 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %height29, align 4
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %name, ptr noundef nonnull @.str.73, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end19.cleanup_crit_edge, %v4l2_subdev_get_try_crop.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %v4l2_subdev_get_try_crop.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_camif_subdev_set_selection(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr noundef %sel) #0 align 64 {
entry:
  %scaler = alloca %struct.camif_scaler, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %camif_crop = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %scaler) #11
  %2 = call ptr @memset(ptr %scaler, i32 255, i32 36)
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %3 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup40_crit_edge

entry.cleanup40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup40

lor.lhs.false:                                    ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %5 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1.not = icmp eq i32 %6, 0
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup40_crit_edge

lor.lhs.false.cleanup40_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup40

if.end:                                           ; preds = %lor.lhs.false
  %lock = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  tail call fastcc void @__camif_try_crop(ptr noundef %1, ptr noundef %r)
  %7 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp2 = icmp eq i32 %8, 0
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %9 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pad, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %11 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %10, %conv.i
  br i1 %cmp.not.i, label %if.then3.v4l2_subdev_get_try_crop.exit_crit_edge, label %do.end.i, !prof !214

if.then3.v4l2_subdev_get_try_crop.exit_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %v4l2_subdev_get_try_crop.exit

do.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.67, i32 noundef 1016, i32 noundef 9, ptr noundef null) #11
  br label %v4l2_subdev_get_try_crop.exit

v4l2_subdev_get_try_crop.exit:                    ; preds = %do.end.i, %if.then3.v4l2_subdev_get_try_crop.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %10, %if.then3.v4l2_subdev_get_try_crop.exit_crit_edge ]
  %13 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sd_state, align 4
  %try_crop.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %14, i32 %spec.select.i, i32 1
  %15 = call ptr @memcpy(ptr %try_crop.i, ptr %r, i32 16)
  br label %if.end23

if.else:                                          ; preds = %if.end
  %slock = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 22
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #11
  %16 = call ptr @memcpy(ptr %camif_crop, ptr %r, i32 16)
  %arrayidx = getelementptr %struct.camif_dev, ptr %1, i32 0, i32 16, i32 0
  %scaler17 = getelementptr %struct.camif_dev, ptr %1, i32 0, i32 16, i32 0, i32 14
  %17 = call ptr @memcpy(ptr %scaler, ptr %scaler17, i32 36)
  %call18 = call i32 @s3c_camif_get_scaler_config(ptr noundef %arrayidx, ptr noundef nonnull %scaler) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %if.end20, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end20:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %18 = call ptr @memcpy(ptr %scaler17, ptr %scaler, i32 36)
  %state = getelementptr %struct.camif_dev, ptr %1, i32 0, i32 16, i32 0, i32 18
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state, align 4
  %or = or i32 %20, 256
  store i32 %or, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.else.cleanup_crit_edge
  %arrayidx.1 = getelementptr %struct.camif_dev, ptr %1, i32 0, i32 16, i32 1
  %scaler17.1 = getelementptr %struct.camif_dev, ptr %1, i32 0, i32 16, i32 1, i32 14
  %21 = call ptr @memcpy(ptr %scaler, ptr %scaler17.1, i32 36)
  %call18.1 = call i32 @s3c_camif_get_scaler_config(ptr noundef %arrayidx.1, ptr noundef nonnull %scaler) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.1)
  %tobool.not.1 = icmp eq i32 %call18.1, 0
  br i1 %tobool.not.1, label %if.end20.1, label %cleanup.cleanup.1_crit_edge

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.1

if.end20.1:                                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  %22 = call ptr @memcpy(ptr %scaler17.1, ptr %scaler, i32 36)
  %state.1 = getelementptr %struct.camif_dev, ptr %1, i32 0, i32 16, i32 1, i32 18
  %23 = ptrtoint ptr %state.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state.1, align 4
  %or.1 = or i32 %24, 256
  store i32 %or.1, ptr %state.1, align 4
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.end20.1, %cleanup.cleanup.1_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call10) #11
  br label %if.end23

if.end23:                                         ; preds = %cleanup.1, %v4l2_subdev_get_try_crop.exit
  call void @mutex_unlock(ptr noundef %lock) #11
  %25 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp26 = icmp sgt i32 %25, 0
  br i1 %cmp26, label %do.end31, label %if.end23.cleanup40_crit_edge

if.end23.cleanup40_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup40

do.end31:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %26 = ptrtoint ptr %camif_crop to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %camif_crop, align 4
  %top = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %top, align 4
  %width = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 4, i32 2
  %30 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 4, i32 3
  %32 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %height, align 4
  %mbus_fmt = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %mbus_fmt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mbus_fmt, align 4
  %height35 = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 3, i32 1
  %36 = ptrtoint ptr %height35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %height35, align 4
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %name, ptr noundef nonnull @.str.75, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37) #14
  br label %cleanup40

cleanup40:                                        ; preds = %do.end31, %if.end23.cleanup40_crit_edge, %lor.lhs.false.cleanup40_crit_edge, %entry.cleanup40_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup40_crit_edge ], [ -22, %entry.cleanup40_crit_edge ], [ 0, %do.end31 ], [ 0, %if.end23.cleanup40_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %scaler) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__camif_try_crop(ptr noundef %camif, ptr noundef %r) unnamed_addr #0 align 64 {
entry:
  %left = alloca i32, align 4
  %top = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mbus_fmt = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 3
  %variant = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 17
  %0 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant, align 8
  %pix_limits = getelementptr inbounds %struct.s3c_camif_variant, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %left) #11
  %2 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %r, align 4
  %mul = shl i32 %3, 1
  %4 = ptrtoint ptr %left to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mul, ptr %left, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %top) #11
  %top2 = getelementptr inbounds %struct.v4l2_rect, ptr %r, i32 0, i32 1
  %5 = ptrtoint ptr %top2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %top2, align 4
  %mul3 = shl i32 %6, 1
  %7 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul3, ptr %top, align 4
  %width = getelementptr inbounds %struct.v4l2_rect, ptr %r, i32 0, i32 2
  %8 = ptrtoint ptr %mbus_fmt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mbus_fmt, align 4
  %10 = ptrtoint ptr %pix_limits to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %pix_limits, align 2
  %12 = tail call i16 @llvm.cttz.i16(i16 %11, i1 true), !range !213
  %13 = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %iszero = icmp eq i16 %11, 0
  %sub = select i1 %iszero, i32 -1, i32 %13
  %height = getelementptr inbounds %struct.v4l2_rect, ptr %r, i32 0, i32 3
  %height5 = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %height5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height5, align 4
  tail call void @v4l_bound_align_image(ptr noundef %width, i32 noundef 0, i32 noundef %9, i32 noundef %sub, ptr noundef %height, i32 noundef 0, i32 noundef %15, i32 noundef 1, i32 noundef 0) #11
  %16 = ptrtoint ptr %mbus_fmt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mbus_fmt, align 4
  %18 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %width, align 4
  %sub8 = sub i32 %17, %19
  %20 = ptrtoint ptr %pix_limits to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %pix_limits, align 2
  %22 = tail call i16 @llvm.cttz.i16(i16 %21, i1 true), !range !213
  %narrow = add nuw nsw i16 %22, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %iszero11 = icmp eq i16 %21, 0
  %narrow101 = select i1 %iszero11, i16 0, i16 %narrow
  %ffs12 = zext i16 %narrow101 to i32
  %23 = ptrtoint ptr %height5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %height5, align 4
  %25 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %height, align 4
  %sub15 = sub i32 %24, %26
  call void @v4l_bound_align_image(ptr noundef nonnull %left, i32 noundef 0, i32 noundef %sub8, i32 noundef %ffs12, ptr noundef nonnull %top, i32 noundef 0, i32 noundef %sub15, i32 noundef 2, i32 noundef 0) #11
  %27 = ptrtoint ptr %left to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %left, align 4
  %div99 = lshr i32 %28, 1
  %29 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %div99, ptr %r, align 4
  %30 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %top, align 4
  %div17100 = lshr i32 %31, 1
  %32 = ptrtoint ptr %top2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %div17100, ptr %top2, align 4
  %33 = ptrtoint ptr %mbus_fmt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mbus_fmt, align 4
  %sub20 = sub i32 %34, %28
  %35 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub20, ptr %width, align 4
  %36 = ptrtoint ptr %height5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %height5, align 4
  %sub23 = sub i32 %37, %31
  %38 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub23, ptr %height, align 4
  %39 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %variant, align 8
  %ip_revision = getelementptr inbounds %struct.s3c_camif_variant, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %ip_revision to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ip_revision, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %42)
  %cmp = icmp eq i8 %42, 32
  br i1 %cmp, label %land.lhs.true, label %entry.do.body48_crit_edge

entry.do.body48_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body48

land.lhs.true:                                    ; preds = %entry
  %slock.i = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 22
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i) #11
  %stream_count.i = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 6
  %43 = ptrtoint ptr %stream_count.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %stream_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp5.i = icmp sgt i32 %44, 0
  call void @_raw_spin_unlock_irqrestore(ptr noundef %slock.i, i32 noundef %call2.i) #11
  br i1 %cmp5.i, label %for.cond.preheader, label %land.lhs.true.do.body48_crit_edge

land.lhs.true.do.body48_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body48

for.cond.preheader:                               ; preds = %land.lhs.true
  %45 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %width, align 4
  %47 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %height, align 4
  %width31 = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 0, i32 17, i32 2, i32 2
  %49 = ptrtoint ptr %width31 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %width31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %46)
  %cmp33 = icmp ule i32 %50, %46
  %height35 = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 0, i32 17, i32 2, i32 3
  %51 = ptrtoint ptr %height35 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %height35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %48)
  %cmp37 = icmp ugt i32 %52, %48
  %cmp39 = xor i1 %cmp33, %cmp37
  br i1 %cmp39, label %for.cond, label %for.cond.preheader.if.end_crit_edge

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.cond:                                         ; preds = %for.cond.preheader
  %width31.1 = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 1, i32 17, i32 2, i32 2
  %53 = ptrtoint ptr %width31.1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %width31.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %46)
  %cmp33.1 = icmp ule i32 %54, %46
  %height35.1 = getelementptr %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 1, i32 17, i32 2, i32 3
  %55 = ptrtoint ptr %height35.1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %height35.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %48)
  %cmp37.1 = icmp ugt i32 %56, %48
  %cmp39.1 = xor i1 %cmp33.1, %cmp37.1
  br i1 %cmp39.1, label %for.cond.do.body48_crit_edge, label %for.cond.if.end_crit_edge

for.cond.if.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.cond.do.body48_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body48

if.end:                                           ; preds = %for.cond.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge
  %camif_crop = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 4
  %57 = call ptr @memcpy(ptr %r, ptr %camif_crop, i32 16)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__camif_try_crop.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__camif_try_crop, %cleanup.thread106)) #11
          to label %do.body48 [label %cleanup.thread106], !srcloc !207

cleanup.thread106:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__camif_try_crop.__UNIQUE_ID_ddebug331, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.76, i32 noundef 1425) #11
  br label %do.body48

do.body48:                                        ; preds = %cleanup.thread106, %if.end, %for.cond.do.body48_crit_edge, %land.lhs.true.do.body48_crit_edge, %entry.do.body48_crit_edge
  %58 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp49 = icmp sgt i32 %58, 0
  br i1 %cmp49, label %do.end54, label %do.body48.do.end65_crit_edge

do.body48.do.end65_crit_edge:                     ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end65

do.end54:                                         ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 1, i32 4
  %59 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %r, align 4
  %61 = ptrtoint ptr %top2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %top2, align 4
  %63 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %width, align 4
  %65 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %height, align 4
  %67 = ptrtoint ptr %mbus_fmt to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %mbus_fmt, align 4
  %69 = ptrtoint ptr %height5 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %height5, align 4
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %name, i32 noundef %60, i32 noundef %62, i32 noundef %64, i32 noundef %66, i32 noundef %68, i32 noundef %70) #14
  br label %do.end65

do.end65:                                         ; preds = %do.end54, %do.body48.do.end65_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %top) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %left) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_camif_subdev_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %slock = getelementptr i8, ptr %1, i32 4936
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #11
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %3, label %do.end28 [
    i32 9963807, label %sw.bb
    i32 10422531, label %sw.bb19
  ]

sw.bb:                                            ; preds = %entry
  %5 = getelementptr i8, ptr %1, i32 188
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %7, i32 0, i32 22
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %conv6 = trunc i32 %9 to i8
  %colorfx = getelementptr i8, ptr %1, i32 197
  %10 = ptrtoint ptr %colorfx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv6, ptr %colorfx, align 1
  %val7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %11 = ptrtoint ptr %val7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val7, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %12, label %sw.default [
    i32 2, label %sw.bb8
    i32 15, label %sw.bb9
  ]

sw.bb8:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %colorfx_cb = getelementptr i8, ptr %1, i32 198
  %14 = ptrtoint ptr %colorfx_cb to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 115, ptr %colorfx_cb, align 2
  %colorfx_cr = getelementptr i8, ptr %1, i32 199
  %15 = ptrtoint ptr %colorfx_cr to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -111, ptr %colorfx_cr, align 1
  br label %sw.epilog41

sw.bb9:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %ctrl_colorfx_cbcr = getelementptr i8, ptr %1, i32 192
  %16 = ptrtoint ptr %ctrl_colorfx_cbcr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctrl_colorfx_cbcr, align 4
  %val10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %17, i32 0, i32 22
  %18 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val10, align 4
  %20 = lshr i32 %19, 8
  %conv11 = trunc i32 %20 to i8
  %colorfx_cb12 = getelementptr i8, ptr %1, i32 198
  %21 = ptrtoint ptr %colorfx_cb12 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv11, ptr %colorfx_cb12, align 2
  %22 = load i32, ptr %val10, align 4
  %conv15 = trunc i32 %22 to i8
  %colorfx_cr16 = getelementptr i8, ptr %1, i32 199
  %23 = ptrtoint ptr %colorfx_cr16 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv15, ptr %colorfx_cr16, align 1
  br label %sw.epilog41

sw.default:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %colorfx_cb17 = getelementptr i8, ptr %1, i32 198
  %24 = ptrtoint ptr %colorfx_cb17 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -128, ptr %colorfx_cb17, align 2
  %colorfx_cr18 = getelementptr i8, ptr %1, i32 199
  %25 = ptrtoint ptr %colorfx_cr18 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -128, ptr %colorfx_cr18, align 1
  br label %sw.epilog41

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ctrl_test_pattern = getelementptr i8, ptr %1, i32 184
  %26 = ptrtoint ptr %ctrl_test_pattern to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctrl_test_pattern, align 4
  %val20 = getelementptr inbounds %struct.v4l2_ctrl, ptr %27, i32 0, i32 22
  %28 = ptrtoint ptr %val20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val20, align 4
  %conv21 = trunc i32 %29 to i8
  %test_pattern = getelementptr i8, ptr %1, i32 196
  %30 = ptrtoint ptr %test_pattern to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv21, ptr %test_pattern, align 8
  br label %sw.epilog41

do.end28:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1520, i32 noundef 9, ptr noundef null) #11
  br label %sw.epilog41

sw.epilog41:                                      ; preds = %do.end28, %sw.bb19, %sw.default, %sw.bb9, %sw.bb8
  %state = getelementptr i8, ptr %1, i32 2456
  %31 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %state, align 4
  %or = or i32 %32, 256
  store i32 %or, ptr %state, align 4
  %state44 = getelementptr i8, ptr %1, i32 4728
  %33 = ptrtoint ptr %state44 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %state44, align 4
  %or45 = or i32 %34, 256
  store i32 %or45, ptr %state44, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call3) #11
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.cttz.i16(i16, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !17, !18, !19, !21, !23, !24, !26, !27, !29, !31, !32, !33, !34, !35, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !61, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !86, !88, !89, !91, !92, !93, !94, !96, !97, !99, !100, !102, !103, !104, !105, !107, !109, !110, !111, !112, !114, !115, !116, !117, !119, !120, !122, !123, !124, !125, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !140, !142, !143, !144, !145, !147, !149, !151, !153, !154, !155, !156, !158, !159, !160, !161, !163, !164, !165, !166, !168, !169, !170, !171, !173, !174, !175, !176, !178, !179, !180, !182, !184, !186, !188, !190, !192}
!llvm.named.register.sp = !{!194}
!llvm.module.flags = !{!195, !196, !197, !198, !199, !200, !201, !202}
!llvm.ident = !{!203}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 41, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype299, !1, !"__UNIQUE_ID_debugtype299", i1 false, i1 false}
!3 = !{ptr @.str, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 338, i32 8}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 1108, i32 41}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 1109, i32 18}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 1109, i32 28}
!11 = !{ptr @s3c_camif_register_video_node._key, !12, !"_key", i1 false, i1 false}
!12 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 1144, i32 2}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 1165, i32 2}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @s3c_camif_register_video_node._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @s3c_camif_register_video_node._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 1549, i32 20}
!21 = !{ptr @s3c_camif_create_subdev._key, !22, !"_key", i1 false, i1 false}
!22 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 1560, i32 2}
!23 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @debug, !25, !"debug", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 40, i32 12}
!26 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/platform/s3c-camif/camif-core.h", i32 368, i32 6}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 60, i32 2}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @camif_prepare_dma_offset.__UNIQUE_ID_ddebug300, !30, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!34 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @s3c_camif_fops, !36, !"s3c_camif_fops", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 622, i32 42}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 540, i32 2}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @s3c_camif_open.__UNIQUE_ID_ddebug306, !38, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!41 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 122, i32 2}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @sensor_set_power.__UNIQUE_ID_ddebug301, !43, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!46 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 572, i32 2}
!49 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @s3c_camif_close.__UNIQUE_ID_ddebug307, !48, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!51 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 138, i32 2}
!54 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @sensor_set_streaming.__UNIQUE_ID_ddebug302, !53, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!56 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @s3c_camif_ioctl_ops, !58, !"s3c_camif_ioctl_ops", i1 false, i1 false}
!58 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 1041, i32 36}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 640, i32 23}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 642, i32 49}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 775, i32 2}
!65 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @s3c_camif_vidioc_s_fmt.__UNIQUE_ID_ddebug318, !64, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!67 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 798, i32 2}
!70 = !{ptr @s3c_camif_vidioc_s_fmt.__UNIQUE_ID_ddebug319, !69, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!71 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 728, i32 2}
!74 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @__camif_video_try_format.__UNIQUE_ID_ddebug308, !73, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!76 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 753, i32 2}
!79 = !{ptr @__camif_video_try_format.__UNIQUE_ID_ddebug317, !78, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!80 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 891, i32 2}
!83 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @s3c_camif_reqbufs.__UNIQUE_ID_ddebug322, !82, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!85 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 931, i32 2}
!88 = !{ptr @s3c_camif_qbuf.__UNIQUE_ID_ddebug325, !87, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 944, i32 2}
!91 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @s3c_camif_dqbuf.__UNIQUE_ID_ddebug326, !90, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!93 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 840, i32 2}
!96 = !{ptr @s3c_camif_streamon.__UNIQUE_ID_ddebug320, !95, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 871, i32 2}
!99 = !{ptr @s3c_camif_streamoff.__UNIQUE_ID_ddebug321, !98, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 1034, i32 2}
!102 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @s3c_camif_s_selection.__UNIQUE_ID_ddebug329, !101, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!104 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @s3c_camif_qops, !106, !"s3c_camif_qops", i1 false, i1 false}
!106 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 524, i32 29}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 457, i32 2}
!109 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @queue_setup.__UNIQUE_ID_ddebug305, !108, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!111 = !{ptr @.str.52, !108, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 469, i32 3}
!114 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @buffer_prepare._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @buffer_prepare._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = distinct !{null, !118, !"__already_done", i1 false, i1 false}
!118 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!119 = distinct !{null, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 419, i32 5}
!122 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @start_streaming._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @start_streaming._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.58, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 514, i32 5}
!127 = !{ptr @buffer_queue._entry, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @buffer_queue._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.59, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 252, i32 2}
!131 = !{ptr @.str.60, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @camif_prepare_addr.__UNIQUE_ID_ddebug303, !130, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!133 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.62, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 282, i32 2}
!136 = !{ptr @camif_prepare_addr.__UNIQUE_ID_ddebug304, !135, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!137 = !{ptr @.str.63, !135, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @s3c_camif_video_ctrl_ops, !139, !"s3c_camif_video_ctrl_ops", i1 false, i1 false}
!139 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 1095, i32 35}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 1074, i32 2}
!142 = !{ptr @.str.65, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @s3c_camif_video_s_ctrl.__UNIQUE_ID_ddebug330, !141, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!144 = !{ptr @.str.66, !141, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @s3c_camif_subdev_ops, !146, !"s3c_camif_subdev_ops", i1 false, i1 false}
!146 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 1485, i32 37}
!147 = !{ptr @s3c_camif_subdev_pad_ops, !148, !"s3c_camif_subdev_pad_ops", i1 false, i1 false}
!148 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 1477, i32 41}
!149 = !{ptr @.str.67, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!151 = !{ptr @.str.68, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 1289, i32 2}
!153 = !{ptr @.str.69, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @s3c_camif_subdev_set_fmt._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @s3c_camif_subdev_set_fmt._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.70, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 1277, i32 2}
!158 = !{ptr @.str.71, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @__camif_subdev_try_format._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @__camif_subdev_try_format._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.72, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 1378, i32 2}
!163 = !{ptr @.str.73, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @s3c_camif_subdev_get_selection._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @s3c_camif_subdev_get_selection._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.74, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 1470, i32 2}
!168 = !{ptr @.str.75, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @s3c_camif_subdev_set_selection._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @s3c_camif_subdev_set_selection._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.76, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 1425, i32 4}
!173 = !{ptr @.str.77, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @__camif_try_crop.__UNIQUE_ID_ddebug331, !172, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!175 = !{ptr @.str.78, !172, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.79, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 1430, i32 2}
!178 = !{ptr @__camif_try_crop._entry, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @__camif_try_crop._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @s3c_camif_subdev_ctrl_ops, !181, !"s3c_camif_subdev_ctrl_ops", i1 false, i1 false}
!181 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 1530, i32 35}
!182 = !{ptr @.str.80, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 1535, i32 2}
!184 = !{ptr @.str.81, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 1536, i32 2}
!186 = !{ptr @.str.82, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 1537, i32 2}
!188 = !{ptr @.str.83, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 1538, i32 2}
!190 = !{ptr @s3c_camif_test_pattern_menu, !191, !"s3c_camif_test_pattern_menu", i1 false, i1 false}
!191 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 1534, i32 27}
!192 = !{ptr @camif_mbus_formats, !193, !"camif_mbus_formats", i1 false, i1 false}
!193 = !{!"../drivers/media/platform/s3c-camif/camif-capture.c", i32 1190, i32 18}
!194 = !{!"sp"}
!195 = !{i32 1, !"wchar_size", i32 2}
!196 = !{i32 1, !"min_enum_size", i32 4}
!197 = !{i32 8, !"branch-target-enforcement", i32 0}
!198 = !{i32 8, !"sign-return-address", i32 0}
!199 = !{i32 8, !"sign-return-address-all", i32 0}
!200 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!201 = !{i32 7, !"uwtable", i32 1}
!202 = !{i32 7, !"frame-pointer", i32 2}
!203 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!204 = !{i64 6896290}
!205 = !{i64 2156531747}
!206 = !{!"branch_weights", i32 1, i32 2000}
!207 = !{i64 2148188002, i64 2148188007, i64 2148188020, i64 2148188064, i64 2148188098, i64 2148188119}
!208 = !{i64 2156637218, i64 2156637732, i64 2156637255, i64 2156637311, i64 2156637345, i64 2156637369, i64 2156637410, i64 2156637431, i64 2156637459, i64 2156637493}
!209 = !{i64 2148398096}
!210 = !{i64 884696, i64 884721, i64 884743, i64 884759, i64 884771, i64 884791, i64 884815, i64 884831, i64 884843}
!211 = !{i64 2148398284}
!212 = !{i32 0, i32 33}
!213 = !{i16 0, i16 17}
!214 = !{!"branch_weights", i32 2000, i32 1}
