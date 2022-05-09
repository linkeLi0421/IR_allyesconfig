; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/video-i2c.c_pt.bc'
source_filename = "../drivers/media/i2c/video-i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.video_i2c_chip = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_frmsize_discrete = type { i32, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.atomic_t = type { i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.video_i2c_data = type { ptr, ptr, %struct.mutex, %struct.spinlock, i32, %struct.mutex, %struct.v4l2_device, %struct.video_device, %struct.vb2_queue, ptr, %struct.list_head, %struct.v4l2_fract }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.86], %struct.media_entity_enum, i32 }
%struct.anon.86 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.94, i32 }
%union.anon.94 = type { i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.video_i2c_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
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
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.95 }
%union.anon.95 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.97, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.97 = type { i8 }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_streamparm = type { i32, %union.anon.111 }
%union.anon.111 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.112, [2 x i32] }
%union.anon.112 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_frmivalenum = type { i32, i32, i32, i32, i32, %union.anon.113, [2 x i32] }
%union.anon.113 = type { %struct.v4l2_frmival_stepwise }
%struct.v4l2_frmival_stepwise = type { %struct.v4l2_fract, %struct.v4l2_fract, %struct.v4l2_fract }

@__initcall__kmod_video_i2c__299_962_video_i2c_driver_init6 = internal global ptr @video_i2c_driver_init, section ".initcall6.init", align 4
@video_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @video_i2c_probe, ptr @video_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @video_i2c_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @video_i2c_pm_ops, ptr null, ptr null }, ptr @video_i2c_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_video_i2c_driver_exit = internal global ptr @video_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author300 = internal constant [60 x i8] c"video_i2c.author=Matt Ranostay <matt.ranostay@konsulko.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description301 = internal constant [50 x i8] c"video_i2c.description=I2C transport video support\00", section ".modinfo", align 1
@__UNIQUE_ID_file302 = internal constant [43 x i8] c"video_i2c.file=drivers/media/i2c/video-i2c\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [25 x i8] c"video_i2c.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"video-i2c\00", [22 x i8] zeroinitializer }, align 32
@video_i2c_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"panasonic,amg88xx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @video_i2c_chip }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"melexis,mlx90640\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @video_i2c_chip, i64 48) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@video_i2c_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @video_i2c_pm_runtime_suspend, ptr @video_i2c_pm_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@video_i2c_id_table = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"amg88xx\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"mlx90640\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@video_i2c_chip = internal constant { [2 x %struct.video_i2c_chip], [32 x i8] } { [2 x %struct.video_i2c_chip] [%struct.video_i2c_chip { ptr @amg88xx_format, ptr @amg88xx_size, ptr @amg88xx_frame_intervals, i32 2, i32 128, i32 16, ptr @amg88xx_regmap_config, ptr null, ptr @amg88xx_setup, ptr @amg88xx_xfer, ptr @amg88xx_set_power, ptr @amg88xx_hwmon_init }, %struct.video_i2c_chip { ptr @mlx90640_format, ptr @mlx90640_size, ptr @mlx90640_frame_intervals, i32 8, i32 1664, i32 16, ptr @mlx90640_regmap_config, ptr @mlx90640_nvram_config, ptr @mlx90640_setup, ptr @mlx90640_xfer, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@video_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"video_i2c:772:(data->chip->regmap_config)->lock\00", [48 x i8] zeroinitializer }, align 32
@video_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@video_i2c_probe.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&data->queue_lock\00", [46 x i8] zeroinitializer }, align 32
@video_i2c_video_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @buffer_prepare, ptr null, ptr null, ptr @start_streaming, ptr @stop_streaming, ptr @buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_vmalloc_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"I2C %d-%d Transport Video\00", [38 x i8] zeroinitializer }, align 32
@video_i2c_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vb2_fop_release }, [60 x i8] zeroinitializer }, align 32
@video_i2c_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @video_i2c_querycap, ptr @video_i2c_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @video_i2c_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @video_i2c_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @video_i2c_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr null, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr null, ptr null, ptr null, ptr @video_i2c_enum_input, ptr @video_i2c_g_input, ptr @video_i2c_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @video_i2c_g_parm, ptr @video_i2c_s_parm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @video_i2c_enum_framesizes, ptr @video_i2c_enum_frameintervals, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [120 x i8] zeroinitializer }, align 32
@video_i2c_probe.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&data->slock\00", [19 x i8] zeroinitializer }, align 32
@video_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 841, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register hwmon device\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"video_i2c_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/media/i2c/video-i2c.c\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@video_i2c_probe._entry_ptr = internal global ptr @video_i2c_probe._entry, section ".printk_index", align 4
@video_i2c_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.10, i32 856, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register nvmem device\0A\00", [63 x i8] zeroinitializer }, align 32
@video_i2c_probe._entry_ptr.15 = internal global ptr @video_i2c_probe._entry.13, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@amg88xx_format = internal constant { %struct.v4l2_fmtdesc, [32 x i8] } { %struct.v4l2_fmtdesc { i32 0, i32 0, i32 0, [32 x i8] zeroinitializer, i32 540160345, i32 0, [3 x i32] zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@amg88xx_size = internal constant { %struct.v4l2_frmsize_discrete, [24 x i8] } { %struct.v4l2_frmsize_discrete { i32 8, i32 8 }, [24 x i8] zeroinitializer }, align 32
@amg88xx_frame_intervals = internal constant { [2 x %struct.v4l2_fract], [16 x i8] } { [2 x %struct.v4l2_fract] [%struct.v4l2_fract { i32 1, i32 10 }, %struct.v4l2_fract { i32 1, i32 1 }], [16 x i8] zeroinitializer }, align 32
@amg88xx_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@mlx90640_format = internal constant { %struct.v4l2_fmtdesc, [32 x i8] } { %struct.v4l2_fmtdesc { i32 0, i32 0, i32 0, [32 x i8] zeroinitializer, i32 -1607061159, i32 0, [3 x i32] zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@mlx90640_size = internal constant { %struct.v4l2_frmsize_discrete, [24 x i8] } { %struct.v4l2_frmsize_discrete { i32 32, i32 26 }, [24 x i8] zeroinitializer }, align 32
@mlx90640_frame_intervals = internal constant { [8 x %struct.v4l2_fract], [32 x i8] } { [8 x %struct.v4l2_fract] [%struct.v4l2_fract { i32 1, i32 64 }, %struct.v4l2_fract { i32 1, i32 32 }, %struct.v4l2_fract { i32 1, i32 16 }, %struct.v4l2_fract { i32 1, i32 8 }, %struct.v4l2_fract { i32 1, i32 4 }, %struct.v4l2_fract { i32 1, i32 2 }, %struct.v4l2_fract { i32 1, i32 1 }, %struct.v4l2_fract { i32 2, i32 1 }], [32 x i8] zeroinitializer }, align 32
@mlx90640_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@mlx90640_nvram_config = internal global { %struct.nvmem_config, [40 x i8] } { %struct.nvmem_config { ptr null, ptr @.str.17, i32 0, ptr null, ptr null, ptr null, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i8 0, ptr null, i8 0, ptr @mlx90640_nvram_read, ptr null, ptr null, i32 1664, i32 2, i32 1, ptr null, i8 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"amg88xx\00", [24 x i8] zeroinitializer }, align 32
@amg88xx_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @amg88xx_hwmon_ops, ptr @amg88xx_info }, [24 x i8] zeroinitializer }, align 32
@amg88xx_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @amg88xx_is_visible, ptr @amg88xx_read, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@amg88xx_info = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @amg88xx_temp, ptr null], [24 x i8] zeroinitializer }, align 32
@amg88xx_temp = internal constant { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @amg88xx_temp_config }, [24 x i8] zeroinitializer }, align 32
@amg88xx_temp_config = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 2, i32 0], [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mlx90640_nvram\00", [17 x i8] zeroinitializer }, align 32
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s-vid-cap\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"I2C:%d-%d\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Camera\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"video_i2c_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 951, i32 26 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 953, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant [19 x i8] c"video_i2c_of_match\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 944, i32 34 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"video_i2c_pm_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 932, i32 32 }
@___asan_gen_.35 = private unnamed_addr constant [19 x i8] c"video_i2c_id_table\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 937, i32 35 }
@___asan_gen_.38 = private unnamed_addr constant [15 x i8] c"video_i2c_chip\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 357, i32 36 }
@___asan_gen_.41 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 772, i32 17 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 785, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 786, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [21 x i8] c"video_i2c_video_qops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 555, i32 29 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 806, i32 6 }
@___asan_gen_.65 = private unnamed_addr constant [15 x i8] c"video_i2c_fops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 385, i32 42 }
@___asan_gen_.68 = private unnamed_addr constant [20 x i8] c"video_i2c_ioctl_ops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 719, i32 36 }
@___asan_gen_.71 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 817, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 840, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 855, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant [15 x i8] c"amg88xx_format\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 62, i32 34 }
@___asan_gen_.104 = private unnamed_addr constant [13 x i8] c"amg88xx_size\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 66, i32 43 }
@___asan_gen_.107 = private unnamed_addr constant [24 x i8] c"amg88xx_frame_intervals\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 341, i32 32 }
@___asan_gen_.110 = private unnamed_addr constant [22 x i8] c"amg88xx_regmap_config\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 80, i32 35 }
@___asan_gen_.113 = private unnamed_addr constant [16 x i8] c"mlx90640_format\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 71, i32 34 }
@___asan_gen_.116 = private unnamed_addr constant [14 x i8] c"mlx90640_size\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 75, i32 43 }
@___asan_gen_.119 = private unnamed_addr constant [25 x i8] c"mlx90640_frame_intervals\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 346, i32 32 }
@___asan_gen_.122 = private unnamed_addr constant [23 x i8] c"mlx90640_regmap_config\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 86, i32 35 }
@___asan_gen_.125 = private unnamed_addr constant [22 x i8] c"mlx90640_nvram_config\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 130, i32 28 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 327, i32 58 }
@___asan_gen_.131 = private unnamed_addr constant [18 x i8] c"amg88xx_chip_info\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 319, i32 37 }
@___asan_gen_.134 = private unnamed_addr constant [18 x i8] c"amg88xx_hwmon_ops\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 314, i32 31 }
@___asan_gen_.137 = private unnamed_addr constant [13 x i8] c"amg88xx_info\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 270, i32 41 }
@___asan_gen_.140 = private unnamed_addr constant [13 x i8] c"amg88xx_temp\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 265, i32 40 }
@___asan_gen_.143 = private unnamed_addr constant [20 x i8] c"amg88xx_temp_config\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 260, i32 18 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 131, i32 10 }
@___asan_gen_.150 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 1163, i32 7 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 525, i32 26 }
@___asan_gen_.156 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 57, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 575, i32 26 }
@___asan_gen_.161 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.162 = private constant [33 x i8] c"../drivers/media/i2c/video-i2c.c\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 598, i32 21 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_author300, ptr @__UNIQUE_ID_description301, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_license303, ptr @__exitcall_video_i2c_driver_exit, ptr @__initcall__kmod_video_i2c__299_962_video_i2c_driver_init6, ptr @video_i2c_driver_exit, ptr @video_i2c_probe._entry, ptr @video_i2c_probe._entry.13, ptr @video_i2c_probe._entry_ptr, ptr @video_i2c_probe._entry_ptr.15, ptr @video_i2c_driver, ptr @.str, ptr @video_i2c_of_match, ptr @video_i2c_pm_ops, ptr @video_i2c_id_table, ptr @video_i2c_chip, ptr @video_i2c_probe._key, ptr @.str.1, ptr @video_i2c_probe.__key, ptr @.str.2, ptr @video_i2c_probe.__key.3, ptr @.str.4, ptr @video_i2c_video_qops, ptr @.str.5, ptr @video_i2c_fops, ptr @video_i2c_ioctl_ops, ptr @video_i2c_probe.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @amg88xx_format, ptr @amg88xx_size, ptr @amg88xx_frame_intervals, ptr @amg88xx_regmap_config, ptr @mlx90640_format, ptr @mlx90640_size, ptr @mlx90640_frame_intervals, ptr @mlx90640_regmap_config, ptr @mlx90640_nvram_config, ptr @.str.16, ptr @amg88xx_chip_info, ptr @amg88xx_hwmon_ops, ptr @amg88xx_info, ptr @amg88xx_temp, ptr @amg88xx_temp_config, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_i2c_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_i2c_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_i2c_id_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_i2c_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_i2c_probe.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_i2c_video_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_i2c_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_i2c_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_i2c_probe.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_i2c_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amg88xx_format to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amg88xx_size to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amg88xx_frame_intervals to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amg88xx_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx90640_format to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx90640_size to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx90640_frame_intervals to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx90640_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx90640_nvram_config to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amg88xx_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amg88xx_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amg88xx_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amg88xx_temp to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amg88xx_temp_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @video_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @video_i2c_driver) #13
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @video_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @i2c_del_driver(ptr noundef nonnull @video_i2c_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @video_i2c_probe(ptr noundef %client, ptr noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2256) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call1 = tail call ptr @dev_fwnode(ptr noundef %dev) #13
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call5 = tail call ptr @device_get_match_data(ptr noundef %dev) #13
  br label %if.end11

if.else:                                          ; preds = %if.end
  %tobool6.not = icmp eq ptr %id, null
  br i1 %tobool6.not, label %if.else.error_free_device_crit_edge, label %if.then7

if.else.error_free_device_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_free_device

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %1 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [2 x %struct.video_i2c_chip], ptr @video_i2c_chip, i32 0, i32 %2
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.then3
  %arrayidx.sink = phi ptr [ %arrayidx, %if.then7 ], [ %call5, %if.then3 ]
  %chip8 = getelementptr inbounds %struct.video_i2c_data, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %chip8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx.sink, ptr %chip8, align 4
  %chip12 = getelementptr inbounds %struct.video_i2c_data, ptr %call7.i.i, i32 0, i32 1
  %regmap_config = getelementptr inbounds %struct.video_i2c_chip, ptr %arrayidx.sink, i32 0, i32 6
  %4 = ptrtoint ptr %regmap_config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap_config, align 4
  %call13 = tail call ptr @__regmap_init_i2c(ptr noundef %client, ptr noundef %5, ptr noundef nonnull @video_i2c_probe._key, ptr noundef nonnull @.str.1) #13
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call13, ptr %call7.i.i, align 8
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %call13 to i32
  br label %error_free_device

if.end19:                                         ; preds = %if.end11
  %v4l2_dev20 = getelementptr inbounds %struct.video_i2c_data, ptr %call7.i.i, i32 0, i32 6
  %name = getelementptr inbounds %struct.video_i2c_data, ptr %call7.i.i, i32 0, i32 6, i32 4
  %call21 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str, i32 noundef 36) #13
  %call23 = tail call i32 @v4l2_device_register(ptr noundef %dev, ptr noundef %v4l2_dev20) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp slt i32 %call23, 0
  br i1 %cmp, label %if.end19.error_regmap_exit_crit_edge, label %do.body

if.end19.error_regmap_exit_crit_edge:             ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_regmap_exit

do.body:                                          ; preds = %if.end19
  %lock = getelementptr inbounds %struct.video_i2c_data, ptr %call7.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @video_i2c_probe.__key) #13
  %queue_lock = getelementptr inbounds %struct.video_i2c_data, ptr %call7.i.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %queue_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @video_i2c_probe.__key.3) #13
  %vb_vidq = getelementptr inbounds %struct.video_i2c_data, ptr %call7.i.i, i32 0, i32 8
  %8 = ptrtoint ptr %vb_vidq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %vb_vidq, align 8
  %io_modes = getelementptr inbounds %struct.video_i2c_data, ptr %call7.i.i, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 23, ptr %io_modes, align 4
  %timestamp_flags = getelementptr inbounds %struct.video_i2c_data, ptr %call7.i.i, i32 0, i32 8, i32 13
  %10 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8192, ptr %timestamp_flags, align 4
  %drv_priv = getelementptr inbounds %struct.video_i2c_data, ptr %call7.i.i, i32 0, i32 8, i32 10
  %11 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %drv_priv, align 8
  %buf_struct_size = getelementptr inbounds %struct.video_i2c_data, ptr %call7.i.i, i32 0, i32 8, i32 12
  %12 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 744, ptr %buf_struct_size, align 8
  %min_buffers_needed = getelementptr inbounds %struct.video_i2c_data, ptr %call7.i.i, i32 0, i32 8, i32 15
  %13 = ptrtoint ptr %min_buffers_needed to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %min_buffers_needed, align 4
  %ops = getelementptr inbounds %struct.video_i2c_data, ptr %call7.i.i, i32 0, i32 8, i32 7
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @video_i2c_video_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.video_i2c_data, ptr %call7.i.i, i32 0, i32 8, i32 8
  %15 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @vb2_vmalloc_memops, ptr %mem_ops, align 8
  %call29 = tail call i32 @vb2_queue_init(ptr noundef %vb_vidq) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %do.body.error_unregister_device_crit_edge, label %if.end32

do.body.error_unregister_device_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_unregister_device

if.end32:                                         ; preds = %do.body
  %vdev = getelementptr inbounds %struct.video_i2c_data, ptr %call7.i.i, i32 0, i32 7
  %queue33 = getelementptr inbounds %struct.video_i2c_data, ptr %call7.i.i, i32 0, i32 7, i32 10
  %16 = ptrtoint ptr %queue33 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %vb_vidq, ptr %queue33, align 8
  %lock37 = getelementptr inbounds %struct.video_i2c_data, ptr %call7.i.i, i32 0, i32 8, i32 5
  %17 = ptrtoint ptr %lock37 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %queue_lock, ptr %lock37, align 4
  %name39 = getelementptr inbounds %struct.video_i2c_data, ptr %call7.i.i, i32 0, i32 7, i32 12
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %18 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter, align 8
  %nr = getelementptr inbounds %struct.i2c_adapter, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %22 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %addr, align 2
  %conv = zext i16 %23 to i32
  %call41 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name39, i32 noundef 32, ptr noundef nonnull @.str.5, i32 noundef %21, i32 noundef %conv)
  %v4l2_dev43 = getelementptr inbounds %struct.video_i2c_data, ptr %call7.i.i, i32 0, i32 7, i32 7
  %24 = ptrtoint ptr %v4l2_dev43 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %v4l2_dev20, ptr %v4l2_dev43, align 4
  %fops = getelementptr inbounds %struct.video_i2c_data, ptr %call7.i.i, i32 0, i32 7, i32 3
  %25 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @video_i2c_fops, ptr %fops, align 4
  %lock47 = getelementptr inbounds %struct.video_i2c_data, ptr %call7.i.i, i32 0, i32 7, i32 26
  %26 = ptrtoint ptr %lock47 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %lock, ptr %lock47, align 8
  %ioctl_ops = getelementptr inbounds %struct.video_i2c_data, ptr %call7.i.i, i32 0, i32 7, i32 24
  %27 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @video_i2c_ioctl_ops, ptr %ioctl_ops, align 4
  %release = getelementptr inbounds %struct.video_i2c_data, ptr %call7.i.i, i32 0, i32 7, i32 23
  %28 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @video_i2c_release, ptr %release, align 8
  %device_caps = getelementptr inbounds %struct.video_i2c_data, ptr %call7.i.i, i32 0, i32 7, i32 4
  %29 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 83886081, ptr %device_caps, align 8
  %slock = getelementptr inbounds %struct.video_i2c_data, ptr %call7.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %slock, ptr noundef nonnull @.str.7, ptr noundef nonnull @video_i2c_probe.__key.6, i16 noundef signext 3) #13
  %vid_cap_active = getelementptr inbounds %struct.video_i2c_data, ptr %call7.i.i, i32 0, i32 10
  %30 = ptrtoint ptr %vid_cap_active to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %vid_cap_active, ptr %vid_cap_active, align 4
  %prev.i = getelementptr inbounds %struct.video_i2c_data, ptr %call7.i.i, i32 0, i32 10, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %vid_cap_active, ptr %prev.i, align 8
  %frame_interval = getelementptr inbounds %struct.video_i2c_data, ptr %call7.i.i, i32 0, i32 11
  %32 = ptrtoint ptr %chip12 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chip12, align 4
  %frame_intervals = getelementptr inbounds %struct.video_i2c_chip, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %frame_intervals to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %frame_intervals, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 8)
  %37 = load i64, ptr %35, align 4
  %38 = ptrtoint ptr %frame_interval to i32
  call void @__asan_storeN_noabort(i32 %38, i32 8)
  store i64 %37, ptr %frame_interval, align 4
  %driver_data.i.i = getelementptr inbounds %struct.video_i2c_data, ptr %call7.i.i, i32 0, i32 7, i32 5, i32 8
  %39 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i222 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %40 = ptrtoint ptr %driver_data.i.i222 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call7.i.i, ptr %driver_data.i.i222, align 4
  %set_power = getelementptr inbounds %struct.video_i2c_chip, ptr %33, i32 0, i32 10
  %41 = ptrtoint ptr %set_power to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %set_power, align 4
  %tobool59.not = icmp eq ptr %42, null
  br i1 %tobool59.not, label %if.end32.if.end67_crit_edge, label %if.then60

if.end32.if.end67_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end67

if.then60:                                        ; preds = %if.end32
  %call63 = tail call i32 %42(ptr noundef nonnull %call7.i.i, i1 noundef zeroext true) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then60.if.end67_crit_edge, label %if.then60.error_unregister_device_crit_edge

if.then60.error_unregister_device_crit_edge:      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_unregister_device

if.then60.if.end67_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end67

if.end67:                                         ; preds = %if.then60.if.end67_crit_edge, %if.end32.if.end67_crit_edge
  %usage_count.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #13
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #13, !srcloc !107
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #13
  tail call void @pm_runtime_enable(ptr noundef %dev) #13
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 2000) #13
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #13
  %44 = ptrtoint ptr %chip12 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %chip12, align 4
  %hwmon_init = getelementptr inbounds %struct.video_i2c_chip, ptr %45, i32 0, i32 11
  %46 = ptrtoint ptr %hwmon_init to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hwmon_init, align 4
  %tobool75.not = icmp eq ptr %47, null
  br i1 %tobool75.not, label %if.end67.if.end88_crit_edge, label %if.then76

if.end67.if.end88_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88

if.then76:                                        ; preds = %if.end67
  %call79 = tail call i32 %47(ptr noundef nonnull %call7.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %do.end85, label %if.then76.if.end88_crit_edge

if.then76.if.end88_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88

do.end85:                                         ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.8) #17
  br label %if.end88

if.end88:                                         ; preds = %do.end85, %if.then76.if.end88_crit_edge, %if.end67.if.end88_crit_edge
  %48 = ptrtoint ptr %chip12 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %chip12, align 4
  %nvmem_config = getelementptr inbounds %struct.video_i2c_chip, ptr %49, i32 0, i32 7
  %50 = ptrtoint ptr %nvmem_config to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %nvmem_config, align 4
  %tobool90.not = icmp eq ptr %51, null
  br i1 %tobool90.not, label %if.end88.if.end105_crit_edge, label %if.then91

if.end88.if.end105_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end105

if.then91:                                        ; preds = %if.end88
  %priv = getelementptr inbounds %struct.nvmem_config, ptr %51, i32 0, i32 21
  %52 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call7.i.i, ptr %priv, align 4
  %53 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %dev, ptr %51, align 4
  %call97 = tail call ptr @devm_nvmem_register(ptr noundef %dev, ptr noundef nonnull %51) #13
  %cmp.i223 = icmp ugt ptr %call97, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i223, label %do.end102, label %if.then91.if.end105_crit_edge

if.then91.if.end105_crit_edge:                    ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end105

do.end102:                                        ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.14) #17
  br label %if.end105

if.end105:                                        ; preds = %do.end102, %if.then91.if.end105_crit_edge, %if.end88.if.end105_crit_edge
  %54 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fops, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %call.i224 = tail call i32 @__video_register_device(ptr noundef %vdev, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %57) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i224)
  %cmp108 = icmp slt i32 %call.i224, 0
  br i1 %cmp108, label %error_pm_disable, label %if.end111

if.end111:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #15
  %call.i225 = tail call i64 @ktime_get_mono_fast_ns() #13
  %last_busy.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 12, i32 22
  %58 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store volatile i64 %call.i225, ptr %last_busy.i, align 8
  %call.i226 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #13
  br label %cleanup

error_pm_disable:                                 ; preds = %if.end105
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #13
  %call.i227 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #13
  %call.i.i.i229 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !108
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #13
  %59 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #13, !srcloc !109
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %error_pm_disable.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

error_pm_disable.pm_runtime_put_noidle.exit_crit_edge: ; preds = %error_pm_disable
  call void @__sanitizer_cov_trace_pc() #15
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %error_pm_disable
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !110
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %error_pm_disable.pm_runtime_put_noidle.exit_crit_edge
  %60 = ptrtoint ptr %chip12 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %chip12, align 4
  %set_power120 = getelementptr inbounds %struct.video_i2c_chip, ptr %61, i32 0, i32 10
  %62 = ptrtoint ptr %set_power120 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %set_power120, align 4
  %tobool121.not = icmp eq ptr %63, null
  br i1 %tobool121.not, label %pm_runtime_put_noidle.exit.error_unregister_device_crit_edge, label %if.then122

pm_runtime_put_noidle.exit.error_unregister_device_crit_edge: ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_unregister_device

if.then122:                                       ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call125 = tail call i32 %63(ptr noundef nonnull %call7.i.i, i1 noundef zeroext false) #13
  br label %error_unregister_device

error_unregister_device:                          ; preds = %if.then122, %pm_runtime_put_noidle.exit.error_unregister_device_crit_edge, %if.then60.error_unregister_device_crit_edge, %do.body.error_unregister_device_crit_edge
  %ret.0 = phi i32 [ %call29, %do.body.error_unregister_device_crit_edge ], [ %call63, %if.then60.error_unregister_device_crit_edge ], [ %call.i224, %if.then122 ], [ %call.i224, %pm_runtime_put_noidle.exit.error_unregister_device_crit_edge ]
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev20) #13
  tail call void @mutex_destroy(ptr noundef %lock) #13
  tail call void @mutex_destroy(ptr noundef %queue_lock) #13
  br label %error_regmap_exit

error_regmap_exit:                                ; preds = %error_unregister_device, %if.end19.error_regmap_exit_crit_edge
  %ret.1 = phi i32 [ %call23, %if.end19.error_regmap_exit_crit_edge ], [ %ret.0, %error_unregister_device ]
  %64 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call7.i.i, align 8
  tail call void @regmap_exit(ptr noundef %65) #13
  br label %error_free_device

error_free_device:                                ; preds = %error_regmap_exit, %if.then16, %if.else.error_free_device_crit_edge
  %ret.2 = phi i32 [ %7, %if.then16 ], [ %ret.1, %error_regmap_exit ], [ -19, %if.else.error_free_device_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %error_free_device, %if.end111, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %error_free_device ], [ 0, %if.end111 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @video_i2c_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #13
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #13
  %call.i16 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #13
  %usage_count.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !108
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #13, !srcloc !109
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

entry.pm_runtime_put_noidle.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !110
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %entry.pm_runtime_put_noidle.exit_crit_edge
  %chip = getelementptr inbounds %struct.video_i2c_data, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip, align 4
  %set_power = getelementptr inbounds %struct.video_i2c_chip, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %set_power to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_power, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %pm_runtime_put_noidle.exit.if.end_crit_edge, label %if.then

pm_runtime_put_noidle.exit.if.end_crit_edge:      ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call8 = tail call i32 %6(ptr noundef %1, i1 noundef zeroext false) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %pm_runtime_put_noidle.exit.if.end_crit_edge
  %vdev = getelementptr inbounds %struct.video_i2c_data, ptr %1, i32 0, i32 7
  tail call void @video_unregister_device(ptr noundef %vdev) #13
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @video_i2c_release(ptr nocapture noundef readonly %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %vdev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %v4l2_dev = getelementptr inbounds %struct.video_i2c_data, ptr %1, i32 0, i32 6
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #13
  %lock = getelementptr inbounds %struct.video_i2c_data, ptr %1, i32 0, i32 2
  tail call void @mutex_destroy(ptr noundef %lock) #13
  %queue_lock = getelementptr inbounds %struct.video_i2c_data, ptr %1, i32 0, i32 5
  tail call void @mutex_destroy(ptr noundef %queue_lock) #13
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void @regmap_exit(ptr noundef %3) #13
  tail call void @kfree(ptr noundef %1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amg88xx_setup(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %frame_interval = getelementptr inbounds %struct.video_i2c_data, ptr %data, i32 0, i32 11
  %0 = ptrtoint ptr %frame_interval to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %frame_interval, align 4
  %denominator = getelementptr inbounds %struct.video_i2c_data, ptr %data, i32 0, i32 11, i32 1
  %2 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %denominator, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  %. = zext i1 %cmp to i32
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 2, i32 noundef 1, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amg88xx_xfer(ptr nocapture noundef readonly %data, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %chip = getelementptr inbounds %struct.video_i2c_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %buffer_size = getelementptr inbounds %struct.video_i2c_chip, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buffer_size, align 4
  %call = tail call i32 @regmap_bulk_read(ptr noundef %1, i32 noundef 128, ptr noundef %buf, i32 noundef %5) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amg88xx_set_power(ptr nocapture noundef readonly %data, i1 noundef zeroext %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  br i1 %on, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 0, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end.i:                                         ; preds = %if.then
  tail call void @msleep(i32 noundef 50) #13
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 8
  %call2.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 1, i32 noundef 63) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.return_crit_edge

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end5.i:                                        ; preds = %if.end.i
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #13
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 8
  %call7.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 1, i32 noundef 48) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end5.i.return.sink.split_crit_edge, label %if.end5.i.return_crit_edge

if.end5.i.return_crit_edge:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end5.i.return.sink.split_crit_edge:            ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return.sink.split

if.end:                                           ; preds = %entry
  %call.i3 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 0, i32 noundef 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3)
  %tobool.not.i4 = icmp eq i32 %call.i3, 0
  br i1 %tobool.not.i4, label %if.end.return.sink.split_crit_edge, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end.return.sink.split_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return.sink.split

return.sink.split:                                ; preds = %if.end.return.sink.split_crit_edge, %if.end5.i.return.sink.split_crit_edge
  %.sink = phi i32 [ 200, %if.end5.i.return.sink.split_crit_edge ], [ 100, %if.end.return.sink.split_crit_edge ]
  tail call void @msleep(i32 noundef %.sink) #13
  br label %return

return:                                           ; preds = %return.sink.split, %if.end.return_crit_edge, %if.end5.i.return_crit_edge, %if.end.i.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then.return_crit_edge ], [ %call2.i, %if.end.i.return_crit_edge ], [ %call7.i, %if.end5.i.return_crit_edge ], [ %call.i3, %if.end.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amg88xx_hwmon_init(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %call = tail call ptr @regmap_get_device(ptr noundef %1) #13
  %call1 = tail call ptr @devm_hwmon_device_register_with_info(ptr noundef %call, ptr noundef nonnull @.str.16, ptr noundef %data, ptr noundef nonnull @amg88xx_chip_info, ptr noundef null) #13
  %cmp.i.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  %2 = ptrtoint ptr %call1 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %2, i32 0
  ret i32 %spec.select.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx90640_setup(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.video_i2c_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %num_frame_intervals = getelementptr inbounds %struct.video_i2c_chip, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %num_frame_intervals to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_frame_intervals, align 4
  %sub = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp28.not = icmp eq i32 %sub, 0
  br i1 %cmp28.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %frame_interval = getelementptr inbounds %struct.video_i2c_data, ptr %data, i32 0, i32 11
  %4 = ptrtoint ptr %frame_interval to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %frame_interval, align 4
  %conv = zext i32 %5 to i64
  %frame_intervals = getelementptr inbounds %struct.video_i2c_chip, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %frame_intervals to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %frame_intervals, align 4
  %denominator9 = getelementptr inbounds %struct.video_i2c_data, ptr %data, i32 0, i32 11, i32 1
  %8 = ptrtoint ptr %denominator9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %denominator9, align 4
  %conv10 = zext i32 %9 to i64
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %n.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.v4l2_fract, ptr %7, i32 %n.029
  %denominator = getelementptr %struct.v4l2_fract, ptr %7, i32 %n.029, i32 1
  %10 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %denominator, align 4
  %conv2 = zext i32 %11 to i64
  %mul = mul nuw i64 %conv2, %conv
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %conv7 = zext i32 %13 to i64
  %mul11 = mul nuw i64 %conv10, %conv7
  call void @__sanitizer_cov_trace_cmp8(i64 %mul, i64 %mul11)
  %cmp12 = icmp eq i64 %mul, %mul11
  br i1 %cmp12, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %n.029, 1
  %exitcond.not = icmp eq i32 %inc, %sub
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %n.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %n.029, %for.body.for.end_crit_edge ], [ %sub, %for.inc.for.end_crit_edge ]
  %14 = xor i32 %n.0.lcssa, -1
  %sub17 = add i32 %3, %14
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 8
  %shl = shl i32 %sub17, 7
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 32781, i32 noundef 896, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx90640_xfer(ptr nocapture noundef readonly %data, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %chip = getelementptr inbounds %struct.video_i2c_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %buffer_size = getelementptr inbounds %struct.video_i2c_chip, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buffer_size, align 4
  %call = tail call i32 @regmap_bulk_read(ptr noundef %1, i32 noundef 1024, ptr noundef %buf, i32 noundef %5) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @amg88xx_is_visible(ptr nocapture noundef readnone %drvdata, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i16 292
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amg88xx_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %buf = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #13
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %buf, align 2, !annotation !111
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %call1 = tail call ptr @regmap_get_device(ptr noundef %4) #13
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %call1, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %call1, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !108
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #13
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #13, !srcloc !109
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !110
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call4 = call i32 @regmap_bulk_read(ptr noundef %7, i32 noundef 14, ptr noundef nonnull %buf, i32 noundef 2) #13
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %call6 = call ptr @regmap_get_device(ptr noundef %9) #13
  %call.i27 = call i64 @ktime_get_mono_fast_ns() #13
  %last_busy.i = getelementptr inbounds %struct.device, ptr %call6, i32 0, i32 12, i32 22
  %10 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store volatile i64 %call.i27, ptr %last_busy.i, align 8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %call8 = call ptr @regmap_get_device(ptr noundef %12) #13
  %call.i28 = call i32 @__pm_runtime_suspend(ptr noundef %call8, i32 noundef 13) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %buf, align 2
  %15 = call i16 @llvm.bswap.i16(i16 %14)
  %conv = zext i16 %15 to i32
  %and = and i32 %conv, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  %and14 = and i32 %conv, 2047
  %sub = sub nsw i32 0, %and14
  %tmp.0 = select i1 %tobool12.not, i32 %conv, i32 %sub
  %mul = mul nsw i32 %tmp.0, 625
  %div = sdiv i32 %mul, 10
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ %call4, %if.end.cleanup_crit_edge ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #13
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx90640_nvram_read(ptr nocapture noundef readonly %priv, i32 noundef %offset, ptr noundef %val, i32 noundef %bytes) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %add = add i32 %offset, 9216
  %call = tail call i32 @regmap_bulk_read(ptr noundef %1, i32 noundef %add, ptr noundef %val, i32 noundef %bytes) #13
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %chip = getelementptr inbounds %struct.video_i2c_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %buffer_size = getelementptr inbounds %struct.video_i2c_chip, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buffer_size, align 4
  %num_buffers = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 21
  %6 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_buffers, align 4
  %8 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nbuffers, align 4
  %add = add i32 %9, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add)
  %cmp = icmp ult i32 %add, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %nbuffers to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %nbuffers, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end3, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %5)
  %cmp2 = icmp ult i32 %14, %5
  %cond = select i1 %cmp2, i32 -22, i32 0
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %nplanes, align 4
  %16 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %5, ptr %sizes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then1
  %retval.0 = phi i32 [ %cond, %if.then1 ], [ 0, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @buffer_prepare(ptr nocapture noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %chip = getelementptr inbounds %struct.video_i2c_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  %buffer_size = getelementptr inbounds %struct.video_i2c_chip, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buffer_size, align 4
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %8 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end, label %vb2_plane_size.exit.cleanup_crit_edge

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

vb2_plane_size.exit.thread:                       ; preds = %entry
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %10 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %7)
  %cmp13 = icmp ult i32 %11, %7
  br i1 %cmp13, label %vb2_plane_size.exit.thread.cleanup_crit_edge, label %if.then.i11

vb2_plane_size.exit.thread.cleanup_crit_edge:     ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #15
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  %12 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %field, align 4
  br label %cleanup

if.then.i11:                                      ; preds = %vb2_plane_size.exit.thread
  %field14 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  %13 = ptrtoint ptr %field14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %field14, align 4
  %14 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %7)
  %cmp1.i = icmp ult i32 %15, %7
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i11.if.end42.i_crit_edge

if.then.i11.if.end42.i_crit_edge:                 ; preds = %if.then.i11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i11
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !112

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 1163, i32 noundef 9, ptr noundef null) #13
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %16 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i11.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %17, %if.then38.i ], [ %7, %if.then.i11.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %18 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42.i, %if.end, %vb2_plane_size.exit.thread.cleanup_crit_edge, %vb2_plane_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %vb2_plane_size.exit.cleanup_crit_edge ], [ -22, %vb2_plane_size.exit.thread.cleanup_crit_edge ], [ 0, %if.end ], [ 0, %if.end42.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call1 = tail call ptr @regmap_get_device(ptr noundef %3) #13
  %kthread_vid_cap = getelementptr inbounds %struct.video_i2c_data, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %kthread_vid_cap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kthread_vid_cap, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %call1, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end4

if.then.i:                                        ; preds = %if.end
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %call1, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !108
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #13, !srcloc !109
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.error_del_list_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.error_del_list_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_del_list

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !110
  br label %error_del_list

if.end4:                                          ; preds = %if.end
  %chip = getelementptr inbounds %struct.video_i2c_data, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip, align 4
  %setup = getelementptr inbounds %struct.video_i2c_chip, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %setup, align 4
  %call5 = tail call i32 %10(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.error_rpm_put_crit_edge

if.end4.error_rpm_put_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_rpm_put

if.end8:                                          ; preds = %if.end4
  %sequence = getelementptr inbounds %struct.video_i2c_data, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %sequence, align 8
  %name = getelementptr inbounds %struct.video_i2c_data, ptr %1, i32 0, i32 6, i32 4
  %call9 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @video_i2c_thread_vid_cap, ptr noundef %1, i32 noundef -1, ptr noundef nonnull @.str.19, ptr noundef %name) #13
  %cmp.i39 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i39, label %if.end13, label %if.end13.thread

if.end13.thread:                                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %call12 = tail call i32 @wake_up_process(ptr noundef %call9) #13
  %12 = ptrtoint ptr %kthread_vid_cap to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call9, ptr %kthread_vid_cap, align 8
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %kthread_vid_cap to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9, ptr %kthread_vid_cap, align 8
  %14 = ptrtoint ptr %call9 to i32
  br label %error_rpm_put

error_rpm_put:                                    ; preds = %if.end13, %if.end4.error_rpm_put_crit_edge
  %ret.0 = phi i32 [ %call5, %if.end4.error_rpm_put_crit_edge ], [ %14, %if.end13 ]
  %call.i40 = tail call i64 @ktime_get_mono_fast_ns() #13
  %last_busy.i = getelementptr inbounds %struct.device, ptr %call1, i32 0, i32 12, i32 22
  %15 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store volatile i64 %call.i40, ptr %last_busy.i, align 8
  %call.i41 = tail call i32 @__pm_runtime_suspend(ptr noundef %call1, i32 noundef 13) #13
  br label %error_del_list

error_del_list:                                   ; preds = %error_rpm_put, %do.end11.i.i.i.i.i, %if.then.i.error_del_list_crit_edge
  %ret.1 = phi i32 [ %ret.0, %error_rpm_put ], [ %call.i, %if.then.i.error_del_list_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  %16 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %drv_priv.i, align 4
  %slock.i = getelementptr inbounds %struct.video_i2c_data, ptr %17, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %slock.i) #13
  %vid_cap_active.i = getelementptr inbounds %struct.video_i2c_data, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %vid_cap_active.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vid_cap_active.i, align 4
  %cmp.not23.i = icmp eq ptr %19, %vid_cap_active.i
  br i1 %cmp.not23.i, label %error_del_list.video_i2c_del_list.exit_crit_edge, label %error_del_list.for.body.i_crit_edge

error_del_list.for.body.i_crit_edge:              ; preds = %error_del_list
  br label %for.body.i

error_del_list.video_i2c_del_list.exit_crit_edge: ; preds = %error_del_list
  call void @__sanitizer_cov_trace_pc() #15
  br label %video_i2c_del_list.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %error_del_list.for.body.i_crit_edge
  %.pn.in24.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %19, %error_del_list.for.body.i_crit_edge ]
  %buf.0.i = getelementptr i8, ptr %.pn.in24.i, i32 -736
  %20 = ptrtoint ptr %.pn.in24.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn.i = load ptr, ptr %.pn.in24.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in24.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in24.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i, align 4
  %23 = ptrtoint ptr %.pn.in24.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %.pn.in24.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %27 = ptrtoint ptr %.pn.in24.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in24.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in24.i, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %buf.0.i, i32 noundef 3) #13
  %cmp.not.i = icmp eq ptr %.pn.i, %vid_cap_active.i
  br i1 %cmp.not.i, label %list_del.exit.i.video_i2c_del_list.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

list_del.exit.i.video_i2c_del_list.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %video_i2c_del_list.exit

video_i2c_del_list.exit:                          ; preds = %list_del.exit.i.video_i2c_del_list.exit_crit_edge, %error_del_list.video_i2c_del_list.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %slock.i) #13
  br label %cleanup

cleanup:                                          ; preds = %video_i2c_del_list.exit, %if.end13.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %video_i2c_del_list.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end13.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stop_streaming(ptr nocapture noundef readonly %vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %kthread_vid_cap = getelementptr inbounds %struct.video_i2c_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %kthread_vid_cap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kthread_vid_cap, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @kthread_stop(ptr noundef nonnull %3) #13
  %4 = ptrtoint ptr %kthread_vid_cap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %kthread_vid_cap, align 8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %call4 = tail call ptr @regmap_get_device(ptr noundef %6) #13
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #13
  %last_busy.i = getelementptr inbounds %struct.device, ptr %call4, i32 0, i32 12, i32 22
  %7 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %call6 = tail call ptr @regmap_get_device(ptr noundef %9) #13
  %call.i13 = tail call i32 @__pm_runtime_suspend(ptr noundef %call6, i32 noundef 13) #13
  %10 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %drv_priv.i, align 4
  %slock.i = getelementptr inbounds %struct.video_i2c_data, ptr %11, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %slock.i) #13
  %vid_cap_active.i = getelementptr inbounds %struct.video_i2c_data, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %vid_cap_active.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vid_cap_active.i, align 4
  %cmp.not23.i = icmp eq ptr %13, %vid_cap_active.i
  br i1 %cmp.not23.i, label %if.end.video_i2c_del_list.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.video_i2c_del_list.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %video_i2c_del_list.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %.pn.in24.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %13, %if.end.for.body.i_crit_edge ]
  %buf.0.i = getelementptr i8, ptr %.pn.in24.i, i32 -736
  %14 = ptrtoint ptr %.pn.in24.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn.i = load ptr, ptr %.pn.in24.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in24.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in24.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i.i, align 4
  %17 = ptrtoint ptr %.pn.in24.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %.pn.in24.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %21 = ptrtoint ptr %.pn.in24.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in24.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in24.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %buf.0.i, i32 noundef 6) #13
  %cmp.not.i = icmp eq ptr %.pn.i, %vid_cap_active.i
  br i1 %cmp.not.i, label %list_del.exit.i.video_i2c_del_list.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

list_del.exit.i.video_i2c_del_list.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %video_i2c_del_list.exit

video_i2c_del_list.exit:                          ; preds = %list_del.exit.i.video_i2c_del_list.exit_crit_edge, %if.end.video_i2c_del_list.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %slock.i) #13
  br label %cleanup

cleanup:                                          ; preds = %video_i2c_del_list.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_queue(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %slock = getelementptr inbounds %struct.video_i2c_data, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %slock) #13
  %list = getelementptr inbounds %struct.video_i2c_buffer, ptr %vb, i32 0, i32 1
  %vid_cap_active = getelementptr inbounds %struct.video_i2c_data, ptr %3, i32 0, i32 10
  %prev.i = getelementptr inbounds %struct.video_i2c_data, ptr %3, i32 0, i32 10, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %5, ptr noundef %vid_cap_active) #13
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev.i, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %vid_cap_active, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.video_i2c_buffer, ptr %vb, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %slock) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @video_i2c_thread_vid_cap(ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %frame_interval = getelementptr inbounds %struct.video_i2c_data, ptr %priv, i32 0, i32 11
  %denominator = getelementptr inbounds %struct.video_i2c_data, ptr %priv, i32 0, i32 11, i32 1
  %0 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %denominator, align 4
  %.frozen = freeze i32 %1
  %div = udiv i32 1000000, %.frozen
  %2 = mul i32 %div, %.frozen
  %rem3.decomposed = sub i32 1000000, %2
  %3 = ptrtoint ptr %frame_interval to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %frame_interval, align 4
  %mul = mul i32 %4, %div
  %mul7 = mul i32 %4, %rem3.decomposed
  %div10 = udiv i32 %mul7, %1
  %add = add i32 %mul, %div10
  %call = tail call i64 @ktime_get() #13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call)
  %cmp8.i.i = icmp slt i64 %call, 0
  %5 = tail call i64 @llvm.abs.i64(i64 %call, i1 false) #13
  %6 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %5, i32 0) #18, !srcloc !113
  %asmresult.i.i.i = extractvalue { i64, i32 } %6, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %6, 1
  %7 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %5, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #18, !srcloc !114
  %asmresult10.i.i.i = extractvalue { i64, i32 } %7, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  %call12 = tail call zeroext i1 @set_freezable() #13
  %slock = getelementptr inbounds %struct.video_i2c_data, ptr %priv, i32 0, i32 3
  %vid_cap_active = getelementptr inbounds %struct.video_i2c_data, ptr %priv, i32 0, i32 10
  %prev = getelementptr inbounds %struct.video_i2c_data, ptr %priv, i32 0, i32 10, i32 1
  %chip = getelementptr inbounds %struct.video_i2c_data, ptr %priv, i32 0, i32 1
  %sequence = getelementptr inbounds %struct.video_i2c_data, ptr %priv, i32 0, i32 4
  %conv = zext i32 %add to i64
  br label %do.body

do.body:                                          ; preds = %if.end36.do.body_crit_edge, %entry
  %end_us.0 = phi i64 [ %cond213.i.i, %entry ], [ %end_us.1, %if.end36.do.body_crit_edge ]
  %8 = tail call i32 @llvm.read_register.i32(metadata !97) #13
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %13, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body.if.end.i_crit_edge

do.body.if.end.i_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @debug_check_no_locks_held() #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.body.if.end.i_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.20, i32 noundef 57) #13
  %14 = tail call i32 @llvm.read_register.i32(metadata !97) #13
  %and.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task.i.i, align 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %18 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.try_to_freeze.exit_crit_edge, label %freezing.exit.i.i, !prof !112

if.end.i.try_to_freeze.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %try_to_freeze.exit

freezing.exit.i.i:                                ; preds = %if.end.i
  %call4.i.i.i = tail call zeroext i1 @freezing_slow_path(ptr noundef %17) #13
  br i1 %call4.i.i.i, label %if.end.i.i, label %freezing.exit.i.i.try_to_freeze.exit_crit_edge, !prof !115

freezing.exit.i.i.try_to_freeze.exit_crit_edge:   ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %try_to_freeze.exit

if.end.i.i:                                       ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call6.i.i = tail call zeroext i1 @__refrigerator(i1 noundef zeroext false) #13
  br label %try_to_freeze.exit

try_to_freeze.exit:                               ; preds = %if.end.i.i, %freezing.exit.i.i.try_to_freeze.exit_crit_edge, %if.end.i.try_to_freeze.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %slock) #13
  %19 = ptrtoint ptr %vid_cap_active to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %vid_cap_active, align 4
  %cmp.i.not = icmp eq ptr %20, %vid_cap_active
  br i1 %cmp.i.not, label %if.end.thread, label %if.then

if.end.thread:                                    ; preds = %try_to_freeze.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef %slock) #13
  br label %if.end27

if.then:                                          ; preds = %try_to_freeze.exit
  %21 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev, align 4
  %add.ptr = getelementptr i8, ptr %22, i32 -736
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %22) #13
  br i1 %call.i.i, label %if.end.i.i59, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i.i59:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %22, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i59, %if.then.if.end_crit_edge
  %29 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %22, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %slock) #13
  %tobool18.not = icmp eq ptr %add.ptr, null
  br i1 %tobool18.not, label %if.end.if.end27_crit_edge, label %if.then19

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call21 = tail call ptr @vb2_plane_vaddr(ptr noundef nonnull %add.ptr, i32 noundef 0) #13
  %31 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chip, align 4
  %xfer = getelementptr inbounds %struct.video_i2c_chip, ptr %32, i32 0, i32 9
  %33 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %xfer, align 4
  %call22 = tail call i32 %34(ptr noundef %priv, ptr noundef %call21) #13
  %call.i = tail call i64 @ktime_get() #13
  %timestamp = getelementptr i8, ptr %22, i32 -712
  %35 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %call.i, ptr %timestamp, align 8
  %36 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sequence, align 8
  %inc = add i32 %37, 1
  store i32 %inc, ptr %sequence, align 8
  %sequence25 = getelementptr i8, ptr %22, i32 -272
  %38 = ptrtoint ptr %sequence25 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %sequence25, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool26.not = icmp eq i32 %call22, 0
  %cond = select i1 %tobool26.not, i32 5, i32 6
  tail call void @vb2_buffer_done(ptr noundef nonnull %add.ptr, i32 noundef %cond) #13
  br label %if.end27

if.end27:                                         ; preds = %if.then19, %if.end.if.end27_crit_edge, %if.end.thread
  %add28 = add i64 %end_us.0, %conv
  %call29 = tail call i64 @ktime_get() #13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call29)
  %cmp8.i.i60 = icmp slt i64 %call29, 0
  %39 = tail call i64 @llvm.abs.i64(i64 %call29, i1 false) #13
  %40 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %39, i32 0) #18, !srcloc !113
  %asmresult.i.i.i61 = extractvalue { i64, i32 } %40, 0
  %asmresult4.i.i.i62 = extractvalue { i64, i32 } %40, 1
  %41 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %39, i64 %asmresult.i.i.i61, i32 %asmresult4.i.i.i62) #18, !srcloc !114
  %asmresult10.i.i.i63 = extractvalue { i64, i32 } %41, 0
  %div1811.i.i64 = lshr i64 %asmresult10.i.i.i63, 9
  %sub210.i.i65 = sub nsw i64 0, %div1811.i.i64
  %cond213.i.i66 = select i1 %cmp8.i.i60, i64 %sub210.i.i65, i64 %div1811.i.i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add28, i64 %cond213.i.i66)
  %cmp = icmp sgt i64 %add28, %cond213.i.i66
  br i1 %cmp, label %if.then32, label %if.end27.if.end36_crit_edge

if.end27.if.end36_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %sub = sub i64 %add28, %cond213.i.i66
  %conv33 = trunc i64 %sub to i32
  %mul34 = mul i32 %conv33, 3
  %div35 = sdiv i32 %mul34, 4
  tail call void @usleep_range_state(i32 noundef %div35, i32 noundef %conv33, i32 noundef 2) #13
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.end27.if.end36_crit_edge
  %end_us.1 = phi i64 [ %add28, %if.then32 ], [ %cond213.i.i66, %if.end27.if.end36_crit_edge ]
  %call37 = tail call zeroext i1 @kthread_should_stop() #13
  br i1 %call37, label %do.end, label %if.end36.do.body_crit_edge

if.end36.do.body_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.end:                                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_release(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @video_i2c_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %vcap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #13
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call1 = tail call ptr @regmap_get_device(ptr noundef %3) #13
  %name = getelementptr inbounds %struct.video_i2c_data, ptr %1, i32 0, i32 6, i32 4
  %call3 = tail call i32 @strscpy(ptr noundef %vcap, ptr noundef %name, i32 noundef 16) #13
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %vcap, i32 0, i32 1
  %name5 = getelementptr inbounds %struct.video_i2c_data, ptr %1, i32 0, i32 7, i32 12
  %call7 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %name5, i32 noundef 32) #13
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %vcap, i32 0, i32 2
  %adapter = getelementptr i8, ptr %call1, i32 -8
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 8
  %nr = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr, align 4
  %addr = getelementptr i8, ptr %call1, i32 -30
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr, align 2
  %conv = zext i16 %9 to i32
  %call9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %bus_info, ptr noundef nonnull @.str.21, i32 noundef %7, i32 noundef %conv)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @video_i2c_enum_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #13
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %type1 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %fmt, i32 0, i32 1
  %4 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type1, align 4
  %chip = getelementptr inbounds %struct.video_i2c_data, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = call ptr @memcpy(ptr %fmt, ptr %9, i32 64)
  store i32 %5, ptr %type1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @video_i2c_try_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #13
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %chip = getelementptr inbounds %struct.video_i2c_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %size1 = getelementptr inbounds %struct.video_i2c_chip, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %size1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %size1, align 4
  %fmt2 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %bpp4 = getelementptr inbounds %struct.video_i2c_chip, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %bpp4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bpp4, align 4
  %div25 = lshr i32 %7, 3
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  %10 = ptrtoint ptr %fmt2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %fmt2, align 4
  %height = getelementptr inbounds %struct.v4l2_frmsize_discrete, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height, align 4
  %height6 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %height6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %height6, align 4
  %14 = load ptr, ptr %chip, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pixelformat, align 4
  %pixelformat8 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %19 = ptrtoint ptr %pixelformat8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %pixelformat8, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 3
  %20 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %field, align 4
  %mul = mul i32 %9, %div25
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %21 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul, ptr %bytesperline, align 4
  %mul12 = mul i32 %12, %mul
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %22 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul12, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %23 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 11, ptr %colorspace, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @video_i2c_s_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef writeonly %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #13
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %num_buffers.i = getelementptr inbounds %struct.video_i2c_data, ptr %1, i32 0, i32 8, i32 21
  %2 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i = tail call ptr @video_devdata(ptr noundef %file) #13
  %driver_data.i.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i.i, i32 0, i32 5, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %chip.i = getelementptr inbounds %struct.video_i2c_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip.i, align 4
  %size1.i = getelementptr inbounds %struct.video_i2c_chip, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %size1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %size1.i, align 4
  %fmt2.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %bpp4.i = getelementptr inbounds %struct.video_i2c_chip, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %bpp4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bpp4.i, align 4
  %div25.i = lshr i32 %11, 3
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %9, align 4
  %14 = ptrtoint ptr %fmt2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %fmt2.i, align 4
  %height.i = getelementptr inbounds %struct.v4l2_frmsize_discrete, ptr %9, i32 0, i32 1
  %15 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height.i, align 4
  %height6.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %height6.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %height6.i, align 4
  %18 = load ptr, ptr %chip.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pixelformat.i, align 4
  %pixelformat8.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %23 = ptrtoint ptr %pixelformat8.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %pixelformat8.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 3
  %24 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %field.i, align 4
  %mul.i = mul i32 %13, %div25.i
  %bytesperline.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %25 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mul.i, ptr %bytesperline.i, align 4
  %mul12.i = mul i32 %16, %mul.i
  %sizeimage.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %26 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %mul12.i, ptr %sizeimage.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %27 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 11, ptr %colorspace.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #1

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
define internal i32 @video_i2c_enum_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr noundef %vin) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vin, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.v4l2_input, ptr %vin, i32 0, i32 1
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.22, i32 noundef 32) #13
  %type = getelementptr inbounds %struct.v4l2_input, ptr %vin, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @video_i2c_g_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef writeonly %inp) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %inp, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @video_i2c_s_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, i32 noundef %inp) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inp)
  %cmp.not = icmp eq i32 %inp, 0
  %cond = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @video_i2c_g_parm(ptr noundef %filp, ptr nocapture noundef readnone %priv, ptr nocapture noundef %parm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #13
  %0 = ptrtoint ptr %parm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %parm1 = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1
  %readbuffers = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 4
  %4 = ptrtoint ptr %readbuffers to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %readbuffers, align 4
  %5 = ptrtoint ptr %parm1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4096, ptr %parm1, align 4
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 2
  %frame_interval = getelementptr inbounds %struct.video_i2c_data, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %frame_interval to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %frame_interval, align 4
  %8 = ptrtoint ptr %timeperframe to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %7, ptr %timeperframe, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @video_i2c_s_parm(ptr noundef %filp, ptr nocapture noundef readnone %priv, ptr nocapture noundef %parm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #13
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %chip = getelementptr inbounds %struct.video_i2c_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %num_frame_intervals = getelementptr inbounds %struct.video_i2c_chip, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %num_frame_intervals to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_frame_intervals, align 4
  %sub = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp31.not = icmp eq i32 %sub, 0
  br i1 %cmp31.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %timeperframe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %timeperframe, align 4
  %conv = zext i32 %7 to i64
  %frame_intervals = getelementptr inbounds %struct.video_i2c_chip, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %frame_intervals to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %frame_intervals, align 4
  %denominator11 = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %denominator11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %denominator11, align 4
  %conv12 = zext i32 %11 to i64
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.032 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.v4l2_fract, ptr %9, i32 %i.032
  %denominator = getelementptr %struct.v4l2_fract, ptr %9, i32 %i.032, i32 1
  %12 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %denominator, align 4
  %conv3 = zext i32 %13 to i64
  %mul = mul nuw i64 %conv3, %conv
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %conv8 = zext i32 %15 to i64
  %mul13 = mul nuw i64 %conv12, %conv8
  call void @__sanitizer_cov_trace_cmp8(i64 %mul, i64 %mul13)
  %cmp14.not = icmp ugt i64 %mul, %mul13
  br i1 %cmp14.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, %sub
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %i.032, %for.body.for.end_crit_edge ], [ %sub, %for.inc.for.end_crit_edge ]
  %frame_interval = getelementptr inbounds %struct.video_i2c_data, ptr %1, i32 0, i32 11
  %frame_intervals17 = getelementptr inbounds %struct.video_i2c_chip, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %frame_intervals17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %frame_intervals17, align 4
  %arrayidx18 = getelementptr %struct.v4l2_fract, ptr %17, i32 %i.0.lcssa
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %arrayidx18, align 4
  %20 = ptrtoint ptr %frame_interval to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %19, ptr %frame_interval, align 4
  %call.i.i = tail call ptr @video_devdata(ptr noundef %filp) #13
  %21 = ptrtoint ptr %parm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %parm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.not.i = icmp eq i32 %22, 1
  br i1 %cmp.not.i, label %if.end.i, label %for.end.video_i2c_g_parm.exit_crit_edge

for.end.video_i2c_g_parm.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %video_i2c_g_parm.exit

if.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %driver_data.i.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i.i, i32 0, i32 5, i32 8
  %23 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %parm1.i = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1
  %readbuffers.i = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 4
  %25 = ptrtoint ptr %readbuffers.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %readbuffers.i, align 4
  %26 = ptrtoint ptr %parm1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 4096, ptr %parm1.i, align 4
  %timeperframe.i = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 2
  %frame_interval.i = getelementptr inbounds %struct.video_i2c_data, ptr %24, i32 0, i32 11
  %27 = ptrtoint ptr %frame_interval.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %28 = load i64, ptr %frame_interval.i, align 4
  %29 = ptrtoint ptr %timeperframe.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %28, ptr %timeperframe.i, align 4
  br label %video_i2c_g_parm.exit

video_i2c_g_parm.exit:                            ; preds = %if.end.i, %for.end.video_i2c_g_parm.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -22, %for.end.video_i2c_g_parm.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @video_i2c_enum_framesizes(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %fsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #13
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %chip = getelementptr inbounds %struct.video_i2c_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %size1 = getelementptr inbounds %struct.video_i2c_chip, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %size1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %size1, align 4
  %6 = ptrtoint ptr %fsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %pixel_format = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 1
  %8 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pixel_format, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %13)
  %cmp3.not = icmp eq i32 %9, %13
  br i1 %cmp3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %type = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 2
  %14 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %type, align 4
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %5, align 4
  %17 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %17, align 4
  %height = getelementptr inbounds %struct.v4l2_frmsize_discrete, ptr %5, i32 0, i32 1
  %19 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %height, align 4
  %height7 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 1
  %21 = ptrtoint ptr %height7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %height7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @video_i2c_enum_frameintervals(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #13
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %chip = getelementptr inbounds %struct.video_i2c_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %size1 = getelementptr inbounds %struct.video_i2c_chip, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %size1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %size1, align 4
  %6 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fe, align 4
  %num_frame_intervals = getelementptr inbounds %struct.video_i2c_chip, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %num_frame_intervals to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_frame_intervals, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not = icmp ult i32 %7, %9
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %width = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fe, i32 0, i32 2
  %10 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %width, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp4.not = icmp eq i32 %11, %13
  br i1 %cmp4.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %height = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fe, i32 0, i32 3
  %14 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height, align 4
  %height5 = getelementptr inbounds %struct.v4l2_frmsize_discrete, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %height5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp6.not = icmp eq i32 %15, %17
  br i1 %cmp6.not, label %if.end8, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %type = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fe, i32 0, i32 4
  %18 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %type, align 4
  %19 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fe, i32 0, i32 5
  %20 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip, align 4
  %frame_intervals = getelementptr inbounds %struct.video_i2c_chip, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %frame_intervals to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %frame_intervals, align 4
  %arrayidx = getelementptr %struct.v4l2_fract, ptr %23, i32 %7
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %arrayidx, align 4
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %25, ptr %19, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @video_i2c_pm_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chip = getelementptr inbounds %struct.video_i2c_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %set_power = getelementptr inbounds %struct.video_i2c_chip, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %set_power to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_power, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = tail call i32 %5(ptr noundef %1, i1 noundef zeroext false) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @video_i2c_pm_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chip = getelementptr inbounds %struct.video_i2c_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %set_power = getelementptr inbounds %struct.video_i2c_chip, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %set_power to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_power, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = tail call i32 %5(ptr noundef %1, i1 noundef zeroext true) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !23, !25, !27, !28, !30, !31, !32, !33, !34, !35, !36, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !79, !81, !83, !85, !87, !89, !91, !93, !95}
!llvm.named.register.sp = !{!97}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @__initcall__kmod_video_i2c__299_962_video_i2c_driver_init6, !1, !"__initcall__kmod_video_i2c__299_962_video_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/video-i2c.c", i32 962, i32 1}
!2 = !{ptr @__exitcall_video_i2c_driver_exit, !1, !"__exitcall_video_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author300, !4, !"__UNIQUE_ID_author300", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/video-i2c.c", i32 964, i32 1}
!5 = !{ptr @__UNIQUE_ID_description301, !6, !"__UNIQUE_ID_description301", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/video-i2c.c", i32 965, i32 1}
!7 = !{ptr @__UNIQUE_ID_file302, !8, !"__UNIQUE_ID_file302", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/video-i2c.c", i32 966, i32 1}
!9 = !{ptr @__UNIQUE_ID_license303, !8, !"__UNIQUE_ID_license303", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/video-i2c.c", i32 953, i32 11}
!12 = !{ptr @video_i2c_driver, !13, !"video_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/video-i2c.c", i32 951, i32 26}
!14 = !{ptr @video_i2c_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/video-i2c.c", i32 772, i32 17}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @video_i2c_probe.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/media/i2c/video-i2c.c", i32 785, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @video_i2c_probe.__key.3, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/video-i2c.c", i32 786, i32 2}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/i2c/video-i2c.c", i32 806, i32 6}
!25 = !{ptr @video_i2c_probe.__key.6, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/media/i2c/video-i2c.c", i32 817, i32 2}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/i2c/video-i2c.c", i32 840, i32 4}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @video_i2c_probe._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @video_i2c_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/i2c/video-i2c.c", i32 855, i32 4}
!38 = !{ptr @video_i2c_probe._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @video_i2c_probe._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @video_i2c_chip, !41, !"video_i2c_chip", i1 false, i1 false}
!41 = !{!"../drivers/media/i2c/video-i2c.c", i32 357, i32 36}
!42 = !{ptr @amg88xx_format, !43, !"amg88xx_format", i1 false, i1 false}
!43 = !{!"../drivers/media/i2c/video-i2c.c", i32 62, i32 34}
!44 = !{ptr @amg88xx_size, !45, !"amg88xx_size", i1 false, i1 false}
!45 = !{!"../drivers/media/i2c/video-i2c.c", i32 66, i32 43}
!46 = !{ptr @amg88xx_frame_intervals, !47, !"amg88xx_frame_intervals", i1 false, i1 false}
!47 = !{!"../drivers/media/i2c/video-i2c.c", i32 341, i32 32}
!48 = !{ptr @amg88xx_regmap_config, !49, !"amg88xx_regmap_config", i1 false, i1 false}
!49 = !{!"../drivers/media/i2c/video-i2c.c", i32 80, i32 35}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/i2c/video-i2c.c", i32 327, i32 58}
!52 = !{ptr @amg88xx_chip_info, !53, !"amg88xx_chip_info", i1 false, i1 false}
!53 = !{!"../drivers/media/i2c/video-i2c.c", i32 319, i32 37}
!54 = !{ptr @amg88xx_hwmon_ops, !55, !"amg88xx_hwmon_ops", i1 false, i1 false}
!55 = !{!"../drivers/media/i2c/video-i2c.c", i32 314, i32 31}
!56 = !{ptr @amg88xx_info, !57, !"amg88xx_info", i1 false, i1 false}
!57 = !{!"../drivers/media/i2c/video-i2c.c", i32 270, i32 41}
!58 = !{ptr @amg88xx_temp, !59, !"amg88xx_temp", i1 false, i1 false}
!59 = !{!"../drivers/media/i2c/video-i2c.c", i32 265, i32 40}
!60 = !{ptr @amg88xx_temp_config, !61, !"amg88xx_temp_config", i1 false, i1 false}
!61 = !{!"../drivers/media/i2c/video-i2c.c", i32 260, i32 18}
!62 = !{ptr @mlx90640_format, !63, !"mlx90640_format", i1 false, i1 false}
!63 = !{!"../drivers/media/i2c/video-i2c.c", i32 71, i32 34}
!64 = !{ptr @mlx90640_size, !65, !"mlx90640_size", i1 false, i1 false}
!65 = !{!"../drivers/media/i2c/video-i2c.c", i32 75, i32 43}
!66 = !{ptr @mlx90640_frame_intervals, !67, !"mlx90640_frame_intervals", i1 false, i1 false}
!67 = !{!"../drivers/media/i2c/video-i2c.c", i32 346, i32 32}
!68 = !{ptr @mlx90640_regmap_config, !69, !"mlx90640_regmap_config", i1 false, i1 false}
!69 = !{!"../drivers/media/i2c/video-i2c.c", i32 86, i32 35}
!70 = !{ptr @.str.17, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/i2c/video-i2c.c", i32 131, i32 10}
!72 = !{ptr @mlx90640_nvram_config, !73, !"mlx90640_nvram_config", i1 false, i1 false}
!73 = !{!"../drivers/media/i2c/video-i2c.c", i32 130, i32 28}
!74 = !{ptr @video_i2c_video_qops, !75, !"video_i2c_video_qops", i1 false, i1 false}
!75 = !{!"../drivers/media/i2c/video-i2c.c", i32 555, i32 29}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!78 = !{ptr @.str.18, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.19, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/i2c/video-i2c.c", i32 525, i32 26}
!81 = !{ptr @.str.20, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!83 = !{ptr @video_i2c_fops, !84, !"video_i2c_fops", i1 false, i1 false}
!84 = !{!"../drivers/media/i2c/video-i2c.c", i32 385, i32 42}
!85 = !{ptr @video_i2c_ioctl_ops, !86, !"video_i2c_ioctl_ops", i1 false, i1 false}
!86 = !{!"../drivers/media/i2c/video-i2c.c", i32 719, i32 36}
!87 = !{ptr @.str.21, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/i2c/video-i2c.c", i32 575, i32 26}
!89 = !{ptr @.str.22, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/i2c/video-i2c.c", i32 598, i32 21}
!91 = !{ptr @video_i2c_of_match, !92, !"video_i2c_of_match", i1 false, i1 false}
!92 = !{!"../drivers/media/i2c/video-i2c.c", i32 944, i32 34}
!93 = !{ptr @video_i2c_pm_ops, !94, !"video_i2c_pm_ops", i1 false, i1 false}
!94 = !{!"../drivers/media/i2c/video-i2c.c", i32 932, i32 32}
!95 = !{ptr @video_i2c_id_table, !96, !"video_i2c_id_table", i1 false, i1 false}
!96 = !{!"../drivers/media/i2c/video-i2c.c", i32 937, i32 35}
!97 = !{!"sp"}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{i64 2148210684, i64 2148210710, i64 2148210739, i64 2148210773, i64 2148210804, i64 2148210827}
!108 = !{i64 2148210103}
!109 = !{i64 694926, i64 694951, i64 694973, i64 694989, i64 695001, i64 695021, i64 695045, i64 695061, i64 695073}
!110 = !{i64 2148210291}
!111 = !{!"auto-init"}
!112 = !{!"branch_weights", i32 2000, i32 1}
!113 = !{i64 496294, i64 496321, i64 496343, i64 496371}
!114 = !{i64 496702, i64 496729, i64 496762, i64 496783, i64 496810, i64 496836}
!115 = !{!"branch_weights", i32 1, i32 2000}
