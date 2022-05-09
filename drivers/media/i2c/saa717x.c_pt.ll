; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/saa717x.c_pt.bc'
source_filename = "../drivers/media/i2c/saa717x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_audio_ops = type { ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.100 = type { i32, i32, i32, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.saa717x_state = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
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
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.94 }
%union.anon.94 = type { i32, [28 x i8] }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_description292 = internal constant [63 x i8] c"saa717x.description=Philips SAA717x audio/video decoder driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [48 x i8] c"saa717x.author=K. Ohta, T. Adachi, Hans Verkuil\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [39 x i8] c"saa717x.file=drivers/media/i2c/saa717x\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [20 x i8] c"saa717x.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [14 x i8] c"saa717x.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype296 = internal constant [27 x i8] c"saa717x.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug297 = internal constant [37 x i8] c"saa717x.parm=debug:Debug level (0-1)\00", section ".modinfo", align 1
@__initcall__kmod_saa717x__303_1353_saa717x_driver_init6 = internal global ptr @saa717x_driver_init, section ".initcall6.init", align 4
@saa717x_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @saa717x_probe, ptr @saa717x_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @saa717x_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_saa717x_driver_exit = internal global ptr @saa717x_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"saa717x\00", [24 x i8] zeroinitializer }, align 32
@saa717x_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"saa717x\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@saa717x_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @saa717x_core_ops, ptr @saa717x_tuner_ops, ptr @saa717x_audio_ops, ptr @saa717x_video_ops, ptr null, ptr null, ptr null, ptr @saa717x_pad_ops }, [32 x i8] zeroinitializer }, align 32
@saa717x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: saa717x not found (id=%02x)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"saa717x_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/i2c/saa717x.c\00", [36 x i8] zeroinitializer }, align 32
@saa717x_probe._entry_ptr = internal global ptr @saa717x_probe._entry, section ".printk_index", align 4
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"saa7173\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"saa7174A\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"saa7174HL\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"saa7171\00", [24 x i8] zeroinitializer }, align 32
@saa717x_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 1269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s: %s found @ 0x%x (%s)\0A\00", [36 x i8] zeroinitializer }, align 32
@saa717x_probe._entry_ptr.11 = internal global ptr @saa717x_probe._entry.9, section ".printk_index", align 4
@saa717x_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"saa717x:1272:(hdl)->_lock\00", [38 x i8] zeroinitializer }, align 32
@saa717x_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @saa717x_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@saa717x_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 1315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: writing init values\0A\00", [37 x i8] zeroinitializer }, align 32
@saa717x_probe._entry_ptr.15 = internal global ptr @saa717x_probe._entry.13, section ".printk_index", align 4
@reg_init_initialize = internal global { [844 x i32], [848 x i8] } { [844 x i32] [i32 257, i32 8, i32 259, i32 0, i32 260, i32 144, i32 261, i32 144, i32 262, i32 235, i32 263, i32 224, i32 265, i32 85, i32 271, i32 42, i32 272, i32 0, i32 276, i32 69, i32 280, i32 64, i32 281, i32 128, i32 68, i32 0, i32 69, i32 0, i32 70, i32 207, i32 71, i32 2, i32 73, i32 0, i32 76, i32 208, i32 77, i32 2, i32 100, i32 128, i32 101, i32 64, i32 102, i32 64, i32 104, i32 0, i32 105, i32 4, i32 106, i32 0, i32 110, i32 0, i32 111, i32 0, i32 114, i32 0, i32 132, i32 0, i32 133, i32 0, i32 134, i32 207, i32 135, i32 2, i32 137, i32 0, i32 140, i32 208, i32 141, i32 2, i32 164, i32 128, i32 165, i32 64, i32 166, i32 64, i32 168, i32 0, i32 169, i32 4, i32 170, i32 0, i32 174, i32 0, i32 175, i32 0, i32 178, i32 0, i32 12, i32 0, i32 13, i32 0, i32 14, i32 0, i32 16, i32 16, i32 17, i32 32, i32 18, i32 48, i32 19, i32 64, i32 20, i32 80, i32 21, i32 96, i32 22, i32 112, i32 23, i32 128, i32 24, i32 144, i32 25, i32 160, i32 26, i32 176, i32 27, i32 192, i32 28, i32 208, i32 29, i32 224, i32 30, i32 240, i32 31, i32 255, i32 32, i32 16, i32 33, i32 32, i32 34, i32 48, i32 35, i32 64, i32 36, i32 80, i32 37, i32 96, i32 38, i32 112, i32 39, i32 128, i32 40, i32 144, i32 41, i32 160, i32 42, i32 176, i32 43, i32 192, i32 44, i32 208, i32 45, i32 224, i32 46, i32 240, i32 47, i32 255, i32 48, i32 16, i32 49, i32 32, i32 50, i32 48, i32 51, i32 64, i32 52, i32 80, i32 53, i32 96, i32 54, i32 112, i32 55, i32 128, i32 56, i32 144, i32 57, i32 160, i32 58, i32 176, i32 59, i32 192, i32 60, i32 208, i32 61, i32 224, i32 62, i32 240, i32 63, i32 255, i32 265, i32 133, i32 1412, i32 0, i32 1413, i32 0, i32 1414, i32 3, i32 1416, i32 255, i32 1417, i32 15, i32 1418, i32 0, i32 1419, i32 0, i32 1420, i32 16, i32 1421, i32 50, i32 1422, i32 84, i32 1423, i32 35, i32 1424, i32 0, i32 1429, i32 0, i32 1430, i32 0, i32 1431, i32 0, i32 1124, i32 0, i32 1132, i32 12303120, i32 1136, i32 1052688, i32 1144, i32 0, i32 1140, i32 24, i32 1108, i32 271801, i32 1108, i32 271673, i32 66, i32 3, i32 130, i32 3, i32 264, i32 248, i32 681, i32 253, i32 258, i32 137, i32 273, i32 0, i32 270, i32 10, i32 1428, i32 2, i32 1108, i32 271801, i32 1108, i32 271673, i32 273, i32 0, i32 270, i32 10, i32 1124, i32 0, i32 768, i32 0, i32 769, i32 6, i32 770, i32 0, i32 771, i32 6, i32 776, i32 64, i32 777, i32 0, i32 778, i32 0, i32 779, i32 0, i32 0, i32 2, i32 1, i32 0, i32 2, i32 0, i32 3, i32 0, i32 4, i32 51, i32 64, i32 29, i32 65, i32 1, i32 66, i32 4, i32 67, i32 0, i32 128, i32 30, i32 129, i32 1, i32 130, i32 4, i32 131, i32 0, i32 400, i32 24, i32 277, i32 0, i32 278, i32 18, i32 279, i32 24, i32 74, i32 17, i32 138, i32 17, i32 75, i32 0, i32 139, i32 0, i32 72, i32 0, i32 136, i32 0, i32 78, i32 18, i32 142, i32 18, i32 88, i32 18, i32 152, i32 18, i32 89, i32 0, i32 153, i32 0, i32 90, i32 3, i32 154, i32 3, i32 91, i32 1, i32 155, i32 1, i32 84, i32 8, i32 148, i32 8, i32 85, i32 0, i32 149, i32 0, i32 86, i32 199, i32 150, i32 199, i32 87, i32 2, i32 151, i32 2, i32 255, i32 255, i32 96, i32 1, i32 160, i32 1, i32 97, i32 0, i32 161, i32 0, i32 98, i32 0, i32 162, i32 0, i32 99, i32 0, i32 163, i32 0, i32 112, i32 0, i32 176, i32 0, i32 113, i32 4, i32 177, i32 4, i32 108, i32 233, i32 172, i32 233, i32 109, i32 3, i32 173, i32 3, i32 92, i32 208, i32 156, i32 208, i32 93, i32 2, i32 157, i32 2, i32 94, i32 242, i32 158, i32 242, i32 95, i32 0, i32 159, i32 0, i32 116, i32 0, i32 180, i32 0, i32 117, i32 0, i32 181, i32 0, i32 118, i32 0, i32 182, i32 0, i32 119, i32 0, i32 183, i32 0, i32 405, i32 8, i32 255, i32 255, i32 264, i32 248, i32 273, i32 0, i32 270, i32 10, i32 681, i32 253, i32 1124, i32 1, i32 1108, i32 270645, i32 1432, i32 231, i32 1433, i32 125, i32 1434, i32 24, i32 1436, i32 102, i32 1437, i32 144, i32 1438, i32 1, i32 1412, i32 0, i32 1413, i32 0, i32 1414, i32 3, i32 1416, i32 255, i32 1417, i32 15, i32 1418, i32 0, i32 1419, i32 0, i32 1420, i32 16, i32 1421, i32 50, i32 1422, i32 84, i32 1423, i32 35, i32 1424, i32 0, i32 1429, i32 0, i32 1430, i32 0, i32 1431, i32 0, i32 1124, i32 0, i32 1132, i32 12303120, i32 1136, i32 1052688, i32 1144, i32 0, i32 1140, i32 24, i32 1108, i32 270645, i32 1432, i32 231, i32 1433, i32 125, i32 1434, i32 24, i32 1436, i32 102, i32 1437, i32 144, i32 1438, i32 1, i32 1412, i32 0, i32 1413, i32 0, i32 1414, i32 3, i32 1416, i32 255, i32 1417, i32 15, i32 1418, i32 0, i32 1419, i32 0, i32 1420, i32 16, i32 1421, i32 50, i32 1422, i32 84, i32 1423, i32 35, i32 1424, i32 0, i32 1429, i32 0, i32 1430, i32 0, i32 1431, i32 0, i32 1124, i32 0, i32 1132, i32 12303120, i32 1136, i32 1052688, i32 1144, i32 0, i32 1140, i32 24, i32 1108, i32 270645, i32 1432, i32 231, i32 1433, i32 125, i32 1434, i32 24, i32 1436, i32 102, i32 1437, i32 144, i32 1438, i32 1, i32 1412, i32 0, i32 1413, i32 0, i32 1414, i32 3, i32 1416, i32 255, i32 1417, i32 15, i32 1418, i32 0, i32 1419, i32 0, i32 1420, i32 16, i32 1421, i32 50, i32 1422, i32 84, i32 1423, i32 35, i32 1424, i32 0, i32 1429, i32 0, i32 1430, i32 0, i32 1431, i32 0, i32 1124, i32 0, i32 1132, i32 12303120, i32 1136, i32 1052688, i32 1144, i32 0, i32 1140, i32 24, i32 1108, i32 270645, i32 403, i32 0, i32 768, i32 0, i32 769, i32 6, i32 770, i32 0, i32 771, i32 6, i32 776, i32 64, i32 777, i32 0, i32 778, i32 0, i32 779, i32 0, i32 0, i32 2, i32 1, i32 0, i32 2, i32 0, i32 3, i32 0, i32 4, i32 51, i32 64, i32 29, i32 65, i32 1, i32 66, i32 4, i32 67, i32 0, i32 128, i32 30, i32 129, i32 1, i32 130, i32 4, i32 131, i32 0, i32 400, i32 24, i32 277, i32 0, i32 278, i32 18, i32 279, i32 24, i32 74, i32 17, i32 138, i32 17, i32 75, i32 0, i32 139, i32 0, i32 72, i32 0, i32 136, i32 0, i32 78, i32 18, i32 142, i32 18, i32 88, i32 18, i32 152, i32 18, i32 89, i32 0, i32 153, i32 0, i32 90, i32 3, i32 154, i32 3, i32 91, i32 1, i32 155, i32 1, i32 84, i32 8, i32 148, i32 8, i32 85, i32 0, i32 149, i32 0, i32 86, i32 199, i32 150, i32 199, i32 87, i32 2, i32 151, i32 2, i32 96, i32 1, i32 160, i32 1, i32 97, i32 0, i32 161, i32 0, i32 98, i32 0, i32 162, i32 0, i32 99, i32 0, i32 163, i32 0, i32 112, i32 0, i32 176, i32 0, i32 113, i32 4, i32 177, i32 4, i32 108, i32 233, i32 172, i32 233, i32 109, i32 3, i32 173, i32 3, i32 92, i32 208, i32 156, i32 208, i32 93, i32 2, i32 157, i32 2, i32 94, i32 242, i32 158, i32 242, i32 95, i32 0, i32 159, i32 0, i32 116, i32 0, i32 180, i32 0, i32 117, i32 0, i32 181, i32 0, i32 118, i32 0, i32 182, i32 0, i32 119, i32 0, i32 183, i32 0, i32 405, i32 8, i32 1432, i32 231, i32 1433, i32 125, i32 1434, i32 24, i32 1436, i32 102, i32 1437, i32 144, i32 1438, i32 1, i32 1412, i32 0, i32 1413, i32 0, i32 1414, i32 3, i32 1416, i32 255, i32 1417, i32 15, i32 1418, i32 0, i32 1419, i32 0, i32 1420, i32 16, i32 1421, i32 50, i32 1422, i32 84, i32 1423, i32 35, i32 1424, i32 0, i32 1429, i32 0, i32 1430, i32 0, i32 1431, i32 0, i32 1124, i32 0, i32 1132, i32 12303120, i32 1136, i32 1052688, i32 1144, i32 0, i32 1140, i32 24, i32 1108, i32 270645, i32 403, i32 166, i32 264, i32 248, i32 66, i32 3, i32 130, i32 3, i32 1108, i32 271801, i32 1108, i32 271673, i32 403, i32 0, i32 403, i32 166, i32 1124, i32 0, i32 0, i32 0], [848 x i8] zeroinitializer }, align 32
@saa717x_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @saa717x_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @saa717x_g_register, ptr @saa717x_s_register, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa717x_tuner_ops = internal constant { %struct.v4l2_subdev_tuner_ops, [52 x i8] } { %struct.v4l2_subdev_tuner_ops { ptr null, ptr @saa717x_s_radio, ptr null, ptr null, ptr null, ptr @saa717x_g_tuner, ptr @saa717x_s_tuner, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@saa717x_audio_ops = internal constant { %struct.v4l2_subdev_audio_ops, [16 x i8] } { %struct.v4l2_subdev_audio_ops { ptr null, ptr null, ptr @saa717x_s_audio_routing, ptr null }, [16 x i8] zeroinitializer }, align 32
@saa717x_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr @saa717x_s_video_routing, ptr null, ptr null, ptr @saa717x_s_std, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @saa717x_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@saa717x_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @saa717x_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@saa717x_g_tuner._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 1142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: DETECT==st:%d dual:%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"saa717x_g_tuner\00", [16 x i8] zeroinitializer }, align 32
@saa717x_g_tuner._entry_ptr = internal global ptr @saa717x_g_tuner._entry, section ".printk_index", align 4
@saa717x_g_tuner._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.4, i32 1147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: DETECT==MONO\0A\00", [44 x i8] zeroinitializer }, align 32
@saa717x_g_tuner._entry_ptr.20 = internal global ptr @saa717x_g_tuner._entry.18, section ".printk_index", align 4
@saa717x_g_tuner._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.4, i32 1155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: DETECT==ST(ST)\0A\00", [42 x i8] zeroinitializer }, align 32
@saa717x_g_tuner._entry_ptr.23 = internal global ptr @saa717x_g_tuner._entry.21, section ".printk_index", align 4
@saa717x_g_tuner._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.17, ptr @.str.4, i32 1158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: DETECT==ST(MONO)\0A\00", [40 x i8] zeroinitializer }, align 32
@saa717x_g_tuner._entry_ptr.26 = internal global ptr @saa717x_g_tuner._entry.24, section ".printk_index", align 4
@saa717x_g_tuner._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.17, ptr @.str.4, i32 1166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: DETECT==DUAL1\0A\00", [43 x i8] zeroinitializer }, align 32
@saa717x_g_tuner._entry_ptr.29 = internal global ptr @saa717x_g_tuner._entry.27, section ".printk_index", align 4
@saa717x_g_tuner._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.17, ptr @.str.4, i32 1169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: DETECT==DUAL2\0A\00", [43 x i8] zeroinitializer }, align 32
@saa717x_g_tuner._entry_ptr.32 = internal global ptr @saa717x_g_tuner._entry.30, section ".printk_index", align 4
@get_inf_dev_status.stdres = internal constant { [32 x ptr], [32 x i8] } { [32 x ptr] [ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.52, ptr @.str.52, ptr @.str.52, ptr @.str.52, ptr @.str.52, ptr @.str.52, ptr @.str.52, ptr @.str.52, ptr @.str.52, ptr @.str.52, ptr @.str.52, ptr @.str.53], [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no standard detected\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"B/G (in progress)\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"D/K (in progress)\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"M (in progress)\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"B/G A2\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"B/G NICAM\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"D/K A2 (1)\00", [21 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"D/K A2 (2)\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"D/K A2 (3)\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"D/K NICAM\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"L NICAM\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"I NICAM\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"M Korea\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"M BTSC \00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"M EIAJ\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"FM radio / IF 10.7 / 50 deemp\00", [34 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"FM radio / IF 10.7 / 75 deemp\00", [34 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"FM radio / IF sel / 50 deemp\00", [35 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"FM radio / IF sel / 75 deemp\00", [35 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"??? [in progress]\00", [46 x i8] zeroinitializer }, align 32
@get_inf_dev_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.4, i32 724, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s: tvaudio thread status: 0x%x [%s%s%s]\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"get_inf_dev_status\00", [45 x i8] zeroinitializer }, align 32
@get_inf_dev_status._entry_ptr = internal global ptr @get_inf_dev_status._entry, section ".printk_index", align 4
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",stereo\00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c",dual\00", [26 x i8] zeroinitializer }, align 32
@get_inf_dev_status._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.55, ptr @.str.4, i32 743, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\017%s: detailed status: %s#%s#%s#%s#%s#%s#%s#%s#%s#%s#%s#%s#%s#%s\0A\00", [62 x i8] zeroinitializer }, align 32
@get_inf_dev_status._entry_ptr.60 = internal global ptr @get_inf_dev_status._entry.58, section ".printk_index", align 4
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" A2/EIAJ pilot tone \00", [43 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" A2/EIAJ dual \00", [17 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" A2/EIAJ stereo \00", [47 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" A2/EIAJ noise mute \00", [43 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c" BTSC/FM radio pilot \00", [42 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" SAP carrier \00", [18 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c" BTSC stereo noise mute \00", [39 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" SAP noise mute \00", [47 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" VDSP \00", [25 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" NICST \00", [24 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" NICDU \00", [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" NICAM muted \00", [18 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c" NICAM reserve sound \00", [42 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" init done \00", [20 x i8] zeroinitializer }, align 32
@get_inf_dev_status._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.55, ptr @.str.4, i32 746, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\017%s: ST!!!\0A\00", [19 x i8] zeroinitializer }, align 32
@get_inf_dev_status._entry_ptr.77 = internal global ptr @get_inf_dev_status._entry.75, section ".printk_index", align 4
@get_inf_dev_status._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.55, ptr @.str.4, i32 751, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\017%s: DUAL!!!\0A\00", [17 x i8] zeroinitializer }, align 32
@get_inf_dev_status._entry_ptr.80 = internal global ptr @get_inf_dev_status._entry.78, section ".printk_index", align 4
@.str.81 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MONO\00", [27 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"STEREO\00", [25 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LANG1\00", [26 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LANG2/SAP\00", [22 x i8] zeroinitializer }, align 32
@__const.saa717x_s_tuner.mes = private unnamed_addr constant [4 x ptr] [ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84], align 4
@saa717x_s_tuner._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.4, i32 1124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: change audio mode to %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"saa717x_s_tuner\00", [16 x i8] zeroinitializer }, align 32
@saa717x_s_tuner._entry_ptr = internal global ptr @saa717x_s_tuner._entry, section ".printk_index", align 4
@set_audio_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.4, i32 760, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017%s: writing registers to set audio mode by set %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"set_audio_mode\00", [17 x i8] zeroinitializer }, align 32
@set_audio_mode._entry_ptr = internal global ptr @set_audio_mode._entry, section ".printk_index", align 4
@reg_set_audio_template = internal constant { [4 x [2 x i32]], [32 x i8] } { [4 x [2 x i32]] [[2 x i32] [i32 12303104, i32 0], [2 x i32] [i32 12303120, i32 1052688], [2 x i32] [i32 12303104, i32 0], [2 x i32] [i32 12303121, i32 1118481]], [32 x i8] zeroinitializer }, align 32
@saa717x_s_audio_routing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.4, i32 1079, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: set decoder audio input to %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"saa717x_s_audio_routing\00", [40 x i8] zeroinitializer }, align 32
@saa717x_s_audio_routing._entry_ptr = internal global ptr @saa717x_s_audio_routing._entry, section ".printk_index", align 4
@set_audio_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.4, i32 777, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: set audio input %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"set_audio_regs\00", [17 x i8] zeroinitializer }, align 32
@set_audio_regs._entry_ptr = internal global ptr @set_audio_regs._entry, section ".printk_index", align 4
@saa717x_s_video_routing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.4, i32 919, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: decoder set input (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"saa717x_s_video_routing\00", [40 x i8] zeroinitializer }, align 32
@saa717x_s_video_routing._entry_ptr = internal global ptr @saa717x_s_video_routing._entry, section ".printk_index", align 4
@saa717x_s_video_routing._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.94, ptr @.str.4, i32 931, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: now setting %s input %d\0A\00", [33 x i8] zeroinitializer }, align 32
@saa717x_s_video_routing._entry_ptr.97 = internal global ptr @saa717x_s_video_routing._entry.95, section ".printk_index", align 4
@.str.98 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"S-Video\00", [24 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Composite\00", [22 x i8] zeroinitializer }, align 32
@reg_init_tuner_input = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 264, i32 248, i32 273, i32 0, i32 270, i32 10, i32 0, i32 0], [32 x i8] zeroinitializer }, align 32
@reg_init_svideo_input = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 264, i32 232, i32 273, i32 0, i32 270, i32 74, i32 0, i32 0], [32 x i8] zeroinitializer }, align 32
@reg_init_composite_input = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 264, i32 232, i32 273, i32 0, i32 270, i32 74, i32 0, i32 0], [32 x i8] zeroinitializer }, align 32
@saa717x_s_std._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.4, i32 1062, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: decoder set norm \00", [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"saa717x_s_std\00", [18 x i8] zeroinitializer }, align 32
@saa717x_s_std._entry_ptr = internal global ptr @saa717x_s_std._entry, section ".printk_index", align 4
@saa717x_s_std._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.101, ptr @.str.4, i32 1063, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: (not yet implemented)\0A\00", [35 x i8] zeroinitializer }, align 32
@saa717x_s_std._entry_ptr.104 = internal global ptr @saa717x_s_std._entry.102, section ".printk_index", align 4
@saa717x_s_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.4, i32 1091, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: decoder %s output\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"saa717x_s_stream\00", [47 x i8] zeroinitializer }, align 32
@saa717x_s_stream._entry_ptr = internal global ptr @saa717x_s_stream._entry, section ".printk_index", align 4
@.str.107 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@saa717x_set_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.4, i32 989, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: decoder set size\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"saa717x_set_fmt\00", [16 x i8] zeroinitializer }, align 32
@saa717x_set_fmt._entry_ptr = internal global ptr @saa717x_set_fmt._entry, section ".printk_index", align 4
@set_h_prescale.vals = internal constant { [10 x %struct.anon.100], [56 x i8] } { [10 x %struct.anon.100] [%struct.anon.100 { i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.anon.100 { i32 2, i32 2, i32 1, i32 2, i32 2 }, %struct.anon.100 { i32 3, i32 4, i32 1, i32 3, i32 2 }, %struct.anon.100 { i32 4, i32 8, i32 1, i32 4, i32 2 }, %struct.anon.100 { i32 5, i32 8, i32 1, i32 4, i32 2 }, %struct.anon.100 { i32 6, i32 8, i32 1, i32 4, i32 3 }, %struct.anon.100 { i32 7, i32 8, i32 1, i32 4, i32 3 }, %struct.anon.100 { i32 8, i32 15, i32 0, i32 4, i32 3 }, %struct.anon.100 { i32 9, i32 15, i32 0, i32 4, i32 3 }, %struct.anon.100 { i32 10, i32 16, i32 1, i32 5, i32 3 }], [56 x i8] zeroinitializer }, align 32
@saa717x_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.4, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: wrote:  reg 0x%03x=%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"saa717x_write\00", [18 x i8] zeroinitializer }, align 32
@saa717x_write._entry_ptr = internal global ptr @saa717x_write._entry, section ".printk_index", align 4
@saa717x_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.4, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: read:  reg 0x%03x=0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"saa717x_read\00", [19 x i8] zeroinitializer }, align 32
@saa717x_read._entry_ptr = internal global ptr @saa717x_read._entry, section ".printk_index", align 4
@switch.table.saa717x_s_tuner = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 3, i32 2], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 50, i64 108, i64 194, i64 242]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.116 = internal global [11 x i64] [i64 9, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963779, i64 9963781, i64 9963782, i64 9963783, i64 9963784, i64 9963785]
@___asan_gen_.117 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 34, i32 12 }
@___asan_gen_.120 = private unnamed_addr constant [15 x i8] c"saa717x_driver\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1344, i32 26 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1346, i32 11 }
@___asan_gen_.126 = private unnamed_addr constant [11 x i8] c"saa717x_id\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1338, i32 35 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1238, i32 12 }
@___asan_gen_.132 = private unnamed_addr constant [12 x i8] c"saa717x_ops\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1217, i32 37 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1257, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1261, i32 7 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1263, i32 7 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1265, i32 7 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1267, i32 7 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1268, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1272, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"saa717x_ctrl_ops\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1185, i32 35 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1315, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant [20 x i8] c"reg_init_initialize\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 152, i32 12 }
@___asan_gen_.183 = private unnamed_addr constant [17 x i8] c"saa717x_core_ops\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1189, i32 42 }
@___asan_gen_.186 = private unnamed_addr constant [18 x i8] c"saa717x_tuner_ops\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1197, i32 43 }
@___asan_gen_.189 = private unnamed_addr constant [18 x i8] c"saa717x_audio_ops\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1209, i32 43 }
@___asan_gen_.192 = private unnamed_addr constant [18 x i8] c"saa717x_video_ops\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1203, i32 43 }
@___asan_gen_.195 = private unnamed_addr constant [16 x i8] c"saa717x_pad_ops\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1213, i32 41 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1141, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1147, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1155, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1158, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1166, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1169, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant [7 x i8] c"stdres\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 685, i32 15 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 686, i32 12 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 687, i32 12 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 688, i32 12 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 689, i32 12 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 691, i32 12 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 692, i32 12 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 693, i32 12 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 694, i32 12 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 695, i32 12 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 696, i32 12 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 697, i32 12 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 698, i32 12 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 700, i32 12 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 701, i32 12 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 702, i32 12 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 704, i32 12 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 705, i32 12 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 706, i32 12 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 707, i32 12 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 709, i32 21 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 710, i32 12 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 721, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 725, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 746, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 751, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1103, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1103, i32 11 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1103, i32 21 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1103, i32 30 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1123, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 759, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant [23 x i8] c"reg_set_audio_template\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 647, i32 12 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1077, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 776, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 919, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 929, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant [21 x i8] c"reg_init_tuner_input\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 624, i32 12 }
@___asan_gen_.453 = private unnamed_addr constant [22 x i8] c"reg_init_svideo_input\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 640, i32 12 }
@___asan_gen_.456 = private unnamed_addr constant [25 x i8] c"reg_init_composite_input\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 632, i32 12 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1062, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1063, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1090, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 989, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant [5 x i8] c"vals\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 815, i32 4 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 108, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.516 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.517 = private constant [31 x i8] c"../drivers/media/i2c/saa717x.c\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 146, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant [29 x i8] c"switch.table.saa717x_s_tuner\00", align 1
@llvm.compiler.used = appending global [170 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug297, ptr @__UNIQUE_ID_debugtype296, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_saa717x_driver_exit, ptr @__initcall__kmod_saa717x__303_1353_saa717x_driver_init6, ptr @__param_debug, ptr @get_inf_dev_status._entry, ptr @get_inf_dev_status._entry.58, ptr @get_inf_dev_status._entry.75, ptr @get_inf_dev_status._entry.78, ptr @get_inf_dev_status._entry_ptr, ptr @get_inf_dev_status._entry_ptr.60, ptr @get_inf_dev_status._entry_ptr.77, ptr @get_inf_dev_status._entry_ptr.80, ptr @saa717x_driver_exit, ptr @saa717x_g_tuner._entry, ptr @saa717x_g_tuner._entry.18, ptr @saa717x_g_tuner._entry.21, ptr @saa717x_g_tuner._entry.24, ptr @saa717x_g_tuner._entry.27, ptr @saa717x_g_tuner._entry.30, ptr @saa717x_g_tuner._entry_ptr, ptr @saa717x_g_tuner._entry_ptr.20, ptr @saa717x_g_tuner._entry_ptr.23, ptr @saa717x_g_tuner._entry_ptr.26, ptr @saa717x_g_tuner._entry_ptr.29, ptr @saa717x_g_tuner._entry_ptr.32, ptr @saa717x_probe._entry, ptr @saa717x_probe._entry.13, ptr @saa717x_probe._entry.9, ptr @saa717x_probe._entry_ptr, ptr @saa717x_probe._entry_ptr.11, ptr @saa717x_probe._entry_ptr.15, ptr @saa717x_read._entry, ptr @saa717x_read._entry_ptr, ptr @saa717x_s_audio_routing._entry, ptr @saa717x_s_audio_routing._entry_ptr, ptr @saa717x_s_std._entry, ptr @saa717x_s_std._entry.102, ptr @saa717x_s_std._entry_ptr, ptr @saa717x_s_std._entry_ptr.104, ptr @saa717x_s_stream._entry, ptr @saa717x_s_stream._entry_ptr, ptr @saa717x_s_tuner._entry, ptr @saa717x_s_tuner._entry_ptr, ptr @saa717x_s_video_routing._entry, ptr @saa717x_s_video_routing._entry.95, ptr @saa717x_s_video_routing._entry_ptr, ptr @saa717x_s_video_routing._entry_ptr.97, ptr @saa717x_set_fmt._entry, ptr @saa717x_set_fmt._entry_ptr, ptr @saa717x_write._entry, ptr @saa717x_write._entry_ptr, ptr @set_audio_mode._entry, ptr @set_audio_mode._entry_ptr, ptr @set_audio_regs._entry, ptr @set_audio_regs._entry_ptr, ptr @debug, ptr @saa717x_driver, ptr @.str, ptr @saa717x_id, ptr @.str.1, ptr @saa717x_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @saa717x_probe._key, ptr @.str.12, ptr @saa717x_ctrl_ops, ptr @.str.14, ptr @reg_init_initialize, ptr @saa717x_core_ops, ptr @saa717x_tuner_ops, ptr @saa717x_audio_ops, ptr @saa717x_video_ops, ptr @saa717x_pad_ops, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @get_inf_dev_status.stdres, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @reg_set_audio_template, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.98, ptr @.str.99, ptr @reg_init_tuner_input, ptr @reg_init_svideo_input, ptr @reg_init_composite_input, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @set_h_prescale.vals, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @switch.table.saa717x_s_tuner], section "llvm.metadata"
@0 = internal global [135 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa717x_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa717x_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa717x_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa717x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa717x_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa717x_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa717x_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa717x_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_init_initialize to i32), i32 3376, i32 4224, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa717x_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa717x_tuner_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa717x_audio_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa717x_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa717x_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa717x_g_tuner._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa717x_g_tuner._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa717x_g_tuner._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa717x_g_tuner._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa717x_g_tuner._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa717x_g_tuner._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_inf_dev_status.stdres to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_inf_dev_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_inf_dev_status._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_inf_dev_status._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_inf_dev_status._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa717x_s_tuner._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_audio_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_set_audio_template to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa717x_s_audio_routing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_audio_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa717x_s_video_routing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa717x_s_video_routing._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_init_tuner_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_init_svideo_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_init_composite_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa717x_s_std._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa717x_s_std._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa717x_s_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa717x_set_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_h_prescale.vals to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa717x_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa717x_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.saa717x_s_tuner to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @saa717x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @saa717x_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @saa717x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @saa717x_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa717x_probe(ptr noundef %client, ptr nocapture noundef readnone %did) #2 align 64 {
entry:
  %mm1.i272 = alloca [2 x i8], align 1
  %mm2.i = alloca [4 x i8], align 4
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %mm1.i256 = alloca [6 x i8], align 1
  %msg.i257 = alloca %struct.i2c_msg, align 4
  %mm1.i240 = alloca [6 x i8], align 1
  %msg.i241 = alloca %struct.i2c_msg, align 4
  %mm1.i224 = alloca [6 x i8], align 1
  %msg.i225 = alloca %struct.i2c_msg, align 4
  %mm1.i = alloca [6 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #7
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 440, i32 noundef 3520) #7
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @saa717x_ops) #7
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 11
  %6 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter.i, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm1.i) #7
  %10 = getelementptr inbounds [6 x i8], ptr %mm1.i, i32 0, i32 1
  %11 = getelementptr inbounds [6 x i8], ptr %mm1.i, i32 0, i32 2
  %12 = getelementptr inbounds i8, ptr %mm1.i, i32 3
  %13 = call ptr @memset(ptr %12, i32 255, i32 3)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %14 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 262143, ptr %14, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags.i, align 2
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 1
  %17 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %addr.i, align 2
  %19 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %msg.i, align 4
  %20 = ptrtoint ptr %mm1.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 5, ptr %mm1.i, align 1
  %21 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -92, ptr %10, align 1
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -2, ptr %11, align 1
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %23 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %mm1.i, ptr %buf.i, align 4
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp26.i = icmp sgt i32 %24, 1
  br i1 %cmp26.i, label %do.end.i, label %if.end3.saa717x_write.exit_crit_edge

if.end3.saa717x_write.exit_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa717x_write.exit

do.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name.i, i32 noundef 1444, i32 noundef 254) #10
  br label %saa717x_write.exit

saa717x_write.exit:                               ; preds = %do.end.i, %if.end3.saa717x_write.exit_crit_edge
  %call35.i = call i32 @i2c_transfer(ptr noundef %9, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call35.i)
  %cmp36.i.not = icmp eq i32 %call35.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm1.i) #7
  br i1 %cmp36.i.not, label %land.lhs.true, label %saa717x_write.exit.do.body_crit_edge

saa717x_write.exit.do.body_crit_edge:             ; preds = %saa717x_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

land.lhs.true:                                    ; preds = %saa717x_write.exit
  %25 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_priv.i.i, align 4
  %adapter.i227 = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %adapter.i227 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter.i227, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm1.i224) #7
  %29 = getelementptr inbounds [6 x i8], ptr %mm1.i224, i32 0, i32 1
  %30 = getelementptr inbounds [6 x i8], ptr %mm1.i224, i32 0, i32 2
  %31 = getelementptr inbounds i8, ptr %mm1.i224, i32 3
  %32 = call ptr @memset(ptr %31, i32 255, i32 3)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i225) #7
  %33 = getelementptr inbounds i8, ptr %msg.i225, i32 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 262143, ptr %33, align 4
  %flags.i228 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i225, i32 0, i32 1
  %35 = ptrtoint ptr %flags.i228 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %flags.i228, align 2
  %addr.i229 = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 1
  %36 = ptrtoint ptr %addr.i229 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %addr.i229, align 2
  %38 = ptrtoint ptr %msg.i225 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %msg.i225, align 4
  %39 = ptrtoint ptr %mm1.i224 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 5, ptr %mm1.i224, align 1
  %40 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -91, ptr %29, align 1
  %41 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 15, ptr %30, align 1
  %buf.i231 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i225, i32 0, i32 3
  %42 = ptrtoint ptr %buf.i231 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %mm1.i224, ptr %buf.i231, align 4
  %43 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp26.i232 = icmp sgt i32 %43, 1
  br i1 %cmp26.i232, label %do.end.i235, label %land.lhs.true.saa717x_write.exit239_crit_edge

land.lhs.true.saa717x_write.exit239_crit_edge:    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa717x_write.exit239

do.end.i235:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %name.i233 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call31.i234 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name.i233, i32 noundef 1445, i32 noundef 15) #10
  br label %saa717x_write.exit239

saa717x_write.exit239:                            ; preds = %do.end.i235, %land.lhs.true.saa717x_write.exit239_crit_edge
  %call35.i236 = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %msg.i225, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call35.i236)
  %cmp36.i237.not = icmp eq i32 %call35.i236, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i225) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm1.i224) #7
  br i1 %cmp36.i237.not, label %land.lhs.true9, label %saa717x_write.exit239.do.body_crit_edge

saa717x_write.exit239.do.body_crit_edge:          ; preds = %saa717x_write.exit239
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

land.lhs.true9:                                   ; preds = %saa717x_write.exit239
  %44 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_priv.i.i, align 4
  %adapter.i243 = getelementptr inbounds %struct.i2c_client, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %adapter.i243 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %adapter.i243, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm1.i240) #7
  %48 = getelementptr inbounds [6 x i8], ptr %mm1.i240, i32 0, i32 1
  %49 = getelementptr inbounds [6 x i8], ptr %mm1.i240, i32 0, i32 2
  %50 = getelementptr inbounds i8, ptr %mm1.i240, i32 3
  %51 = call ptr @memset(ptr %50, i32 255, i32 3)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i241) #7
  %52 = getelementptr inbounds i8, ptr %msg.i241, i32 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 262143, ptr %52, align 4
  %flags.i244 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i241, i32 0, i32 1
  %54 = ptrtoint ptr %flags.i244 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 0, ptr %flags.i244, align 2
  %addr.i245 = getelementptr inbounds %struct.i2c_client, ptr %45, i32 0, i32 1
  %55 = ptrtoint ptr %addr.i245 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %addr.i245, align 2
  %57 = ptrtoint ptr %msg.i241 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %msg.i241, align 4
  %58 = ptrtoint ptr %mm1.i240 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 5, ptr %mm1.i240, align 1
  %59 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 -90, ptr %48, align 1
  %60 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %49, align 1
  %buf.i247 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i241, i32 0, i32 3
  %61 = ptrtoint ptr %buf.i247 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %mm1.i240, ptr %buf.i247, align 4
  %62 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp26.i248 = icmp sgt i32 %62, 1
  br i1 %cmp26.i248, label %do.end.i251, label %land.lhs.true9.saa717x_write.exit255_crit_edge

land.lhs.true9.saa717x_write.exit255_crit_edge:   ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa717x_write.exit255

do.end.i251:                                      ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  %name.i249 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call31.i250 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name.i249, i32 noundef 1446, i32 noundef 0) #10
  br label %saa717x_write.exit255

saa717x_write.exit255:                            ; preds = %do.end.i251, %land.lhs.true9.saa717x_write.exit255_crit_edge
  %call35.i252 = call i32 @i2c_transfer(ptr noundef %47, ptr noundef nonnull %msg.i241, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call35.i252)
  %cmp36.i253.not = icmp eq i32 %call35.i252, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i241) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm1.i240) #7
  br i1 %cmp36.i253.not, label %land.lhs.true12, label %saa717x_write.exit255.do.body_crit_edge

saa717x_write.exit255.do.body_crit_edge:          ; preds = %saa717x_write.exit255
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

land.lhs.true12:                                  ; preds = %saa717x_write.exit255
  %63 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev_priv.i.i, align 4
  %adapter.i259 = getelementptr inbounds %struct.i2c_client, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %adapter.i259 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %adapter.i259, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm1.i256) #7
  %67 = getelementptr inbounds [6 x i8], ptr %mm1.i256, i32 0, i32 1
  %68 = getelementptr inbounds [6 x i8], ptr %mm1.i256, i32 0, i32 2
  %69 = getelementptr inbounds i8, ptr %mm1.i256, i32 3
  %70 = call ptr @memset(ptr %69, i32 255, i32 3)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i257) #7
  %71 = getelementptr inbounds i8, ptr %msg.i257, i32 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 262143, ptr %71, align 4
  %flags.i260 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i257, i32 0, i32 1
  %73 = ptrtoint ptr %flags.i260 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 0, ptr %flags.i260, align 2
  %addr.i261 = getelementptr inbounds %struct.i2c_client, ptr %64, i32 0, i32 1
  %74 = ptrtoint ptr %addr.i261 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %addr.i261, align 2
  %76 = ptrtoint ptr %msg.i257 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %msg.i257, align 4
  %77 = ptrtoint ptr %mm1.i256 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 5, ptr %mm1.i256, align 1
  %78 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 -89, ptr %67, align 1
  %79 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %68, align 1
  %buf.i263 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i257, i32 0, i32 3
  %80 = ptrtoint ptr %buf.i263 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %mm1.i256, ptr %buf.i263, align 4
  %81 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %81)
  %cmp26.i264 = icmp sgt i32 %81, 1
  br i1 %cmp26.i264, label %do.end.i267, label %land.lhs.true12.saa717x_write.exit271_crit_edge

land.lhs.true12.saa717x_write.exit271_crit_edge:  ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa717x_write.exit271

do.end.i267:                                      ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #9
  %name.i265 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call31.i266 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name.i265, i32 noundef 1447, i32 noundef 1) #10
  br label %saa717x_write.exit271

saa717x_write.exit271:                            ; preds = %do.end.i267, %land.lhs.true12.saa717x_write.exit271_crit_edge
  %call35.i268 = call i32 @i2c_transfer(ptr noundef %66, ptr noundef nonnull %msg.i257, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call35.i268)
  %cmp36.i269.not = icmp eq i32 %call35.i268, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i257) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm1.i256) #7
  br i1 %cmp36.i269.not, label %if.then15, label %saa717x_write.exit271.do.body_crit_edge

saa717x_write.exit271.do.body_crit_edge:          ; preds = %saa717x_write.exit271
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then15:                                        ; preds = %saa717x_write.exit271
  %82 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev_priv.i.i, align 4
  %adapter.i274 = getelementptr inbounds %struct.i2c_client, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %adapter.i274 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %adapter.i274, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mm1.i272) #7
  %86 = getelementptr inbounds [2 x i8], ptr %mm1.i272, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mm2.i) #7
  %87 = ptrtoint ptr %mm2.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %mm2.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #7
  %88 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %89 = call ptr @memset(ptr %88, i32 255, i32 16)
  %flags.i275 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %90 = ptrtoint ptr %flags.i275 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 0, ptr %flags.i275, align 2
  %arrayidx3.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1
  %flags4.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 1
  %91 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 1, ptr %flags4.i, align 2
  %addr.i276 = getelementptr inbounds %struct.i2c_client, ptr %83, i32 0, i32 1
  %92 = ptrtoint ptr %addr.i276 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %addr.i276, align 2
  %94 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %93, ptr %arrayidx3.i, align 4
  %95 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %93, ptr %msgs.i, align 4
  %96 = ptrtoint ptr %mm1.i272 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 5, ptr %mm1.i272, align 1
  %97 = ptrtoint ptr %86 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 -96, ptr %86, align 1
  %98 = ptrtoint ptr %88 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 2, ptr %88, align 4
  %buf.i278 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %99 = ptrtoint ptr %buf.i278 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %mm1.i272, ptr %buf.i278, align 4
  %len17.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 2
  %100 = ptrtoint ptr %len17.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 1, ptr %len17.i, align 4
  %buf20.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 3
  %101 = ptrtoint ptr %buf20.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %mm2.i, ptr %buf20.i, align 4
  %call22.i = call i32 @i2c_transfer(ptr noundef %85, ptr noundef nonnull %msgs.i, i32 noundef 2) #7
  %102 = ptrtoint ptr %mm2.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %mm2.i, align 4
  %conv33.i = zext i8 %103 to i32
  %104 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %104)
  %cmp34.i = icmp sgt i32 %104, 1
  br i1 %cmp34.i, label %do.end.i280, label %if.then15.if.end17_crit_edge

if.then15.if.end17_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

do.end.i280:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %name.i279 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call39.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef %name.i279, i32 noundef 1440, i32 noundef %conv33.i) #10
  br label %if.end17

if.end17:                                         ; preds = %do.end.i280, %if.then15.if.end17_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm2.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm1.i272) #7
  %105 = zext i8 %103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values)
  switch i8 %103, label %if.end17.do.body_crit_edge [
    i8 -62, label %if.end17.do.end63_crit_edge
    i8 50, label %if.then51
    i8 108, label %if.then56
    i8 -14, label %if.else57
  ]

if.end17.do.end63_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end63

if.end17.do.body_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %if.end17.do.body_crit_edge, %saa717x_write.exit271.do.body_crit_edge, %saa717x_write.exit255.do.body_crit_edge, %saa717x_write.exit239.do.body_crit_edge, %saa717x_write.exit.do.body_crit_edge
  %id.0283 = phi i32 [ %conv33.i, %if.end17.do.body_crit_edge ], [ 0, %saa717x_write.exit271.do.body_crit_edge ], [ 0, %saa717x_write.exit255.do.body_crit_edge ], [ 0, %saa717x_write.exit239.do.body_crit_edge ], [ 0, %saa717x_write.exit.do.body_crit_edge ]
  %106 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp34 = icmp sgt i32 %106, 0
  br i1 %cmp34, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name, i32 noundef %id.0283) #10
  br label %cleanup

if.then51:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end63

if.then56:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end63

if.else57:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end63

do.end63:                                         ; preds = %if.else57, %if.then56, %if.then51, %if.end17.do.end63_crit_edge
  %p.0 = phi ptr [ @.str.6, %if.then51 ], [ @.str.7, %if.then56 ], [ @.str.8, %if.else57 ], [ @.str.5, %if.end17.do.end63_crit_edge ]
  %name65 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %107 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %addr, align 2
  %conv67 = zext i16 %108 to i32
  %shl = shl nuw nsw i32 %conv67, 1
  %109 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %adapter, align 8
  %name69 = getelementptr inbounds %struct.i2c_adapter, ptr %110, i32 0, i32 12
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name65, ptr noundef nonnull %p.0, i32 noundef %shl, ptr noundef %name69) #10
  %hdl72 = getelementptr inbounds %struct.saa717x_state, ptr %call.i, i32 0, i32 1
  %call74 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl72, i32 noundef 9, ptr noundef nonnull @saa717x_probe._key, ptr noundef nonnull @.str.12) #7
  %call75 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl72, ptr noundef nonnull @saa717x_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #7
  %call76 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl72, ptr noundef nonnull @saa717x_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 68) #7
  %call77 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl72, ptr noundef nonnull @saa717x_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 64) #7
  %call78 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl72, ptr noundef nonnull @saa717x_ctrl_ops, i32 noundef 9963779, i64 noundef -128, i64 noundef 127, i64 noundef 1, i64 noundef 0) #7
  %call79 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl72, ptr noundef nonnull @saa717x_ctrl_ops, i32 noundef 9963781, i64 noundef 0, i64 noundef 65535, i64 noundef 655, i64 noundef 42000) #7
  %call80 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl72, ptr noundef nonnull @saa717x_ctrl_ops, i32 noundef 9963782, i64 noundef 0, i64 noundef 65535, i64 noundef 655, i64 noundef 32768) #7
  %call81 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl72, ptr noundef nonnull @saa717x_ctrl_ops, i32 noundef 9963783, i64 noundef -16, i64 noundef 15, i64 noundef 1, i64 noundef 0) #7
  %call82 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl72, ptr noundef nonnull @saa717x_ctrl_ops, i32 noundef 9963784, i64 noundef -16, i64 noundef 15, i64 noundef 1, i64 noundef 0) #7
  %call83 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl72, ptr noundef nonnull @saa717x_ctrl_ops, i32 noundef 9963785, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %111 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %hdl72, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.saa717x_state, ptr %call.i, i32 0, i32 1, i32 9
  %112 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool84.not = icmp eq i32 %113, 0
  br i1 %tobool84.not, label %if.end87, label %if.then85

if.then85:                                        ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #9
  call void @v4l2_ctrl_handler_free(ptr noundef %hdl72) #7
  br label %cleanup

if.end87:                                         ; preds = %do.end63
  %std = getelementptr inbounds %struct.saa717x_state, ptr %call.i, i32 0, i32 2
  %114 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 45056, ptr %std, align 8
  %input = getelementptr inbounds %struct.saa717x_state, ptr %call.i, i32 0, i32 3
  %115 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 -1, ptr %input, align 8
  %enable = getelementptr inbounds %struct.saa717x_state, ptr %call.i, i32 0, i32 4
  %116 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 1, ptr %enable, align 4
  %playback = getelementptr inbounds %struct.saa717x_state, ptr %call.i, i32 0, i32 6
  %117 = ptrtoint ptr %playback to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %playback, align 4
  %audio = getelementptr inbounds %struct.saa717x_state, ptr %call.i, i32 0, i32 7
  %118 = ptrtoint ptr %audio to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 1, ptr %audio, align 8
  %audio_input = getelementptr inbounds %struct.saa717x_state, ptr %call.i, i32 0, i32 16
  %119 = ptrtoint ptr %audio_input to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 2, ptr %audio_input, align 4
  %tuner_audio_mode = getelementptr inbounds %struct.saa717x_state, ptr %call.i, i32 0, i32 8
  %120 = ptrtoint ptr %tuner_audio_mode to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 1, ptr %tuner_audio_mode, align 4
  %audio_main_vol_l = getelementptr inbounds %struct.saa717x_state, ptr %call.i, i32 0, i32 11
  %121 = ptrtoint ptr %audio_main_vol_l to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 6, ptr %audio_main_vol_l, align 8
  %audio_main_vol_r = getelementptr inbounds %struct.saa717x_state, ptr %call.i, i32 0, i32 10
  %122 = ptrtoint ptr %audio_main_vol_r to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 6, ptr %audio_main_vol_r, align 4
  %123 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %cmp89 = icmp sgt i32 %123, 0
  br i1 %cmp89, label %do.end94, label %if.end87.do.end101_crit_edge

if.end87.do.end101_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end101

do.end94:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  %call98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name65) #10
  br label %do.end101

do.end101:                                        ; preds = %do.end94, %if.end87.do.end101_crit_edge
  call fastcc void @saa717x_write_regs(ptr noundef nonnull %call.i, ptr noundef nonnull @reg_init_initialize)
  %call102 = call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl72) #7
  br label %__here

__here:                                           ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #9
  %124 = call i32 @llvm.read_register.i32(metadata !253) #7
  %and.i281 = and i32 %124, -16384
  %125 = inttoptr i32 %and.i281 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %125, i32 0, i32 2
  %126 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %127, i32 0, i32 212
  %128 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 ptrtoint (ptr blockaddress(@saa717x_probe, %__here) to i32), ptr %task_state_change, align 4
  %129 = load ptr, ptr %task, align 8
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_store4_noabort(i32 %130)
  store volatile i32 1, ptr %129, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !263
  %call171 = call i32 @schedule_timeout(i32 noundef 200) #7
  br label %cleanup

cleanup:                                          ; preds = %__here, %if.then85, %do.end, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %113, %if.then85 ], [ 0, %__here ], [ -5, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -19, %do.end ], [ -19, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa717x_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #7
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_handler, align 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @saa717x_read(ptr noundef %sd, i32 noundef %reg) unnamed_addr #2 align 64 {
entry:
  %mm1 = alloca [2 x i8], align 1
  %mm2 = alloca [4 x i8], align 4
  %msgs = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %4 = add i32 %reg, -1028
  call void @__sanitizer_cov_trace_const_cmp4(i32 181, i32 %4)
  %5 = icmp ult i32 %4, 181
  call void @__sanitizer_cov_trace_const_cmp4(i32 1320, i32 %reg)
  %cmp2 = icmp eq i32 %reg, 1320
  %spec.select = or i1 %cmp2, %5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mm1) #7
  %6 = getelementptr inbounds [2 x i8], ptr %mm1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mm2) #7
  %7 = ptrtoint ptr %mm2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %mm2, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs) #7
  %8 = getelementptr inbounds i8, ptr %msgs, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 16)
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags, align 2
  %arrayidx3 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1
  %flags4 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %flags4 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %flags4, align 2
  %addr = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %addr, align 2
  %14 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %arrayidx3, align 4
  %15 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %13, ptr %msgs, align 4
  %shr = lshr i32 %reg, 8
  %conv = trunc i32 %shr to i8
  %16 = ptrtoint ptr %mm1 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %mm1, align 1
  %conv11 = trunc i32 %reg to i8
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv11, ptr %6, align 1
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %18 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %19 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %mm1, ptr %buf, align 4
  %conv15 = select i1 %spec.select, i16 3, i16 1
  %len17 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %len17 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv15, ptr %len17, align 4
  %buf20 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %buf20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %mm2, ptr %buf20, align 4
  %call22 = call i32 @i2c_transfer(ptr noundef %3, ptr noundef nonnull %msgs, i32 noundef 2) #7
  br i1 %spec.select, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx24 = getelementptr inbounds [4 x i8], ptr %mm2, i32 0, i32 2
  %22 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx24, align 2
  %conv25 = zext i8 %23 to i32
  %shl = shl nuw nsw i32 %conv25, 16
  %arrayidx26 = getelementptr inbounds [4 x i8], ptr %mm2, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %25 to i32
  %shl28 = shl nuw nsw i32 %conv27, 8
  %or = or i32 %shl28, %shl
  %26 = ptrtoint ptr %mm2 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %mm2, align 4
  %conv30 = zext i8 %27 to i32
  %or31 = or i32 %or, %conv30
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %mm2 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %mm2, align 4
  %conv33 = zext i8 %29 to i32
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then
  %value.0 = phi i32 [ %or31, %if.then ], [ %conv33, %if.else ]
  %30 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp34 = icmp sgt i32 %30, 1
  br i1 %cmp34, label %do.end, label %do.body.do.end42_crit_edge

do.body.do.end42_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end42

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef %name, i32 noundef %reg, i32 noundef %value.0) #10
  br label %do.end42

do.end42:                                         ; preds = %do.end, %do.body.do.end42_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm2) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm1) #7
  ret i32 %value.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @saa717x_write_regs(ptr noundef %sd, ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  %mm1.i = alloca [6 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = getelementptr inbounds [6 x i8], ptr %mm1.i, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %mm1.i, i32 0, i32 2
  %2 = getelementptr inbounds i8, ptr %mm1.i, i32 3
  %3 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %4 = getelementptr inbounds [6 x i8], ptr %mm1.i, i32 0, i32 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  br label %while.cond

while.cond:                                       ; preds = %saa717x_write.exit, %entry
  %data.addr.0 = phi ptr [ %data, %entry ], [ %add.ptr, %saa717x_write.exit ]
  %5 = ptrtoint ptr %data.addr.0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data.addr.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %arrayidx1 = getelementptr i32, ptr %data.addr.0, i32 1
  %7 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx1, align 4
  br i1 %tobool.not, label %lor.rhs, label %while.body

lor.rhs:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not = icmp eq i32 %8, 0
  br i1 %tobool2.not, label %while.end, label %while.body.thread

while.body.thread:                                ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx1, align 4
  %11 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_priv.i.i, align 4
  %adapter.i11 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %adapter.i11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter.i11, align 8
  br label %lor.lhs.false.i

while.body:                                       ; preds = %while.cond
  %15 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_priv.i.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1108, i32 %6)
  %cmp.i = icmp eq i32 %6, 1108
  br i1 %cmp.i, label %while.body.lor.end.i_crit_edge, label %while.body.lor.lhs.false.i_crit_edge

while.body.lor.lhs.false.i_crit_edge:             ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i

while.body.lor.end.i_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end.i

lor.lhs.false.i:                                  ; preds = %while.body.lor.lhs.false.i_crit_edge, %while.body.thread
  %19 = phi ptr [ %14, %while.body.thread ], [ %18, %while.body.lor.lhs.false.i_crit_edge ]
  %20 = phi ptr [ %12, %while.body.thread ], [ %16, %while.body.lor.lhs.false.i_crit_edge ]
  %21 = phi i32 [ %10, %while.body.thread ], [ %8, %while.body.lor.lhs.false.i_crit_edge ]
  %22 = add i32 %6, -1124
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %22)
  %23 = icmp ult i32 %22, 21
  %24 = and i32 %6, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1152, i32 %24)
  %25 = icmp eq i32 %24, 1152
  %26 = or i1 %25, %23
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.lhs.false.i, %while.body.lor.end.i_crit_edge
  %27 = phi ptr [ %18, %while.body.lor.end.i_crit_edge ], [ %19, %lor.lhs.false.i ]
  %28 = phi ptr [ %16, %while.body.lor.end.i_crit_edge ], [ %20, %lor.lhs.false.i ]
  %29 = phi i32 [ %8, %while.body.lor.end.i_crit_edge ], [ %21, %lor.lhs.false.i ]
  %30 = phi i1 [ true, %while.body.lor.end.i_crit_edge ], [ %26, %lor.lhs.false.i ]
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm1.i) #7
  %31 = call ptr @memset(ptr %2, i32 255, i32 3)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %3, align 4
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i, align 2
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 1
  %34 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %addr.i, align 2
  %36 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %msg.i, align 4
  %shr.i = lshr i32 %6, 8
  %conv.i = trunc i32 %shr.i to i8
  %37 = ptrtoint ptr %mm1.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv.i, ptr %mm1.i, align 1
  %conv8.i = trunc i32 %6 to i8
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv8.i, ptr %0, align 1
  br i1 %30, label %if.then.i, label %lor.end.i.if.end.i_crit_edge

lor.end.i.if.end.i_crit_edge:                     ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr10.i = lshr i32 %29, 16
  %conv12.i = trunc i32 %shr10.i to i8
  %39 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv12.i, ptr %4, align 1
  %shr14.i = lshr i32 %29, 8
  %conv16.i = trunc i32 %shr14.i to i8
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv16.i, ptr %2, align 1
  %and18.i = and i32 %29, 255
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.end.i.if.end.i_crit_edge
  %cond.i = phi i16 [ 5, %if.then.i ], [ 3, %lor.end.i.if.end.i_crit_edge ]
  %storemerge.in.i = phi i32 [ %and18.i, %if.then.i ], [ %29, %lor.end.i.if.end.i_crit_edge ]
  %storemerge.i = trunc i32 %storemerge.in.i to i8
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %storemerge.i, ptr %1, align 1
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %cond.i, ptr %3, align 4
  %43 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %mm1.i, ptr %buf.i, align 4
  %44 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp26.i = icmp sgt i32 %44, 1
  br i1 %cmp26.i, label %do.end.i, label %if.end.i.saa717x_write.exit_crit_edge

if.end.i.saa717x_write.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa717x_write.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name.i, i32 noundef %6, i32 noundef %29) #10
  br label %saa717x_write.exit

saa717x_write.exit:                               ; preds = %do.end.i, %if.end.i.saa717x_write.exit_crit_edge
  %call35.i = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm1.i) #7
  %add.ptr = getelementptr i32, ptr %data.addr.0, i32 2
  br label %while.cond

while.end:                                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa717x_log_status(ptr noundef %sd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hdl = getelementptr inbounds %struct.saa717x_state, ptr %sd, i32 0, i32 1
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  tail call void @v4l2_ctrl_handler_log_status(ptr noundef %hdl, ptr noundef %name) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa717x_g_register(ptr noundef %sd, ptr nocapture noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %reg1, align 1
  %conv = trunc i64 %1 to i32
  %call = tail call fastcc i32 @saa717x_read(ptr noundef %sd, i32 noundef %conv)
  %conv2 = zext i32 %call to i64
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %2 = ptrtoint ptr %val to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 %conv2, ptr %val, align 1
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %3 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 1, ptr %size, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa717x_s_register(ptr noundef %sd, ptr nocapture noundef readonly %reg) #2 align 64 {
entry:
  %mm1.i = alloca [6 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %reg1, align 1
  %conv = trunc i64 %1 to i32
  %val2 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %2 = ptrtoint ptr %val2 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %val2, align 1
  %conv4 = trunc i64 %3 to i32
  %conv5 = and i32 %conv, 65535
  %conv6 = and i32 %conv4, 255
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1108, i32 %conv5)
  %cmp.i = icmp eq i32 %conv5, 1108
  br i1 %cmp.i, label %entry.lor.end.i_crit_edge, label %lor.lhs.false.i

entry.lor.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end.i

lor.lhs.false.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = add nsw i32 %conv5, -1124
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %8)
  %9 = icmp ult i32 %8, 21
  %10 = and i32 %conv, 65527
  call void @__sanitizer_cov_trace_const_cmp4(i32 1152, i32 %10)
  %11 = icmp eq i32 %10, 1152
  %12 = or i1 %11, %9
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.lhs.false.i, %entry.lor.end.i_crit_edge
  %13 = phi i1 [ true, %entry.lor.end.i_crit_edge ], [ %12, %lor.lhs.false.i ]
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm1.i) #7
  %14 = getelementptr inbounds [6 x i8], ptr %mm1.i, i32 0, i32 1
  %15 = getelementptr inbounds [6 x i8], ptr %mm1.i, i32 0, i32 2
  %16 = getelementptr inbounds i8, ptr %mm1.i, i32 3
  %17 = call ptr @memset(ptr %16, i32 255, i32 3)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %18 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %18, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %flags.i, align 2
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 1
  %21 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %addr.i, align 2
  %23 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %msg.i, align 4
  %shr.i8 = lshr i64 %1, 8
  %conv.i = trunc i64 %shr.i8 to i8
  %24 = ptrtoint ptr %mm1.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv.i, ptr %mm1.i, align 1
  %conv8.i = trunc i64 %1 to i8
  %25 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv8.i, ptr %14, align 1
  br i1 %13, label %if.then.i, label %lor.end.i.if.end.i_crit_edge

lor.end.i.if.end.i_crit_edge:                     ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = getelementptr inbounds [6 x i8], ptr %mm1.i, i32 0, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %26, align 1
  %28 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %16, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.end.i.if.end.i_crit_edge
  %cond.i = phi i16 [ 5, %if.then.i ], [ 3, %lor.end.i.if.end.i_crit_edge ]
  %storemerge.i = trunc i64 %3 to i8
  %29 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %storemerge.i, ptr %15, align 1
  %30 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %cond.i, ptr %18, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %31 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %mm1.i, ptr %buf.i, align 4
  %32 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp26.i = icmp sgt i32 %32, 1
  br i1 %cmp26.i, label %do.end.i, label %if.end.i.saa717x_write.exit_crit_edge

if.end.i.saa717x_write.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa717x_write.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name.i, i32 noundef %conv5, i32 noundef %conv6) #10
  br label %saa717x_write.exit

saa717x_write.exit:                               ; preds = %do.end.i, %if.end.i.saa717x_write.exit_crit_edge
  %call35.i = call i32 @i2c_transfer(ptr noundef %7, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm1.i) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_log_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @saa717x_s_radio(ptr nocapture noundef writeonly %sd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %radio = getelementptr inbounds %struct.saa717x_state, ptr %sd, i32 0, i32 5
  %0 = ptrtoint ptr %radio to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %radio, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa717x_g_tuner(ptr noundef %sd, ptr nocapture noundef %vt) #2 align 64 {
entry:
  %mm1.i.i = alloca [2 x i8], align 1
  %mm2.i.i = alloca [4 x i8], align 4
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %radio = getelementptr inbounds %struct.saa717x_state, ptr %sd, i32 0, i32 5
  %0 = ptrtoint ptr %radio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %radio, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mm1.i.i) #7
  %6 = getelementptr inbounds [2 x i8], ptr %mm1.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mm2.i.i) #7
  %7 = ptrtoint ptr %mm2.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %mm2.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #7
  %8 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 16)
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags.i.i, align 2
  %arrayidx3.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1
  %flags4.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %flags4.i.i, align 2
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %addr.i.i, align 2
  %14 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %arrayidx3.i.i, align 4
  %15 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %13, ptr %msgs.i.i, align 4
  %16 = ptrtoint ptr %mm1.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 5, ptr %mm1.i.i, align 1
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 40, ptr %6, align 1
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 2, ptr %8, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %mm1.i.i, ptr %buf.i.i, align 4
  %len17.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %len17.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 3, ptr %len17.i.i, align 4
  %buf20.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %buf20.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %mm2.i.i, ptr %buf20.i.i, align 4
  %call22.i.i = call i32 @i2c_transfer(ptr noundef %5, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #7
  %arrayidx24.i.i = getelementptr inbounds [4 x i8], ptr %mm2.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx24.i.i, align 2
  %conv25.i.i = zext i8 %23 to i32
  %shl.i.i = shl nuw nsw i32 %conv25.i.i, 16
  %arrayidx26.i.i = getelementptr inbounds [4 x i8], ptr %mm2.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx26.i.i, align 1
  %conv27.i.i = zext i8 %25 to i32
  %shl28.i.i = shl nuw nsw i32 %conv27.i.i, 8
  %or.i.i = or i32 %shl28.i.i, %shl.i.i
  %26 = ptrtoint ptr %mm2.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %mm2.i.i, align 4
  %conv30.i.i = zext i8 %27 to i32
  %or31.i.i = or i32 %or.i.i, %conv30.i.i
  %28 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp34.i.i = icmp sgt i32 %28, 1
  br i1 %cmp34.i.i, label %do.end.i.i, label %if.end.saa717x_read.exit.i_crit_edge

if.end.saa717x_read.exit.i_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa717x_read.exit.i

do.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call39.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef %name.i.i, i32 noundef 1320, i32 noundef %or31.i.i) #10
  %.pr.i = load i32, ptr @debug, align 4
  br label %saa717x_read.exit.i

saa717x_read.exit.i:                              ; preds = %do.end.i.i, %if.end.saa717x_read.exit.i_crit_edge
  %29 = phi i32 [ %28, %if.end.saa717x_read.exit.i_crit_edge ], [ %.pr.i, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm2.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm1.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i = icmp sgt i32 %29, 0
  br i1 %cmp.i, label %do.end.i, label %saa717x_read.exit.i.do.body9.i_crit_edge

saa717x_read.exit.i.do.body9.i_crit_edge:         ; preds = %saa717x_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body9.i

do.end.i:                                         ; preds = %saa717x_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %and.i = and i32 %conv30.i.i, 31
  %arrayidx.i = getelementptr [32 x ptr], ptr @get_inf_dev_status.stdres, i32 0, i32 %and.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i, align 4
  %and2.i = and i32 %conv30.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.1, ptr @.str.56
  %and3.i = and i32 %conv30.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %cond5.i = select i1 %tobool4.not.i, ptr @.str.1, ptr @.str.57
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %name.i, i32 noundef %or31.i.i, ptr noundef %31, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond5.i) #10
  br label %do.body9.i

do.body9.i:                                       ; preds = %do.end.i, %saa717x_read.exit.i.do.body9.i_crit_edge
  %32 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp10.i = icmp sgt i32 %32, 0
  br i1 %cmp10.i, label %do.end14.i, label %do.body9.i.do.end63.i_crit_edge

do.body9.i.do.end63.i_crit_edge:                  ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end63.i

do.end14.i:                                       ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  %name16.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %and18.i = and i32 %conv30.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  %cond20.i = select i1 %tobool19.not.i, ptr @.str.1, ptr @.str.61
  %33 = and i32 %conv27.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool22.not.i = icmp eq i32 %33, 0
  %cond23.i = select i1 %tobool22.not.i, ptr @.str.1, ptr @.str.62
  %34 = and i32 %conv27.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool25.not.i = icmp eq i32 %34, 0
  %cond26.i = select i1 %tobool25.not.i, ptr @.str.1, ptr @.str.63
  %35 = and i32 %conv27.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool28.not.i = icmp eq i32 %35, 0
  %cond29.i = select i1 %tobool28.not.i, ptr @.str.1, ptr @.str.64
  %36 = and i32 %conv27.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool31.not.i = icmp eq i32 %36, 0
  %cond32.i = select i1 %tobool31.not.i, ptr @.str.1, ptr @.str.65
  %37 = and i32 %conv27.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool34.not.i = icmp eq i32 %37, 0
  %cond35.i = select i1 %tobool34.not.i, ptr @.str.1, ptr @.str.66
  %38 = and i32 %conv27.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool37.not.i = icmp eq i32 %38, 0
  %cond38.i = select i1 %tobool37.not.i, ptr @.str.1, ptr @.str.67
  %39 = and i32 %conv27.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool40.not.i = icmp eq i32 %39, 0
  %cond41.i = select i1 %tobool40.not.i, ptr @.str.1, ptr @.str.68
  %40 = and i32 %conv27.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool43.not.i = icmp eq i32 %40, 0
  %cond44.i = select i1 %tobool43.not.i, ptr @.str.1, ptr @.str.69
  %41 = and i32 %conv25.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool46.not.i = icmp eq i32 %41, 0
  %cond47.i = select i1 %tobool46.not.i, ptr @.str.1, ptr @.str.70
  %42 = and i32 %conv25.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool49.not.i = icmp eq i32 %42, 0
  %cond50.i = select i1 %tobool49.not.i, ptr @.str.1, ptr @.str.71
  %43 = and i32 %conv25.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool52.not.i = icmp eq i32 %43, 0
  %cond53.i = select i1 %tobool52.not.i, ptr @.str.1, ptr @.str.72
  %44 = and i32 %conv25.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool55.not.i = icmp eq i32 %44, 0
  %cond56.i = select i1 %tobool55.not.i, ptr @.str.1, ptr @.str.73
  %45 = and i32 %conv25.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool58.not.i = icmp eq i32 %45, 0
  %cond59.i = select i1 %tobool58.not.i, ptr @.str.1, ptr @.str.74
  %call60.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %name16.i, ptr noundef nonnull %cond20.i, ptr noundef nonnull %cond23.i, ptr noundef nonnull %cond26.i, ptr noundef nonnull %cond29.i, ptr noundef nonnull %cond32.i, ptr noundef nonnull %cond35.i, ptr noundef nonnull %cond38.i, ptr noundef nonnull %cond41.i, ptr noundef nonnull %cond44.i, ptr noundef nonnull %cond47.i, ptr noundef nonnull %cond50.i, ptr noundef nonnull %cond53.i, ptr noundef nonnull %cond56.i, ptr noundef nonnull %cond59.i) #10
  br label %do.end63.i

do.end63.i:                                       ; preds = %do.end14.i, %do.body9.i.do.end63.i_crit_edge
  %and64.i = and i32 %or31.i.i, 544
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i)
  %tobool65.not.i = icmp eq i32 %and64.i, 0
  br i1 %tobool65.not.i, label %do.end63.i.if.end80.i_crit_edge, label %do.body67.i

do.end63.i.if.end80.i_crit_edge:                  ; preds = %do.end63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80.i

do.body67.i:                                      ; preds = %do.end63.i
  %46 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp68.i = icmp sgt i32 %46, 0
  br i1 %cmp68.i, label %do.end72.i, label %do.body67.i.if.end80.i_crit_edge

do.body67.i.if.end80.i_crit_edge:                 ; preds = %do.body67.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80.i

do.end72.i:                                       ; preds = %do.body67.i
  call void @__sanitizer_cov_trace_pc() #9
  %name74.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call76.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef %name74.i) #10
  br label %if.end80.i

if.end80.i:                                       ; preds = %do.end72.i, %do.body67.i.if.end80.i_crit_edge, %do.end63.i.if.end80.i_crit_edge
  %stereo_f.0 = phi i32 [ 0, %do.end63.i.if.end80.i_crit_edge ], [ 1, %do.end72.i ], [ 1, %do.body67.i.if.end80.i_crit_edge ]
  %and81.i = and i32 %or31.i.i, 320
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81.i)
  %tobool82.not.i = icmp eq i32 %and81.i, 0
  br i1 %tobool82.not.i, label %if.end80.i.get_inf_dev_status.exit_crit_edge, label %do.body84.i

if.end80.i.get_inf_dev_status.exit_crit_edge:     ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_inf_dev_status.exit

do.body84.i:                                      ; preds = %if.end80.i
  %47 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp85.i = icmp sgt i32 %47, 0
  br i1 %cmp85.i, label %do.end89.i, label %do.body84.i.if.end23_crit_edge

do.body84.i.if.end23_crit_edge:                   ; preds = %do.body84.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

do.end89.i:                                       ; preds = %do.body84.i
  call void @__sanitizer_cov_trace_pc() #9
  %name91.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call93.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %name91.i) #10
  br label %get_inf_dev_status.exit

get_inf_dev_status.exit:                          ; preds = %do.end89.i, %if.end80.i.get_inf_dev_status.exit_crit_edge
  %dual_f.0.ph = phi i32 [ 1, %do.end89.i ], [ 0, %if.end80.i.get_inf_dev_status.exit_crit_edge ]
  %.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp = icmp sgt i32 %.pr, 0
  br i1 %cmp, label %do.end, label %get_inf_dev_status.exit.do.end6_crit_edge

get_inf_dev_status.exit.do.end6_crit_edge:        ; preds = %get_inf_dev_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

do.end:                                           ; preds = %get_inf_dev_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name, i32 noundef %stereo_f.0, i32 noundef %dual_f.0.ph) #10
  br label %do.end6

do.end6:                                          ; preds = %do.end, %get_inf_dev_status.exit.do.end6_crit_edge
  br i1 %tobool82.not.i, label %land.lhs.true, label %do.end6.if.end23_crit_edge

do.end6.if.end23_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

land.lhs.true:                                    ; preds = %do.end6
  br i1 %tobool65.not.i, label %if.then9, label %land.lhs.true.if.then25_crit_edge

land.lhs.true.if.then25_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25

if.then9:                                         ; preds = %land.lhs.true
  %rxsubchans = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 6
  %48 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %rxsubchans, align 4
  %49 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp11 = icmp sgt i32 %49, 0
  br i1 %cmp11, label %if.then9.cleanup.sink.split_crit_edge, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then9.cleanup.sink.split_crit_edge:            ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end23:                                         ; preds = %do.end6.if.end23_crit_edge, %do.body84.i.if.end23_crit_edge
  br i1 %tobool65.not.i, label %if.end23.if.then61_crit_edge, label %if.end23.if.then25_crit_edge

if.end23.if.then25_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25

if.end23.if.then61_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then61

if.then25:                                        ; preds = %if.end23.if.then25_crit_edge, %land.lhs.true.if.then25_crit_edge
  %cmp60 = phi i1 [ false, %land.lhs.true.if.then25_crit_edge ], [ true, %if.end23.if.then25_crit_edge ]
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 7
  %50 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %audmode, align 4
  %52 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %51, label %if.else [
    i32 1, label %if.then25.if.then29_crit_edge
    i32 3, label %if.then25.if.then29_crit_edge134
  ]

if.then25.if.then29_crit_edge134:                 ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29

if.then25.if.then29_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29

if.then29:                                        ; preds = %if.then25.if.then29_crit_edge, %if.then25.if.then29_crit_edge134
  %rxsubchans30 = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 6
  %53 = ptrtoint ptr %rxsubchans30 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 2, ptr %rxsubchans30, align 4
  %54 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp32 = icmp sgt i32 %54, 0
  br i1 %cmp32, label %if.then29.if.end59.sink.split_crit_edge, label %if.then29.if.end59_crit_edge

if.then29.if.end59_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then29.if.end59.sink.split_crit_edge:          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59.sink.split

if.else:                                          ; preds = %if.then25
  %rxsubchans44 = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 6
  %55 = ptrtoint ptr %rxsubchans44 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %rxsubchans44, align 4
  %56 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp46 = icmp sgt i32 %56, 0
  br i1 %cmp46, label %if.else.if.end59.sink.split_crit_edge, label %if.else.if.end59_crit_edge

if.else.if.end59_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.else.if.end59.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59.sink.split

if.end59.sink.split:                              ; preds = %if.else.if.end59.sink.split_crit_edge, %if.then29.if.end59.sink.split_crit_edge
  %.str.22.sink = phi ptr [ @.str.22, %if.then29.if.end59.sink.split_crit_edge ], [ @.str.25, %if.else.if.end59.sink.split_crit_edge ]
  %name38 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.22.sink, ptr noundef %name38) #10
  br label %if.end59

if.end59:                                         ; preds = %if.end59.sink.split, %if.else.if.end59_crit_edge, %if.then29.if.end59_crit_edge
  br i1 %cmp60, label %if.end59.if.then61_crit_edge, label %if.end59.cleanup_crit_edge

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end59.if.then61_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then61

if.then61:                                        ; preds = %if.end59.if.then61_crit_edge, %if.end23.if.then61_crit_edge
  %audmode62 = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 7
  %57 = ptrtoint ptr %audmode62 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %audmode62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %58)
  %cmp63 = icmp eq i32 %58, 2
  %rxsubchans65 = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 6
  br i1 %cmp63, label %if.then64, label %if.else79

if.then64:                                        ; preds = %if.then61
  %59 = ptrtoint ptr %rxsubchans65 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 5, ptr %rxsubchans65, align 4
  %60 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp67 = icmp sgt i32 %60, 0
  br i1 %cmp67, label %if.then64.cleanup.sink.split_crit_edge, label %if.then64.cleanup_crit_edge

if.then64.cleanup_crit_edge:                      ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then64.cleanup.sink.split_crit_edge:           ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.else79:                                        ; preds = %if.then61
  %61 = ptrtoint ptr %rxsubchans65 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 9, ptr %rxsubchans65, align 4
  %62 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp82 = icmp sgt i32 %62, 0
  br i1 %cmp82, label %if.else79.cleanup.sink.split_crit_edge, label %if.else79.cleanup_crit_edge

if.else79.cleanup_crit_edge:                      ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else79.cleanup.sink.split_crit_edge:           ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else79.cleanup.sink.split_crit_edge, %if.then64.cleanup.sink.split_crit_edge, %if.then9.cleanup.sink.split_crit_edge
  %.str.19.sink = phi ptr [ @.str.19, %if.then9.cleanup.sink.split_crit_edge ], [ @.str.28, %if.then64.cleanup.sink.split_crit_edge ], [ @.str.31, %if.else79.cleanup.sink.split_crit_edge ]
  %name17 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.19.sink, ptr noundef %name17) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else79.cleanup_crit_edge, %if.then64.cleanup_crit_edge, %if.end59.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa717x_s_tuner(ptr noundef %sd, ptr nocapture noundef readonly %vt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 7
  %0 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %audmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %2 = icmp ult i32 %1, 4
  br i1 %2, label %switch.lookup, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.saa717x_s_tuner, i32 0, i32 %1
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %do.body

do.body:                                          ; preds = %switch.lookup, %entry.do.body_crit_edge
  %audio_mode.0 = phi i32 [ 1, %entry.do.body_crit_edge ], [ %switch.load, %switch.lookup ]
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %do.end, label %do.body.do.end7_crit_edge

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %arrayidx = getelementptr [4 x ptr], ptr @__const.saa717x_s_tuner.mes, i32 0, i32 %audio_mode.0
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %name, ptr noundef %6) #10
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  %tuner_audio_mode = getelementptr inbounds %struct.saa717x_state, ptr %sd, i32 0, i32 8
  %7 = ptrtoint ptr %tuner_audio_mode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %audio_mode.0, ptr %tuner_audio_mode, align 4
  tail call fastcc void @set_audio_mode(ptr noundef %sd, i32 noundef %audio_mode.0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_audio_mode(ptr noundef %sd, i32 noundef %audio_mode) unnamed_addr #2 align 64 {
entry:
  %mm1.i12 = alloca [6 x i8], align 1
  %msg.i13 = alloca %struct.i2c_msg, align 4
  %mm1.i = alloca [6 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end2_crit_edge

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef %name, i32 noundef %audio_mode) #10
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %arrayidx = getelementptr [4 x [2 x i32]], ptr @reg_set_audio_template, i32 0, i32 %audio_mode
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %3 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_priv.i.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter.i, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm1.i) #7
  %7 = getelementptr inbounds [6 x i8], ptr %mm1.i, i32 0, i32 1
  %8 = getelementptr inbounds [6 x i8], ptr %mm1.i, i32 0, i32 2
  %9 = getelementptr inbounds i8, ptr %mm1.i, i32 3
  %10 = getelementptr inbounds i8, ptr %mm1.i, i32 5
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %12 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 393215, ptr %12, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i, align 2
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %15 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %addr.i, align 2
  %17 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %msg.i, align 4
  %18 = ptrtoint ptr %mm1.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 4, ptr %mm1.i, align 1
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 108, ptr %7, align 1
  %20 = getelementptr inbounds [6 x i8], ptr %mm1.i, i32 0, i32 4
  %shr10.i = lshr i32 %2, 16
  %conv12.i = trunc i32 %shr10.i to i8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv12.i, ptr %20, align 1
  %shr14.i = lshr i32 %2, 8
  %conv16.i = trunc i32 %shr14.i to i8
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv16.i, ptr %9, align 1
  %storemerge.i = trunc i32 %2 to i8
  %23 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %storemerge.i, ptr %8, align 1
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %24 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %mm1.i, ptr %buf.i, align 4
  %25 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp26.i = icmp sgt i32 %25, 1
  br i1 %cmp26.i, label %do.end.i, label %do.end2.saa717x_write.exit_crit_edge

do.end2.saa717x_write.exit_crit_edge:             ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa717x_write.exit

do.end.i:                                         ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name.i, i32 noundef 1132, i32 noundef %2) #10
  br label %saa717x_write.exit

saa717x_write.exit:                               ; preds = %do.end.i, %do.end2.saa717x_write.exit_crit_edge
  %call35.i = call i32 @i2c_transfer(ptr noundef %6, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm1.i) #7
  %arrayidx6 = getelementptr [4 x [2 x i32]], ptr @reg_set_audio_template, i32 0, i32 %audio_mode, i32 1
  %26 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx6, align 4
  %28 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_priv.i.i, align 4
  %adapter.i15 = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %adapter.i15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adapter.i15, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm1.i12) #7
  %32 = getelementptr inbounds [6 x i8], ptr %mm1.i12, i32 0, i32 1
  %33 = getelementptr inbounds [6 x i8], ptr %mm1.i12, i32 0, i32 2
  %34 = getelementptr inbounds i8, ptr %mm1.i12, i32 3
  %35 = getelementptr inbounds i8, ptr %mm1.i12, i32 5
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -1, ptr %35, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i13) #7
  %37 = getelementptr inbounds i8, ptr %msg.i13, i32 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 393215, ptr %37, align 4
  %flags.i16 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i13, i32 0, i32 1
  %39 = ptrtoint ptr %flags.i16 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %flags.i16, align 2
  %addr.i17 = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 1
  %40 = ptrtoint ptr %addr.i17 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %addr.i17, align 2
  %42 = ptrtoint ptr %msg.i13 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %msg.i13, align 4
  %43 = ptrtoint ptr %mm1.i12 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 4, ptr %mm1.i12, align 1
  %44 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 112, ptr %32, align 1
  %45 = getelementptr inbounds [6 x i8], ptr %mm1.i12, i32 0, i32 4
  %shr10.i18 = lshr i32 %27, 16
  %conv12.i19 = trunc i32 %shr10.i18 to i8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv12.i19, ptr %45, align 1
  %shr14.i20 = lshr i32 %27, 8
  %conv16.i21 = trunc i32 %shr14.i20 to i8
  %47 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv16.i21, ptr %34, align 1
  %storemerge.i23 = trunc i32 %27 to i8
  %48 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %storemerge.i23, ptr %33, align 1
  %buf.i25 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i13, i32 0, i32 3
  %49 = ptrtoint ptr %buf.i25 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %mm1.i12, ptr %buf.i25, align 4
  %50 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp26.i26 = icmp sgt i32 %50, 1
  br i1 %cmp26.i26, label %do.end.i29, label %saa717x_write.exit.saa717x_write.exit33_crit_edge

saa717x_write.exit.saa717x_write.exit33_crit_edge: ; preds = %saa717x_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa717x_write.exit33

do.end.i29:                                       ; preds = %saa717x_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %name.i27 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call31.i28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name.i27, i32 noundef 1136, i32 noundef %27) #10
  br label %saa717x_write.exit33

saa717x_write.exit33:                             ; preds = %do.end.i29, %saa717x_write.exit.saa717x_write.exit33_crit_edge
  %call35.i30 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %msg.i13, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i13) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm1.i12) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa717x_s_audio_routing(ptr noundef %sd, i32 noundef %input, i32 noundef %output, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %input)
  %cmp = icmp ult i32 %input, 3
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %audio_input = getelementptr inbounds %struct.saa717x_state, ptr %sd, i32 0, i32 16
  %0 = ptrtoint ptr %audio_input to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %input, ptr %audio_input, align 4
  %1 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %do.end, label %if.then.do.end7_crit_edge

if.then.do.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef %name, i32 noundef %input) #10
  br label %do.end7

do.end7:                                          ; preds = %do.end, %if.then.do.end7_crit_edge
  tail call fastcc void @set_audio_regs(ptr noundef %sd, ptr noundef %sd)
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end7 ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_audio_regs(ptr noundef %sd, ptr nocapture noundef %decoder) unnamed_addr #2 align 64 {
entry:
  %mm1.i19 = alloca [6 x i8], align 1
  %msg.i20 = alloca %struct.i2c_msg, align 4
  %mm1.i2 = alloca [6 x i8], align 1
  %msg.i3 = alloca %struct.i2c_msg, align 4
  %mm1.i = alloca [6 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %audio_input = getelementptr inbounds %struct.saa717x_state, ptr %decoder, i32 0, i32 16
  %0 = ptrtoint ptr %audio_input to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %audio_input, align 4
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter.i, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm1.i) #7
  %6 = getelementptr inbounds [6 x i8], ptr %mm1.i, i32 0, i32 1
  %7 = getelementptr inbounds [6 x i8], ptr %mm1.i, i32 0, i32 2
  %8 = getelementptr inbounds i8, ptr %mm1.i, i32 3
  %9 = call ptr @memset(ptr %8, i32 255, i32 3)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %10 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 262143, ptr %10, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %addr.i, align 2
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %msg.i, align 4
  %16 = ptrtoint ptr %mm1.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 5, ptr %mm1.i, align 1
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -108, ptr %6, align 1
  %storemerge.i = trunc i32 %1 to i8
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %storemerge.i, ptr %7, align 1
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %19 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %mm1.i, ptr %buf.i, align 4
  %20 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp26.i = icmp sgt i32 %20, 1
  br i1 %cmp26.i, label %do.end.i, label %entry.saa717x_write.exit_crit_edge

entry.saa717x_write.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa717x_write.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name.i, i32 noundef 1428, i32 noundef %1) #10
  br label %saa717x_write.exit

saa717x_write.exit:                               ; preds = %do.end.i, %entry.saa717x_write.exit_crit_edge
  %call35.i = call i32 @i2c_transfer(ptr noundef %5, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm1.i) #7
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp = icmp sgt i32 %21, 0
  br i1 %cmp, label %do.end, label %saa717x_write.exit.do.end5_crit_edge

saa717x_write.exit.do.end5_crit_edge:             ; preds = %saa717x_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %saa717x_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %22 = ptrtoint ptr %audio_input to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %audio_input, align 4
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef %name, i32 noundef %23) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %saa717x_write.exit.do.end5_crit_edge
  %audio_main_balance = getelementptr inbounds %struct.saa717x_state, ptr %decoder, i32 0, i32 15
  %24 = ptrtoint ptr %audio_main_balance to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %audio_main_balance, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %25)
  %cmp7 = icmp ugt i16 %25, -32768
  %conv = zext i16 %25 to i32
  %sub = sub nuw nsw i32 65536, %conv
  %cond = select i1 %cmp7, i32 %sub, i32 32768
  %audio_main_volume = getelementptr inbounds %struct.saa717x_state, ptr %decoder, i32 0, i32 14
  %26 = ptrtoint ptr %audio_main_volume to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %audio_main_volume, align 8
  %conv9 = zext i16 %27 to i32
  %mul = mul nuw i32 %cond, %conv9
  %div = sdiv i32 %mul, 32768
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %25)
  %cmp14 = icmp sgt i16 %25, -1
  %cond21 = select i1 %cmp14, i32 %conv, i32 32768
  %mul24 = mul nuw i32 %cond21, %conv9
  %div25 = sdiv i32 %mul24, 32768
  %mul26 = shl nsw i32 %div, 6
  %div27 = sdiv i32 %mul26, 65535
  %sub28 = add nsw i32 %div27, -40
  %audio_main_vol_l = getelementptr inbounds %struct.saa717x_state, ptr %decoder, i32 0, i32 11
  %28 = ptrtoint ptr %audio_main_vol_l to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub28, ptr %audio_main_vol_l, align 8
  %mul29 = shl nsw i32 %div25, 6
  %div30 = sdiv i32 %mul29, 65535
  %sub31 = add nsw i32 %div30, -40
  %audio_main_vol_r = getelementptr inbounds %struct.saa717x_state, ptr %decoder, i32 0, i32 10
  %29 = ptrtoint ptr %audio_main_vol_r to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub31, ptr %audio_main_vol_r, align 4
  %audio_main_mute = getelementptr inbounds %struct.saa717x_state, ptr %decoder, i32 0, i32 9
  %30 = ptrtoint ptr %audio_main_mute to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %audio_main_mute, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not = icmp eq i32 %31, 0
  %conv37 = and i32 %sub28, 255
  %conv40 = shl nsw i32 %sub31, 8
  %shl41 = and i32 %conv40, 65280
  %or42 = or i32 %conv37, %shl41
  %val.0 = select i1 %tobool.not, i32 %or42, i32 44204
  %32 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_priv.i.i, align 4
  %adapter.i5 = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %adapter.i5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adapter.i5, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm1.i2) #7
  %36 = getelementptr inbounds [6 x i8], ptr %mm1.i2, i32 0, i32 1
  %37 = getelementptr inbounds [6 x i8], ptr %mm1.i2, i32 0, i32 2
  %38 = getelementptr inbounds i8, ptr %mm1.i2, i32 3
  %39 = getelementptr inbounds i8, ptr %mm1.i2, i32 5
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -1, ptr %39, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i3) #7
  %41 = getelementptr inbounds i8, ptr %msg.i3, i32 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 393215, ptr %41, align 4
  %flags.i6 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i3, i32 0, i32 1
  %43 = ptrtoint ptr %flags.i6 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %flags.i6, align 2
  %addr.i7 = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 1
  %44 = ptrtoint ptr %addr.i7 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %addr.i7, align 2
  %46 = ptrtoint ptr %msg.i3 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %msg.i3, align 4
  %47 = ptrtoint ptr %mm1.i2 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 4, ptr %mm1.i2, align 1
  %48 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -128, ptr %36, align 1
  %49 = getelementptr inbounds [6 x i8], ptr %mm1.i2, i32 0, i32 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %49, align 1
  %shr14.i = lshr i32 %val.0, 8
  %conv16.i = trunc i32 %shr14.i to i8
  %51 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv16.i, ptr %38, align 1
  %storemerge.i8 = trunc i32 %val.0 to i8
  %52 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %storemerge.i8, ptr %37, align 1
  %buf.i10 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i3, i32 0, i32 3
  %53 = ptrtoint ptr %buf.i10 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %mm1.i2, ptr %buf.i10, align 4
  %54 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp26.i11 = icmp sgt i32 %54, 1
  br i1 %cmp26.i11, label %do.end.i14, label %do.end5.saa717x_write.exit18_crit_edge

do.end5.saa717x_write.exit18_crit_edge:           ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa717x_write.exit18

do.end.i14:                                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  %name.i12 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call31.i13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name.i12, i32 noundef 1152, i32 noundef %val.0) #10
  br label %saa717x_write.exit18

saa717x_write.exit18:                             ; preds = %do.end.i14, %do.end5.saa717x_write.exit18_crit_edge
  %call35.i15 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msg.i3, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i3) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm1.i2) #7
  %audio_main_bass = getelementptr inbounds %struct.saa717x_state, ptr %decoder, i32 0, i32 12
  %55 = ptrtoint ptr %audio_main_bass to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %audio_main_bass, align 4
  %57 = and i16 %56, 31
  %audio_main_treble = getelementptr inbounds %struct.saa717x_state, ptr %decoder, i32 0, i32 13
  %58 = ptrtoint ptr %audio_main_treble to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %audio_main_treble, align 2
  %60 = shl i16 %59, 5
  %61 = and i16 %60, 992
  %or491 = or i16 %61, %57
  %62 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev_priv.i.i, align 4
  %adapter.i22 = getelementptr inbounds %struct.i2c_client, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %adapter.i22 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %adapter.i22, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm1.i19) #7
  %66 = getelementptr inbounds [6 x i8], ptr %mm1.i19, i32 0, i32 1
  %67 = getelementptr inbounds [6 x i8], ptr %mm1.i19, i32 0, i32 2
  %68 = getelementptr inbounds i8, ptr %mm1.i19, i32 3
  %69 = getelementptr inbounds i8, ptr %mm1.i19, i32 5
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 -1, ptr %69, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i20) #7
  %71 = getelementptr inbounds i8, ptr %msg.i20, i32 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 393215, ptr %71, align 4
  %flags.i23 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i20, i32 0, i32 1
  %73 = ptrtoint ptr %flags.i23 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 0, ptr %flags.i23, align 2
  %addr.i24 = getelementptr inbounds %struct.i2c_client, ptr %63, i32 0, i32 1
  %74 = ptrtoint ptr %addr.i24 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %addr.i24, align 2
  %76 = ptrtoint ptr %msg.i20 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %msg.i20, align 4
  %77 = ptrtoint ptr %mm1.i19 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 4, ptr %mm1.i19, align 1
  %78 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 -120, ptr %66, align 1
  %79 = getelementptr inbounds [6 x i8], ptr %mm1.i19, i32 0, i32 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %79, align 1
  %shr14.i27 = lshr i16 %61, 8
  %conv16.i28 = trunc i16 %shr14.i27 to i8
  %81 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv16.i28, ptr %68, align 1
  %storemerge.i30 = trunc i16 %or491 to i8
  %82 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %storemerge.i30, ptr %67, align 1
  %buf.i32 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i20, i32 0, i32 3
  %83 = ptrtoint ptr %buf.i32 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %mm1.i19, ptr %buf.i32, align 4
  %84 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %84)
  %cmp26.i33 = icmp sgt i32 %84, 1
  br i1 %cmp26.i33, label %do.end.i36, label %saa717x_write.exit18.saa717x_write.exit40_crit_edge

saa717x_write.exit18.saa717x_write.exit40_crit_edge: ; preds = %saa717x_write.exit18
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa717x_write.exit40

do.end.i36:                                       ; preds = %saa717x_write.exit18
  call void @__sanitizer_cov_trace_pc() #9
  %or49 = zext i16 %or491 to i32
  %name.i34 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call31.i35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name.i34, i32 noundef 1160, i32 noundef %or49) #10
  br label %saa717x_write.exit40

saa717x_write.exit40:                             ; preds = %do.end.i36, %saa717x_write.exit18.saa717x_write.exit40_crit_edge
  %call35.i37 = call i32 @i2c_transfer(ptr noundef %65, ptr noundef nonnull %msg.i20, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i20) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm1.i19) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa717x_s_video_routing(ptr noundef %sd, i32 noundef %input, i32 noundef %output, i32 noundef %config) #2 align 64 {
entry:
  %mm1.i103 = alloca [6 x i8], align 1
  %msg.i104 = alloca %struct.i2c_msg, align 4
  %mm1.i83 = alloca [2 x i8], align 1
  %mm2.i84 = alloca [4 x i8], align 4
  %msgs.i85 = alloca [2 x %struct.i2c_msg], align 4
  %mm1.i74 = alloca [6 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %mm1.i = alloca [2 x i8], align 1
  %mm2.i = alloca [4 x i8], align 4
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %input, 128
  %and1 = and i32 %input, 127
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %name, i32 noundef %and1) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %and1)
  %cmp6 = icmp ugt i32 %and1, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and1)
  %cmp7 = icmp eq i32 %and1, 5
  %or.cond = or i1 %cmp6, %cmp7
  br i1 %or.cond, label %do.end5.cleanup_crit_edge, label %if.end9

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %do.end5
  %input10 = getelementptr inbounds %struct.saa717x_state, ptr %sd, i32 0, i32 3
  %1 = ptrtoint ptr %input10 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %input10, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %and1)
  %cmp11.not = icmp eq i32 %2, %and1
  br i1 %cmp11.not, label %if.end9.cleanup_crit_edge, label %if.then12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then12:                                        ; preds = %if.end9
  %3 = ptrtoint ptr %input10 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and1, ptr %input10, align 8
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp15 = icmp sgt i32 %4, 0
  br i1 %cmp15, label %do.end19, label %if.then12.do.end27_crit_edge

if.then12.do.end27_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27

do.end19:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %name21 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and1)
  %cmp23 = icmp ugt i32 %and1, 5
  %cond = select i1 %cmp23, ptr @.str.98, ptr @.str.99
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name21, ptr noundef nonnull %cond, i32 noundef %and1) #10
  br label %do.end27

do.end27:                                         ; preds = %do.end19, %if.then12.do.end27_crit_edge
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %5 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_priv.i.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mm1.i) #7
  %9 = getelementptr inbounds [2 x i8], ptr %mm1.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mm2.i) #7
  %10 = ptrtoint ptr %mm2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %mm2.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #7
  %11 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %12 = call ptr @memset(ptr %11, i32 255, i32 16)
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i, align 2
  %arrayidx3.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1
  %flags4.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %flags4.i, align 2
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 1
  %15 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %addr.i, align 2
  %17 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %arrayidx3.i, align 4
  %18 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %16, ptr %msgs.i, align 4
  %19 = ptrtoint ptr %mm1.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %mm1.i, align 1
  %20 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %9, align 1
  %21 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 2, ptr %11, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %22 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %mm1.i, ptr %buf.i, align 4
  %len17.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %len17.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %len17.i, align 4
  %buf20.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %buf20.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %mm2.i, ptr %buf20.i, align 4
  %call22.i = call i32 @i2c_transfer(ptr noundef %8, ptr noundef nonnull %msgs.i, i32 noundef 2) #7
  %25 = ptrtoint ptr %mm2.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %mm2.i, align 4
  %conv33.i = zext i8 %26 to i32
  %27 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp34.i = icmp sgt i32 %27, 1
  br i1 %cmp34.i, label %do.end.i, label %do.end27.saa717x_read.exit_crit_edge

do.end27.saa717x_read.exit_crit_edge:             ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa717x_read.exit

do.end.i:                                         ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call39.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef %name.i, i32 noundef 258, i32 noundef %conv33.i) #10
  br label %saa717x_read.exit

saa717x_read.exit:                                ; preds = %do.end.i, %do.end27.saa717x_read.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm2.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm1.i) #7
  %and29 = and i32 %conv33.i, 240
  %or = or i32 %and29, %and1
  %28 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_priv.i.i, align 4
  %adapter.i76 = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %adapter.i76 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adapter.i76, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm1.i74) #7
  %32 = getelementptr inbounds [6 x i8], ptr %mm1.i74, i32 0, i32 1
  %33 = getelementptr inbounds [6 x i8], ptr %mm1.i74, i32 0, i32 2
  %34 = getelementptr inbounds i8, ptr %mm1.i74, i32 3
  %35 = call ptr @memset(ptr %34, i32 255, i32 3)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %36 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 262143, ptr %36, align 4
  %flags.i77 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %38 = ptrtoint ptr %flags.i77 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %flags.i77, align 2
  %addr.i78 = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 1
  %39 = ptrtoint ptr %addr.i78 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %addr.i78, align 2
  %41 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %msg.i, align 4
  %42 = ptrtoint ptr %mm1.i74 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %mm1.i74, align 1
  %43 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 2, ptr %32, align 1
  %storemerge.i = trunc i32 %or to i8
  %44 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %storemerge.i, ptr %33, align 1
  %buf.i80 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %45 = ptrtoint ptr %buf.i80 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %mm1.i74, ptr %buf.i80, align 4
  %46 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp26.i = icmp sgt i32 %46, 1
  br i1 %cmp26.i, label %do.end.i82, label %saa717x_read.exit.saa717x_write.exit_crit_edge

saa717x_read.exit.saa717x_write.exit_crit_edge:   ; preds = %saa717x_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa717x_write.exit

do.end.i82:                                       ; preds = %saa717x_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  %name.i81 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name.i81, i32 noundef 258, i32 noundef %or) #10
  br label %saa717x_write.exit

saa717x_write.exit:                               ; preds = %do.end.i82, %saa717x_read.exit.saa717x_write.exit_crit_edge
  %call35.i = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm1.i74) #7
  %47 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_priv.i.i, align 4
  %adapter.i87 = getelementptr inbounds %struct.i2c_client, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %adapter.i87 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %adapter.i87, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mm1.i83) #7
  %51 = getelementptr inbounds [2 x i8], ptr %mm1.i83, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mm2.i84) #7
  %52 = ptrtoint ptr %mm2.i84 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %mm2.i84, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i85) #7
  %53 = getelementptr inbounds i8, ptr %msgs.i85, i32 4
  %54 = call ptr @memset(ptr %53, i32 255, i32 16)
  %flags.i88 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i85, i32 0, i32 1
  %55 = ptrtoint ptr %flags.i88 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 0, ptr %flags.i88, align 2
  %arrayidx3.i89 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i85, i32 0, i32 1
  %flags4.i90 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i85, i32 0, i32 1, i32 1
  %56 = ptrtoint ptr %flags4.i90 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 1, ptr %flags4.i90, align 2
  %addr.i91 = getelementptr inbounds %struct.i2c_client, ptr %48, i32 0, i32 1
  %57 = ptrtoint ptr %addr.i91 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %addr.i91, align 2
  %59 = ptrtoint ptr %arrayidx3.i89 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %arrayidx3.i89, align 4
  %60 = ptrtoint ptr %msgs.i85 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %58, ptr %msgs.i85, align 4
  %61 = ptrtoint ptr %mm1.i83 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %mm1.i83, align 1
  %62 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 9, ptr %51, align 1
  %63 = ptrtoint ptr %53 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 2, ptr %53, align 4
  %buf.i93 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i85, i32 0, i32 3
  %64 = ptrtoint ptr %buf.i93 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %mm1.i83, ptr %buf.i93, align 4
  %len17.i94 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i85, i32 0, i32 1, i32 2
  %65 = ptrtoint ptr %len17.i94 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 1, ptr %len17.i94, align 4
  %buf20.i95 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i85, i32 0, i32 1, i32 3
  %66 = ptrtoint ptr %buf20.i95 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %mm2.i84, ptr %buf20.i95, align 4
  %call22.i96 = call i32 @i2c_transfer(ptr noundef %50, ptr noundef nonnull %msgs.i85, i32 noundef 2) #7
  %67 = ptrtoint ptr %mm2.i84 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %mm2.i84, align 4
  %conv33.i97 = zext i8 %68 to i32
  %69 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %69)
  %cmp34.i98 = icmp sgt i32 %69, 1
  br i1 %cmp34.i98, label %do.end.i101, label %saa717x_write.exit.saa717x_read.exit102_crit_edge

saa717x_write.exit.saa717x_read.exit102_crit_edge: ; preds = %saa717x_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa717x_read.exit102

do.end.i101:                                      ; preds = %saa717x_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %name.i99 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call39.i100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef %name.i99, i32 noundef 265, i32 noundef %conv33.i97) #10
  br label %saa717x_read.exit102

saa717x_read.exit102:                             ; preds = %do.end.i101, %saa717x_write.exit.saa717x_read.exit102_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i85) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm2.i84) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm1.i83) #7
  %and32 = and i32 %conv33.i97, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and1)
  %cmp33 = icmp ult i32 %and1, 6
  %cond34 = select i1 %cmp33, i32 0, i32 128
  %or35 = or i32 %and32, %cond34
  %70 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev_priv.i.i, align 4
  %adapter.i106 = getelementptr inbounds %struct.i2c_client, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %adapter.i106 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %adapter.i106, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm1.i103) #7
  %74 = getelementptr inbounds [6 x i8], ptr %mm1.i103, i32 0, i32 1
  %75 = getelementptr inbounds [6 x i8], ptr %mm1.i103, i32 0, i32 2
  %76 = getelementptr inbounds i8, ptr %mm1.i103, i32 3
  %77 = call ptr @memset(ptr %76, i32 255, i32 3)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i104) #7
  %78 = getelementptr inbounds i8, ptr %msg.i104, i32 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 262143, ptr %78, align 4
  %flags.i107 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i104, i32 0, i32 1
  %80 = ptrtoint ptr %flags.i107 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 0, ptr %flags.i107, align 2
  %addr.i108 = getelementptr inbounds %struct.i2c_client, ptr %71, i32 0, i32 1
  %81 = ptrtoint ptr %addr.i108 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %addr.i108, align 2
  %83 = ptrtoint ptr %msg.i104 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %82, ptr %msg.i104, align 4
  %84 = ptrtoint ptr %mm1.i103 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %mm1.i103, align 1
  %85 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 9, ptr %74, align 1
  %storemerge.i109 = trunc i32 %or35 to i8
  %86 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %storemerge.i109, ptr %75, align 1
  %buf.i111 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i104, i32 0, i32 3
  %87 = ptrtoint ptr %buf.i111 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %mm1.i103, ptr %buf.i111, align 4
  %88 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %88)
  %cmp26.i112 = icmp sgt i32 %88, 1
  br i1 %cmp26.i112, label %do.end.i115, label %saa717x_read.exit102.saa717x_write.exit119_crit_edge

saa717x_read.exit102.saa717x_write.exit119_crit_edge: ; preds = %saa717x_read.exit102
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa717x_write.exit119

do.end.i115:                                      ; preds = %saa717x_read.exit102
  call void @__sanitizer_cov_trace_pc() #9
  %name.i113 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call31.i114 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name.i113, i32 noundef 265, i32 noundef %or35) #10
  br label %saa717x_write.exit119

saa717x_write.exit119:                            ; preds = %do.end.i115, %saa717x_read.exit102.saa717x_write.exit119_crit_edge
  %call35.i116 = call i32 @i2c_transfer(ptr noundef %73, ptr noundef nonnull %msg.i104, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i104) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm1.i103) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then37

if.then37:                                        ; preds = %saa717x_write.exit119
  call void @__sanitizer_cov_trace_pc() #9
  %tuner_audio_mode = getelementptr inbounds %struct.saa717x_state, ptr %sd, i32 0, i32 8
  %89 = ptrtoint ptr %tuner_audio_mode to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %tuner_audio_mode, align 4
  call fastcc void @set_audio_mode(ptr noundef %sd, i32 noundef %90)
  br label %cleanup.sink.split

if.else:                                          ; preds = %saa717x_write.exit119
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @set_audio_mode(ptr noundef %sd, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and1)
  %cmp42 = icmp ugt i32 %and1, 5
  %reg_init_svideo_input.reg_init_composite_input = select i1 %cmp42, ptr @reg_init_svideo_input, ptr @reg_init_composite_input
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %if.then37
  %reg_init_svideo_input.sink = phi ptr [ @reg_init_tuner_input, %if.then37 ], [ %reg_init_svideo_input.reg_init_composite_input, %if.else ]
  call fastcc void @saa717x_write_regs(ptr noundef %sd, ptr noundef nonnull %reg_init_svideo_input.sink)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end9.cleanup_crit_edge, %do.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end5.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa717x_s_std(ptr noundef %sd, i64 noundef %std) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.body5, label %entry.do.end17_crit_edge

entry.do.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

do.body5:                                         ; preds = %entry
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef %name) #10
  %.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp6 = icmp sgt i32 %.pr, 0
  br i1 %cmp6, label %do.end10, label %do.body5.do.end17_crit_edge

do.body5.do.end17_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

do.end10:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef %name) #10
  br label %do.end17

do.end17:                                         ; preds = %do.end10, %do.body5.do.end17_crit_edge, %entry.do.end17_crit_edge
  %radio = getelementptr inbounds %struct.saa717x_state, ptr %sd, i32 0, i32 5
  %1 = ptrtoint ptr %radio to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %radio, align 8
  %std18 = getelementptr inbounds %struct.saa717x_state, ptr %sd, i32 0, i32 2
  %2 = ptrtoint ptr %std18 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %std, ptr %std18, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa717x_s_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  %mm1.i = alloca [6 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %cond = select i1 %tobool.not, ptr @.str.108, ptr @.str.107
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef %name, ptr noundef nonnull %cond) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %enable5 = getelementptr inbounds %struct.saa717x_state, ptr %sd, i32 0, i32 4
  %1 = ptrtoint ptr %enable5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %enable, ptr %enable5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool6.not = icmp eq i32 %enable, 0
  %cond7 = select i1 %tobool6.not, i32 38, i32 166
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter.i, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm1.i) #7
  %6 = getelementptr inbounds [6 x i8], ptr %mm1.i, i32 0, i32 1
  %7 = getelementptr inbounds [6 x i8], ptr %mm1.i, i32 0, i32 2
  %8 = getelementptr inbounds i8, ptr %mm1.i, i32 3
  %9 = call ptr @memset(ptr %8, i32 255, i32 3)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %10 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 262143, ptr %10, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %addr.i, align 2
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %msg.i, align 4
  %16 = ptrtoint ptr %mm1.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %mm1.i, align 1
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -109, ptr %6, align 1
  %storemerge.i = trunc i32 %cond7 to i8
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %storemerge.i, ptr %7, align 1
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %19 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %mm1.i, ptr %buf.i, align 4
  %20 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp26.i = icmp sgt i32 %20, 1
  br i1 %cmp26.i, label %do.end.i, label %do.end4.saa717x_write.exit_crit_edge

do.end4.saa717x_write.exit_crit_edge:             ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa717x_write.exit

do.end.i:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name.i, i32 noundef 403, i32 noundef %cond7) #10
  br label %saa717x_write.exit

saa717x_write.exit:                               ; preds = %do.end.i, %do.end4.saa717x_write.exit_crit_edge
  %call35.i = call i32 @i2c_transfer(ptr noundef %5, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm1.i) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa717x_set_fmt(ptr noundef %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  %mm1.i308 = alloca [6 x i8], align 1
  %msg.i309 = alloca %struct.i2c_msg, align 4
  %mm1.i291 = alloca [6 x i8], align 1
  %msg.i292 = alloca %struct.i2c_msg, align 4
  %mm1.i274 = alloca [6 x i8], align 1
  %msg.i275 = alloca %struct.i2c_msg, align 4
  %mm1.i257 = alloca [6 x i8], align 1
  %msg.i258 = alloca %struct.i2c_msg, align 4
  %mm1.i240 = alloca [6 x i8], align 1
  %msg.i241 = alloca %struct.i2c_msg, align 4
  %mm1.i223 = alloca [6 x i8], align 1
  %msg.i224 = alloca %struct.i2c_msg, align 4
  %mm1.i206 = alloca [6 x i8], align 1
  %msg.i207 = alloca %struct.i2c_msg, align 4
  %mm1.i189 = alloca [6 x i8], align 1
  %msg.i190 = alloca %struct.i2c_msg, align 4
  %mm1.i172 = alloca [6 x i8], align 1
  %msg.i173 = alloca %struct.i2c_msg, align 4
  %mm1.i155 = alloca [6 x i8], align 1
  %msg.i156 = alloca %struct.i2c_msg, align 4
  %mm1.i138 = alloca [6 x i8], align 1
  %msg.i139 = alloca %struct.i2c_msg, align 4
  %mm1.i = alloca [6 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef %name) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %1 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %do.end4.cleanup_crit_edge

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end4
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %3 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp5.not = icmp eq i32 %4, 1
  br i1 %cmp5.not, label %if.end7, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %5 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %format1, align 4
  %7 = add i32 %6, -1441
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1440, i32 %7)
  %8 = icmp ult i32 %7, -1440
  br i1 %8, label %if.end7.cleanup_crit_edge, label %if.end13

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %height, align 4
  %11 = add i32 %10, -961
  call void @__sanitizer_cov_trace_const_cmp4(i32 -960, i32 %11)
  %12 = icmp ult i32 %11, -960
  br i1 %12, label %if.end13.cleanup_crit_edge, label %if.end19

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %13 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %field, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %14 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %colorspace, align 4
  %15 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp20 = icmp eq i32 %16, 0
  br i1 %cmp20, label %if.end19.cleanup_crit_edge, label %if.end22

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %if.end19
  %div.rhs.trunc = trunc i32 %6 to i16
  %div325 = udiv i16 704, %div.rhs.trunc
  %div.zext = zext i16 %div325 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 704, i32 %6)
  %cmp24 = icmp ugt i32 %6, 704
  %spec.store.select = select i1 %cmp24, i32 1, i32 %div.zext
  %div27 = udiv i32 720896, %spec.store.select
  %div29 = udiv i32 %div27, %6
  %div31 = udiv i32 491520, %10
  tail call fastcc void @set_h_prescale(ptr noundef %sd, i32 noundef 0, i32 noundef %spec.store.select)
  tail call fastcc void @set_h_prescale(ptr noundef %sd, i32 noundef 1, i32 noundef %spec.store.select)
  %conv32 = and i32 %div29, 255
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %17 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_priv.i.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter.i, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm1.i) #7
  %21 = getelementptr inbounds [6 x i8], ptr %mm1.i, i32 0, i32 1
  %22 = getelementptr inbounds [6 x i8], ptr %mm1.i, i32 0, i32 2
  %23 = getelementptr inbounds i8, ptr %mm1.i, i32 3
  %24 = call ptr @memset(ptr %23, i32 255, i32 3)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %25 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 262143, ptr %25, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %flags.i, align 2
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 1
  %28 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %addr.i, align 2
  %30 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %msg.i, align 4
  %31 = ptrtoint ptr %mm1.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %mm1.i, align 1
  %32 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 108, ptr %21, align 1
  %storemerge.i = trunc i32 %div29 to i8
  %33 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %storemerge.i, ptr %22, align 1
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %34 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %mm1.i, ptr %buf.i, align 4
  %35 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp26.i = icmp sgt i32 %35, 1
  br i1 %cmp26.i, label %do.end.i, label %if.end22.saa717x_write.exit_crit_edge

if.end22.saa717x_write.exit_crit_edge:            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa717x_write.exit

do.end.i:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name.i, i32 noundef 108, i32 noundef %conv32) #10
  br label %saa717x_write.exit

saa717x_write.exit:                               ; preds = %do.end.i, %if.end22.saa717x_write.exit_crit_edge
  %call35.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm1.i) #7
  %36 = lshr i32 %div29, 8
  %conv36 = and i32 %36, 255
  %37 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev_priv.i.i, align 4
  %adapter.i141 = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %adapter.i141 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %adapter.i141, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm1.i138) #7
  %41 = getelementptr inbounds [6 x i8], ptr %mm1.i138, i32 0, i32 1
  %42 = getelementptr inbounds [6 x i8], ptr %mm1.i138, i32 0, i32 2
  %43 = getelementptr inbounds i8, ptr %mm1.i138, i32 3
  %44 = call ptr @memset(ptr %43, i32 255, i32 3)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i139) #7
  %45 = getelementptr inbounds i8, ptr %msg.i139, i32 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 262143, ptr %45, align 4
  %flags.i142 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i139, i32 0, i32 1
  %47 = ptrtoint ptr %flags.i142 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %flags.i142, align 2
  %addr.i143 = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 1
  %48 = ptrtoint ptr %addr.i143 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %addr.i143, align 2
  %50 = ptrtoint ptr %msg.i139 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %msg.i139, align 4
  %51 = ptrtoint ptr %mm1.i138 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %mm1.i138, align 1
  %52 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 109, ptr %41, align 1
  %storemerge.i144 = trunc i32 %36 to i8
  %53 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %storemerge.i144, ptr %42, align 1
  %buf.i146 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i139, i32 0, i32 3
  %54 = ptrtoint ptr %buf.i146 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %mm1.i138, ptr %buf.i146, align 4
  %55 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp26.i147 = icmp sgt i32 %55, 1
  br i1 %cmp26.i147, label %do.end.i150, label %saa717x_write.exit.saa717x_write.exit154_crit_edge

saa717x_write.exit.saa717x_write.exit154_crit_edge: ; preds = %saa717x_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa717x_write.exit154

do.end.i150:                                      ; preds = %saa717x_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %name.i148 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call31.i149 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name.i148, i32 noundef 109, i32 noundef %conv36) #10
  br label %saa717x_write.exit154

saa717x_write.exit154:                            ; preds = %do.end.i150, %saa717x_write.exit.saa717x_write.exit154_crit_edge
  %call35.i151 = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %msg.i139, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i139) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm1.i138) #7
  %56 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev_priv.i.i, align 4
  %adapter.i158 = getelementptr inbounds %struct.i2c_client, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %adapter.i158 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %adapter.i158, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm1.i155) #7
  %60 = getelementptr inbounds [6 x i8], ptr %mm1.i155, i32 0, i32 1
  %61 = getelementptr inbounds [6 x i8], ptr %mm1.i155, i32 0, i32 2
  %62 = getelementptr inbounds i8, ptr %mm1.i155, i32 3
  %63 = call ptr @memset(ptr %62, i32 255, i32 3)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i156) #7
  %64 = getelementptr inbounds i8, ptr %msg.i156, i32 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 262143, ptr %64, align 4
  %flags.i159 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i156, i32 0, i32 1
  %66 = ptrtoint ptr %flags.i159 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 0, ptr %flags.i159, align 2
  %addr.i160 = getelementptr inbounds %struct.i2c_client, ptr %57, i32 0, i32 1
  %67 = ptrtoint ptr %addr.i160 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %addr.i160, align 2
  %69 = ptrtoint ptr %msg.i156 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %msg.i156, align 4
  %70 = ptrtoint ptr %mm1.i155 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %mm1.i155, align 1
  %71 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 -84, ptr %60, align 1
  %72 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %storemerge.i, ptr %61, align 1
  %buf.i163 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i156, i32 0, i32 3
  %73 = ptrtoint ptr %buf.i163 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %mm1.i155, ptr %buf.i163, align 4
  %74 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %74)
  %cmp26.i164 = icmp sgt i32 %74, 1
  br i1 %cmp26.i164, label %do.end.i167, label %saa717x_write.exit154.saa717x_write.exit171_crit_edge

saa717x_write.exit154.saa717x_write.exit171_crit_edge: ; preds = %saa717x_write.exit154
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa717x_write.exit171

do.end.i167:                                      ; preds = %saa717x_write.exit154
  call void @__sanitizer_cov_trace_pc() #9
  %name.i165 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call31.i166 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name.i165, i32 noundef 172, i32 noundef %conv32) #10
  br label %saa717x_write.exit171

saa717x_write.exit171:                            ; preds = %do.end.i167, %saa717x_write.exit154.saa717x_write.exit171_crit_edge
  %call35.i168 = call i32 @i2c_transfer(ptr noundef %59, ptr noundef nonnull %msg.i156, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i156) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm1.i155) #7
  %75 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev_priv.i.i, align 4
  %adapter.i175 = getelementptr inbounds %struct.i2c_client, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %adapter.i175 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %adapter.i175, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm1.i172) #7
  %79 = getelementptr inbounds [6 x i8], ptr %mm1.i172, i32 0, i32 1
  %80 = getelementptr inbounds [6 x i8], ptr %mm1.i172, i32 0, i32 2
  %81 = getelementptr inbounds i8, ptr %mm1.i172, i32 3
  %82 = call ptr @memset(ptr %81, i32 255, i32 3)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i173) #7
  %83 = getelementptr inbounds i8, ptr %msg.i173, i32 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 262143, ptr %83, align 4
  %flags.i176 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i173, i32 0, i32 1
  %85 = ptrtoint ptr %flags.i176 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 0, ptr %flags.i176, align 2
  %addr.i177 = getelementptr inbounds %struct.i2c_client, ptr %76, i32 0, i32 1
  %86 = ptrtoint ptr %addr.i177 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %addr.i177, align 2
  %88 = ptrtoint ptr %msg.i173 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %87, ptr %msg.i173, align 4
  %89 = ptrtoint ptr %mm1.i172 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %mm1.i172, align 1
  %90 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 -83, ptr %79, align 1
  %91 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %storemerge.i144, ptr %80, align 1
  %buf.i180 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i173, i32 0, i32 3
  %92 = ptrtoint ptr %buf.i180 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %mm1.i172, ptr %buf.i180, align 4
  %93 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %93)
  %cmp26.i181 = icmp sgt i32 %93, 1
  br i1 %cmp26.i181, label %do.end.i184, label %saa717x_write.exit171.saa717x_write.exit188_crit_edge

saa717x_write.exit171.saa717x_write.exit188_crit_edge: ; preds = %saa717x_write.exit171
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa717x_write.exit188

do.end.i184:                                      ; preds = %saa717x_write.exit171
  call void @__sanitizer_cov_trace_pc() #9
  %name.i182 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call31.i183 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name.i182, i32 noundef 173, i32 noundef %conv36) #10
  br label %saa717x_write.exit188

saa717x_write.exit188:                            ; preds = %do.end.i184, %saa717x_write.exit171.saa717x_write.exit188_crit_edge
  %call35.i185 = call i32 @i2c_transfer(ptr noundef %78, ptr noundef nonnull %msg.i173, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i173) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm1.i172) #7
  call fastcc void @set_v_scale(ptr noundef %sd, i32 noundef 0, i32 noundef %div31)
  call fastcc void @set_v_scale(ptr noundef %sd, i32 noundef 1, i32 noundef %div31)
  %94 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %format1, align 4
  %96 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev_priv.i.i, align 4
  %adapter.i192 = getelementptr inbounds %struct.i2c_client, ptr %97, i32 0, i32 3
  %98 = ptrtoint ptr %adapter.i192 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %adapter.i192, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm1.i189) #7
  %100 = getelementptr inbounds [6 x i8], ptr %mm1.i189, i32 0, i32 1
  %101 = getelementptr inbounds [6 x i8], ptr %mm1.i189, i32 0, i32 2
  %102 = getelementptr inbounds i8, ptr %mm1.i189, i32 3
  %103 = call ptr @memset(ptr %102, i32 255, i32 3)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i190) #7
  %104 = getelementptr inbounds i8, ptr %msg.i190, i32 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 262143, ptr %104, align 4
  %flags.i193 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i190, i32 0, i32 1
  %106 = ptrtoint ptr %flags.i193 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 0, ptr %flags.i193, align 2
  %addr.i194 = getelementptr inbounds %struct.i2c_client, ptr %97, i32 0, i32 1
  %107 = ptrtoint ptr %addr.i194 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %addr.i194, align 2
  %109 = ptrtoint ptr %msg.i190 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %108, ptr %msg.i190, align 4
  %110 = ptrtoint ptr %mm1.i189 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %mm1.i189, align 1
  %111 = ptrtoint ptr %100 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 92, ptr %100, align 1
  %storemerge.i195 = trunc i32 %95 to i8
  %112 = ptrtoint ptr %101 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %storemerge.i195, ptr %101, align 1
  %buf.i197 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i190, i32 0, i32 3
  %113 = ptrtoint ptr %buf.i197 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %mm1.i189, ptr %buf.i197, align 4
  %114 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %114)
  %cmp26.i198 = icmp sgt i32 %114, 1
  br i1 %cmp26.i198, label %do.end.i201, label %saa717x_write.exit188.saa717x_write.exit205_crit_edge

saa717x_write.exit188.saa717x_write.exit205_crit_edge: ; preds = %saa717x_write.exit188
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa717x_write.exit205

do.end.i201:                                      ; preds = %saa717x_write.exit188
  call void @__sanitizer_cov_trace_pc() #9
  %conv50 = and i32 %95, 255
  %name.i199 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call31.i200 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name.i199, i32 noundef 92, i32 noundef %conv50) #10
  br label %saa717x_write.exit205

saa717x_write.exit205:                            ; preds = %do.end.i201, %saa717x_write.exit188.saa717x_write.exit205_crit_edge
  %call35.i202 = call i32 @i2c_transfer(ptr noundef %99, ptr noundef nonnull %msg.i190, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i190) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm1.i189) #7
  %115 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %format1, align 4
  %shr53 = lshr i32 %116, 8
  %117 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev_priv.i.i, align 4
  %adapter.i209 = getelementptr inbounds %struct.i2c_client, ptr %118, i32 0, i32 3
  %119 = ptrtoint ptr %adapter.i209 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %adapter.i209, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm1.i206) #7
  %121 = getelementptr inbounds [6 x i8], ptr %mm1.i206, i32 0, i32 1
  %122 = getelementptr inbounds [6 x i8], ptr %mm1.i206, i32 0, i32 2
  %123 = getelementptr inbounds i8, ptr %mm1.i206, i32 3
  %124 = call ptr @memset(ptr %123, i32 255, i32 3)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i207) #7
  %125 = getelementptr inbounds i8, ptr %msg.i207, i32 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 262143, ptr %125, align 4
  %flags.i210 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i207, i32 0, i32 1
  %127 = ptrtoint ptr %flags.i210 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 0, ptr %flags.i210, align 2
  %addr.i211 = getelementptr inbounds %struct.i2c_client, ptr %118, i32 0, i32 1
  %128 = ptrtoint ptr %addr.i211 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %addr.i211, align 2
  %130 = ptrtoint ptr %msg.i207 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %129, ptr %msg.i207, align 4
  %131 = ptrtoint ptr %mm1.i206 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 0, ptr %mm1.i206, align 1
  %132 = ptrtoint ptr %121 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 93, ptr %121, align 1
  %storemerge.i212 = trunc i32 %shr53 to i8
  %133 = ptrtoint ptr %122 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %storemerge.i212, ptr %122, align 1
  %buf.i214 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i207, i32 0, i32 3
  %134 = ptrtoint ptr %buf.i214 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %mm1.i206, ptr %buf.i214, align 4
  %135 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %135)
  %cmp26.i215 = icmp sgt i32 %135, 1
  br i1 %cmp26.i215, label %do.end.i218, label %saa717x_write.exit205.saa717x_write.exit222_crit_edge

saa717x_write.exit205.saa717x_write.exit222_crit_edge: ; preds = %saa717x_write.exit205
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa717x_write.exit222

do.end.i218:                                      ; preds = %saa717x_write.exit205
  call void @__sanitizer_cov_trace_pc() #9
  %conv56 = and i32 %shr53, 255
  %name.i216 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call31.i217 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name.i216, i32 noundef 93, i32 noundef %conv56) #10
  br label %saa717x_write.exit222

saa717x_write.exit222:                            ; preds = %do.end.i218, %saa717x_write.exit205.saa717x_write.exit222_crit_edge
  %call35.i219 = call i32 @i2c_transfer(ptr noundef %120, ptr noundef nonnull %msg.i207, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i207) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm1.i206) #7
  %136 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %format1, align 4
  %138 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev_priv.i.i, align 4
  %adapter.i226 = getelementptr inbounds %struct.i2c_client, ptr %139, i32 0, i32 3
  %140 = ptrtoint ptr %adapter.i226 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %adapter.i226, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm1.i223) #7
  %142 = getelementptr inbounds [6 x i8], ptr %mm1.i223, i32 0, i32 1
  %143 = getelementptr inbounds [6 x i8], ptr %mm1.i223, i32 0, i32 2
  %144 = getelementptr inbounds i8, ptr %mm1.i223, i32 3
  %145 = call ptr @memset(ptr %144, i32 255, i32 3)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i224) #7
  %146 = getelementptr inbounds i8, ptr %msg.i224, i32 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 262143, ptr %146, align 4
  %flags.i227 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i224, i32 0, i32 1
  %148 = ptrtoint ptr %flags.i227 to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 0, ptr %flags.i227, align 2
  %addr.i228 = getelementptr inbounds %struct.i2c_client, ptr %139, i32 0, i32 1
  %149 = ptrtoint ptr %addr.i228 to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %addr.i228, align 2
  %151 = ptrtoint ptr %msg.i224 to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 %150, ptr %msg.i224, align 4
  %152 = ptrtoint ptr %mm1.i223 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 0, ptr %mm1.i223, align 1
  %153 = ptrtoint ptr %142 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 -100, ptr %142, align 1
  %storemerge.i229 = trunc i32 %137 to i8
  %154 = ptrtoint ptr %143 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %storemerge.i229, ptr %143, align 1
  %buf.i231 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i224, i32 0, i32 3
  %155 = ptrtoint ptr %buf.i231 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %mm1.i223, ptr %buf.i231, align 4
  %156 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %156)
  %cmp26.i232 = icmp sgt i32 %156, 1
  br i1 %cmp26.i232, label %do.end.i235, label %saa717x_write.exit222.saa717x_write.exit239_crit_edge

saa717x_write.exit222.saa717x_write.exit239_crit_edge: ; preds = %saa717x_write.exit222
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa717x_write.exit239

do.end.i235:                                      ; preds = %saa717x_write.exit222
  call void @__sanitizer_cov_trace_pc() #9
  %conv61 = and i32 %137, 255
  %name.i233 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call31.i234 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name.i233, i32 noundef 156, i32 noundef %conv61) #10
  br label %saa717x_write.exit239

saa717x_write.exit239:                            ; preds = %do.end.i235, %saa717x_write.exit222.saa717x_write.exit239_crit_edge
  %call35.i236 = call i32 @i2c_transfer(ptr noundef %141, ptr noundef nonnull %msg.i224, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i224) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm1.i223) #7
  %157 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %format1, align 4
  %shr64 = lshr i32 %158, 8
  %159 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %dev_priv.i.i, align 4
  %adapter.i243 = getelementptr inbounds %struct.i2c_client, ptr %160, i32 0, i32 3
  %161 = ptrtoint ptr %adapter.i243 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %adapter.i243, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm1.i240) #7
  %163 = getelementptr inbounds [6 x i8], ptr %mm1.i240, i32 0, i32 1
  %164 = getelementptr inbounds [6 x i8], ptr %mm1.i240, i32 0, i32 2
  %165 = getelementptr inbounds i8, ptr %mm1.i240, i32 3
  %166 = call ptr @memset(ptr %165, i32 255, i32 3)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i241) #7
  %167 = getelementptr inbounds i8, ptr %msg.i241, i32 4
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 262143, ptr %167, align 4
  %flags.i244 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i241, i32 0, i32 1
  %169 = ptrtoint ptr %flags.i244 to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 0, ptr %flags.i244, align 2
  %addr.i245 = getelementptr inbounds %struct.i2c_client, ptr %160, i32 0, i32 1
  %170 = ptrtoint ptr %addr.i245 to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %addr.i245, align 2
  %172 = ptrtoint ptr %msg.i241 to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 %171, ptr %msg.i241, align 4
  %173 = ptrtoint ptr %mm1.i240 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 0, ptr %mm1.i240, align 1
  %174 = ptrtoint ptr %163 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 -99, ptr %163, align 1
  %storemerge.i246 = trunc i32 %shr64 to i8
  %175 = ptrtoint ptr %164 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %storemerge.i246, ptr %164, align 1
  %buf.i248 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i241, i32 0, i32 3
  %176 = ptrtoint ptr %buf.i248 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %mm1.i240, ptr %buf.i248, align 4
  %177 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %177)
  %cmp26.i249 = icmp sgt i32 %177, 1
  br i1 %cmp26.i249, label %do.end.i252, label %saa717x_write.exit239.saa717x_write.exit256_crit_edge

saa717x_write.exit239.saa717x_write.exit256_crit_edge: ; preds = %saa717x_write.exit239
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa717x_write.exit256

do.end.i252:                                      ; preds = %saa717x_write.exit239
  call void @__sanitizer_cov_trace_pc() #9
  %conv67 = and i32 %shr64, 255
  %name.i250 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call31.i251 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name.i250, i32 noundef 157, i32 noundef %conv67) #10
  br label %saa717x_write.exit256

saa717x_write.exit256:                            ; preds = %do.end.i252, %saa717x_write.exit239.saa717x_write.exit256_crit_edge
  %call35.i253 = call i32 @i2c_transfer(ptr noundef %162, ptr noundef nonnull %msg.i241, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i241) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm1.i240) #7
  %178 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %height, align 4
  %180 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %dev_priv.i.i, align 4
  %adapter.i260 = getelementptr inbounds %struct.i2c_client, ptr %181, i32 0, i32 3
  %182 = ptrtoint ptr %adapter.i260 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %adapter.i260, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm1.i257) #7
  %184 = getelementptr inbounds [6 x i8], ptr %mm1.i257, i32 0, i32 1
  %185 = getelementptr inbounds [6 x i8], ptr %mm1.i257, i32 0, i32 2
  %186 = getelementptr inbounds i8, ptr %mm1.i257, i32 3
  %187 = call ptr @memset(ptr %186, i32 255, i32 3)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i258) #7
  %188 = getelementptr inbounds i8, ptr %msg.i258, i32 4
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 262143, ptr %188, align 4
  %flags.i261 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i258, i32 0, i32 1
  %190 = ptrtoint ptr %flags.i261 to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 0, ptr %flags.i261, align 2
  %addr.i262 = getelementptr inbounds %struct.i2c_client, ptr %181, i32 0, i32 1
  %191 = ptrtoint ptr %addr.i262 to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %addr.i262, align 2
  %193 = ptrtoint ptr %msg.i258 to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 %192, ptr %msg.i258, align 4
  %194 = ptrtoint ptr %mm1.i257 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 0, ptr %mm1.i257, align 1
  %195 = ptrtoint ptr %184 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 94, ptr %184, align 1
  %storemerge.i263 = trunc i32 %179 to i8
  %196 = ptrtoint ptr %185 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %storemerge.i263, ptr %185, align 1
  %buf.i265 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i258, i32 0, i32 3
  %197 = ptrtoint ptr %buf.i265 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %mm1.i257, ptr %buf.i265, align 4
  %198 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %198)
  %cmp26.i266 = icmp sgt i32 %198, 1
  br i1 %cmp26.i266, label %do.end.i269, label %saa717x_write.exit256.saa717x_write.exit273_crit_edge

saa717x_write.exit256.saa717x_write.exit273_crit_edge: ; preds = %saa717x_write.exit256
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa717x_write.exit273

do.end.i269:                                      ; preds = %saa717x_write.exit256
  call void @__sanitizer_cov_trace_pc() #9
  %conv72 = and i32 %179, 255
  %name.i267 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call31.i268 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name.i267, i32 noundef 94, i32 noundef %conv72) #10
  br label %saa717x_write.exit273

saa717x_write.exit273:                            ; preds = %do.end.i269, %saa717x_write.exit256.saa717x_write.exit273_crit_edge
  %call35.i270 = call i32 @i2c_transfer(ptr noundef %183, ptr noundef nonnull %msg.i258, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i258) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm1.i257) #7
  %199 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %height, align 4
  %shr75 = lshr i32 %200, 8
  %201 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %dev_priv.i.i, align 4
  %adapter.i277 = getelementptr inbounds %struct.i2c_client, ptr %202, i32 0, i32 3
  %203 = ptrtoint ptr %adapter.i277 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %adapter.i277, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm1.i274) #7
  %205 = getelementptr inbounds [6 x i8], ptr %mm1.i274, i32 0, i32 1
  %206 = getelementptr inbounds [6 x i8], ptr %mm1.i274, i32 0, i32 2
  %207 = getelementptr inbounds i8, ptr %mm1.i274, i32 3
  %208 = call ptr @memset(ptr %207, i32 255, i32 3)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i275) #7
  %209 = getelementptr inbounds i8, ptr %msg.i275, i32 4
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 262143, ptr %209, align 4
  %flags.i278 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i275, i32 0, i32 1
  %211 = ptrtoint ptr %flags.i278 to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 0, ptr %flags.i278, align 2
  %addr.i279 = getelementptr inbounds %struct.i2c_client, ptr %202, i32 0, i32 1
  %212 = ptrtoint ptr %addr.i279 to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %addr.i279, align 2
  %214 = ptrtoint ptr %msg.i275 to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 %213, ptr %msg.i275, align 4
  %215 = ptrtoint ptr %mm1.i274 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 0, ptr %mm1.i274, align 1
  %216 = ptrtoint ptr %205 to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 95, ptr %205, align 1
  %storemerge.i280 = trunc i32 %shr75 to i8
  %217 = ptrtoint ptr %206 to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 %storemerge.i280, ptr %206, align 1
  %buf.i282 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i275, i32 0, i32 3
  %218 = ptrtoint ptr %buf.i282 to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %mm1.i274, ptr %buf.i282, align 4
  %219 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %219)
  %cmp26.i283 = icmp sgt i32 %219, 1
  br i1 %cmp26.i283, label %do.end.i286, label %saa717x_write.exit273.saa717x_write.exit290_crit_edge

saa717x_write.exit273.saa717x_write.exit290_crit_edge: ; preds = %saa717x_write.exit273
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa717x_write.exit290

do.end.i286:                                      ; preds = %saa717x_write.exit273
  call void @__sanitizer_cov_trace_pc() #9
  %conv78 = and i32 %shr75, 255
  %name.i284 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call31.i285 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name.i284, i32 noundef 95, i32 noundef %conv78) #10
  br label %saa717x_write.exit290

saa717x_write.exit290:                            ; preds = %do.end.i286, %saa717x_write.exit273.saa717x_write.exit290_crit_edge
  %call35.i287 = call i32 @i2c_transfer(ptr noundef %204, ptr noundef nonnull %msg.i275, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i275) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm1.i274) #7
  %220 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %height, align 4
  %222 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %dev_priv.i.i, align 4
  %adapter.i294 = getelementptr inbounds %struct.i2c_client, ptr %223, i32 0, i32 3
  %224 = ptrtoint ptr %adapter.i294 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %adapter.i294, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm1.i291) #7
  %226 = getelementptr inbounds [6 x i8], ptr %mm1.i291, i32 0, i32 1
  %227 = getelementptr inbounds [6 x i8], ptr %mm1.i291, i32 0, i32 2
  %228 = getelementptr inbounds i8, ptr %mm1.i291, i32 3
  %229 = call ptr @memset(ptr %228, i32 255, i32 3)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i292) #7
  %230 = getelementptr inbounds i8, ptr %msg.i292, i32 4
  %231 = ptrtoint ptr %230 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 262143, ptr %230, align 4
  %flags.i295 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i292, i32 0, i32 1
  %232 = ptrtoint ptr %flags.i295 to i32
  call void @__asan_store2_noabort(i32 %232)
  store i16 0, ptr %flags.i295, align 2
  %addr.i296 = getelementptr inbounds %struct.i2c_client, ptr %223, i32 0, i32 1
  %233 = ptrtoint ptr %addr.i296 to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %addr.i296, align 2
  %235 = ptrtoint ptr %msg.i292 to i32
  call void @__asan_store2_noabort(i32 %235)
  store i16 %234, ptr %msg.i292, align 4
  %236 = ptrtoint ptr %mm1.i291 to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 0, ptr %mm1.i291, align 1
  %237 = ptrtoint ptr %226 to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 -98, ptr %226, align 1
  %storemerge.i297 = trunc i32 %221 to i8
  %238 = ptrtoint ptr %227 to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 %storemerge.i297, ptr %227, align 1
  %buf.i299 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i292, i32 0, i32 3
  %239 = ptrtoint ptr %buf.i299 to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr %mm1.i291, ptr %buf.i299, align 4
  %240 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %240)
  %cmp26.i300 = icmp sgt i32 %240, 1
  br i1 %cmp26.i300, label %do.end.i303, label %saa717x_write.exit290.saa717x_write.exit307_crit_edge

saa717x_write.exit290.saa717x_write.exit307_crit_edge: ; preds = %saa717x_write.exit290
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa717x_write.exit307

do.end.i303:                                      ; preds = %saa717x_write.exit290
  call void @__sanitizer_cov_trace_pc() #9
  %conv83 = and i32 %221, 255
  %name.i301 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call31.i302 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name.i301, i32 noundef 158, i32 noundef %conv83) #10
  br label %saa717x_write.exit307

saa717x_write.exit307:                            ; preds = %do.end.i303, %saa717x_write.exit290.saa717x_write.exit307_crit_edge
  %call35.i304 = call i32 @i2c_transfer(ptr noundef %225, ptr noundef nonnull %msg.i292, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i292) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm1.i291) #7
  %241 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %height, align 4
  %shr86 = lshr i32 %242, 8
  %243 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %dev_priv.i.i, align 4
  %adapter.i311 = getelementptr inbounds %struct.i2c_client, ptr %244, i32 0, i32 3
  %245 = ptrtoint ptr %adapter.i311 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %adapter.i311, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm1.i308) #7
  %247 = getelementptr inbounds [6 x i8], ptr %mm1.i308, i32 0, i32 1
  %248 = getelementptr inbounds [6 x i8], ptr %mm1.i308, i32 0, i32 2
  %249 = getelementptr inbounds i8, ptr %mm1.i308, i32 3
  %250 = call ptr @memset(ptr %249, i32 255, i32 3)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i309) #7
  %251 = getelementptr inbounds i8, ptr %msg.i309, i32 4
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 262143, ptr %251, align 4
  %flags.i312 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i309, i32 0, i32 1
  %253 = ptrtoint ptr %flags.i312 to i32
  call void @__asan_store2_noabort(i32 %253)
  store i16 0, ptr %flags.i312, align 2
  %addr.i313 = getelementptr inbounds %struct.i2c_client, ptr %244, i32 0, i32 1
  %254 = ptrtoint ptr %addr.i313 to i32
  call void @__asan_load2_noabort(i32 %254)
  %255 = load i16, ptr %addr.i313, align 2
  %256 = ptrtoint ptr %msg.i309 to i32
  call void @__asan_store2_noabort(i32 %256)
  store i16 %255, ptr %msg.i309, align 4
  %257 = ptrtoint ptr %mm1.i308 to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 0, ptr %mm1.i308, align 1
  %258 = ptrtoint ptr %247 to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 -97, ptr %247, align 1
  %storemerge.i314 = trunc i32 %shr86 to i8
  %259 = ptrtoint ptr %248 to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 %storemerge.i314, ptr %248, align 1
  %buf.i316 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i309, i32 0, i32 3
  %260 = ptrtoint ptr %buf.i316 to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr %mm1.i308, ptr %buf.i316, align 4
  %261 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %261)
  %cmp26.i317 = icmp sgt i32 %261, 1
  br i1 %cmp26.i317, label %do.end.i320, label %saa717x_write.exit307.saa717x_write.exit324_crit_edge

saa717x_write.exit307.saa717x_write.exit324_crit_edge: ; preds = %saa717x_write.exit307
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa717x_write.exit324

do.end.i320:                                      ; preds = %saa717x_write.exit307
  call void @__sanitizer_cov_trace_pc() #9
  %conv89 = and i32 %shr86, 255
  %name.i318 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call31.i319 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name.i318, i32 noundef 159, i32 noundef %conv89) #10
  br label %saa717x_write.exit324

saa717x_write.exit324:                            ; preds = %do.end.i320, %saa717x_write.exit307.saa717x_write.exit324_crit_edge
  %call35.i321 = call i32 @i2c_transfer(ptr noundef %246, ptr noundef nonnull %msg.i309, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i309) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm1.i308) #7
  br label %cleanup

cleanup:                                          ; preds = %saa717x_write.exit324, %if.end19.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %saa717x_write.exit324 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %do.end4.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -22, %if.end13.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_h_prescale(ptr noundef %sd, i32 noundef %task, i32 noundef %prescale) unnamed_addr #2 align 64 {
entry:
  %mm1.i95 = alloca [6 x i8], align 1
  %msg.i96 = alloca %struct.i2c_msg, align 4
  %mm1.i66 = alloca [6 x i8], align 1
  %msg.i67 = alloca %struct.i2c_msg, align 4
  %mm1.i37 = alloca [6 x i8], align 1
  %msg.i38 = alloca %struct.i2c_msg, align 4
  %mm1.i = alloca [6 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %task, 6
  %switch.tableidx = add i32 %prescale, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 10
  br i1 %0, label %if.end4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %entry
  %add = add i32 %mul, 96
  %arrayidx5 = getelementptr [10 x %struct.anon.100], ptr @set_h_prescale.vals, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx5, align 4
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %3 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_priv.i.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter.i, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm1.i) #7
  %7 = getelementptr inbounds [6 x i8], ptr %mm1.i, i32 0, i32 1
  %8 = getelementptr inbounds [6 x i8], ptr %mm1.i, i32 0, i32 2
  %9 = getelementptr inbounds i8, ptr %mm1.i, i32 3
  %10 = call ptr @memset(ptr %9, i32 255, i32 3)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %11 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 262143, ptr %11, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i, align 2
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %addr.i, align 2
  %16 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %msg.i, align 4
  %shr.i = lshr i32 %add, 8
  %conv.i = trunc i32 %shr.i to i8
  %17 = ptrtoint ptr %mm1.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv.i, ptr %mm1.i, align 1
  %conv8.i = trunc i32 %add to i8
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv8.i, ptr %7, align 1
  %storemerge.i = trunc i32 %2 to i8
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %storemerge.i, ptr %8, align 1
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %20 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %mm1.i, ptr %buf.i, align 4
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp26.i = icmp sgt i32 %21, 1
  br i1 %cmp26.i, label %do.end.i, label %if.end4.saa717x_write.exit_crit_edge

if.end4.saa717x_write.exit_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa717x_write.exit

do.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name.i, i32 noundef %add, i32 noundef %2) #10
  br label %saa717x_write.exit

saa717x_write.exit:                               ; preds = %do.end.i, %if.end4.saa717x_write.exit_crit_edge
  %call35.i = call i32 @i2c_transfer(ptr noundef %6, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm1.i) #7
  %add7 = add i32 %mul, 97
  %xacl = getelementptr [10 x %struct.anon.100], ptr @set_h_prescale.vals, i32 0, i32 %switch.tableidx, i32 1
  %22 = ptrtoint ptr %xacl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %xacl, align 4
  %24 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_priv.i.i, align 4
  %adapter.i40 = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %adapter.i40 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter.i40, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm1.i37) #7
  %28 = getelementptr inbounds [6 x i8], ptr %mm1.i37, i32 0, i32 1
  %29 = getelementptr inbounds [6 x i8], ptr %mm1.i37, i32 0, i32 2
  %30 = getelementptr inbounds i8, ptr %mm1.i37, i32 3
  %31 = call ptr @memset(ptr %30, i32 255, i32 3)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i38) #7
  %32 = getelementptr inbounds i8, ptr %msg.i38, i32 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 262143, ptr %32, align 4
  %flags.i41 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38, i32 0, i32 1
  %34 = ptrtoint ptr %flags.i41 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %flags.i41, align 2
  %addr.i42 = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 1
  %35 = ptrtoint ptr %addr.i42 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %addr.i42, align 2
  %37 = ptrtoint ptr %msg.i38 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %msg.i38, align 4
  %shr.i43 = lshr i32 %add7, 8
  %conv.i44 = trunc i32 %shr.i43 to i8
  %38 = ptrtoint ptr %mm1.i37 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv.i44, ptr %mm1.i37, align 1
  %conv8.i45 = trunc i32 %add7 to i8
  %39 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv8.i45, ptr %28, align 1
  %storemerge.i54 = trunc i32 %23 to i8
  %40 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %storemerge.i54, ptr %29, align 1
  %buf.i56 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38, i32 0, i32 3
  %41 = ptrtoint ptr %buf.i56 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %mm1.i37, ptr %buf.i56, align 4
  %42 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp26.i57 = icmp sgt i32 %42, 1
  br i1 %cmp26.i57, label %do.end.i61, label %saa717x_write.exit.saa717x_write.exit65_crit_edge

saa717x_write.exit.saa717x_write.exit65_crit_edge: ; preds = %saa717x_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa717x_write.exit65

do.end.i61:                                       ; preds = %saa717x_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %name.i59 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call31.i60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name.i59, i32 noundef %add7, i32 noundef %23) #10
  br label %saa717x_write.exit65

saa717x_write.exit65:                             ; preds = %do.end.i61, %saa717x_write.exit.saa717x_write.exit65_crit_edge
  %call35.i62 = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %msg.i38, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i38) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm1.i37) #7
  %add10 = add i32 %mul, 98
  %xc2_1 = getelementptr [10 x %struct.anon.100], ptr @set_h_prescale.vals, i32 0, i32 %switch.tableidx, i32 2
  %43 = ptrtoint ptr %xc2_1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %xc2_1, align 4
  %shl = shl i32 %44, 3
  %xdcg = getelementptr [10 x %struct.anon.100], ptr @set_h_prescale.vals, i32 0, i32 %switch.tableidx, i32 3
  %45 = ptrtoint ptr %xdcg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %xdcg, align 4
  %or = or i32 %shl, %46
  %47 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_priv.i.i, align 4
  %adapter.i69 = getelementptr inbounds %struct.i2c_client, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %adapter.i69 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %adapter.i69, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm1.i66) #7
  %51 = getelementptr inbounds [6 x i8], ptr %mm1.i66, i32 0, i32 1
  %52 = getelementptr inbounds [6 x i8], ptr %mm1.i66, i32 0, i32 2
  %53 = getelementptr inbounds i8, ptr %mm1.i66, i32 3
  %54 = call ptr @memset(ptr %53, i32 255, i32 3)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i67) #7
  %55 = getelementptr inbounds i8, ptr %msg.i67, i32 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 262143, ptr %55, align 4
  %flags.i70 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i67, i32 0, i32 1
  %57 = ptrtoint ptr %flags.i70 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 0, ptr %flags.i70, align 2
  %addr.i71 = getelementptr inbounds %struct.i2c_client, ptr %48, i32 0, i32 1
  %58 = ptrtoint ptr %addr.i71 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %addr.i71, align 2
  %60 = ptrtoint ptr %msg.i67 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %msg.i67, align 4
  %shr.i72 = lshr i32 %add10, 8
  %conv.i73 = trunc i32 %shr.i72 to i8
  %61 = ptrtoint ptr %mm1.i66 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv.i73, ptr %mm1.i66, align 1
  %conv8.i74 = trunc i32 %add10 to i8
  %62 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv8.i74, ptr %51, align 1
  %storemerge.i83 = trunc i32 %or to i8
  %63 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %storemerge.i83, ptr %52, align 1
  %buf.i85 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i67, i32 0, i32 3
  %64 = ptrtoint ptr %buf.i85 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %mm1.i66, ptr %buf.i85, align 4
  %65 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %cmp26.i86 = icmp sgt i32 %65, 1
  br i1 %cmp26.i86, label %do.end.i90, label %saa717x_write.exit65.saa717x_write.exit94_crit_edge

saa717x_write.exit65.saa717x_write.exit94_crit_edge: ; preds = %saa717x_write.exit65
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa717x_write.exit94

do.end.i90:                                       ; preds = %saa717x_write.exit65
  call void @__sanitizer_cov_trace_pc() #9
  %name.i88 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call31.i89 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name.i88, i32 noundef %add10, i32 noundef %or) #10
  br label %saa717x_write.exit94

saa717x_write.exit94:                             ; preds = %do.end.i90, %saa717x_write.exit65.saa717x_write.exit94_crit_edge
  %call35.i91 = call i32 @i2c_transfer(ptr noundef %50, ptr noundef nonnull %msg.i67, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i67) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm1.i66) #7
  %add14 = add i32 %mul, 99
  %vpfy = getelementptr [10 x %struct.anon.100], ptr @set_h_prescale.vals, i32 0, i32 %switch.tableidx, i32 4
  %66 = ptrtoint ptr %vpfy to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %vpfy, align 4
  %shl16 = shl i32 %67, 2
  %or19 = or i32 %shl16, %67
  %68 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev_priv.i.i, align 4
  %adapter.i98 = getelementptr inbounds %struct.i2c_client, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %adapter.i98 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %adapter.i98, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm1.i95) #7
  %72 = getelementptr inbounds [6 x i8], ptr %mm1.i95, i32 0, i32 1
  %73 = getelementptr inbounds [6 x i8], ptr %mm1.i95, i32 0, i32 2
  %74 = getelementptr inbounds i8, ptr %mm1.i95, i32 3
  %75 = call ptr @memset(ptr %74, i32 255, i32 3)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i96) #7
  %76 = getelementptr inbounds i8, ptr %msg.i96, i32 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 262143, ptr %76, align 4
  %flags.i99 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i96, i32 0, i32 1
  %78 = ptrtoint ptr %flags.i99 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 0, ptr %flags.i99, align 2
  %addr.i100 = getelementptr inbounds %struct.i2c_client, ptr %69, i32 0, i32 1
  %79 = ptrtoint ptr %addr.i100 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %addr.i100, align 2
  %81 = ptrtoint ptr %msg.i96 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %80, ptr %msg.i96, align 4
  %shr.i101 = lshr i32 %add14, 8
  %conv.i102 = trunc i32 %shr.i101 to i8
  %82 = ptrtoint ptr %mm1.i95 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv.i102, ptr %mm1.i95, align 1
  %conv8.i103 = trunc i32 %add14 to i8
  %83 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv8.i103, ptr %72, align 1
  %storemerge.i112 = trunc i32 %or19 to i8
  %84 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %storemerge.i112, ptr %73, align 1
  %buf.i114 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i96, i32 0, i32 3
  %85 = ptrtoint ptr %buf.i114 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %mm1.i95, ptr %buf.i114, align 4
  %86 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %86)
  %cmp26.i115 = icmp sgt i32 %86, 1
  br i1 %cmp26.i115, label %do.end.i119, label %saa717x_write.exit94.saa717x_write.exit123_crit_edge

saa717x_write.exit94.saa717x_write.exit123_crit_edge: ; preds = %saa717x_write.exit94
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa717x_write.exit123

do.end.i119:                                      ; preds = %saa717x_write.exit94
  call void @__sanitizer_cov_trace_pc() #9
  %name.i117 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call31.i118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name.i117, i32 noundef %add14, i32 noundef %or19) #10
  br label %saa717x_write.exit123

saa717x_write.exit123:                            ; preds = %do.end.i119, %saa717x_write.exit94.saa717x_write.exit123_crit_edge
  %call35.i120 = call i32 @i2c_transfer(ptr noundef %71, ptr noundef nonnull %msg.i96, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i96) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm1.i95) #7
  br label %cleanup

cleanup:                                          ; preds = %saa717x_write.exit123, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_v_scale(ptr noundef %sd, i32 noundef %task, i32 noundef %yscale) unnamed_addr #2 align 64 {
entry:
  %mm1.i6 = alloca [6 x i8], align 1
  %msg.i7 = alloca %struct.i2c_msg, align 4
  %mm1.i = alloca [6 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %task, 6
  %add = add i32 %mul, 112
  %and = and i32 %yscale, 255
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter.i, align 8
  %4 = add i32 %mul, -1012
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %4)
  %5 = icmp ult i32 %4, 21
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm1.i) #7
  %6 = getelementptr inbounds [6 x i8], ptr %mm1.i, i32 0, i32 1
  %7 = getelementptr inbounds [6 x i8], ptr %mm1.i, i32 0, i32 2
  %8 = getelementptr inbounds i8, ptr %mm1.i, i32 3
  %9 = call ptr @memset(ptr %8, i32 255, i32 3)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %10 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %addr.i, align 2
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %msg.i, align 4
  %shr.i = lshr i32 %add, 8
  %conv.i = trunc i32 %shr.i to i8
  %16 = ptrtoint ptr %mm1.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv.i, ptr %mm1.i, align 1
  %conv8.i = trunc i32 %add to i8
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv8.i, ptr %6, align 1
  br i1 %5, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %18 = getelementptr inbounds [6 x i8], ptr %mm1.i, i32 0, i32 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %18, align 1
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %8, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %cond.i = phi i16 [ 5, %if.then.i ], [ 3, %entry.if.end.i_crit_edge ]
  %storemerge.i = trunc i32 %yscale to i8
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %storemerge.i, ptr %7, align 1
  %22 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %cond.i, ptr %10, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %23 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %mm1.i, ptr %buf.i, align 4
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp26.i = icmp sgt i32 %24, 1
  br i1 %cmp26.i, label %do.end.i, label %if.end.i.saa717x_write.exit_crit_edge

if.end.i.saa717x_write.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa717x_write.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name.i, i32 noundef %add, i32 noundef %and) #10
  br label %saa717x_write.exit

saa717x_write.exit:                               ; preds = %do.end.i, %if.end.i.saa717x_write.exit_crit_edge
  %call35.i = call i32 @i2c_transfer(ptr noundef %3, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm1.i) #7
  %add1 = add i32 %mul, 113
  %shr = ashr i32 %yscale, 8
  %25 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_priv.i.i, align 4
  %adapter.i9 = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %adapter.i9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter.i9, align 8
  %29 = add i32 %mul, -1011
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %29)
  %30 = icmp ult i32 %29, 21
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm1.i6) #7
  %31 = getelementptr inbounds [6 x i8], ptr %mm1.i6, i32 0, i32 1
  %32 = getelementptr inbounds [6 x i8], ptr %mm1.i6, i32 0, i32 2
  %33 = getelementptr inbounds i8, ptr %mm1.i6, i32 3
  %34 = call ptr @memset(ptr %33, i32 255, i32 3)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i7) #7
  %35 = getelementptr inbounds i8, ptr %msg.i7, i32 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %35, align 4
  %flags.i10 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i7, i32 0, i32 1
  %37 = ptrtoint ptr %flags.i10 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %flags.i10, align 2
  %addr.i11 = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 1
  %38 = ptrtoint ptr %addr.i11 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %addr.i11, align 2
  %40 = ptrtoint ptr %msg.i7 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %msg.i7, align 4
  %shr.i12 = lshr i32 %add1, 8
  %conv.i13 = trunc i32 %shr.i12 to i8
  %41 = ptrtoint ptr %mm1.i6 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv.i13, ptr %mm1.i6, align 1
  %conv8.i14 = trunc i32 %add1 to i8
  %42 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv8.i14, ptr %31, align 1
  br i1 %30, label %if.then.i19, label %saa717x_write.exit.if.end.i25_crit_edge

saa717x_write.exit.if.end.i25_crit_edge:          ; preds = %saa717x_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i25

if.then.i19:                                      ; preds = %saa717x_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %43 = getelementptr inbounds [6 x i8], ptr %mm1.i6, i32 0, i32 4
  %shr10.i15 = lshr i32 %shr, 16
  %conv12.i16 = trunc i32 %shr10.i15 to i8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv12.i16, ptr %43, align 1
  %shr14.i17 = lshr i32 %shr, 8
  %conv16.i18 = trunc i32 %shr14.i17 to i8
  %45 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv16.i18, ptr %33, align 1
  %and18.i = and i32 %shr, 255
  br label %if.end.i25

if.end.i25:                                       ; preds = %if.then.i19, %saa717x_write.exit.if.end.i25_crit_edge
  %cond.i20 = phi i16 [ 5, %if.then.i19 ], [ 3, %saa717x_write.exit.if.end.i25_crit_edge ]
  %storemerge.in.i = phi i32 [ %and18.i, %if.then.i19 ], [ %shr, %saa717x_write.exit.if.end.i25_crit_edge ]
  %storemerge.i21 = trunc i32 %storemerge.in.i to i8
  %46 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %storemerge.i21, ptr %32, align 1
  %47 = ptrtoint ptr %35 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %cond.i20, ptr %35, align 4
  %buf.i23 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i7, i32 0, i32 3
  %48 = ptrtoint ptr %buf.i23 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %mm1.i6, ptr %buf.i23, align 4
  %49 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp26.i24 = icmp sgt i32 %49, 1
  br i1 %cmp26.i24, label %do.end.i28, label %if.end.i25.saa717x_write.exit32_crit_edge

if.end.i25.saa717x_write.exit32_crit_edge:        ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa717x_write.exit32

do.end.i28:                                       ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #9
  %name.i26 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call31.i27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name.i26, i32 noundef %add1, i32 noundef %shr) #10
  br label %saa717x_write.exit32

saa717x_write.exit32:                             ; preds = %do.end.i28, %if.end.i25.saa717x_write.exit32_crit_edge
  %call35.i29 = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %msg.i7, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i7) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm1.i6) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa717x_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %mm1.i81 = alloca [6 x i8], align 1
  %msg.i82 = alloca %struct.i2c_msg, align 4
  %mm1.i64 = alloca [6 x i8], align 1
  %msg.i65 = alloca %struct.i2c_msg, align 4
  %mm1.i47 = alloca [6 x i8], align 1
  %msg.i48 = alloca %struct.i2c_msg, align 4
  %mm1.i = alloca [6 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -196
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963777, label %sw.bb3
    i32 9963778, label %sw.bb6
    i32 9963779, label %sw.bb9
    i32 9963785, label %sw.bb12
    i32 9963781, label %sw.bb14
    i32 9963782, label %sw.bb16
    i32 9963784, label %sw.bb19
    i32 9963783, label %sw.bb22
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %dev_priv.i.i = getelementptr i8, ptr %1, i32 -44
  %7 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adapter.i, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm1.i) #7
  %11 = getelementptr inbounds [6 x i8], ptr %mm1.i, i32 0, i32 1
  %12 = getelementptr inbounds [6 x i8], ptr %mm1.i, i32 0, i32 2
  %13 = getelementptr inbounds i8, ptr %mm1.i, i32 3
  %14 = call ptr @memset(ptr %13, i32 255, i32 3)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %15 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 262143, ptr %15, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %flags.i, align 2
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 1
  %18 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %addr.i, align 2
  %20 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %msg.i, align 4
  %21 = ptrtoint ptr %mm1.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %mm1.i, align 1
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 10, ptr %11, align 1
  %storemerge.i = trunc i32 %6 to i8
  %23 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %storemerge.i, ptr %12, align 1
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %24 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %mm1.i, ptr %buf.i, align 4
  %25 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp26.i = icmp sgt i32 %25, 1
  br i1 %cmp26.i, label %do.end.i, label %sw.bb.saa717x_write.exit_crit_edge

sw.bb.saa717x_write.exit_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa717x_write.exit

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr i8, ptr %1, i32 -80
  %call31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name.i, i32 noundef 266, i32 noundef %6) #10
  br label %saa717x_write.exit

saa717x_write.exit:                               ; preds = %do.end.i, %sw.bb.saa717x_write.exit_crit_edge
  %call35.i = call i32 @i2c_transfer(ptr noundef %10, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm1.i) #7
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %val4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %26 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val4, align 4
  %dev_priv.i.i49 = getelementptr i8, ptr %1, i32 -44
  %28 = ptrtoint ptr %dev_priv.i.i49 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_priv.i.i49, align 4
  %adapter.i50 = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %adapter.i50 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adapter.i50, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm1.i47) #7
  %32 = getelementptr inbounds [6 x i8], ptr %mm1.i47, i32 0, i32 1
  %33 = getelementptr inbounds [6 x i8], ptr %mm1.i47, i32 0, i32 2
  %34 = getelementptr inbounds i8, ptr %mm1.i47, i32 3
  %35 = call ptr @memset(ptr %34, i32 255, i32 3)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i48) #7
  %36 = getelementptr inbounds i8, ptr %msg.i48, i32 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 262143, ptr %36, align 4
  %flags.i51 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48, i32 0, i32 1
  %38 = ptrtoint ptr %flags.i51 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %flags.i51, align 2
  %addr.i52 = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 1
  %39 = ptrtoint ptr %addr.i52 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %addr.i52, align 2
  %41 = ptrtoint ptr %msg.i48 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %msg.i48, align 4
  %42 = ptrtoint ptr %mm1.i47 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %mm1.i47, align 1
  %43 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 11, ptr %32, align 1
  %storemerge.i53 = trunc i32 %27 to i8
  %44 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %storemerge.i53, ptr %33, align 1
  %buf.i55 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48, i32 0, i32 3
  %45 = ptrtoint ptr %buf.i55 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %mm1.i47, ptr %buf.i55, align 4
  %46 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp26.i56 = icmp sgt i32 %46, 1
  br i1 %cmp26.i56, label %do.end.i59, label %sw.bb3.saa717x_write.exit63_crit_edge

sw.bb3.saa717x_write.exit63_crit_edge:            ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa717x_write.exit63

do.end.i59:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  %name.i57 = getelementptr i8, ptr %1, i32 -80
  %call31.i58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name.i57, i32 noundef 267, i32 noundef %27) #10
  br label %saa717x_write.exit63

saa717x_write.exit63:                             ; preds = %do.end.i59, %sw.bb3.saa717x_write.exit63_crit_edge
  %call35.i60 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %msg.i48, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i48) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm1.i47) #7
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %val7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %47 = ptrtoint ptr %val7 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %val7, align 4
  %dev_priv.i.i66 = getelementptr i8, ptr %1, i32 -44
  %49 = ptrtoint ptr %dev_priv.i.i66 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev_priv.i.i66, align 4
  %adapter.i67 = getelementptr inbounds %struct.i2c_client, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %adapter.i67 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %adapter.i67, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm1.i64) #7
  %53 = getelementptr inbounds [6 x i8], ptr %mm1.i64, i32 0, i32 1
  %54 = getelementptr inbounds [6 x i8], ptr %mm1.i64, i32 0, i32 2
  %55 = getelementptr inbounds i8, ptr %mm1.i64, i32 3
  %56 = call ptr @memset(ptr %55, i32 255, i32 3)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i65) #7
  %57 = getelementptr inbounds i8, ptr %msg.i65, i32 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 262143, ptr %57, align 4
  %flags.i68 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i65, i32 0, i32 1
  %59 = ptrtoint ptr %flags.i68 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 0, ptr %flags.i68, align 2
  %addr.i69 = getelementptr inbounds %struct.i2c_client, ptr %50, i32 0, i32 1
  %60 = ptrtoint ptr %addr.i69 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %addr.i69, align 2
  %62 = ptrtoint ptr %msg.i65 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %msg.i65, align 4
  %63 = ptrtoint ptr %mm1.i64 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %mm1.i64, align 1
  %64 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 12, ptr %53, align 1
  %storemerge.i70 = trunc i32 %48 to i8
  %65 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %storemerge.i70, ptr %54, align 1
  %buf.i72 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i65, i32 0, i32 3
  %66 = ptrtoint ptr %buf.i72 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %mm1.i64, ptr %buf.i72, align 4
  %67 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp26.i73 = icmp sgt i32 %67, 1
  br i1 %cmp26.i73, label %do.end.i76, label %sw.bb6.saa717x_write.exit80_crit_edge

sw.bb6.saa717x_write.exit80_crit_edge:            ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa717x_write.exit80

do.end.i76:                                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  %name.i74 = getelementptr i8, ptr %1, i32 -80
  %call31.i75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name.i74, i32 noundef 268, i32 noundef %48) #10
  br label %saa717x_write.exit80

saa717x_write.exit80:                             ; preds = %do.end.i76, %sw.bb6.saa717x_write.exit80_crit_edge
  %call35.i77 = call i32 @i2c_transfer(ptr noundef %52, ptr noundef nonnull %msg.i65, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i65) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm1.i64) #7
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  %val10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %68 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %val10, align 4
  %dev_priv.i.i83 = getelementptr i8, ptr %1, i32 -44
  %70 = ptrtoint ptr %dev_priv.i.i83 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev_priv.i.i83, align 4
  %adapter.i84 = getelementptr inbounds %struct.i2c_client, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %adapter.i84 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %adapter.i84, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm1.i81) #7
  %74 = getelementptr inbounds [6 x i8], ptr %mm1.i81, i32 0, i32 1
  %75 = getelementptr inbounds [6 x i8], ptr %mm1.i81, i32 0, i32 2
  %76 = getelementptr inbounds i8, ptr %mm1.i81, i32 3
  %77 = call ptr @memset(ptr %76, i32 255, i32 3)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i82) #7
  %78 = getelementptr inbounds i8, ptr %msg.i82, i32 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 262143, ptr %78, align 4
  %flags.i85 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i82, i32 0, i32 1
  %80 = ptrtoint ptr %flags.i85 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 0, ptr %flags.i85, align 2
  %addr.i86 = getelementptr inbounds %struct.i2c_client, ptr %71, i32 0, i32 1
  %81 = ptrtoint ptr %addr.i86 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %addr.i86, align 2
  %83 = ptrtoint ptr %msg.i82 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %82, ptr %msg.i82, align 4
  %84 = ptrtoint ptr %mm1.i81 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %mm1.i81, align 1
  %85 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 13, ptr %74, align 1
  %storemerge.i87 = trunc i32 %69 to i8
  %86 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %storemerge.i87, ptr %75, align 1
  %buf.i89 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i82, i32 0, i32 3
  %87 = ptrtoint ptr %buf.i89 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %mm1.i81, ptr %buf.i89, align 4
  %88 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %88)
  %cmp26.i90 = icmp sgt i32 %88, 1
  br i1 %cmp26.i90, label %do.end.i93, label %sw.bb9.saa717x_write.exit97_crit_edge

sw.bb9.saa717x_write.exit97_crit_edge:            ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa717x_write.exit97

do.end.i93:                                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  %name.i91 = getelementptr i8, ptr %1, i32 -80
  %call31.i92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name.i91, i32 noundef 269, i32 noundef %69) #10
  br label %saa717x_write.exit97

saa717x_write.exit97:                             ; preds = %do.end.i93, %sw.bb9.saa717x_write.exit97_crit_edge
  %call35.i94 = call i32 @i2c_transfer(ptr noundef %73, ptr noundef nonnull %msg.i82, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i82) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm1.i81) #7
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val13 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %89 = ptrtoint ptr %val13 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %val13, align 4
  %audio_main_mute = getelementptr i8, ptr %1, i32 220
  %91 = ptrtoint ptr %audio_main_mute to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %audio_main_mute, align 8
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val15 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %92 = ptrtoint ptr %val15 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %val15, align 4
  %conv = trunc i32 %93 to i16
  %audio_main_volume = getelementptr i8, ptr %1, i32 236
  %94 = ptrtoint ptr %audio_main_volume to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %conv, ptr %audio_main_volume, align 8
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val17 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %95 = ptrtoint ptr %val17 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %val17, align 4
  %conv18 = trunc i32 %96 to i16
  %audio_main_balance = getelementptr i8, ptr %1, i32 238
  %97 = ptrtoint ptr %audio_main_balance to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %conv18, ptr %audio_main_balance, align 2
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val20 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %98 = ptrtoint ptr %val20 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %val20, align 4
  %conv21 = trunc i32 %99 to i16
  %audio_main_treble = getelementptr i8, ptr %1, i32 234
  %100 = ptrtoint ptr %audio_main_treble to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %conv21, ptr %audio_main_treble, align 2
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val23 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %101 = ptrtoint ptr %val23 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %val23, align 4
  %conv24 = trunc i32 %102 to i16
  %audio_main_bass = getelementptr i8, ptr %1, i32 232
  %103 = ptrtoint ptr %audio_main_bass to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %conv24, ptr %audio_main_bass, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb22, %sw.bb19, %sw.bb16, %sw.bb14, %sw.bb12
  tail call fastcc void @set_audio_regs(ptr noundef %add.ptr.i, ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %saa717x_write.exit97, %saa717x_write.exit80, %saa717x_write.exit63, %saa717x_write.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 135)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 135)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !18, !20, !22, !24, !26, !27, !28, !29, !30, !32, !34, !36, !38, !40, !41, !42, !44, !45, !47, !48, !49, !51, !53, !55, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !129, !130, !131, !132, !133, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !163, !165, !167, !169, !170, !171, !172, !174, !175, !176, !177, !179, !181, !183, !184, !185, !186, !188, !189, !190, !191, !193, !195, !196, !197, !198, !200, !201, !202, !203, !204, !206, !208, !210, !212, !213, !214, !215, !217, !218, !219, !221, !222, !223, !224, !225, !226, !228, !230, !231, !232, !233, !235, !237, !239, !240, !241, !242, !244, !245, !246, !247, !249, !251}
!llvm.named.register.sp = !{!253}
!llvm.module.flags = !{!254, !255, !256, !257, !258, !259, !260, !261}
!llvm.ident = !{!262}

!0 = !{ptr @__UNIQUE_ID_description292, !1, !"__UNIQUE_ID_description292", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/saa717x.c", i32 30, i32 1}
!2 = !{ptr @__UNIQUE_ID_author293, !3, !"__UNIQUE_ID_author293", i1 false, i1 false}
!3 = !{!"../drivers/media/i2c/saa717x.c", i32 31, i32 1}
!4 = !{ptr @__UNIQUE_ID_file294, !5, !"__UNIQUE_ID_file294", i1 false, i1 false}
!5 = !{!"../drivers/media/i2c/saa717x.c", i32 32, i32 1}
!6 = !{ptr @__UNIQUE_ID_license295, !5, !"__UNIQUE_ID_license295", i1 false, i1 false}
!7 = !{ptr @__param_debug, !8, !"__param_debug", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/saa717x.c", i32 35, i32 1}
!9 = !{ptr @__UNIQUE_ID_debugtype296, !8, !"__UNIQUE_ID_debugtype296", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_debug297, !11, !"__UNIQUE_ID_debug297", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/saa717x.c", i32 36, i32 1}
!12 = !{ptr @__initcall__kmod_saa717x__303_1353_saa717x_driver_init6, !13, !"__initcall__kmod_saa717x__303_1353_saa717x_driver_init6", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/saa717x.c", i32 1353, i32 1}
!14 = !{ptr @__exitcall_saa717x_driver_exit, !13, !"__exitcall_saa717x_driver_exit", i1 false, i1 false}
!15 = !{ptr @debug, !16, !"debug", i1 false, i1 false}
!16 = !{!"../drivers/media/i2c/saa717x.c", i32 34, i32 12}
!17 = !{ptr @__param_str_debug, !8, !"__param_str_debug", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/saa717x.c", i32 1346, i32 11}
!20 = !{ptr @saa717x_driver, !21, !"saa717x_driver", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/saa717x.c", i32 1344, i32 26}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/saa717x.c", i32 1238, i32 12}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/i2c/saa717x.c", i32 1257, i32 3}
!26 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @saa717x_probe._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @saa717x_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/saa717x.c", i32 1261, i32 7}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/i2c/saa717x.c", i32 1263, i32 7}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/i2c/saa717x.c", i32 1265, i32 7}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/i2c/saa717x.c", i32 1267, i32 7}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/i2c/saa717x.c", i32 1268, i32 2}
!40 = !{ptr @saa717x_probe._entry.9, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @saa717x_probe._entry_ptr.11, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @saa717x_probe._key, !43, !"_key", i1 false, i1 false}
!43 = !{!"../drivers/media/i2c/saa717x.c", i32 1272, i32 2}
!44 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/i2c/saa717x.c", i32 1315, i32 2}
!47 = !{ptr @saa717x_probe._entry.13, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @saa717x_probe._entry_ptr.15, !46, !"_entry_ptr", i1 false, i1 false}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../drivers/media/i2c/saa717x.c", i32 1322, i32 2}
!51 = !{ptr @saa717x_ops, !52, !"saa717x_ops", i1 false, i1 false}
!52 = !{!"../drivers/media/i2c/saa717x.c", i32 1217, i32 37}
!53 = !{ptr @saa717x_core_ops, !54, !"saa717x_core_ops", i1 false, i1 false}
!54 = !{!"../drivers/media/i2c/saa717x.c", i32 1189, i32 42}
!55 = !{ptr @saa717x_tuner_ops, !56, !"saa717x_tuner_ops", i1 false, i1 false}
!56 = !{!"../drivers/media/i2c/saa717x.c", i32 1197, i32 43}
!57 = !{ptr @.str.16, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/i2c/saa717x.c", i32 1141, i32 2}
!59 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @saa717x_g_tuner._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @saa717x_g_tuner._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/i2c/saa717x.c", i32 1147, i32 3}
!64 = !{ptr @saa717x_g_tuner._entry.18, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @saa717x_g_tuner._entry_ptr.20, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/i2c/saa717x.c", i32 1155, i32 4}
!68 = !{ptr @saa717x_g_tuner._entry.21, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @saa717x_g_tuner._entry_ptr.23, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/i2c/saa717x.c", i32 1158, i32 4}
!72 = !{ptr @saa717x_g_tuner._entry.24, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @saa717x_g_tuner._entry_ptr.26, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/i2c/saa717x.c", i32 1166, i32 4}
!76 = !{ptr @saa717x_g_tuner._entry.27, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @saa717x_g_tuner._entry_ptr.29, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/i2c/saa717x.c", i32 1169, i32 4}
!80 = !{ptr @saa717x_g_tuner._entry.30, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @saa717x_g_tuner._entry_ptr.32, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/i2c/saa717x.c", i32 686, i32 12}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/i2c/saa717x.c", i32 687, i32 12}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/i2c/saa717x.c", i32 688, i32 12}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/i2c/saa717x.c", i32 689, i32 12}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/i2c/saa717x.c", i32 691, i32 12}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/i2c/saa717x.c", i32 692, i32 12}
!94 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/i2c/saa717x.c", i32 693, i32 12}
!96 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/i2c/saa717x.c", i32 694, i32 12}
!98 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/i2c/saa717x.c", i32 695, i32 12}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/i2c/saa717x.c", i32 696, i32 12}
!102 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/i2c/saa717x.c", i32 697, i32 12}
!104 = !{ptr @.str.44, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/i2c/saa717x.c", i32 698, i32 12}
!106 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/i2c/saa717x.c", i32 700, i32 12}
!108 = !{ptr @.str.46, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/i2c/saa717x.c", i32 701, i32 12}
!110 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/i2c/saa717x.c", i32 702, i32 12}
!112 = !{ptr @.str.48, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/i2c/saa717x.c", i32 704, i32 12}
!114 = !{ptr @.str.49, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/i2c/saa717x.c", i32 705, i32 12}
!116 = !{ptr @.str.50, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/i2c/saa717x.c", i32 706, i32 12}
!118 = !{ptr @.str.51, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/i2c/saa717x.c", i32 707, i32 12}
!120 = !{ptr @.str.52, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/i2c/saa717x.c", i32 709, i32 21}
!122 = !{ptr @.str.53, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/i2c/saa717x.c", i32 710, i32 12}
!124 = !{ptr @get_inf_dev_status.stdres, !125, !"stdres", i1 false, i1 false}
!125 = !{!"../drivers/media/i2c/saa717x.c", i32 685, i32 15}
!126 = !{ptr @.str.54, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/i2c/saa717x.c", i32 721, i32 2}
!128 = !{ptr @.str.55, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @get_inf_dev_status._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @get_inf_dev_status._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.56, !127, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.59, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/i2c/saa717x.c", i32 725, i32 2}
!135 = !{ptr @get_inf_dev_status._entry.58, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @get_inf_dev_status._entry_ptr.60, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.61, !134, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.62, !134, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.63, !134, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.64, !134, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.65, !134, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.66, !134, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.67, !134, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.68, !134, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.69, !134, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.70, !134, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.71, !134, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.72, !134, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.73, !134, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.74, !134, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.76, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/i2c/saa717x.c", i32 746, i32 3}
!153 = !{ptr @get_inf_dev_status._entry.75, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @get_inf_dev_status._entry_ptr.77, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.79, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/i2c/saa717x.c", i32 751, i32 3}
!157 = !{ptr @get_inf_dev_status._entry.78, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @get_inf_dev_status._entry_ptr.80, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.81, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/i2c/saa717x.c", i32 1103, i32 3}
!161 = !{ptr @.str.82, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/i2c/saa717x.c", i32 1103, i32 11}
!163 = !{ptr @.str.83, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/i2c/saa717x.c", i32 1103, i32 21}
!165 = !{ptr @.str.84, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/i2c/saa717x.c", i32 1103, i32 30}
!167 = !{ptr @.str.85, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/i2c/saa717x.c", i32 1123, i32 2}
!169 = !{ptr @.str.86, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @saa717x_s_tuner._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @saa717x_s_tuner._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.87, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/i2c/saa717x.c", i32 759, i32 2}
!174 = !{ptr @.str.88, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @set_audio_mode._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @set_audio_mode._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @reg_set_audio_template, !178, !"reg_set_audio_template", i1 false, i1 false}
!178 = !{!"../drivers/media/i2c/saa717x.c", i32 647, i32 12}
!179 = !{ptr @saa717x_audio_ops, !180, !"saa717x_audio_ops", i1 false, i1 false}
!180 = !{!"../drivers/media/i2c/saa717x.c", i32 1209, i32 43}
!181 = !{ptr @.str.89, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/media/i2c/saa717x.c", i32 1077, i32 3}
!183 = !{ptr @.str.90, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @saa717x_s_audio_routing._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @saa717x_s_audio_routing._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.91, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/i2c/saa717x.c", i32 776, i32 2}
!188 = !{ptr @.str.92, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @set_audio_regs._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @set_audio_regs._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @saa717x_video_ops, !192, !"saa717x_video_ops", i1 false, i1 false}
!192 = !{!"../drivers/media/i2c/saa717x.c", i32 1203, i32 43}
!193 = !{ptr @.str.93, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/media/i2c/saa717x.c", i32 919, i32 2}
!195 = !{ptr @.str.94, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @saa717x_s_video_routing._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @saa717x_s_video_routing._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.96, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/i2c/saa717x.c", i32 929, i32 3}
!200 = !{ptr @saa717x_s_video_routing._entry.95, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @saa717x_s_video_routing._entry_ptr.97, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.98, !199, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.99, !199, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @reg_init_tuner_input, !205, !"reg_init_tuner_input", i1 false, i1 false}
!205 = !{!"../drivers/media/i2c/saa717x.c", i32 624, i32 12}
!206 = !{ptr @reg_init_svideo_input, !207, !"reg_init_svideo_input", i1 false, i1 false}
!207 = !{!"../drivers/media/i2c/saa717x.c", i32 640, i32 12}
!208 = !{ptr @reg_init_composite_input, !209, !"reg_init_composite_input", i1 false, i1 false}
!209 = !{!"../drivers/media/i2c/saa717x.c", i32 632, i32 12}
!210 = !{ptr @.str.100, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/i2c/saa717x.c", i32 1062, i32 2}
!212 = !{ptr @.str.101, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @saa717x_s_std._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @saa717x_s_std._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.103, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/media/i2c/saa717x.c", i32 1063, i32 2}
!217 = !{ptr @saa717x_s_std._entry.102, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @saa717x_s_std._entry_ptr.104, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.105, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/media/i2c/saa717x.c", i32 1090, i32 2}
!221 = !{ptr @.str.106, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @saa717x_s_stream._entry, !220, !"_entry", i1 false, i1 false}
!223 = !{ptr @saa717x_s_stream._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.107, !220, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.108, !220, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @saa717x_pad_ops, !227, !"saa717x_pad_ops", i1 false, i1 false}
!227 = !{!"../drivers/media/i2c/saa717x.c", i32 1213, i32 41}
!228 = !{ptr @.str.109, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/media/i2c/saa717x.c", i32 989, i32 2}
!230 = !{ptr @.str.110, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @saa717x_set_fmt._entry, !229, !"_entry", i1 false, i1 false}
!232 = !{ptr @saa717x_set_fmt._entry_ptr, !229, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @set_h_prescale.vals, !234, !"vals", i1 false, i1 false}
!234 = !{!"../drivers/media/i2c/saa717x.c", i32 815, i32 4}
!235 = distinct !{null, !236, !"count", i1 false, i1 false}
!236 = !{!"../drivers/media/i2c/saa717x.c", i32 828, i32 19}
!237 = !{ptr @.str.111, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/media/i2c/saa717x.c", i32 108, i32 2}
!239 = !{ptr @.str.112, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @saa717x_write._entry, !238, !"_entry", i1 false, i1 false}
!241 = !{ptr @saa717x_write._entry_ptr, !238, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.113, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/media/i2c/saa717x.c", i32 146, i32 2}
!244 = !{ptr @.str.114, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @saa717x_read._entry, !243, !"_entry", i1 false, i1 false}
!246 = !{ptr @saa717x_read._entry_ptr, !243, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @saa717x_ctrl_ops, !248, !"saa717x_ctrl_ops", i1 false, i1 false}
!248 = !{!"../drivers/media/i2c/saa717x.c", i32 1185, i32 35}
!249 = !{ptr @reg_init_initialize, !250, !"reg_init_initialize", i1 false, i1 false}
!250 = !{!"../drivers/media/i2c/saa717x.c", i32 152, i32 12}
!251 = !{ptr @saa717x_id, !252, !"saa717x_id", i1 false, i1 false}
!252 = !{!"../drivers/media/i2c/saa717x.c", i32 1338, i32 35}
!253 = !{!"sp"}
!254 = !{i32 1, !"wchar_size", i32 2}
!255 = !{i32 1, !"min_enum_size", i32 4}
!256 = !{i32 8, !"branch-target-enforcement", i32 0}
!257 = !{i32 8, !"sign-return-address", i32 0}
!258 = !{i32 8, !"sign-return-address-all", i32 0}
!259 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!260 = !{i32 7, !"uwtable", i32 1}
!261 = !{i32 7, !"frame-pointer", i32 2}
!262 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!263 = !{i64 2156271590}
